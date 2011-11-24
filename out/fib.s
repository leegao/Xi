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
	movq $1, %r13		# movq $1, %r(5899)
	movq $1, %rbx		# movq $1, %r(5900)
	movq %rbx, %rdi		# movq %r(5900), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(5889)
	movq $1, %r12		# movq $1, %r(5901)
	cmpq %rbx, %r12		# cmpq %r(5889), %r(5901)
	je .L1112		# je .L1112
	.L1113:		# .L1113:
	movq $0, %r13		# movq $0, %r(5902)
	jmp .L1112		# jmp .L1112
	.L1112:		# .L1112:
	movq %r13, %rdi		# movq %r(5884), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(5903)
	movq $11, %rbx		# movq $11, %r(5904)
	movq %rbx, %rdi		# movq %r(5904), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(5891)
	movq $89, %r12		# movq $89, %r(5905)
	cmpq %rbx, %r12		# cmpq %r(5891), %r(5905)
	je .L1114		# je .L1114
	.L1115:		# .L1115:
	movq $0, %r13		# movq $0, %r(5906)
	jmp .L1114		# jmp .L1114
	.L1114:		# .L1114:
	movq %r13, %rdi		# movq %r(5885), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(5907)
	movq $14, %rbx		# movq $14, %r(5908)
	movq %rbx, %rdi		# movq %r(5908), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(5893)
	movq $377, %r12		# movq $377, %r(5909)
	cmpq %rbx, %r12		# cmpq %r(5893), %r(5909)
	je .L1116		# je .L1116
	.L1117:		# .L1117:
	movq $0, %r13		# movq $0, %r(5910)
	jmp .L1116		# jmp .L1116
	.L1116:		# .L1116:
	movq %r13, %rdi		# movq %r(5886), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(5911)
	movq $15, %rbx		# movq $15, %r(5912)
	movq %rbx, %rdi		# movq %r(5912), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(5895)
	movq $610, %r12		# movq $610, %r(5913)
	cmpq %rbx, %r12		# cmpq %r(5895), %r(5913)
	je .L1118		# je .L1118
	.L1119:		# .L1119:
	movq $0, %r13		# movq $0, %r(5914)
	jmp .L1118		# jmp .L1118
	.L1118:		# .L1118:
	movq %r13, %rdi		# movq %r(5887), %rdi
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
	movq %rdi, %r15		# movq %rdi, %r(i)
	movq $1, %rbx		# movq $1, %r(5915)
	cmpq %rbx, %r15		# cmpq %r(5915), %r(i)
	jg .L1122		# jg .L1122
	.L1121:		# .L1121:
	movq %r15, %rax		# movq %r(i), %rax
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
	movq $1, %rbx		# movq $1, %r(5916)
	movq %r15, %r13		# movq %r(i), %r(5917)
	subq %rbx, %r13		# subq %r(5916), %r(5917)
	movq %r13, %rdi		# movq %r(5917), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r14		# movq %rax, %r(5897)
	movq $2, %rbx		# movq $2, %r(5918)
	movq %r15, %r12		# movq %r(i), %r(5919)
	subq %rbx, %r12		# subq %r(5918), %r(5919)
	movq %r12, %rdi		# movq %r(5919), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(5898)
	addq %rbx, %r14		# addq %r(5898), %r(5920)
	movq %r14, %rax		# movq %r(5920), %rax
	jmp .L1120		# jmp .L1120
	
