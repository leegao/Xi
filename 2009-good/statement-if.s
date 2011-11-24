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
	movq $0, %r13		# movq $0, %r(802)
	movq $1, %r12		# movq $1, %r(803)
	cmpq %r12, %r13		# cmpq %r(803), %r(zero)
	jne .L246		# jne .L246
	.L245:		# .L245:
	movq $0, %r12		# movq $0, %r(804)
	movq %r12, %rdi		# movq %r(804), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L246:		# .L246:
	cmpq %r13, %r13		# cmpq %r(zero), %r(zero)
	jne .L248		# jne .L248
	.L247:		# .L247:
	movq $1, %rbx		# movq $1, %r(805)
	movq %rbx, %rdi		# movq %r(805), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L249		# jmp .L249
	.L249:		# .L249:
	.L244:		# .L244:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L248:		# .L248:
	movq $0, %rbx		# movq $0, %r(806)
	movq %rbx, %rdi		# movq %r(806), %rdi
	call _Iassert_pb		# call _Iassert_pb
	
