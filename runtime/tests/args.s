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
	movq %rdi, %rbx		# movq %rdi, %r(91)
	movq %rbx, -24(%rbp)		# movq %r(91), -24(%rbp)
	movq $0, %r12		# movq $0, %r(81)
	movq %r12, -16(%rbp)		# movq %r(92), -16(%rbp)
	.L33:		# .L33:
	movq $8, %rbx		# movq $8, %r(82)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(93)
	subq %rbx, %r13		# subq %r(82), %r(83)
	movq (%r13), %rbx		# movq (%r(83)), %r(84)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(94)
	cmpq %rbx, %r12		# cmpq %r(84), %r(94)
	jge .L35		# jge .L35
	.L34:		# .L34:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(95)
	movq %r12, -8(%rbp)		# movq %r(96), -8(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(97)
	movq $8, %r13		# movq $8, %r(85)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(98)
	movq %r14, -32(%rbp)		# movq %r(99), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(100)
	subq %r13, %r12		# subq %r(85), %r(100)
	movq %r12, -32(%rbp)		# movq %r(100), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(101)
	movq (%r12), %r12		# movq (%r(101)), %r(87)
	cmpq %r12, %rbx		# cmpq %r(87), %r(78)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(88)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(102)
	addq %rbx, %r13		# addq %r(88), %r(89)
	movq (%r13), %rbx		# movq (%r(89)), %r(90)
	movq %rbx, %rdi		# movq %r(90), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(103)
	incq %rbx		# incq %r(103)
	movq %rbx, -16(%rbp)		# movq %r(103), -16(%rbp)
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
