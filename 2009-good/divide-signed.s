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
	movq $-5, %r12		# movq $-5, %r(329)
	movq $2, %r14		# movq $2, %r(330)
	movq %r12, %rax		# movq %r(a), %rax
	cltq		# cltq
	idivq %r14		# idivq %r(b)
	movq %rax, %r13		# movq %rax, %r(331)
	movq %r13, %rdi		# movq %r(331), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %r13		# movq %rax, %r(326)
	movq %r13, %rdi		# movq %r(326), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r13		# movq $1, %r(332)
	movq %r12, %rax		# movq %r(a), %rax
	cltq		# cltq
	idivq %r14		# idivq %r(b)
	movq %rax, %rbx		# movq %rax, %r(333)
	movq $-2, %r12		# movq $-2, %r(334)
	cmpq %r12, %rbx		# cmpq %r(334), %r(333)
	je .L109		# je .L109
	.L110:		# .L110:
	movq $0, %r13		# movq $0, %r(335)
	.L109:		# .L109:
	movq %r13, %rdi		# movq %r(325), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L108:		# .L108:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
