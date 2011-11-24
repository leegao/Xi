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
	movq $12, %r14		# movq $12, %r(1238)
	movq $1, %r13		# movq $1, %r(1239)
	movq $12, %r12		# movq $12, %r(1240)
	cmpq %r14, %r12		# cmpq %r(a), %r(1240)
	je .L213		# je .L213
	.L214:		# .L214:
	movq $0, %r13		# movq $0, %r(1241)
	.L213:		# .L213:
	movq %r13, %rdi		# movq %r(1236), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L212:		# .L212:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
