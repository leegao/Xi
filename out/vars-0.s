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
	.L468:		# .L468:
	movq $1, %rbx		# movq $1, %r(2281)
	movq %rbx, %rdi		# movq %r(2281), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L467		# jmp .L467
	.L467:		# .L467:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
