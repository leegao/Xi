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
	.L963:		# .L963:
	movq $1, %rbx		# movq $1, %r(5131)
	movq %rbx, %rdi		# movq %r(5131), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L965:		# .L965:
	movq $1, %rbx		# movq $1, %r(5132)
	movq %rbx, %rdi		# movq %r(5132), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L967:		# .L967:
	movq $1, %rbx		# movq $1, %r(5133)
	movq %rbx, %rdi		# movq %r(5133), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L962		# jmp .L962
	.L962:		# .L962:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
