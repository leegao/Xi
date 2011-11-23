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
	movq $-5, %r12		# movq $-5, %r(341)
	movq %r12, %r12		# movq %r(341), %r(a)
	movq $2, %r14		# movq $2, %r(342)
	movq %r14, %r14		# movq %r(342), %r(b)
	movq %r12, %rax		# movq %r(a), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %r14		# idivq %r(b)
	movq %rax, %r13		# movq %rax, %r(343)
	movq %r13, %rdi		# movq %r(343), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %r13		# movq %rax, %r(338)
	movq %r13, %rdi		# movq %r(338), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r13		# movq $1, %r(344)
	movq %r13, %r13		# movq %r(344), %r(337)
	movq %r12, %rax		# movq %r(a), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %r14		# idivq %r(b)
	movq %rax, %rbx		# movq %rax, %r(345)
	movq $-2, %r12		# movq $-2, %r(346)
	cmpq %r12, %rbx		# cmpq %r(346), %r(345)
	je .L109		# je .L109
	.L110:		# .L110:
	movq $0, %r13		# movq $0, %r(347)
	movq %r13, %r13		# movq %r(347), %r(337)
	.L109:		# .L109:
	movq %r13, %rdi		# movq %r(337), %rdi
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
	
