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
	movq $12, %r14		# movq $12, %r(463)
	movq $1, %r13		# movq $1, %r(464)
	movq $12, %r12		# movq $12, %r(465)
	cmpq %r14, %r12		# cmpq %r(a), %r(465)
	je .L87		# je .L87
	.L88:		# .L88:
	movq $0, %r13		# movq $0, %r(466)
	.L87:		# .L87:
	movq %r13, %rdi		# movq %r(461), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L86:		# .L86:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
