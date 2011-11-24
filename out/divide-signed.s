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
	movq $-2, %rbx		# movq $-2, %r(2938)
	movq %rbx, %rdi		# movq %r(2938), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(2935)
	movq %rbx, %rdi		# movq %r(2935), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L640:		# .L640:
	movq $1, %rbx		# movq $1, %r(2939)
	movq %rbx, %rdi		# movq %r(2939), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L639		# jmp .L639
	.L639:		# .L639:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
