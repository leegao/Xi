.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
<<<<<<< HEAD
	movq %rdi, %rbx		# movq %rdi, %r(79)
	movq %rbx, -32(%rbp)		# movq %r(79), -32(%rbp)
	movq $0, %r12		# movq $0, %r(69)
	movq %r12, -24(%rbp)		# movq %r(80), -24(%rbp)
	.L33:		# .L33:
	movq $8, %rbx		# movq $8, %r(70)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(81)
	subq %rbx, %r13		# subq %r(70), %r(71)
	movq (%r13), %rbx		# movq (%r(71)), %r(72)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(82)
	cmpq %rbx, %r12		# cmpq %r(72), %r(82)
	jge .L35		# jge .L35
	.L34:		# .L34:
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(83)
	movq %r12, -16(%rbp)		# movq %r(84), -16(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(85)
	movq $8, %r13		# movq $8, %r(73)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(86)
	movq %r14, -8(%rbp)		# movq %r(87), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(88)
	subq %r13, %r12		# subq %r(73), %r(88)
	movq %r12, -8(%rbp)		# movq %r(88), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(89)
	movq (%r12), %r12		# movq (%r(89)), %r(75)
	cmpq %r12, %rbx		# cmpq %r(75), %r(66)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(76)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(90)
	addq %rbx, %r13		# addq %r(76), %r(77)
	movq (%r13), %rbx		# movq (%r(77)), %r(78)
	movq %rbx, %rdi		# movq %r(78), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(91)
	incq %rbx		# incq %r(91)
	movq %rbx, -24(%rbp)		# movq %r(91), -24(%rbp)
=======
	movq %rdi, %rbx		# movq %rdi, %r(82)
	movq %rbx, -8(%rbp)		# movq %r(82), -8(%rbp)
	movq $0, %r12		# movq $0, %r(72)
	movq %r12, -24(%rbp)		# movq %r(83), -24(%rbp)
	.L33:		# .L33:
	movq $8, %rbx		# movq $8, %r(73)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(84)
	subq %rbx, %r13		# subq %r(73), %r(74)
	movq (%r13), %rbx		# movq (%r(74)), %r(75)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(85)
	cmpq %rbx, %r12		# cmpq %r(75), %r(85)
	jge .L35		# jge .L35
	.L34:		# .L34:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(86)
	movq %r12, -32(%rbp)		# movq %r(87), -32(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(88)
	movq $8, %r13		# movq $8, %r(76)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(89)
	movq %r14, -16(%rbp)		# movq %r(90), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(91)
	subq %r13, %r12		# subq %r(76), %r(91)
	movq %r12, -16(%rbp)		# movq %r(91), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(92)
	movq (%r12), %r12		# movq (%r(92)), %r(78)
	cmpq %r12, %rbx		# cmpq %r(78), %r(69)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(79)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(93)
	addq %rbx, %r13		# addq %r(79), %r(80)
	movq (%r13), %rbx		# movq (%r(80)), %r(81)
	movq %rbx, %rdi		# movq %r(81), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(94)
	incq %rbx		# incq %r(94)
	movq %rbx, -24(%rbp)		# movq %r(94), -24(%rbp)
>>>>>>> origin/HEAD
	jmp .L33		# jmp .L33
	.L35:		# .L35:
	.L32:		# .L32:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
