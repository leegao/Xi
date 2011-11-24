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
	movq $52, %r14		# movq $52, %r(1851)
	movq $48, %r13		# movq $48, %r(1852)
	addq %r13, %r14		# addq %r(b), %r(1853)
	movq $1, %r13		# movq $1, %r(1854)
	movq $100, %r12		# movq $100, %r(1855)
	cmpq %r12, %r14		# cmpq %r(1855), %r(a)
	je .L516		# je .L516
	.L517:		# .L517:
	movq $0, %r13		# movq $0, %r(1856)
	.L516:		# .L516:
	movq %r13, %rdi		# movq %r(1849), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L515:		# .L515:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
