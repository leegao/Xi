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
	movq $-5, %r12		# movq $-5, %r(349)
	movq $2, %r14		# movq $2, %r(350)
	movq %r12, %rax		# movq %r(a), %rax
	cqto		# cqto
	idivq %r14		# idivq %r(b)
	movq %rax, %r13		# movq %rax, %r(351)
	movq %r13, %rdi		# movq %r(351), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %r13		# movq %rax, %r(346)
	movq %r13, %rdi		# movq %r(346), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r13		# movq $1, %r(352)
	movq %r12, %rax		# movq %r(a), %rax
	cqto		# cqto
	idivq %r14		# idivq %r(b)
	movq %rax, %rbx		# movq %rax, %r(353)
	movq $-2, %r12		# movq $-2, %r(354)
	cmpq %r12, %rbx		# cmpq %r(354), %r(353)
	je .L110		# je .L110
	.L111:		# .L111:
	movq $0, %r13		# movq $0, %r(355)
	.L110:		# .L110:
	movq %r13, %rdi		# movq %r(345), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L109:		# .L109:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
