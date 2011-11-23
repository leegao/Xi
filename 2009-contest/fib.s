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
	movq $1, %r13		# movq $1, %r(962)
	movq %r13, %r13		# movq %r(962), %r(947)
	movq $1, %rbx		# movq $1, %r(963)
	movq %rbx, %rdi		# movq %r(963), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(952)
	movq $1, %r12		# movq $1, %r(964)
	cmpq %rbx, %r12		# cmpq %r(952), %r(964)
	je .L136		# je .L136
	.L137:		# .L137:
	movq $0, %r13		# movq $0, %r(965)
	movq %r13, %r13		# movq %r(965), %r(947)
	.L136:		# .L136:
	movq %r13, %rdi		# movq %r(947), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(966)
	movq %r13, %r13		# movq %r(966), %r(948)
	movq $11, %rbx		# movq $11, %r(967)
	movq %rbx, %rdi		# movq %r(967), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(954)
	movq $89, %r12		# movq $89, %r(968)
	cmpq %rbx, %r12		# cmpq %r(954), %r(968)
	je .L138		# je .L138
	.L139:		# .L139:
	movq $0, %r13		# movq $0, %r(969)
	movq %r13, %r13		# movq %r(969), %r(948)
	.L138:		# .L138:
	movq %r13, %rdi		# movq %r(948), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(970)
	movq %r13, %r13		# movq %r(970), %r(949)
	movq $14, %rbx		# movq $14, %r(971)
	movq %rbx, %rdi		# movq %r(971), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(956)
	movq $377, %r12		# movq $377, %r(972)
	cmpq %rbx, %r12		# cmpq %r(956), %r(972)
	je .L140		# je .L140
	.L141:		# .L141:
	movq $0, %r13		# movq $0, %r(973)
	movq %r13, %r13		# movq %r(973), %r(949)
	.L140:		# .L140:
	movq %r13, %rdi		# movq %r(949), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(974)
	movq %r13, %r13		# movq %r(974), %r(950)
	movq $15, %rbx		# movq $15, %r(975)
	movq %rbx, %rdi		# movq %r(975), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(958)
	movq $610, %r12		# movq $610, %r(976)
	cmpq %rbx, %r12		# cmpq %r(958), %r(976)
	je .L142		# je .L142
	.L143:		# .L143:
	movq $0, %r13		# movq $0, %r(977)
	movq %r13, %r13		# movq %r(977), %r(950)
	.L142:		# .L142:
	movq %r13, %rdi		# movq %r(950), %rdi
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
	movq $1, %rbx		# movq $1, %r(978)
	cmpq %rbx, %r15		# cmpq %r(978), %r(i)
	jg .L146		# jg .L146
	.L145:		# .L145:
	movq %r15, %rax		# movq %r(i), %rax
	jmp .L144		# jmp .L144
	.L146:		# .L146:
	movq $1, %rbx		# movq $1, %r(979)
	movq %r15, %r13		# movq %r(i), %r(980)
	subq %rbx, %r13		# subq %r(979), %r(980)
	movq %r13, %rdi		# movq %r(980), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r13		# movq %rax, %r(960)
	movq $2, %rbx		# movq $2, %r(981)
	movq %r15, %r15		# movq %r(i), %r(982)
	subq %rbx, %r15		# subq %r(981), %r(982)
	movq %r15, %rdi		# movq %r(982), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(961)
	movq %r13, %r13		# movq %r(960), %r(983)
	addq %rbx, %r13		# addq %r(961), %r(983)
	movq %r13, %rax		# movq %r(983), %rax
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
	
