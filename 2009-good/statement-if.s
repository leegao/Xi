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
	movq $0, %r13		# movq $0, %r(743)
	movq $1, %r12		# movq $1, %r(744)
	cmpq %r12, %r13		# cmpq %r(744), %r(zero)
	jne .L245		# jne .L245
	.L244:		# .L244:
	movq $0, %r12		# movq $0, %r(745)
	movq %r12, %rdi		# movq %r(745), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L245:		# .L245:
	cmpq %r13, %r13		# cmpq %r(zero), %r(zero)
	jne .L247		# jne .L247
	.L246:		# .L246:
	movq $1, %rbx		# movq $1, %r(746)
	movq %rbx, %rdi		# movq %r(746), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L248		# jmp .L248
	.L247:		# .L247:
	movq $0, %rbx		# movq $0, %r(747)
	movq %rbx, %rdi		# movq %r(747), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L248:		# .L248:
	.L243:		# .L243:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
