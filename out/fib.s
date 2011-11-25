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
	movq $1, %r12		# movq $1, %r(6452)
	movq %r12, %r13		# movq %r(6452), %r(6437)
	movq $1, %rbx		# movq $1, %r(6453)
	movq %rbx, %rdi		# movq %r(6453), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(6442)
	movq $1, %r12		# movq $1, %r(6454)
	cmpq %rbx, %r12		# cmpq %r(6442), %r(6454)
	je .L1112		# je .L1112
	.L1113:		# .L1113:
	movq $0, %r12		# movq $0, %r(6455)
	movq %r12, %r13		# movq %r(6455), %r(6437)
	jmp .L1112		# jmp .L1112
	.L1112:		# .L1112:
	movq %r13, %rdi		# movq %r(6437), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(6456)
	movq %r12, %r13		# movq %r(6456), %r(6438)
	movq $11, %rbx		# movq $11, %r(6457)
	movq %rbx, %rdi		# movq %r(6457), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(6444)
	movq $89, %r12		# movq $89, %r(6458)
	cmpq %rbx, %r12		# cmpq %r(6444), %r(6458)
	je .L1114		# je .L1114
	.L1115:		# .L1115:
	movq $0, %r12		# movq $0, %r(6459)
	movq %r12, %r13		# movq %r(6459), %r(6438)
	jmp .L1114		# jmp .L1114
	.L1114:		# .L1114:
	movq %r13, %rdi		# movq %r(6438), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(6460)
	movq %r12, %r13		# movq %r(6460), %r(6439)
	movq $14, %rbx		# movq $14, %r(6461)
	movq %rbx, %rdi		# movq %r(6461), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(6446)
	movq $377, %r12		# movq $377, %r(6462)
	cmpq %rbx, %r12		# cmpq %r(6446), %r(6462)
	je .L1116		# je .L1116
	.L1117:		# .L1117:
	movq $0, %r12		# movq $0, %r(6463)
	movq %r12, %r13		# movq %r(6463), %r(6439)
	jmp .L1116		# jmp .L1116
	.L1116:		# .L1116:
	movq %r13, %rdi		# movq %r(6439), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(6464)
	movq %r12, %r13		# movq %r(6464), %r(6440)
	movq $15, %rbx		# movq $15, %r(6465)
	movq %rbx, %rdi		# movq %r(6465), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(6448)
	movq $610, %r12		# movq $610, %r(6466)
	cmpq %rbx, %r12		# cmpq %r(6448), %r(6466)
	je .L1118		# je .L1118
	.L1119:		# .L1119:
	movq $0, %r12		# movq $0, %r(6467)
	movq %r12, %r13		# movq %r(6467), %r(6440)
	jmp .L1118		# jmp .L1118
	.L1118:		# .L1118:
	movq %r13, %rdi		# movq %r(6440), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1111		# jmp .L1111
	.L1111:		# .L1111:
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
	movq %rdi, %r14		# movq %rdi, %r(i)
	movq $1, %rbx		# movq $1, %r(6468)
	cmpq %rbx, %r14		# cmpq %r(6468), %r(i)
	jg .L1122		# jg .L1122
	.L1121:		# .L1121:
	movq %r14, %rax		# movq %r(i), %rax
	jmp .L1120		# jmp .L1120
	.L1120:		# .L1120:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L1122:		# .L1122:
	movq $1, %rbx		# movq $1, %r(6469)
	movq %r14, %r13		# movq %r(i), %r(6470)
	subq %rbx, %r13		# subq %r(6469), %r(6470)
	movq %r13, %rdi		# movq %r(6470), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r12		# movq %rax, %r(6450)
	movq $2, %rbx		# movq $2, %r(6471)
	movq %r14, %r13		# movq %r(i), %r(6472)
	subq %rbx, %r13		# subq %r(6471), %r(6472)
	movq %r13, %rdi		# movq %r(6472), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(6451)
	movq %r12, %r13		# movq %r(6450), %r(6473)
	addq %rbx, %r13		# addq %r(6451), %r(6473)
	movq %r13, %rax		# movq %r(6473), %rax
	jmp .L1120		# jmp .L1120
	
