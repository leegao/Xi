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
	movq $1, %r13		# movq $1, %r(965)
	movq $1, %rbx		# movq $1, %r(966)
	movq %rbx, %rdi		# movq %r(966), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(955)
	movq $1, %r12		# movq $1, %r(967)
	cmpq %rbx, %r12		# cmpq %r(955), %r(967)
	je .L136		# je .L136
	.L137:		# .L137:
	movq $0, %r13		# movq $0, %r(968)
	.L136:		# .L136:
	movq %r13, %rdi		# movq %r(950), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(969)
	movq $11, %rbx		# movq $11, %r(970)
	movq %rbx, %rdi		# movq %r(970), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(957)
	movq $89, %r12		# movq $89, %r(971)
	cmpq %rbx, %r12		# cmpq %r(957), %r(971)
	je .L138		# je .L138
	.L139:		# .L139:
	movq $0, %r13		# movq $0, %r(972)
	.L138:		# .L138:
	movq %r13, %rdi		# movq %r(951), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(973)
	movq $14, %rbx		# movq $14, %r(974)
	movq %rbx, %rdi		# movq %r(974), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(959)
	movq $377, %r12		# movq $377, %r(975)
	cmpq %rbx, %r12		# cmpq %r(959), %r(975)
	je .L140		# je .L140
	.L141:		# .L141:
	movq $0, %r13		# movq $0, %r(976)
	.L140:		# .L140:
	movq %r13, %rdi		# movq %r(952), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(977)
	movq $15, %rbx		# movq $15, %r(978)
	movq %rbx, %rdi		# movq %r(978), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(961)
	movq $610, %r12		# movq $610, %r(979)
	cmpq %rbx, %r12		# cmpq %r(961), %r(979)
	je .L142		# je .L142
	.L143:		# .L143:
	movq $0, %r13		# movq $0, %r(980)
	.L142:		# .L142:
	movq %r13, %rdi		# movq %r(953), %rdi
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
	movq $1, %rbx		# movq $1, %r(981)
	cmpq %rbx, %r15		# cmpq %r(981), %r(i)
	jg .L146		# jg .L146
	.L145:		# .L145:
	movq %r15, %rax		# movq %r(i), %rax
	jmp .L144		# jmp .L144
	.L146:		# .L146:
	movq $1, %rbx		# movq $1, %r(982)
	movq %r15, %r13		# movq %r(i), %r(983)
	subq %rbx, %r13		# subq %r(982), %r(983)
	movq %r13, %rdi		# movq %r(983), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r13		# movq %rax, %r(963)
	movq $2, %rbx		# movq $2, %r(984)
	subq %rbx, %r15		# subq %r(984), %r(985)
	movq %r15, %rdi		# movq %r(985), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(964)
	addq %rbx, %r13		# addq %r(964), %r(986)
	movq %r13, %rax		# movq %r(986), %rax
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
	
