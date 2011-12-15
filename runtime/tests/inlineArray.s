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
	movq $12, %rbx		# movq $12, %r(a)
	movq $1, %r12		# movq $1, %r(906)
	movq $12, %r13		# movq $12, %r(908)
	cmpq %rbx, %r13		# cmpq %r(a), %r(908)
	je .L211		# je .L211
	.L212:		# .L212:
	movq $0, %r12		# movq $0, %r(906)
	.L211:		# .L211:
	movq %r12, %rdi		# movq %r(906), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L210:		# .L210:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
