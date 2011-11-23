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
	movq $-5, %rbx		# movq $-5, %r(319)
	movq %rbx, %r13		# movq %r(319), %r(a)
	movq $2, %rbx		# movq $2, %r(320)
	movq %rbx, %r15		# movq %r(320), %r(b)
	movq $1, %r12		# movq $1, %r(321)
	movq %r12, %r12		# movq %r(321), %r(330)
	movq %r12, -16(%rbp)		# movq %r(330), -16(%rbp)
	movq %r13, %rax		# movq %r(a), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %r15		# idivq %r(b)
	movq %rax, %r14		# movq %rax, %r(322)
	movq %r15, %rbx		# movq %r(b), %r(327)
	movq %rbx, -8(%rbp)		# movq %r(327), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(328)
	imulq %r14, %r12		# imulq %r(322), %r(328)
	movq %r12, -8(%rbp)		# movq %r(328), -8(%rbp)
	movq %r13, %rax		# movq %r(a), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %r15		# idivq %r(b)
	movq %rdx, %r12		# movq %rdx, %r(324)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(329)
	movq %r14, %r14		# movq %r(329), %r(325)
	addq %r12, %r14		# addq %r(324), %r(325)
	cmpq %r13, %r14		# cmpq %r(a), %r(325)
	je .L97		# je .L97
	.L98:		# .L98:
	movq $0, %r12		# movq $0, %r(326)
	movq %r12, %r12		# movq %r(326), %r(331)
	movq %r12, -16(%rbp)		# movq %r(331), -16(%rbp)
	.L97:		# .L97:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(332)
	movq %rbx, %rdi		# movq %r(332), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L96:		# .L96:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
