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
	.L579:		# .L579:
	movq $1, %rbx		# movq $1, %r(2933)
	movq %rbx, %rdi		# movq %r(2933), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L581:		# .L581:
	movq $1, %rbx		# movq $1, %r(2934)
	movq %rbx, %rdi		# movq %r(2934), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L578		# jmp .L578
	.L578:		# .L578:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
