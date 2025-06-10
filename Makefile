CFLAGS = -I./include -Wall -Wno-pointer-sign
CFLAGS += -Os
BIN = openra1n
BREW != brew --prefix
SOURCE = openra1n.c lz4/lz4.c lz4/lz4hc.c
ifeq ($(LIBUSB),1)
	CC = gcc
	CFLAGS += -DHAVE_LIBUSB
	LDFLAGS += -lusb-1.0
else
	CC = xcrun -sdk macosx gcc
	CFLAGS += -arch x86_64 -arch arm64
	LDFLAGS += -framework IOKit -framework CoreFoundation
endif

OBJCOPY = $(BREW)/opt/binutils/bin/gobjcopy

.PHONY: all clean payloads openra1n

all: payloads openra1n

payloads:
	@for file in payloadssrc/*; do \
		echo " ASM	$$file"; \
		xcrun -sdk iphoneos clang $$file -target arm64-apple-darwin -Wall -o $${file%.*}.o; \
		echo " OBJCOPY $${file%.*}.o"; \
		$(OBJCOPY) -O binary -j .text $${file%.*}.o $${file%.*}.bin; \
		mv $${file%.*}.bin payloads/; \
		rm $${file%.*}.o; \
	done
	@mkdir -p include/payloads
	@for file in payloads/*; do \
		echo " XXD    $$file"; \
		xxd -i $$file > include/$$file.h; \
	done

openra1n: payloads
	@echo " CC     $(BIN)"
	@$(CC) $(CFLAGS) $(SOURCE) $(LDFLAGS) -o $(BIN)
	strip $(BIN)

clean:
	@echo " CLEAN  $(BIN)"
	@rm -f $(BIN)
	@echo " CLEAN  include/payloads"
	@rm -rf include/payloads
