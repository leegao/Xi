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
	movq $1, %r13		# movq $1, %r(892)
	movq $1, %rbx		# movq $1, %r(893)
	movq %rbx, %rdi		# movq %r(893), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(882)
	movq $1, %r12		# movq $1, %r(894)
	cmpq %rbx, %r12		# cmpq %r(882), %r(894)
	je .L136		# je .L136
	.L137:		# .L137:
	movq $0, %r13		# movq $0, %r(895)
	.L136:		# .L136:
	movq %r13, %rdi		# movq %r(877), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(896)
	movq $11, %rbx		# movq $11, %r(897)
	movq %rbx, %rdi		# movq %r(897), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(884)
	movq $89, %r12		# movq $89, %r(898)
	cmpq %rbx, %r12		# cmpq %r(884), %r(898)
	je .L138		# je .L138
	.L139:		# .L139:
	movq $0, %r13		# movq $0, %r(899)
	.L138:		# .L138:
	movq %r13, %rdi		# movq %r(878), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(900)
	movq $14, %rbx		# movq $14, %r(901)
	movq %rbx, %rdi		# movq %r(901), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(886)
	movq $377, %r12		# movq $377, %r(902)
	cmpq %rbx, %r12		# cmpq %r(886), %r(902)
	je .L140		# je .L140
	.L141:		# .L141:
	movq $0, %r13		# movq $0, %r(903)
	.L140:		# .L140:
	movq %r13, %rdi		# movq %r(879), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(904)
	movq $15, %rbx		# movq $15, %r(905)
	movq %rbx, %rdi		# movq %r(905), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(888)
	movq $610, %r12		# movq $610, %r(906)
	cmpq %rbx, %r12		# cmpq %r(888), %r(906)
	je .L142		# je .L142
	.L143:		# .L143:
	movq $0, %r13		# movq $0, %r(907)
	.L142:		# .L142:
	movq %r13, %rdi		# movq %r(880), %rdi
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
	movq $1, %rbx		# movq $1, %r(908)
	cmpq %rbx, %r15		# cmpq %r(908), %r(i)
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
	movq $1, %rbx		# movq $1, %r(909)
	movq %r15, %r13		# movq %r(i), %r(910)
	subq %rbx, %r13		# subq %r(909), %r(910)
	movq %r13, %rdi		# movq %r(910), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r14		# movq %rax, %r(890)
	movq $2, %rbx		# movq $2, %r(911)
	movq %r15, %r12		# movq %r(i), %r(912)
	subq %rbx, %r12		# subq %r(911), %r(912)
	movq %r12, %rdi		# movq %r(912), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(891)
	addq %rbx, %r14		# addq %r(891), %r(913)
	movq %r14, %rax		# movq %r(913), %rax
	jmp .L144		# jmp .L144
	
