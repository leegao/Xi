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
	movq $52, %r14		# movq $52, %r(1803)
	movq %r14, %r14		# movq %r(1803), %r(a)
	movq $48, %rbx		# movq $48, %r(1804)
	movq %rbx, %rbx		# movq %r(1804), %r(b)
	movq %r14, %r14		# movq %r(a), %r(1805)
	addq %rbx, %r14		# addq %r(b), %r(1805)
	movq %r14, %r14		# movq %r(1805), %r(c)
	movq $1, %r13		# movq $1, %r(1806)
	movq %r13, %r13		# movq %r(1806), %r(1801)
	movq $100, %r12		# movq $100, %r(1807)
	cmpq %r12, %r14		# cmpq %r(1807), %r(c)
	je .L520		# je .L520
	.L521:		# .L521:
	movq $0, %r13		# movq $0, %r(1808)
	movq %r13, %r13		# movq %r(1808), %r(1801)
	.L520:		# .L520:
	movq %r13, %rdi		# movq %r(1801), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L519:		# .L519:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
