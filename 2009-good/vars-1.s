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
	movq $52, %r14		# movq $52, %r(1725)
	movq $48, %rbx		# movq $48, %r(1726)
	addq %rbx, %r14		# addq %r(b), %r(1727)
	movq $1, %r13		# movq $1, %r(1728)
	movq $100, %r12		# movq $100, %r(1729)
	cmpq %r12, %r14		# cmpq %r(1729), %r(c)
	je .L520		# je .L520
	.L521:		# .L521:
	movq $0, %r13		# movq $0, %r(1730)
	.L520:		# .L520:
	movq %r13, %rdi		# movq %r(1723), %rdi
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
	
