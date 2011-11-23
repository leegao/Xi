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
	movq $52, %r14		# movq $52, %r(1713)
	movq $48, %r13		# movq $48, %r(1714)
	addq %r13, %r14		# addq %r(b), %r(1715)
	movq $1, %r13		# movq $1, %r(1716)
	movq $100, %r12		# movq $100, %r(1717)
	cmpq %r12, %r14		# cmpq %r(1717), %r(a)
	je .L515		# je .L515
	.L516:		# .L516:
	movq $0, %r13		# movq $0, %r(1718)
	.L515:		# .L515:
	movq %r13, %rdi		# movq %r(1711), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L514:		# .L514:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
