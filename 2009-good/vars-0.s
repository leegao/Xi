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
	movq $52, %r14		# movq $52, %r(1835)
	movq %r14, %r14		# movq %r(1835), %r(a)
	movq $48, %r13		# movq $48, %r(1836)
	movq %r13, %r13		# movq %r(1836), %r(b)
	movq %r14, %r14		# movq %r(a), %r(1837)
	addq %r13, %r14		# addq %r(b), %r(1837)
	movq %r14, %r14		# movq %r(1837), %r(a)
	movq $1, %r13		# movq $1, %r(1838)
	movq %r13, %r13		# movq %r(1838), %r(1833)
	movq $100, %r12		# movq $100, %r(1839)
	cmpq %r12, %r14		# cmpq %r(1839), %r(a)
	je .L515		# je .L515
	.L516:		# .L516:
	movq $0, %r13		# movq $0, %r(1840)
	movq %r13, %r13		# movq %r(1840), %r(1833)
	.L515:		# .L515:
	movq %r13, %rdi		# movq %r(1833), %rdi
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
	
