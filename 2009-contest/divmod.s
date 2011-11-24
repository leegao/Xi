.att_syntax prefix
.text
.globl _If_i
_If_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $-3, %rbx		# movq $-3, %r(853)
	movq %rbx, %rax		# movq %r(853), %rax
	jmp .L116		# jmp .L116
	.L116:		# .L116:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_i
_Ig_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $2, %rbx		# movq $2, %r(854)
	movq %rbx, %rax		# movq %r(854), %rax
	jmp .L117		# jmp .L117
	.L117:		# .L117:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	movq $1, %r13		# movq $1, %r(855)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(847)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(848)
	movq %rbx, %rax		# movq %r(847), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(848)
	movq %rax, %rbx		# movq %rax, %r(856)
	movq $-1, %r12		# movq $-1, %r(857)
	cmpq %r12, %rbx		# cmpq %r(857), %r(856)
	je .L119		# je .L119
	.L120:		# .L120:
	movq $0, %r13		# movq $0, %r(858)
	.L119:		# .L119:
	movq %r13, %rdi		# movq %r(845), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(859)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(850)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(851)
	movq %rbx, %rax		# movq %r(850), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(851)
	movq %rdx, %rbx		# movq %rdx, %r(860)
	movq $-1, %r12		# movq $-1, %r(861)
	cmpq %r12, %rbx		# cmpq %r(861), %r(860)
	je .L121		# je .L121
	.L122:		# .L122:
	movq $0, %r13		# movq $0, %r(862)
	.L121:		# .L121:
	movq %r13, %rdi		# movq %r(846), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L118:		# .L118:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
