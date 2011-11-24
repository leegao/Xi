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
	movq $52, %r14		# movq $52, %r(1863)
	movq $48, %rbx		# movq $48, %r(1864)
	addq %rbx, %r14		# addq %r(b), %r(1865)
	movq $1, %r13		# movq $1, %r(1866)
	movq $100, %r12		# movq $100, %r(1867)
	cmpq %r12, %r14		# cmpq %r(1867), %r(c)
	je .L521		# je .L521
	.L522:		# .L522:
	movq $0, %r13		# movq $0, %r(1868)
	.L521:		# .L521:
	movq %r13, %rdi		# movq %r(1861), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L520:		# .L520:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
