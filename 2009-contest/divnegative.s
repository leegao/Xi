.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $-2, %r12		# movq $-2, %r(930)
	movq %r12, -8(%rbp)		# movq %r(946), -8(%rbp)
	movq $-6, %r12		# movq $-6, %r(931)
	movq %r12, -16(%rbp)		# movq %r(947), -16(%rbp)
	movq $6, %r12		# movq $6, %r(932)
	movq $1, %r13		# movq $1, %r(933)
	movq %r12, %rax		# movq %r(b), %rax
	cqto		# cqto
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(948)
	idivq %rbx		# idivq %r(948)
	movq %rax, %rbx		# movq %rax, %r(934)
	movq $-3, %r12		# movq $-3, %r(935)
	cmpq %r12, %rbx		# cmpq %r(935), %r(934)
	je .L126		# je .L126
	.L127:		# .L127:
	movq $0, %r13		# movq $0, %r(936)
	.L126:		# .L126:
	movq %r13, %rdi		# movq %r(924), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(937)
	movq $2, %rbx		# movq $2, %r(938)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(949)
	movq %r12, %rax		# movq %r(949), %rax
	cqto		# cqto
	idivq %rbx		# idivq %r(938)
	movq %rax, %rbx		# movq %rax, %r(939)
	movq $-3, %r12		# movq $-3, %r(940)
	cmpq %r12, %rbx		# cmpq %r(940), %r(939)
	je .L128		# je .L128
	.L129:		# .L129:
	movq $0, %r13		# movq $0, %r(941)
	.L128:		# .L128:
	movq %r13, %rdi		# movq %r(925), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(942)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(950)
	movq %rbx, %rax		# movq %r(950), %rax
	cqto		# cqto
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(951)
	idivq %rbx		# idivq %r(951)
	movq %rax, %rbx		# movq %rax, %r(943)
	movq $3, %r12		# movq $3, %r(944)
	cmpq %r12, %rbx		# cmpq %r(944), %r(943)
	je .L130		# je .L130
	.L131:		# .L131:
	movq $0, %r13		# movq $0, %r(945)
	.L130:		# .L130:
	movq %r13, %rdi		# movq %r(926), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L125:		# .L125:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
