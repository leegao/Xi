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
	movq $52, %r14		# movq $52, %r(1791)
	movq %r14, %r14		# movq %r(1791), %r(a)
	movq $48, %r13		# movq $48, %r(1792)
	movq %r13, %r13		# movq %r(1792), %r(b)
	movq %r14, %r14		# movq %r(a), %r(1793)
	addq %r13, %r14		# addq %r(b), %r(1793)
	movq %r14, %r14		# movq %r(1793), %r(a)
	movq $1, %r13		# movq $1, %r(1794)
	movq %r13, %r13		# movq %r(1794), %r(1789)
	movq $100, %r12		# movq $100, %r(1795)
	cmpq %r12, %r14		# cmpq %r(1795), %r(a)
	je .L515		# je .L515
	.L516:		# .L516:
	movq $0, %r13		# movq $0, %r(1796)
	movq %r13, %r13		# movq %r(1796), %r(1789)
	.L515:		# .L515:
	movq %r13, %rdi		# movq %r(1789), %rdi
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
	
