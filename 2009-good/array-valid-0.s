.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $40, %rbx		# movq $40, %r(23)
	movq %rbx, %rdi		# movq %r(23), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(18)
	movq $4, %r12		# movq $4, %r(24)
	movq %r12, (%rbx)		# movq %r(24), (%r(12))
	movq $8, %r12		# movq $8, %r(25)
	addq %r12, %rbx		# addq %r(25), %r(26)
	movq $0, %r12		# movq $0, %r(27)
	movq %rbx, %r14		# movq %r(11), %r(28)
	addq %r12, %r14		# addq %r(27), %r(28)
	movq $0, %r12		# movq $0, %r(29)
	movq %r12, (%r14)		# movq %r(29), (%r(28))
	movq $8, %r12		# movq $8, %r(30)
	movq %rbx, %r14		# movq %r(11), %r(31)
	addq %r12, %r14		# addq %r(30), %r(31)
	movq $0, %r12		# movq $0, %r(32)
	movq %r12, (%r14)		# movq %r(32), (%r(31))
	movq $16, %r12		# movq $16, %r(33)
	movq %rbx, %r14		# movq %r(11), %r(34)
	addq %r12, %r14		# addq %r(33), %r(34)
	movq $0, %r12		# movq $0, %r(35)
	movq %r12, (%r14)		# movq %r(35), (%r(34))
	movq $24, %r12		# movq $24, %r(36)
	movq %rbx, %r14		# movq %r(11), %r(37)
	addq %r12, %r14		# addq %r(36), %r(37)
	movq $0, %r12		# movq $0, %r(38)
	movq %r12, (%r14)		# movq %r(38), (%r(37))
	movq %rbx, -8(%rbp)		# movq %r(47), -8(%rbp)
	movq $0, %r15		# movq $0, %r(39)
	movq $8, %r13		# movq $8, %r(40)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(48)
	subq %r13, %r14		# subq %r(40), %r(41)
	movq (%r14), %r12		# movq (%r(41)), %r(42)
	cmpq %r12, %r15		# cmpq %r(42), %r(14)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r15		# salq $3, %r(43)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(49)
	movq %rbx, -16(%rbp)		# movq %r(50), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(51)
	addq %r15, %r12		# addq %r(43), %r(51)
	movq %r12, -16(%rbp)		# movq %r(51), -16(%rbp)
	movq $42, %rbx		# movq $42, %r(45)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(52)
	movq %rbx, (%r12)		# movq %r(45), (%r(52))
	leaq .L15(%rip), %rdi		# leaq .L15(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(19)
	movq %rbx, %rdi		# movq %r(19), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L12:		# .L12:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strdup_aii
_I_c_internal_strdup_aii:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(65)
	movq %rbx, -16(%rbp)		# movq %r(65), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(66)
	movq (%rbx), %rbx		# movq (%r(66)), %r(53)
	movq %rbx, %r14		# movq %r(53), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(54)
	salq $3, %rbx		# salq $3, %r(54)
	movq $8, %r12		# movq $8, %r(55)
	addq %r12, %rbx		# addq %r(55), %r(56)
	movq %rbx, %rdi		# movq %r(56), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(21)
	movq %rbx, %r13		# movq %r(21), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(57)
	salq $3, %rbx		# salq $3, %r(57)
	movq %r13, %r12		# movq %r(t27), %r(58)
	addq %rbx, %r12		# addq %r(57), %r(58)
	movq %r14, %r15		# movq %r(t10), %r(59)
	salq $3, %r15		# salq $3, %r(59)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(67)
	movq %rbx, -8(%rbp)		# movq %r(68), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(69)
	addq %r15, %rbx		# addq %r(59), %r(69)
	movq %rbx, -8(%rbp)		# movq %r(69), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(70)
	movq (%rbx), %rbx		# movq (%r(70)), %r(61)
	movq %rbx, (%r12)		# movq %r(61), (%r(58))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(62)
	cmpq %rbx, %r14		# cmpq %r(62), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(63)
	movq %r13, %r12		# movq %r(t27), %r(64)
	addq %rbx, %r12		# addq %r(63), %r(64)
	movq %r12, %rax		# movq %r(64), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L15:
	.quad 8
	.quad 78
	.quad 111
	.quad 32
	.quad 99
	.quad 114
	.quad 97
	.quad 115
	.quad 104
	.text

error_outofbounds:
call _I_outOfBounds_p
