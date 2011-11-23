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
	movq %rbx, %rbx		# movq %r(18), %r(12)
	movq $4, %r12		# movq $4, %r(24)
	movq %r12, (%rbx)		# movq %r(24), (%r(12))
	movq $8, %r12		# movq $8, %r(25)
	movq %rbx, %rbx		# movq %r(12), %r(26)
	addq %r12, %rbx		# addq %r(25), %r(26)
	movq %rbx, %rbx		# movq %r(26), %r(11)
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
	movq %rbx, %rbx		# movq %r(11), %r(a)
	movq %rbx, %rbx		# movq %r(a), %r(47)
	movq %rbx, -8(%rbp)		# movq %r(47), -8(%rbp)
	movq $0, %r15		# movq $0, %r(39)
	movq %r15, %r15		# movq %r(39), %r(14)
	movq $8, %r13		# movq $8, %r(40)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(48)
	movq %r14, %r14		# movq %r(48), %r(41)
	subq %r13, %r14		# subq %r(40), %r(41)
	movq (%r14), %r12		# movq (%r(41)), %r(42)
	cmpq %r12, %r15		# cmpq %r(42), %r(14)
	jae error_outofbounds		# jae error_outofbounds
	movq %r15, %r15		# movq %r(14), %r(43)
	salq $3, %r15		# salq $3, %r(43)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(49)
	movq %rbx, %rbx		# movq %r(49), %r(50)
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(68)
	movq %rbx, -24(%rbp)		# movq %r(68), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(69)
	movq (%rbx), %rbx		# movq (%r(69)), %r(53)
	movq %rbx, %rbx		# movq %r(53), %r(t10)
	movq %rbx, %r12		# movq %r(t10), %r(54)
	salq $3, %r12		# salq $3, %r(54)
	movq $8, %r13		# movq $8, %r(55)
	movq %r12, %r12		# movq %r(54), %r(56)
	addq %r13, %r12		# addq %r(55), %r(56)
	movq %r12, %rdi		# movq %r(56), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(21)
	movq %r13, %r13		# movq %r(21), %r(70)
	movq %r13, -32(%rbp)		# movq %r(70), -32(%rbp)
	.L16:		# .L16:
	movq %rbx, %r14		# movq %r(t10), %r(57)
	salq $3, %r14		# salq $3, %r(57)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(71)
	movq %r12, %r12		# movq %r(71), %r(58)
	addq %r14, %r12		# addq %r(57), %r(58)
	movq %rbx, %r14		# movq %r(t10), %r(72)
	movq %r14, -16(%rbp)		# movq %r(72), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(73)
	salq $3, %r13		# salq $3, %r(73)
	movq %r13, -16(%rbp)		# movq %r(73), -16(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(74)
	movq %r14, %r14		# movq %r(74), %r(65)
	movq %r14, -8(%rbp)		# movq %r(65), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(66)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(75)
	addq %r14, %r13		# addq %r(75), %r(66)
	movq %r13, -8(%rbp)		# movq %r(66), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(67)
	movq (%r13), %r13		# movq (%r(67)), %r(61)
	movq %r13, (%r12)		# movq %r(61), (%r(58))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(62)
	cmpq %r12, %rbx		# cmpq %r(62), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(63)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(76)
	movq %r13, %r13		# movq %r(76), %r(64)
	addq %rbx, %r13		# addq %r(63), %r(64)
	movq %r13, %rax		# movq %r(64), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
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
