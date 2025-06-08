// Disassembled using mineekware
// Filename: s8001.bin
// Amount of instructions: 657
// Shellcode binary size: 2628

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
mov x7, #0x100000000
movk x7, #0x4204, lsl #16
movk x7, #0
mov w1, #-0x6c000000
movk w1, #0x100
str w1, [x7]
mov w1, #0x201f
movk w1, #0xd503, lsl #16
str w1, [x7, #0x3c]
str w1, [x7, #0x4c]
mov x0, #0x3e000000
add x0, x7, x0
add x0, x0, #0x3e0
add x1, x0, #8
mov x2, #0x180000000
add x2, x2, #0x47, lsl #12
str x0, [x2, #0x548]
str x1, [x2, #0x568]
add x0, x7, #0x3e0
adr x1, loc_b8
mov x2, #0x20
bl loc_434
adr x1, loc_d8
// mov x2, #0x96c
adr x2, _end
sub x2, x2, x1
bl loc_434
mov x1, x0
mov x0, x7
bl loc_c
mov x8, #0x100000000
movk x8, #0x5fc
mov w0, #4
mov w19, #4
br x8

loc_b8:
mov w0, #1
ret 
mov x8, #0x180000000
add x8, x8, #0x4c, lsl #12
ldr w0, [x8, #0x54]
and w0, w0, #0xf7ffffff
str w0, [x8, #0x54]
ret 

loc_d8:
mov x25, x0
mov x24, x1
mov x23, x30
mov x22, x29
bl loc_704
ldr w0, [x25, #0x200]
mov w1, #0x4c4c
movk w1, #0x2042, lsl #16
cmp w0, w1
b.eq loc_130
mov w1, #0x4e69
movk w1, #0x6f6f, lsl #16
str w1, [x25, #0x200]
ldr w0, [x25, #0x208]
mov w1, #0x6567
movk w1, #0x2031, lsl #16
cmp w0, w1
b.eq loc_130
mov x0, x25
bl loc_828
bl loc_89c
bl loc_928

loc_130:
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

loc_168:
add x0, x0, #4
bl loc_7e0
cbz x0, loc_3c4
ldur x4, [x0, #-8]
and x4, x4, x5
cmp x4, x6
ccmp x4, x7, #4, ne
b.ne loc_168
mov w4, #0x108
movk w4, #0x3200, lsl #16
str w4, [x0]
sub x0, x0, #4
mov w1, #0
movk w1, #0x9400, lsl #16
mov w2, #0
movk w2, #0xfc00, lsl #16
sub x3, x0, #0x20

loc_1ac:
ldr x4, [x0, #-4]!
and x4, x4, x2
cmp x4, x1
b.eq loc_1c8
cmp x0, x3
b.hi loc_1ac
b loc_3c4

loc_1c8:
mov w2, #-0x2afd0000
movk w2, #0x201f
stp w2, w2, [x0]
mov x0, x25
bl loc_9a0
mov w1, #0x7ff00
add x1, x0, x1
mov w2, #-0x2afd0000
movk w2, #0x201f
add w3, w2, #0x8a0
mov w4, #0x14000000
mov x7, #0x1cc
mov x8, #0

loc_1fc:
cmp x0, x1
b.hs loc_3c4
ldr w5, [x0]
cmp w5, #0
ccmp w5, w2, #4, ne
ccmp w5, w3, #4, ne
ccmp w5, w4, #4, ne
b.eq loc_224
add x0, x0, #4
b loc_1fc

loc_224:
mov x5, x0

loc_228:
ldr w6, [x5, #4]!
cmp w6, #0
ccmp w6, w2, #4, ne
ccmp w6, w3, #4, ne
ccmp w6, w4, #4, ne
b.eq loc_248
mov x0, x5
b loc_1fc

loc_248:
sub x6, x5, x0
cmp w6, w7
b.hs loc_258
b loc_228

loc_258:
mov x9, x0
cbnz x8, loc_270
mov x8, x9
mov x0, x5
mov x7, #0x1d4
b loc_1fc

loc_270:
mov x0, x8
adr x1, loc_440
mov x2, #0x1cc
bl loc_434
mov x0, x9
adr x1, loc_60c
mov x2, #0x1d4
bl loc_434
add x7, x25, #0x270
stp x8, x9, [x7]
add x0, x25, #0x2a0
mov x8, x0
adr x1, loc_3e0
mov x2, #0x60
bl loc_434
mov x0, x25
mov w1, #-0x2d800000
movk w1, #0x12
mov w2, #-1
mov w3, #0x7ff00
bl loc_7e0
cbz x0, loc_3c4
mov w1, #-0x2ae20000
movk w1, #0x1000
mov w2, #-0x20
mov w3, #0x200
bl loc_804
cbz x0, loc_3c4
ldr w1, loc_5a8
mov w2, #-1
mov w3, #0x20
bl loc_7e0
cbz x0, loc_3c4
add x4, x25, #0x254
ldp w5, w6, [x0, #4]!
stp w5, w6, [x4], #8
ldp w5, w6, [x0, #8]
lsr w7, w6, #0x18
cmp w7, #0x58
b.eq loc_318
stp w5, w6, [x4], #8
b loc_360

loc_318:
str w5, [x4], #4
sbfx w7, w6, #5, #0x13
add x7, x0, w7, sxtw #2
ldur x7, [x7, #0xc]
tst x7, #-0x1000000000000
b.ne loc_3c4
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

loc_360:
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

loc_394:
bfi w1, w8, #5, #0x10
str w1, [x0, #8]
mov w1, #-0x29c10000
movk w1, #0x240
str w1, [x0, #0xc]
mov x0, x25
mov x1, x24

loc_3b0:
mov x30, x23
mov x29, x22

loc_3b8:
dsb sy
msr daifset, #0xf
ret 

loc_3c4:
mov x8, #0x200000000
movk x8, #0x102b, lsl #16
movk x8, #0xc000
ldr w0, [x8]
and w0, w0, #0xfffffffe
str w0, [x8]

loc_3dc:
b loc_3dc

loc_3e0:
mov x18, x30
and x0, x30, #0xfffffffffffff000
add x0, x0, #0xbc0
ldr w1, loc_43c

loc_3f0:
ldr w2, [x30, #4]!
cmp w2, w1
b.ne loc_3f0
sub x4, x0, x30
mov w2, #0x14000000
bfxil w2, w4, #2, #0x1a
str w2, [x30]
ldr x1, loc_3b0
mov x2, #0x1cc
bl loc_434
ldr x1, loc_3b8
mov x2, #0x1d4
bl loc_434
dsb sy
b loc_394

loc_42c:
ldr w4, [x1], #4
str w4, [x0], #4

loc_434:
subs w2, w2, #4
b.hs loc_42c

loc_43c:
ret 

loc_440:
msr daifset, #0xf
mov x28, x30
mov x27, x0
mov x8, #0x200000000
movk x8, #0x102b, lsl #16
movk x8, #0
str wzr, [x8, #0xc]
str wzr, [x8, #0x1c]
ldr x8, loc_778
msr vbar_el3, x8
adr x0, loc_4ac
mov x1, #0x100000000
movk x1, #0x8004, lsl #16
movk x1, #0
add x2, x1, #4, lsl #12
cmp x0, x1
ccmp x0, x2, #2, hs
b.lo loc_4ac
add x1, x1, #0x6c
add x2, x1, #0x334
mov x3, x1

loc_494:
ldr w4, [x0], #4
str w4, [x1], #4
cmp x1, x2
b.lo loc_494
bl loc_68c
br x3

loc_4ac:
ldr x0, loc_750
ldr x1, loc_758
mov w2, #0x980
bl loc_6a0
mov w2, #0x84c0
bl loc_6b4
ldr x0, loc_760
msr spsel, #1
mov sp, x0
add x0, x0, #1, lsl #12
msr spsel, #0
mov sp, x0
add x0, x0, #2, lsl #12
ldr x8, loc_768
str x0, [x8]
msr daifclr, #4
ic iallu
sub x9, x28, #8, lsl #12
mov x7, #0x60000000000000
movk x7, #0x421
mov x1, x9
mov w2, #0x8000
bl loc_6b4
mov x8, x9
mov x0, #0x100000000
mov w1, #0x20000
movk x0, #0x685
bl loc_6d4
mov x0, #0x200000000
mov w1, #0x20000000
orr x0, x0, x7
bl loc_6d4
mov x0, #0x600000000
mov w1, #0x20000000
orr x0, x0, x7
bl loc_6d4
mov x0, #0x700000000
movk x0, #0xc000, lsl #16
mov w1, #0x2000000
orr x0, x0, x7
bl loc_6d4
add x8, x9, #4, lsl #12
orr x0, x8, #3
str x0, [x9, #0x600]
mov x0, #0x180000000
mov w1, #0x80000
movk x0, #0x607
bl loc_6c4
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

loc_5a8:
isb 
ldr x8, loc_788
ldr x0, loc_780
mov w1, #0x20000
movk w1, #0x4000
mov w2, #1
blr x8
adr x19, loc_790
adr x20, loc_7b8

loc_5cc:
ldr x8, [x19], #8
mov w0, #0
blr x8
cmp x19, x20
b.lo loc_5cc
ldr x8, loc_7c0
mov w0, #1
blr x8
adr x0, loc_724
ldr x1, loc_7c8
mov x2, #0xf

loc_5f8:
ldrb w3, [x0], #1
strb w3, [x1], #1
sub w2, w2, #1
cbnz w2, loc_5f8
adr x0, loc_733

loc_60c:
ldr x1, loc_7d0
mov x2, #0x1d

loc_614:
ldrb w3, [x0], #1
strb w3, [x1], #1
sub w2, w2, #1
cbnz w2, loc_614
mov w0, #2
ldr x1, loc_7d8
str w0, [x1]
ldr x8, loc_7b8
ldr x0, loc_770
mov x1, #0x40000
blr x8
bl loc_704
dsb sy
ldr x0, loc_770
add x1, x0, #0x40, lsl #12

loc_650:
dc cvau, x0
add x0, x0, #0x40
cmp x0, x1
b.lo loc_650
bl loc_68c
msr daifset, #0xf
msr spsel, #1
and sp, xzr, #1
msr sp_el0, xzr
msr vbar_el3, xzr
isb 
mov x30, x28
mov x0, x27
ldr x8, loc_770
br x8

loc_68c:
dsb sy
isb 
ic iallu
isb 
ret 

loc_6a0:
ldp x3, x4, [x0], #0x10
stp x3, x4, [x1], #0x10
subs w2, w2, #0x10
b.hi loc_6a0
ret 

loc_6b4:
stp xzr, xzr, [x1], #0x10
subs w2, w2, #0x10
b.hi loc_6b4
ret 

loc_6c4:
lsr x4, x0, #0xb
lsr x1, x1, #0xe
mov w3, #0x4000
b loc_6e0

loc_6d4:
lsr x4, x0, #0x16
lsr x1, x1, #0x19
mov w3, #0x2000000

loc_6e0:
and x4, x4, #0x3ff8
add x4, x4, x8
mov w2, #0

loc_6ec:
str x0, [x4, w2, uxtw #3]
add x0, x0, x3
add w2, w2, #1
cmp w2, w1
b.lo loc_6ec
ret 

loc_704:
mov x1, #0x200000000
movk x1, #0xf10, lsl #16
movk x1, #0x324
ldr w0, [x1]
and w0, w0, #0xfffffffc
str w0, [x1]
ret 
nop 

loc_724:
.asciz "YOLO:checkra1n"
// .byte 0x59, 0x4f, 0x4c, 0x4f
// fnmls z26.h, p0/m, z25.h, z8.h
// .byte 0x63, 0x6b, 0x72, 0x61
// .byte 0x31, 0x6e, 0x00, 0x47
// .byte 0x41, 0x4e, 0x47, 0x3a
// .byte 0x4b, 0x4a, 0x43, 0x20
// ldr x8, #0xb0f64
// ldpsw x26, x16, [x9, #-0x40]
// .byte 0x30, 0x6d, 0x58, 0x20
// .byte 0x45, 0x54, 0x41, 0x3a
// .byte 0x73, 0x6f, 0x6e, 0x00
loc_733:
.asciz "GANG:KJC HAXX:Axi0mX ETA:son"

loc_750:
// .byte 0x00, 0xc0, 0x01, 0x00
// udf #1
.dword 0x10001c000

loc_758:
// .byte 0x00, 0x40, 0x04, 0x80
// udf #1
.dword 0x180044000

loc_760:
// .byte 0x00, 0x90, 0x05, 0x80
// udf #1
.dword 0x180059000

loc_768:
// .byte 0x40, 0x42, 0x04, 0x80
// udf #1
.dword 0x180044240

loc_770:
// .byte 0x00, 0x00, 0x00, 0x80
// udf #1
.dword 0x180000000

loc_778:
// udf #0xc000
// udf #1
// .dword 0x1800c000
.dword 0x10000c000

loc_780:
// .byte 0x00, 0xc0, 0x05, 0x80
// udf #1
.dword 0x18005c000

loc_788:
// udf #0xf80c
// udf #1
.dword 0x10000f80c

loc_790:
// udf #0xa718
// udf #1
// udf #0x9d54
// udf #1
// udf #0x1b9c
// udf #1
// udf #0x1148
// udf #1
// udf #0xad98
// udf #1
.dword 0x10000a718
.dword 0x100009d54
.dword 0x100001b9c
.dword 0x100001148
.dword 0x10000ad98

loc_7b8:
// udf #0xdf88
// udf #1
.dword 0x10000df88

loc_7c0:
// udf #0x797c
// udf #1
.dword 0x10000797c

loc_7c8:
// .byte 0xc0, 0x75, 0x04, 0x80
// udf #1
.dword 0x1800475c0

loc_7d0:
// .byte 0xf7, 0x75, 0x04, 0x80
// udf #1
.dword 0x1800475f7

loc_7d8:
// .byte 0x74, 0x75, 0x04, 0x80
// udf #1
.dword 0x180047574

loc_7e0:
ldr w4, [x0]
and w4, w4, w2
cmp w4, w1
b.eq loc_800
add x0, x0, #4
sub w3, w3, #4
cbnz w3, loc_7e0
mov x0, xzr

loc_800:
ret 

loc_804:
ldr w4, [x0]
and w4, w4, w2
cmp w4, w1
b.eq loc_824
sub x0, x0, #4
sub w3, w3, #4
cbnz w3, loc_804
mov x0, xzr

loc_824:
ret 

loc_828:
mov x2, x0
mov w5, #-0x6d8b0000
movk w5, #0xd000
mov w6, #-0x4dc00000
mov w7, #-0x55e10000
mov w8, #0x2a010000
movk w8, #0x3e0

loc_844:
ldr w3, [x2], #4
and w4, w3, #0xffffffe0
cmp w4, w5
b.ne loc_844
bfi w6, w3, #5, #5
ldr w4, [x2]
and w3, w4, #0xffffffe0
cmp w3, w6
b.eq loc_890
cmp w3, w8
b.ne loc_844
and w9, w6, #0x3e0
movk w9, #0xaa00, lsl #16
bfi w9, w4, #0x10, #5
ldr w4, [x2, #4]
and w3, w4, #0xffffffe0
cmp w3, w9
b.ne loc_844
add x2, x2, #4

loc_890:
bfxil w7, w4, #0, #0xa
str w7, [x2]
ret 

loc_89c:
mov x2, x0
mov w7, #0x320e0000
movk w7, #0x3e0
mov w8, #0x52a00000
movk w8, #0x80
mov w9, #-0x56000000
movk w9, #0x3f0
sub w10, w7, #0x10, lsl #12
add w11, w8, #0x80

loc_8c0:
ldr w3, [x2], #4
cmp w3, w7
ccmp w3, w8, #4, ne
b.ne loc_8c0
ldp w3, w4, [x2, #4]
and w3, w3, #0xfffffff0
cmp w4, w10
ccmp w4, w11, #4, ne
ccmp w3, w9, #0, eq
b.ne loc_8c0
ldr w3, [x2]
ldr w4, [x2, #0xc]
sub w3, w3, w4
lsr w4, w4, #0x1a
cmp w4, #0x25
ccmp w3, #3, #0, eq
b.ne loc_8c0
add x2, x2, #0xc

loc_908:
ldr w3, [x2, #4]!
lsr w4, w3, #0x1a
cmp w4, #0x25
b.ne loc_908
sbfx w3, w3, #0, #0x1a
ldr w7, loc_924
str w7, [x2, w3, sxtw #2]

loc_924:
ret 

loc_928:
mov x2, x0
mov w8, #0x32000000
movk w8, #0x7e0
mov w9, #0x52800000
movk w9, #0x60
mov w10, #0x25

loc_940:
ldr w3, [x2], #4
cmp w3, w8
ccmp w3, w9, #4, ne
b.ne loc_940
ldp w3, w4, [x2]
ldp w5, w6, [x2, #8]
ldr w7, [x2, #0x10]
lsr w3, w3, #0x1a
lsr w5, w5, #0x1a
cmp w4, w8
ccmp w4, w9, #4, ne
b.ne loc_940
cmp w6, w8
ccmp w6, w9, #4, ne
lsr w4, w7, #0x1a
ccmp w3, w10, #0, eq
ccmp w5, w10, #0, eq
ccmp w4, w10, #0, eq
b.ne loc_940
add x2, x2, #0x10
sbfx w7, w7, #0, #0x1a
ldr w3, loc_99c
str w3, [x2, w7, sxtw #2]

loc_99c:
ret 

loc_9a0:
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

loc_9d8:
ldp w10, w11, [x2, #4]!
cmp w10, w3
ccmp w11, w4, #0, eq
b.ne loc_9d8
ldp w10, w11, [x2, #8]
cmp w11, w6
ccmp w11, w7, #4, ne
ccmp w10, w5, #0, eq
b.ne loc_9d8
ldur w10, [x2, #-4]
and w10, w10, #0xff80001f
cmp w10, w8
b.ne loc_9d8
sub x10, x2, #4
sub x11, x10, #0x18

loc_a14:
ldr w12, [x10, #-4]!
and w13, w12, #0xff80001f
cmp w13, w9
b.eq loc_a30
cmp x10, x11
b.hi loc_a14
b loc_9d8

loc_a30:
sbfx w12, w12, #5, #0x13
mov w8, #0x14000000
bfxil w8, w12, #0, #0x1a
str w8, [x10]
ret 

_end:
