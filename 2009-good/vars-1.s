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
	movq $52, %r14		# movq $52, %r(1847)
	movq %r14, %r14		# movq %r(1847), %r(a)
	movq $48, %rbx		# movq $48, %r(1848)
	movq %rbx, %rbx		# movq %r(1848), %r(b)
	movq %r14, %r14		# movq %r(a), %r(1849)
	addq %rbx, %r14		# addq %r(b), %r(1849)
	movq %r14, %r14		# movq %r(1849), %r(c)
	movq $1, %r13		# movq $1, %r(1850)
	movq %r13, %r13		# movq %r(1850), %r(1845)
	movq $100, %r12		# movq $100, %r(1851)
	cmpq %r12, %r14		# cmpq %r(1851), %r(c)
	je .L520		# je .L520
	.L521:		# .L521:
	movq $0, %r13		# movq $0, %r(1852)
	movq %r13, %r13		# movq %r(1852), %r(1845)
	.L520:		# .L520:
	movq %r13, %rdi		# movq %r(1845), %rdi
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
	
