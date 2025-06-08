// Disassembled using mineekware
// Filename: t7000.bin
// Amount of instructions: 674
// Shellcode binary size: 2696

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
mov x0, #0x180000000
mov x1, #0x100000000
mov w2, #0x20000
bl loc_450
mov x0, #0x180000000
movk x0, #0xa118
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
cmp w1, #0x19
b.hs loc_a0
ldr x0, [x0]
and x0, x0, #0xfffffffff000

loc_a0:
ldr x0, [x0, #0x20]
and x0, x0, #0xfffffffff000
mov x1, #0x685
orr x1, x1, #0x180000000
str x1, [x0]
dsb sy
tlbi alle3
isb 
mov x7, #0x180000000
add x7, x7, #0xe0, lsl #12
add x0, x7, #0x400
adr x1, loc_f8
mov x2, #0x990
bl loc_450
add x0, x7, #0x400
add x1, x0, #0x990
bl loc_c
mov x8, #0x100000000
movk x8, #0x628
mov w0, #4
mov w19, #4
br x8

loc_f8:
mov x25, x0
mov x24, x1
mov x23, x30
mov x22, x29
bl loc_7b8
ldr w0, [x25, #0x200]
mov w1, #0x4c4c
movk w1, #0x2042, lsl #16
cmp w0, w1
b.eq loc_14c
mov w1, #0x4e69
movk w1, #0x6f6f, lsl #16
str w1, [x25, #0x200]
ldr w0, [x25, #0x208]
mov w1, #0x6567
movk w1, #0x2031, lsl #16
cmp w0, w1
b.eq loc_14c
mov x0, x25
bl loc_8e4
bl loc_958

loc_14c:
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

loc_184:
add x0, x0, #4
bl loc_89c
cbz x0, loc_3e0
ldur x4, [x0, #-8]
and x4, x4, x5
cmp x4, x6
ccmp x4, x7, #4, ne
b.ne loc_184
mov w4, #0x108
movk w4, #0x3200, lsl #16
str w4, [x0]
sub x0, x0, #4
mov w1, #0
movk w1, #0x9400, lsl #16
mov w2, #0
movk w2, #0xfc00, lsl #16
sub x3, x0, #0x20

loc_1c8:
ldr x4, [x0, #-4]!
and x4, x4, x2
cmp x4, x1
b.eq loc_1e4
cmp x0, x3
b.hi loc_1c8
b loc_3e0

loc_1e4:
mov w2, #-0x2afd0000
movk w2, #0x201f
stp w2, w2, [x0]
mov x0, x25
bl loc_9e4
mov w1, #0x7ff00
add x1, x0, x1
mov w2, #-0x2afd0000
movk w2, #0x201f
add w3, w2, #0x8a0
mov w4, #0x14000000
mov x7, #0x220
mov x8, #0

loc_218:
cmp x0, x1
b.hs loc_3e0
ldr w5, [x0]
cmp w5, #0
ccmp w5, w2, #4, ne
ccmp w5, w3, #4, ne
ccmp w5, w4, #4, ne
b.eq loc_240
add x0, x0, #4
b loc_218

loc_240:
mov x5, x0

loc_244:
ldr w6, [x5, #4]!
cmp w6, #0
ccmp w6, w2, #4, ne
ccmp w6, w3, #4, ne
ccmp w6, w4, #4, ne
b.eq loc_264
mov x0, x5
b loc_218

loc_264:
sub x6, x5, x0
cmp w6, w7
b.hs loc_274
b loc_244

loc_274:
mov x9, x0
cbnz x8, loc_28c
mov x8, x9
mov x0, x5
mov x7, #0x220
b loc_218

loc_28c:
mov x0, x8
adr x1, loc_45c
mov x2, #0x220
bl loc_450
mov x0, x9
adr x1, loc_67c
mov x2, #0x220
bl loc_450
add x7, x25, #0x270
stp x8, x9, [x7]
add x0, x25, #0x2a0
mov x8, x0
adr x1, loc_3fc
mov x2, #0x60
bl loc_450
mov x0, x25
mov w1, #-0x2d800000
movk w1, #0x12
mov w2, #-1
mov w3, #0x7ff00
bl loc_89c
cbz x0, loc_3e0
mov w1, #-0x2ae20000
movk w1, #0x1000
mov w2, #-0x20
mov w3, #0x200
bl loc_8c0
cbz x0, loc_3e0
ldr w1, loc_618
mov w2, #-1
mov w3, #0x20
bl loc_89c
cbz x0, loc_3e0
add x4, x25, #0x254
ldp w5, w6, [x0, #4]!
stp w5, w6, [x4], #8
ldp w5, w6, [x0, #8]
lsr w7, w6, #0x18
cmp w7, #0x58
b.eq loc_334
stp w5, w6, [x4], #8
b loc_37c

loc_334:
str w5, [x4], #4
sbfx w7, w6, #5, #0x13
add x7, x0, w7, sxtw #2
ldur x7, [x7, #0xc]
tst x7, #-0x1000000000000
b.ne loc_3e0
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

loc_37c:
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

loc_3b0:
bfi w1, w8, #5, #0x10
str w1, [x0, #8]
mov w1, #-0x29c10000
movk w1, #0x240
str w1, [x0, #0xc]
mov x0, x25
mov x1, x24

loc_3cc:
mov x30, x23
mov x29, x22

loc_3d4:
dsb sy
msr daifset, #0xf
ret 

loc_3e0:
mov x8, #0x200000000
movk x8, #0xe02, lsl #16
movk x8, #0xa000
ldr w0, [x8]
and w0, w0, #0xfffffffe
str w0, [x8]

loc_3f8:
b loc_3f8

loc_3fc:
mov x18, x30
and x0, x30, #0xfffffffffffff000
add x0, x0, #0xbc0
ldr w1, loc_458

loc_40c:
ldr w2, [x30, #4]!
cmp w2, w1
b.ne loc_40c
sub x4, x0, x30
mov w2, #0x14000000
bfxil w2, w4, #2, #0x1a
str w2, [x30]
ldr x1, loc_3cc
mov x2, #0x220
bl loc_450
ldr x1, loc_3d4
mov x2, #0x220
bl loc_450
dsb sy
b loc_3b0

loc_448:
ldr w4, [x1], #4
str w4, [x0], #4

loc_450:
subs w2, w2, #4
b.hs loc_448

loc_458:
ret 

loc_45c:
msr daifset, #0xf
mov x28, x30
mov x27, x0
mov x8, #0x200000000
movk x8, #0xe02, lsl #16
movk x8, #0x7000
str wzr, [x8, #0xc]
str wzr, [x8, #0x1c]
ldr x8, loc_834
msr vbar_el3, x8
adr x0, loc_4cc
mov x1, #0x100000000
movk x1, #0x800f, lsl #16
movk x1, #0xc000
add x2, x1, #4, lsl #12
sub x10, x1, #1, lsl #12
cmp x0, x1
ccmp x0, x2, #2, hs
b.lo loc_4cc
add x1, x1, #0x70
add x2, x1, #0x3d0
mov x3, x1

loc_4b4:
ldr w4, [x0], #4
str w4, [x1], #4
cmp x1, x2
b.lo loc_4b4
bl loc_730
br x3

loc_4cc:
ldr x0, loc_804
ldr x1, loc_80c
mov w2, #0x800
bl loc_744
mov w2, #0x82d0
bl loc_758
ldr x0, loc_814
msr spsel, #1
mov sp, x0
add x0, x0, #2, lsl #12
msr spsel, #0
mov sp, x0
add x0, x0, #2, lsl #12
ldr x8, loc_81c
str x0, [x8]
mov x0, #0x100000000
add x0, x0, #6, lsl #12
mov x1, x10
mov w2, #0x1000
bl loc_744
mov w0, #-0x6c000000
movk w0, #0x6610
str w0, [x10, #0xa60]
movk w0, #0x67f2
str w0, [x10, #0x2ec]
movk w0, #0x6835
str w0, [x10, #0x1e0]
msr daifclr, #4
ic iallu
ldr x9, loc_824
mov x7, #0x60000000000000
movk x7, #0x421
mov x1, x9
mov w2, #0x8000
bl loc_758
add x8, x9, #1, lsl #12
orr x0, x8, #3
str x0, [x9, #0x20]
add x0, x0, #1, lsl #12
str x0, [x8]
add x8, x9, #2, lsl #12
mov x0, #0x100000000
mov w1, #0x20000
movk x0, #0x687
bl loc_778
add x0, x10, #0x687
str x0, [x8, #0x30]
add x0, x0, #1, lsl #12
str x0, [x8, #0x100]
add x8, x9, #3, lsl #12
orr x0, x8, #3
str x0, [x9, #0x30]
mov x0, #0x180000000
mov w1, #0x400000
movk x0, #0x605
bl loc_788
add x8, x9, #4, lsl #12
orr x0, x8, #3
str x0, [x9, #0x40]
mov x0, #0x200000000
mov w1, #0x10000000
orr x0, x0, x7
bl loc_788
mov x0, #0x600000000
mov w1, #0
orr x0, x0, x7
mov x8, x9
bl loc_768
dsb sy
mov w0, #0xff04
msr mair_el3, x0
msr ttbr0_el3, x9
mov w0, #0x10000
movk w0, #0x251c
msr tcr_el3, x0
tlbi alle3
isb 
mov w0, #0xe
msr scr_el3, x0
mov w8, #0x100d
mrs x0, sctlr_el3
orr x0, x0, x8
msr sctlr_el3, x0

loc_618:
isb 
ldr x8, loc_844
ldr x0, loc_83c
mov w1, #0x100000
movk w1, #0
mov w2, #1
blr x8
adr x19, loc_84c
adr x20, loc_874

loc_63c:
ldr x8, [x19], #8
mov w0, #0
blr x8
cmp x19, x20
b.lo loc_63c
ldr x8, loc_87c
mov w0, #1
blr x8
adr x0, loc_7d8
ldr x1, loc_884
mov x2, #0xf

loc_668:
ldrb w3, [x0], #1
strb w3, [x1], #1
sub w2, w2, #1
cbnz w2, loc_668
adr x0, loc_7e7

loc_67c:
ldr x1, loc_88c
mov x2, #0x1d

loc_684:
ldrb w3, [x0], #1
strb w3, [x1], #1
sub w2, w2, #1
cbnz w2, loc_684
mov w0, #2
ldr x1, loc_894
str w0, [x1]
ldr x8, loc_874
ldr x0, loc_82c
mov x1, #0x80000
blr x8
bl loc_7b8
dsb sy
ldr x0, loc_82c
add x1, x0, #0x80, lsl #12

loc_6c0:
dc cvau, x0
add x0, x0, #0x40
cmp x0, x1
b.lo loc_6c0
bl loc_730
msr daifset, #0xf
msr spsel, #1
and sp, xzr, #1
msr sp_el0, xzr
msr vbar_el3, xzr
isb 
mov x30, x28
mov x0, x27
ldr x8, loc_82c
br x8
mov x0, #0x100000000
movk x0, #0x8008, lsl #16
movk x0, #0x3640
mov w1, #0x40
b loc_720
ldr x0, [x25, #8]
ldp w1, w2, [x25, #0x14]
add x0, x0, w2, uxtw
sub w1, w1, w2

loc_720:
dc civac, x0
add x0, x0, #0x40
subs x1, x1, #0x40
b.hi loc_720

loc_730:
dsb sy
isb 
ic iallu
isb 
ret 

loc_744:
ldp x3, x4, [x0], #0x10
stp x3, x4, [x1], #0x10
subs w2, w2, #0x10
b.hi loc_744
ret 

loc_758:
stp xzr, xzr, [x1], #0x10
subs w2, w2, #0x10
b.hi loc_758
ret 

loc_768:
lsr x4, x0, #0x1b
lsr x1, x1, #0x1e
mov w3, #0x40000000
b loc_794

loc_778:
lsr x4, x0, #9
lsr x1, x1, #0xc
mov w3, #0x1000
b loc_794

loc_788:
lsr x4, x0, #0x12
lsr x1, x1, #0x15
mov w3, #0x200000

loc_794:
and x4, x4, #0xff8
add x4, x4, x8
mov w2, #0

loc_7a0:
str x0, [x4, w2, uxtw #3]
add x0, x0, x3
add w2, w2, #1
cmp w2, w1
b.lo loc_7a0
ret 

loc_7b8:
mov x1, #0x200000000
movk x1, #0xe30, lsl #16
movk x1, #0x1b4
ldr w0, [x1]
and w0, w0, #0xfffffffc
str w0, [x1]
ret 
nop 

// loc_7d8:
// .byte 0x59, 0x4f, 0x4c, 0x4f
// fnmls z26.h, p0/m, z25.h, z8.h
// .byte 0x63, 0x6b, 0x72, 0x61
// .byte 0x31, 0x6e, 0x00, 0x47
// .byte 0x41, 0x4e, 0x47, 0x3a
// .byte 0x4b, 0x4a, 0x43, 0x20
// ldr x8, #0xb1018
// ldpsw x26, x16, [x9, #-0x40]
// .byte 0x30, 0x6d, 0x58, 0x20
// .byte 0x45, 0x54, 0x41, 0x3a
// .byte 0x73, 0x6f, 0x6e, 0x00
loc_7d8:
.asciz "YOLO:checkra1n"
loc_7e7:
.asciz "GANG:KJC HAXX:Axi0mX ETA:son"

loc_804:
// .byte 0x00, 0x90, 0x01, 0x00
// udf #1
.dword 0x100019000

loc_80c:
// .byte 0x00, 0x00, 0x08, 0x80
// udf #1
.dword 0x180080000

loc_814:
// .byte 0x00, 0x10, 0x0c, 0x80
// udf #1
.dword 0x1800c1000

loc_81c:
// .byte 0x00, 0x00, 0x08, 0x80
// udf #1
.dword 0x180080000

loc_824:
// .byte 0x00, 0x50, 0x0c, 0x80
// udf #1
.dword 0x1800c5000

loc_82c:
// .byte 0x00, 0x00, 0x38, 0x80
// udf #1
.dword 0x180380000

loc_834:
// udf #0xd000
// udf #1
.dword 0x10000d000

loc_83c:
// .byte 0x00, 0x00, 0x10, 0x80
// udf #1
.dword 0x180100000

loc_844:
// udf #0x6f90
// udf #1
.dword 0x100006f90

loc_84c:
// udf #0xbb10
// udf #1
.dword 0x10000bb10
// udf #0xb1b4
// udf #1
.dword 0x10000b1b4
// udf #0x26c4
// udf #1
.dword 0x1000026c4
// udf #0x119c
// udf #1
.dword 0x10000119c
// udf #0xc124
// udf #1
.dword 0x10000c124

loc_874:
// udf #0xedbc
// udf #1
.dword 0x10000edbc

loc_87c:
// udf #0xffbc
// udf #1
.dword 0x10000ffbc

loc_884:
// .byte 0x10, 0x89, 0x08, 0x80
// udf #1
.dword 0x180088910

loc_88c:
// .byte 0x47, 0x89, 0x08, 0x80
// udf #1
.dword 0x180088947

loc_894:
// .byte 0xc4, 0x88, 0x08, 0x80
// udf #1
.dword 0x1800888c4

loc_89c:
ldr w4, [x0]
and w4, w4, w2
cmp w4, w1
b.eq loc_8bc
add x0, x0, #4
sub w3, w3, #4
cbnz w3, loc_89c
mov x0, xzr

loc_8bc:
ret 

loc_8c0:
ldr w4, [x0]
and w4, w4, w2
cmp w4, w1
b.eq loc_8e0
sub x0, x0, #4
sub w3, w3, #4
cbnz w3, loc_8c0
mov x0, xzr

loc_8e0:
ret 

loc_8e4:
mov x2, x0
mov w5, #-0x6d8b0000
movk w5, #0xd000
mov w6, #-0x4dc00000
mov w7, #-0x55e10000
mov w8, #0x2a010000
movk w8, #0x3e0

loc_900:
ldr w3, [x2], #4
and w4, w3, #0xffffffe0
cmp w4, w5
b.ne loc_900
bfi w6, w3, #5, #5
ldr w4, [x2]
and w3, w4, #0xffffffe0
cmp w3, w6
b.eq loc_94c
cmp w3, w8
b.ne loc_900
and w9, w6, #0x3e0
movk w9, #0xaa00, lsl #16
bfi w9, w4, #0x10, #5
ldr w4, [x2, #4]
and w3, w4, #0xffffffe0
cmp w3, w9
b.ne loc_900
add x2, x2, #4

loc_94c:
bfxil w7, w4, #0, #0xa
str w7, [x2]
ret 

loc_958:
mov x2, x0
mov w7, #0x320e0000
movk w7, #0x3e0
mov w8, #0x52a00000
movk w8, #0x80
mov w9, #-0x56000000
movk w9, #0x3f0
sub w10, w7, #0x10, lsl #12
add w11, w8, #0x80

loc_97c:
ldr w3, [x2], #4
cmp w3, w7
ccmp w3, w8, #4, ne
b.ne loc_97c
ldp w3, w4, [x2, #4]
and w3, w3, #0xfffffff0
cmp w4, w10
ccmp w4, w11, #4, ne
ccmp w3, w9, #0, eq
b.ne loc_97c
ldr w3, [x2]
ldr w4, [x2, #0xc]
sub w3, w3, w4
lsr w4, w4, #0x1a
cmp w4, #0x25
ccmp w3, #3, #0, eq
b.ne loc_97c
add x2, x2, #0xc

loc_9c4:
ldr w3, [x2, #4]!
lsr w4, w3, #0x1a
cmp w4, #0x25
b.ne loc_9c4
sbfx w3, w3, #0, #0x1a
ldr w7, loc_9e0
str w7, [x2, w3, sxtw #2]

loc_9e0:
ret 

loc_9e4:
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

loc_a1c:
ldp w10, w11, [x2, #4]!
cmp w10, w3
ccmp w11, w4, #0, eq
b.ne loc_a1c
ldp w10, w11, [x2, #8]
cmp w11, w6
ccmp w11, w7, #4, ne
ccmp w10, w5, #0, eq
b.ne loc_a1c
ldur w10, [x2, #-4]
and w10, w10, #0xff80001f
cmp w10, w8
b.ne loc_a1c
sub x10, x2, #4
sub x11, x10, #0x18

loc_a58:
ldr w12, [x10, #-4]!
and w13, w12, #0xff80001f
cmp w13, w9
b.eq loc_a74
cmp x10, x11
b.hi loc_a58
b loc_a1c

loc_a74:
sbfx w12, w12, #5, #0x13
mov w8, #0x14000000
bfxil w8, w12, #0, #0x1a
str w8, [x10]
ret 

_end:
