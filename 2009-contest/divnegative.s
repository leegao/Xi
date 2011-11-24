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
	.L126:		# .L126:
	movq $1, %rbx		# movq $1, %r(873)
	movq %rbx, %rdi		# movq %r(873), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L128:		# .L128:
	movq $1, %rbx		# movq $1, %r(874)
	movq %rbx, %rdi		# movq %r(874), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L130:		# .L130:
	movq $1, %rbx		# movq $1, %r(875)
	movq %rbx, %rdi		# movq %r(875), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L125:		# .L125:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
