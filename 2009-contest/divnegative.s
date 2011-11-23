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
	movq $-2, %r12		# movq $-2, %r(924)
	movq %r12, %r12		# movq %r(924), %r(940)
	movq %r12, -8(%rbp)		# movq %r(940), -8(%rbp)
	movq $-6, %r12		# movq $-6, %r(925)
	movq %r12, %r12		# movq %r(925), %r(941)
	movq %r12, -16(%rbp)		# movq %r(941), -16(%rbp)
	movq $6, %r12		# movq $6, %r(926)
	movq %r12, %r12		# movq %r(926), %r(b)
	movq $1, %r13		# movq $1, %r(927)
	movq %r13, %r13		# movq %r(927), %r(918)
	movq %r12, %rax		# movq %r(b), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(942)
	idivq %rbx		# idivq %r(942)
	movq %rax, %rbx		# movq %rax, %r(928)
	movq $-3, %r12		# movq $-3, %r(929)
	cmpq %r12, %rbx		# cmpq %r(929), %r(928)
	je .L126		# je .L126
	.L127:		# .L127:
	movq $0, %r13		# movq $0, %r(930)
	movq %r13, %r13		# movq %r(930), %r(918)
	.L126:		# .L126:
	movq %r13, %rdi		# movq %r(918), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(931)
	movq %r13, %r13		# movq %r(931), %r(919)
	movq $2, %rbx		# movq $2, %r(932)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(943)
	movq %r12, %rax		# movq %r(943), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %rbx		# idivq %r(932)
	movq %rax, %rbx		# movq %rax, %r(933)
	movq $-3, %r12		# movq $-3, %r(934)
	cmpq %r12, %rbx		# cmpq %r(934), %r(933)
	je .L128		# je .L128
	.L129:		# .L129:
	movq $0, %r13		# movq $0, %r(935)
	movq %r13, %r13		# movq %r(935), %r(919)
	.L128:		# .L128:
	movq %r13, %rdi		# movq %r(919), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(936)
	movq %r13, %r13		# movq %r(936), %r(920)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(944)
	movq %rbx, %rax		# movq %r(944), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(945)
	idivq %rbx		# idivq %r(945)
	movq %rax, %rbx		# movq %rax, %r(937)
	movq $3, %r12		# movq $3, %r(938)
	cmpq %r12, %rbx		# cmpq %r(938), %r(937)
	je .L130		# je .L130
	.L131:		# .L131:
	movq $0, %r13		# movq $0, %r(939)
	movq %r13, %r13		# movq %r(939), %r(920)
	.L130:		# .L130:
	movq %r13, %rdi		# movq %r(920), %rdi
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
	
