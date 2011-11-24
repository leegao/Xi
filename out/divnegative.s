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
	.L369:		# .L369:
	movq $1, %rbx		# movq $1, %r(2101)
	movq %rbx, %rdi		# movq %r(2101), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L371:		# .L371:
	movq $1, %rbx		# movq $1, %r(2102)
	movq %rbx, %rdi		# movq %r(2102), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L373:		# .L373:
	movq $1, %rbx		# movq $1, %r(2103)
	movq %rbx, %rdi		# movq %r(2103), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L368		# jmp .L368
	.L368:		# .L368:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
