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
	movq $-2, %r12		# movq $-2, %r(927)
	movq %r12, -16(%rbp)		# movq %r(943), -16(%rbp)
	movq $-6, %r12		# movq $-6, %r(928)
	movq %r12, -8(%rbp)		# movq %r(944), -8(%rbp)
	movq $6, %r12		# movq $6, %r(929)
	movq $1, %r13		# movq $1, %r(930)
	movq %r12, %rax		# movq %r(b), %rax
	cltq		# cltq
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(945)
	idivq %rbx		# idivq %r(945)
	movq %rax, %rbx		# movq %rax, %r(931)
	movq $-3, %r12		# movq $-3, %r(932)
	cmpq %r12, %rbx		# cmpq %r(932), %r(931)
	je .L126		# je .L126
	.L127:		# .L127:
	movq $0, %r13		# movq $0, %r(933)
	.L126:		# .L126:
	movq %r13, %rdi		# movq %r(921), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(934)
	movq $2, %rbx		# movq $2, %r(935)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(946)
	movq %r12, %rax		# movq %r(946), %rax
	cltq		# cltq
	idivq %rbx		# idivq %r(935)
	movq %rax, %rbx		# movq %rax, %r(936)
	movq $-3, %r12		# movq $-3, %r(937)
	cmpq %r12, %rbx		# cmpq %r(937), %r(936)
	je .L128		# je .L128
	.L129:		# .L129:
	movq $0, %r13		# movq $0, %r(938)
	.L128:		# .L128:
	movq %r13, %rdi		# movq %r(922), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(939)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(947)
	movq %rbx, %rax		# movq %r(947), %rax
	cltq		# cltq
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(948)
	idivq %rbx		# idivq %r(948)
	movq %rax, %rbx		# movq %rax, %r(940)
	movq $3, %r12		# movq $3, %r(941)
	cmpq %r12, %rbx		# cmpq %r(941), %r(940)
	je .L130		# je .L130
	.L131:		# .L131:
	movq $0, %r13		# movq $0, %r(942)
	.L130:		# .L130:
	movq %r13, %rdi		# movq %r(923), %rdi
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
	
