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
	movq $1, %r13		# movq $1, %r(968)
	movq $1, %rbx		# movq $1, %r(969)
	movq %rbx, %rdi		# movq %r(969), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(958)
	movq $1, %r12		# movq $1, %r(970)
	cmpq %rbx, %r12		# cmpq %r(958), %r(970)
	je .L136		# je .L136
	.L137:		# .L137:
	movq $0, %r13		# movq $0, %r(971)
	.L136:		# .L136:
	movq %r13, %rdi		# movq %r(953), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(972)
	movq $11, %rbx		# movq $11, %r(973)
	movq %rbx, %rdi		# movq %r(973), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(960)
	movq $89, %r12		# movq $89, %r(974)
	cmpq %rbx, %r12		# cmpq %r(960), %r(974)
	je .L138		# je .L138
	.L139:		# .L139:
	movq $0, %r13		# movq $0, %r(975)
	.L138:		# .L138:
	movq %r13, %rdi		# movq %r(954), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(976)
	movq $14, %rbx		# movq $14, %r(977)
	movq %rbx, %rdi		# movq %r(977), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(962)
	movq $377, %r12		# movq $377, %r(978)
	cmpq %rbx, %r12		# cmpq %r(962), %r(978)
	je .L140		# je .L140
	.L141:		# .L141:
	movq $0, %r13		# movq $0, %r(979)
	.L140:		# .L140:
	movq %r13, %rdi		# movq %r(955), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(980)
	movq $15, %rbx		# movq $15, %r(981)
	movq %rbx, %rdi		# movq %r(981), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(964)
	movq $610, %r12		# movq $610, %r(982)
	cmpq %rbx, %r12		# cmpq %r(964), %r(982)
	je .L142		# je .L142
	.L143:		# .L143:
	movq $0, %r13		# movq $0, %r(983)
	.L142:		# .L142:
	movq %r13, %rdi		# movq %r(956), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L135:		# .L135:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ifib_ii
_Ifib_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(i)
	movq $1, %rbx		# movq $1, %r(984)
	cmpq %rbx, %r15		# cmpq %r(984), %r(i)
	jg .L146		# jg .L146
	.L145:		# .L145:
	movq %r15, %rax		# movq %r(i), %rax
	jmp .L144		# jmp .L144
	.L144:		# .L144:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L146:		# .L146:
	movq $1, %rbx		# movq $1, %r(985)
	movq %r15, %r13		# movq %r(i), %r(986)
	subq %rbx, %r13		# subq %r(985), %r(986)
	movq %r13, %rdi		# movq %r(986), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r14		# movq %rax, %r(966)
	movq $2, %rbx		# movq $2, %r(987)
	movq %r15, %r12		# movq %r(i), %r(988)
	subq %rbx, %r12		# subq %r(987), %r(988)
	movq %r12, %rdi		# movq %r(988), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(967)
	addq %rbx, %r14		# addq %r(967), %r(989)
	movq %r14, %rax		# movq %r(989), %rax
	jmp .L144		# jmp .L144
	
