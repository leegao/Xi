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
	movq $12, %r14		# movq $12, %r(1153)
	movq $1, %r13		# movq $1, %r(1154)
	movq $12, %r12		# movq $12, %r(1155)
	cmpq %r14, %r12		# cmpq %r(a), %r(1155)
	je .L181		# je .L181
	.L182:		# .L182:
	movq $0, %r13		# movq $0, %r(1156)
	.L181:		# .L181:
	movq %r13, %rdi		# movq %r(1151), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L180:		# .L180:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
