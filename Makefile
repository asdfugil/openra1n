CFLAGS = -I./include -Wall -Wno-pointer-sign
CFLAGS += -Os
BIN = openra1n
SOURCE = openra1n.c lz4/lz4.c lz4/lz4hc.c
ifeq ($(LIBUSB),1)
	CC = gcc
	CFLAGS += -DHAVE_LIBUSB
	LIBS += -lusb-1.0
	OBJCOPY = llvm-objcopy
	EMBEDDED_LD != command -v cctools-ld
else
	CC = xcrun -sdk macosx gcc
	CFLAGS += -arch x86_64 -arch arm64
	LIBS += -framework IOKit -framework CoreFoundation
	OBJCOPY = $(BREW)/opt/binutils/bin/gobjcopy
	BREW != brew --prefix
	EMBEDDED_LD != command -v ld
endif


.PHONY: all clean payloads openra1n

all: payloads openra1n

vmacho: vmacho.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

payloads: vmacho
	@for file in payloadssrc/*; do \
		echo " ASM	$$file"; \
		clang $$file -target aarch64-darwin-none -Wl,-e,_main -static -ffreestanding -nostdlib -nostdinc --ld-path=$(EMBEDDED_LD) -Wall -o $${file%.*}.o; \
		echo " OBJCOPY $${file%.*}.o"; \
		./vmacho $${file%.*}.o $${file%.*}.bin; \
		mv $${file%.*}.bin payloads/; \
		rm $${file%.*}.o; \
	done
	@mkdir -p include/payloads
	@for file in payloads/*; do \
		echo " XXD    $$file"; \
		echo "#include <stddef.h>" > include/$$file.h; \
		xxd -i $$file | sed 's/unsigned int/size_t/' >> include/$$file.h; \
	done

openra1n: payloads
	@echo " CC     $(BIN)"
	@$(CC) $(CFLAGS) $(SOURCE) $(LDFLAGS) $(LIBS) -o $(BIN)
	strip $(BIN)

clean:
	@echo " CLEAN  $(BIN)"
	@rm -f $(BIN)
	@echo " CLEAN  include/payloads"
	@rm -rf include/payloads
	@echo " CLEAN  vmacho"
	@rm -f vmacho
