.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $-5, %rbx		# movq $-5, %r(331)
	movq %rbx, %r15		# movq %r(331), %r(a)
	movq $2, %rbx		# movq $2, %r(332)
	movq %rbx, %r12		# movq %r(332), %r(b)
	movq $1, %rbx		# movq $1, %r(333)
	movq %rbx, %r14		# movq %r(333), %r(329)
	movq %r15, %rax		# movq %r(a), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(b)
	movq %rax, %r13		# movq %rax, %r(334)
	movq %r12, %rbx		# movq %r(b), %r(339)
	movq %rbx, -8(%rbp)		# movq %r(339), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(340)
	imulq %r13, %rbx		# imulq %r(334), %r(340)
	movq %rbx, -8(%rbp)		# movq %r(340), -8(%rbp)
	movq %r15, %rax		# movq %r(a), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(b)
	movq %rdx, %r13		# movq %rdx, %r(336)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(341)
	addq %r13, %rbx		# addq %r(336), %r(337)
	cmpq %r15, %rbx		# cmpq %r(a), %r(337)
	je .L98		# je .L98
	.L99:		# .L99:
	movq $0, %rbx		# movq $0, %r(338)
	movq %rbx, %r14		# movq %r(338), %r(329)
	.L98:		# .L98:
	movq %r14, %rdi		# movq %r(329), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L97:		# .L97:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
