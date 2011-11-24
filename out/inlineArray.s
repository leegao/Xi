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
	.L470:		# .L470:
	movq $1, %rbx		# movq $1, %r(2443)
	movq %rbx, %rdi		# movq %r(2443), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L469		# jmp .L469
	.L469:		# .L469:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
