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
	movq $-5, %r12		# movq $-5, %r(307)
	movq %r12, -16(%rbp)		# movq %r(318), -16(%rbp)
	movq $2, %rbx		# movq $2, %r(308)
	movq %rbx, %r12		# movq %r(308), %r(b)
	movq $1, %rbx		# movq $1, %r(309)
	movq %rbx, %r13		# movq %r(309), %r(305)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(319)
	movq %rbx, %rax		# movq %r(319), %rax
	cltq		# cltq
	idivq %r12		# idivq %r(b)
	movq %rax, %r14		# movq %rax, %r(310)
	movq %r12, %rbx		# movq %r(b), %r(315)
	movq %rbx, -8(%rbp)		# movq %r(315), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(316)
	imulq %r14, %rbx		# imulq %r(310), %r(316)
	movq %rbx, -8(%rbp)		# movq %r(316), -8(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(320)
	movq %rbx, %rax		# movq %r(320), %rax
	cltq		# cltq
	idivq %r12		# idivq %r(b)
	movq %rdx, %r12		# movq %rdx, %r(312)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(317)
	addq %r12, %r14		# addq %r(312), %r(313)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(321)
	cmpq %r12, %r14		# cmpq %r(321), %r(313)
	je .L97		# je .L97
	.L98:		# .L98:
	movq $0, %r13		# movq $0, %r(314)
	.L97:		# .L97:
	movq %r13, %rdi		# movq %r(305), %rdi
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
	
