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
	movq %rdi, %rbx		# movq %rdi, %r(85)
	movq %rbx, -32(%rbp)		# movq %r(85), -32(%rbp)
	movq $0, %r12		# movq $0, %r(75)
	movq %r12, -8(%rbp)		# movq %r(86), -8(%rbp)
	.L33:		# .L33:
	movq $8, %rbx		# movq $8, %r(76)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(87)
	subq %rbx, %r13		# subq %r(76), %r(77)
	movq (%r13), %rbx		# movq (%r(77)), %r(78)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(88)
	cmpq %rbx, %r12		# cmpq %r(78), %r(88)
	jge .L35		# jge .L35
	.L34:		# .L34:
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(89)
	movq %r12, -24(%rbp)		# movq %r(90), -24(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(91)
	movq $8, %r13		# movq $8, %r(79)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(92)
	movq %r14, -16(%rbp)		# movq %r(93), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(94)
	subq %r13, %r12		# subq %r(79), %r(94)
	movq %r12, -16(%rbp)		# movq %r(94), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(95)
	movq (%r12), %r12		# movq (%r(95)), %r(81)
	cmpq %r12, %rbx		# cmpq %r(81), %r(72)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(82)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(96)
	addq %rbx, %r13		# addq %r(82), %r(83)
	movq (%r13), %rbx		# movq (%r(83)), %r(84)
	movq %rbx, %rdi		# movq %r(84), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(97)
	incq %rbx		# incq %r(97)
	movq %rbx, -8(%rbp)		# movq %r(97), -8(%rbp)
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
