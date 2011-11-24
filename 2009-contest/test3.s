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
	.L332:		# .L332:
	movq $1, %rbx		# movq $1, %r(2056)
	movq %rbx, %rdi		# movq %r(2056), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L334:		# .L334:
	movq $1, %rbx		# movq $1, %r(2057)
	movq %rbx, %rdi		# movq %r(2057), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L331:		# .L331:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
