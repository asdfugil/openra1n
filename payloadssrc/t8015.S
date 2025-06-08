// Disassembled using mineekware
// Filename: t8015.bin
// Amount of instructions: 812
// Shellcode binary size: 3248

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
//sigcheck patch
mov w0, #0xd2800000
mov x1, #0x100000000
movk x1, #0x4400, lsl #16
movk x1, #0x624c
str w0, [x1]

mov x7, #0x100000000
movk x7, #0x4201, lsl #16
movk x7, #0x8000
mov w1, #-0x6c000000
movk w1, #0x100
str w1, [x7]
mov w1, #0x201f
movk w1, #0xd503, lsl #16
str w1, [x7, #0x70]
str w1, [x7, #0x80]
mov x0, #0x3e000000
add x0, x7, x0
add x0, x0, #0x3e0
add x1, x0, #8
mov x2, #0x180000000
add x2, x2, #3, lsl #12
str x0, [x2, #0xa40]
str x1, [x2, #0xa60]
add x0, x7, #0x3e0
adr x1, loc_b8
mov x2, #0x20
bl loc_658
adr x1, loc_d8
adr x2, _end
sub x2, x2, x1
bl loc_658
mov x1, x0
mov x0, x7
bl loc_c
mov x8, #0x100000000
movk x8, #0x1894

mov w0, #4
mov w19, #4
br x8

loc_b8:
mov w0, #1
ret 
mov x8, #0x180000000
add x8, x8, #8, lsl #12
ldr w0, [x8, #0x414]
and w0, w0, #0xf7ffffff
str w0, [x8, #0x414]
ret 

loc_d8:
mov x25, x0
mov x24, x1
mov x23, x30
mov x22, x29
bl loc_950
ldr w0, [x25, #0x200]
mov w1, #0x4c4c
movk w1, #0x2042, lsl #16
cmp w0, w1
b.eq loc_354
mov w1, #0x4e69
movk w1, #0x6f6f, lsl #16
str w1, [x25, #0x200]
ldr w0, [x25, #0x208]
mov w1, #0x6567
movk w1, #0x2031, lsl #16
cmp w0, w1
b.eq loc_354
mov x0, x25
bl loc_a94
bl loc_b08
bl loc_b94
mov x0, x25
mov w3, #0x7ff00

loc_138:
mov w1, #0x210
movk w1, #0xd290, lsl #16
mov w2, #-0x10
bl loc_a4c
cbz x0, loc_354
ldr w4, [x0, #4]!
and w2, w4, #0xfffffff0
mov w1, #0x4170
movk w1, #0xf2a6, lsl #16
cmp w2, w1
b.ne loc_138
ldr w4, [x0, #4]
and w2, w4, #0xfffffff0
mov w1, #0x50
movk w1, #0xf2c0, lsl #16
cmp w2, w1
b.ne loc_138
mov w1, #-0x46c00000
bfi w1, w4, #5, #5
mov w2, #-0x20
mov w3, #0x40
bl loc_a4c
cbz x0, loc_5e8
mov w1, #-0x6c000000
mov w2, #-0x4000000
mov w3, #0x40
bl loc_a70
cbz x0, loc_5e8
mov x5, x0
mov w1, #0x3c0
movk w1, #0xd65f, lsl #16
mov w2, #-1
mov w3, #0x1000
bl loc_a4c
cbz x0, loc_5e8
mov w1, #-0x6c000000
mov w2, #-0x4000000
mov w3, #0x100
bl loc_a70
cbz x0, loc_5e8
ldur w4, [x0, #-4]
and w4, w4, w2
cmp w4, w1
b.eq loc_248
mov x6, x0
ldr w1, [x5]
sbfiz x1, x1, #2, #0x1a
add x0, x1, x5
mov w1, #-0x57c00000
movk w1, #0x7bfd
mov w2, #-0x1a00000
movk w2, #0x7fff
mov w3, #0x100
bl loc_a4c
cbz x0, loc_5e8
mov w1, #0x14000000
mov w2, #-0x4000000
mov w3, #0x20
bl loc_a4c
cbz x0, loc_5e8
ldr w1, [x0]
sbfiz x1, x1, #2, #0x1a
add x0, x1, x0
sub x0, x0, x5
mov w2, #-0x6c000000
bfxil w2, w0, #2, #0x1a
str w2, [x5], #4
add x0, x6, #4

loc_248:
sub x0, x0, x5
mov w2, #0x14000000
bfxil w2, w0, #2, #0x1a
str w2, [x5]
mov x0, x25
mov w1, #0xb000000
mov w2, #0xfc00
movk w2, #0xffe0, lsl #16
mov w3, #0x7ff00

loc_26c:
bl loc_a4c
cbz x0, loc_5e8
ldr w4, [x0, #4]!
mov w5, #0xfc10
movk w5, #0xffe0, lsl #16
and w4, w4, w5
mov w6, #0x4810
movk w6, #0xb820, lsl #16
cmp w4, w6
b.ne loc_26c
ldr w4, [x0, #8]
mov w5, #0x3c0
movk w5, #0xd65f, lsl #16
cmp w4, w5
b.ne loc_26c
mov w1, #-0x2afd0000
movk w1, #0x201f
str w1, [x0]
mov x0, x25
mov w1, #0x21f
movk w1, #0x7202, lsl #16
mov w2, #-0x1e1
mov w3, #0x7ff00
bl loc_a4c
cbz x0, loc_2e8
mov w1, #0x54000000
mov w2, #-0xffffe1
mov w3, #0x100
bl loc_a4c
cbz x0, loc_5e8
b loc_348

loc_2e8:
mov x0, x25
mov w1, #0x10
movk w1, #0x7202, lsl #16
mov w2, #0xfe10
movk w2, #0xffff, lsl #16
mov w3, #0x7ff00

loc_300:
bl loc_a4c
cbz x0, loc_5e8
ldr w4, [x0], #4
and w5, w4, #0x1f
cmp w5, #0x1f
b.eq loc_300
mov w1, #0x7800
movk w1, #0xa60, lsl #16
bfi w1, w4, #0x10, #5
mov w2, #-0x400
mov w3, #0x1000
bl loc_a4c
cbz x0, loc_5e8
mov w1, #0x37000000
mov w2, #-0x80000
mov w3, #0x10
bl loc_a4c
cbz x0, loc_5e8

loc_348:
mov w1, #-0x2afd0000
movk w1, #0x201f
str w1, [x0]

loc_354:
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

loc_38c:
add x0, x0, #4
bl loc_a4c
cbz x0, loc_5e8
ldur x4, [x0, #-8]
and x4, x4, x5
cmp x4, x6
ccmp x4, x7, #4, ne
b.ne loc_38c
mov w4, #0x108
movk w4, #0x3200, lsl #16
str w4, [x0]
sub x0, x0, #4
mov w1, #0
movk w1, #0x9400, lsl #16
mov w2, #0
movk w2, #0xfc00, lsl #16
sub x3, x0, #0x20

loc_3d0:
ldr x4, [x0, #-4]!
and x4, x4, x2
cmp x4, x1
b.eq loc_3ec
cmp x0, x3
b.hi loc_3d0
b loc_5e8

loc_3ec:
mov w2, #-0x2afd0000
movk w2, #0x201f
stp w2, w2, [x0]
mov x0, x25
bl loc_c0c
mov w1, #0x7ff00
add x1, x0, x1
mov w2, #-0x2afd0000
movk w2, #0x201f
add w3, w2, #0x8a0
mov w4, #0x14000000
mov x7, #0x1f4
mov x8, #0

loc_420:
cmp x0, x1
b.hs loc_5e8
ldr w5, [x0]
cmp w5, #0
ccmp w5, w2, #4, ne
ccmp w5, w3, #4, ne
ccmp w5, w4, #4, ne
b.eq loc_448
add x0, x0, #4
b loc_420

loc_448:
mov x5, x0

loc_44c:
ldr w6, [x5, #4]!
cmp w6, #0
ccmp w6, w2, #4, ne
ccmp w6, w3, #4, ne
ccmp w6, w4, #4, ne
b.eq loc_46c
mov x0, x5
b loc_420

loc_46c:
sub x6, x5, x0
cmp w6, w7
b.hs loc_47c
b loc_44c

loc_47c:
mov x9, x0
cbnz x8, loc_494
mov x8, x9
mov x0, x5
mov x7, #0x1f4
b loc_420

loc_494:
mov x0, x8
adr x1, loc_664
mov x2, #0x1f4
bl loc_658
mov x0, x9
adr x1, loc_858
mov x2, #0x1f4
bl loc_658
add x7, x25, #0x270
stp x8, x9, [x7]
add x0, x25, #0x2a0
mov x8, x0
adr x1, loc_604
mov x2, #0x60
bl loc_658
mov x0, x25
mov w1, #-0x2d800000
movk w1, #0x12
mov w2, #-1
mov w3, #0x7ff00
bl loc_a4c
cbz x0, loc_5e8
mov w1, #-0x2ae80000
movk w1, #0x1000
mov w2, #-0x20
mov w3, #0x200
bl loc_a70
cbz x0, loc_5e8
ldr w1, loc_7e0
mov w2, #-1
mov w3, #0x20
bl loc_a4c
cbz x0, loc_5e8
add x4, x25, #0x254
ldp w5, w6, [x0, #4]!
stp w5, w6, [x4], #8
ldp w5, w6, [x0, #8]
lsr w7, w6, #0x18
cmp w7, #0x58
b.eq loc_53c
stp w5, w6, [x4], #8
b loc_584

loc_53c:
str w5, [x4], #4
sbfx w7, w6, #5, #0x13
add x7, x0, w7, sxtw #2
ldur x7, [x7, #0xc]
tst x7, #-0x1000000000000
b.ne loc_5e8
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

loc_584:
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

loc_5b8:
bfi w1, w8, #5, #0x10
str w1, [x0, #8]
mov w1, #-0x29c10000
movk w1, #0x240
str w1, [x0, #0xc]
mov x0, x25
mov x1, x24

loc_5d4:
mov x30, x23
mov x29, x22

loc_5dc:
dsb sy
msr daifset, #0xf
ret 

loc_5e8:
mov x8, #0x200000000
movk x8, #0x352b, lsl #16
movk x8, #0xc000
ldr w0, [x8]
and w0, w0, #0xfffffffe
str w0, [x8]

loc_600:
b loc_600

loc_604:
mov x18, x30
and x0, x30, #0xfffffffffffff000
add x0, x0, #0xbc0
ldr w1, loc_660

loc_614:
ldr w2, [x30, #4]!
cmp w2, w1
b.ne loc_614
sub x4, x0, x30
mov w2, #0x14000000
bfxil w2, w4, #2, #0x1a
str w2, [x30]
ldr x1, loc_5d4
mov x2, #0x1f4
bl loc_658
ldr x1, loc_5dc
mov x2, #0x1f4
bl loc_658
dsb sy
b loc_5b8

loc_650:
ldr w4, [x1], #4
str w4, [x0], #4

loc_658:
subs w2, w2, #4
b.hs loc_650

loc_660:
ret 

loc_664:
msr daifset, #0xf
mov x28, x30
mov x27, x0
mov x8, #0x200000000
movk x8, #0x352b, lsl #16
movk x8, #0
str wzr, [x8, #0xc]
str wzr, [x8, #0x1c]
ldr x8, loc_9dc
blr x8
ldr x8, loc_9cc
msr vbar_el1, x8
adr x0, loc_6d8
mov x1, #0x100000000
movk x1, #0x8001, lsl #16
movk x1, #0x8000
add x2, x1, #4, lsl #12
cmp x0, x1
ccmp x0, x2, #2, hs
b.lo loc_6d8
add x1, x1, #0x74
add x2, x1, #0x374
mov x3, x1

loc_6c0:
ldr w4, [x0], #4
str w4, [x1], #4
cmp x1, x2
b.lo loc_6c0
bl loc_8d8
br x3

loc_6d8:
ldr x0, loc_99c
ldr x1, loc_9a4
mov w2, #0x1100
bl loc_8ec
mov w2, #0x8ec0
bl loc_900
ldr x0, loc_9ac
msr spsel, #1
mov sp, x0
add x0, x0, #1, lsl #12
msr spsel, #0
mov sp, x0
msr daifclr, #4
ic iallu
ldr x9, loc_9b4
mov x7, #0x60000000000000
movk x7, #0x421
mov x1, x9
mov w2, #0x8000
bl loc_900
mov x8, x9
mov x0, #0x100000000
mov w1, #0x20000
movk x0, #0x685
bl loc_920
mov x0, #0x200000000
mov w1, #0x60000000
orr x0, x0, x7
bl loc_920
mov x0, #0x600000000
mov w1, #0x20000000
orr x0, x0, x7
bl loc_920
mov x0, #0x600000000
movk x0, #0x4000, lsl #16
mov w1, #0x2000000
orr x0, x0, x7
bl loc_920
add x8, x9, #4, lsl #12
orr x0, x8, #3
str x0, [x9, #0x600]
mov x0, #0x180000000
mov w1, #0x200000
movk x0, #0x607
bl loc_910
ldr x0, loc_9bc
add x1, x0, #4, lsl #12
add x4, x8, #0x3f0
stp x0, x1, [x4]
dsb sy
mov w0, #0xff04
msr mair_el1, x0
msr ttbr0_el1, x9
mov x0, #0x100000000
movk x0, #0x659c, lsl #16
movk x0, #0xa51c
msr tcr_el1, x0
tlbi vmalle1
isb 
mrs x0, cpacr_el1
orr w0, w0, #0x300000
msr cpacr_el1, x0
mov w8, #0x100d
mrs x0, sctlr_el1
orr x0, x0, x8
msr sctlr_el1, x0

loc_7e0:
isb 
ldr x8, loc_9e4
blr x8
ldr x8, loc_a44
mov w0, #1
strb w0, [x8]
ldr x8, loc_9ec
ldr x0, loc_9d4
mov w1, #0x10000
movk w1, #0xc000
mov w2, #1
blr x8
adr x19, loc_9f4
adr x20, loc_a1c

loc_818:
ldr x8, [x19], #8
mov w0, #0
blr x8
cmp x19, x20
b.lo loc_818
ldr x8, loc_a24
mov w0, #1
blr x8
adr x0, loc_970
ldr x1, loc_a2c
mov x2, #0xf

loc_844:
ldrb w3, [x0], #1
strb w3, [x1], #1
sub w2, w2, #1
cbnz w2, loc_844
adr x0, loc_97f

loc_858:
ldr x1, loc_a34
mov x2, #0x1d

loc_860:
ldrb w3, [x0], #1
strb w3, [x1], #1
sub w2, w2, #1
cbnz w2, loc_860
mov w0, #2
ldr x1, loc_a3c
str w0, [x1]
ldr x8, loc_a1c
ldr x0, loc_9c4
mov x1, #0x1c0000
blr x8
bl loc_950
dsb sy
ldr x0, loc_9c4
add x1, x0, #0x1c0, lsl #12

loc_89c:
dc cvau, x0
add x0, x0, #0x40
cmp x0, x1
b.lo loc_89c
bl loc_8d8
msr daifset, #0xf
msr spsel, #1
and sp, xzr, #1
msr sp_el0, xzr
msr vbar_el1, xzr
isb 
mov x30, x28
mov x0, x27
ldr x8, loc_9c4
br x8

loc_8d8:
dsb sy
isb 
ic iallu
isb 
ret 

loc_8ec:
ldp x3, x4, [x0], #0x10
stp x3, x4, [x1], #0x10
subs w2, w2, #0x10
b.hi loc_8ec
ret 

loc_900:
stp xzr, xzr, [x1], #0x10
subs w2, w2, #0x10
b.hi loc_900
ret 

loc_910:
lsr x4, x0, #0xb
lsr x1, x1, #0xe
mov w3, #0x4000
b loc_92c

loc_920:
lsr x4, x0, #0x16
lsr x1, x1, #0x19
mov w3, #0x2000000

loc_92c:
and x4, x4, #0x3ff8
add x4, x4, x8
mov w2, #0

loc_938:
str x0, [x4, w2, uxtw #3]
add x0, x0, x3
add w2, w2, #1
cmp w2, w1
b.lo loc_938
ret 

loc_950:
mov x1, #0x200000000
movk x1, #0x3310, lsl #16
movk x1, #0xb4
ldr w0, [x1]
and w0, w0, #0xfffffffc
str w0, [x1]
ret 
nop 

loc_970:
.asciz "YOLO:checkra1n"
loc_97f:
.asciz "GANG:KJC HAXX:Axi0mX ETA:son"
loc_99c:
.dword 0x10001c000
loc_9a4:
.dword 0x180000000
loc_9ac:
.dword 0x180015000
loc_9b4:
.dword 0x1801f8000
loc_9bc:
.dword 0x18000c607
loc_9c4:
.dword 0x18001c000
loc_9cc:
.dword 0x100000800
loc_9d4:
.dword 0x1801e4000
loc_9dc:
.dword 0x1000073cc
loc_9e4:
.dword 0x10000906c
loc_9ec:
.dword 0x10000dae8
loc_9f4:
.dword 0x100009b14
.dword 0x100009084
.dword 0x1000029a8
.dword 0x1000024dc
.dword 0x10000c420
loc_a1c:
.dword 0x10000bb94
loc_a24:
.dword 0x100007070
loc_a2c:
.dword 0x180003ac0
loc_a34:
.dword 0x180003af7
loc_a3c:
.dword 0x180003a74
loc_a44:
.dword 0x180009ae0

loc_a4c:
ldr w4, [x0]
and w4, w4, w2
cmp w4, w1
b.eq loc_a6c
add x0, x0, #4
sub w3, w3, #4
cbnz w3, loc_a4c
mov x0, xzr

loc_a6c:
ret 

loc_a70:
ldr w4, [x0]
and w4, w4, w2
cmp w4, w1
b.eq loc_a90
sub x0, x0, #4
sub w3, w3, #4
cbnz w3, loc_a70
mov x0, xzr

loc_a90:
ret 

loc_a94:
mov x2, x0
mov w5, #-0x6d8b0000
movk w5, #0xd000
mov w6, #-0x4dc00000
mov w7, #-0x55e10000
mov w8, #0x2a010000
movk w8, #0x3e0

loc_ab0:
ldr w3, [x2], #4
and w4, w3, #0xffffffe0
cmp w4, w5
b.ne loc_ab0
bfi w6, w3, #5, #5
ldr w4, [x2]
and w3, w4, #0xffffffe0
cmp w3, w6
b.eq loc_afc
cmp w3, w8
b.ne loc_ab0
and w9, w6, #0x3e0
movk w9, #0xaa00, lsl #16
bfi w9, w4, #0x10, #5
ldr w4, [x2, #4]
and w3, w4, #0xffffffe0
cmp w3, w9
b.ne loc_ab0
add x2, x2, #4

loc_afc:
bfxil w7, w4, #0, #0xa
str w7, [x2]
ret 

loc_b08:
mov x2, x0
mov w7, #0x320e0000
movk w7, #0x3e0
mov w8, #0x52a00000
movk w8, #0x80
mov w9, #-0x56000000
movk w9, #0x3f0
sub w10, w7, #0x10, lsl #12
add w11, w8, #0x80

loc_b2c:
ldr w3, [x2], #4
cmp w3, w7
ccmp w3, w8, #4, ne
b.ne loc_b2c
ldp w3, w4, [x2, #4]
and w3, w3, #0xfffffff0
cmp w4, w10
ccmp w4, w11, #4, ne
ccmp w3, w9, #0, eq
b.ne loc_b2c
ldr w3, [x2]
ldr w4, [x2, #0xc]
sub w3, w3, w4
lsr w4, w4, #0x1a
cmp w4, #0x25
ccmp w3, #3, #0, eq
b.ne loc_b2c
add x2, x2, #0xc

loc_b74:
ldr w3, [x2, #4]!
lsr w4, w3, #0x1a
cmp w4, #0x25
b.ne loc_b74
sbfx w3, w3, #0, #0x1a
ldr w7, loc_b90
str w7, [x2, w3, sxtw #2]

loc_b90:
ret 

loc_b94:
mov x2, x0
mov w8, #0x32000000
movk w8, #0x7e0
mov w9, #0x52800000
movk w9, #0x60
mov w10, #0x25

loc_bac:
ldr w3, [x2], #4
cmp w3, w8
ccmp w3, w9, #4, ne
b.ne loc_bac
ldp w3, w4, [x2]
ldp w5, w6, [x2, #8]
ldr w7, [x2, #0x10]
lsr w3, w3, #0x1a
lsr w5, w5, #0x1a
cmp w4, w8
ccmp w4, w9, #4, ne
b.ne loc_bac
cmp w6, w8
ccmp w6, w9, #4, ne
lsr w4, w7, #0x1a
ccmp w3, w10, #0, eq
ccmp w5, w10, #0, eq
ccmp w4, w10, #0, eq
b.ne loc_bac
add x2, x2, #0x10
sbfx w7, w7, #0, #0x1a
ldr w3, loc_c08
str w3, [x2, w7, sxtw #2]

loc_c08:
ret 

loc_c0c:
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

loc_c44:
ldp w10, w11, [x2, #4]!
cmp w10, w3
ccmp w11, w4, #0, eq
b.ne loc_c44
ldp w10, w11, [x2, #8]
cmp w11, w6
ccmp w11, w7, #4, ne
ccmp w10, w5, #0, eq
b.ne loc_c44
ldur w10, [x2, #-4]
and w10, w10, #0xff80001f
cmp w10, w8
b.ne loc_c44
sub x10, x2, #4
sub x11, x10, #0x18

loc_c80:
ldr w12, [x10, #-4]!
and w13, w12, #0xff80001f
cmp w13, w9
b.eq loc_c9c
cmp x10, x11
b.hi loc_c80
b loc_c44

loc_c9c:
sbfx w12, w12, #5, #0x13
mov w8, #0x14000000
bfxil w8, w12, #0, #0x1a
str w8, [x10]
ret 

_end:
