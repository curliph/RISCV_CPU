	.section .rom,"ax"
	.globl main

	li sp, 0x00100000
	# li sp, 0x00010000
	# sw sp, -4(sp)

	jal main
	li a0, 0xff
	sb a0, 0x108(zero)
.L0:
	j .L0
	