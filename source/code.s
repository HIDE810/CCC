.section .code,"ax",%progbits
.align 2
.arch armv6k
.syntax unified
.arm
.global code

code: @ForceHomeButton
@-----------Code-----------@
mrc 15, 0, r2, cr13, cr0, 3
ldrd r0, [pc, #0x10]
strd r0, [r2, #0x80]
ldr r0, [pc, #4]
svc #0x32
bx lr
.word 0x20003
.word 0xC0080
.word 0x204
@--------------------------@