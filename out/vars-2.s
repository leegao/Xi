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
	leaq .L1106(%rip), %rdi		# leaq .L1106(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5922)
	movq %rbx, -8(%rbp)		# movq %r(5922), -8(%rbp)
	.L1107:		# .L1107:
	movq $1, %rbx		# movq $1, %r(5882)
	movq %rbx, %rdi		# movq %r(5882), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(5883)
	movq $8, %r12		# movq $8, %r(5884)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5923)
	subq %r12, %r14		# subq %r(5884), %r(5885)
	movq (%r14), %rbx		# movq (%r(5885)), %r(5886)
	movq $3, %r12		# movq $3, %r(5887)
	cmpq %r12, %rbx		# cmpq %r(5887), %r(5886)
	je .L1109		# je .L1109
	.L1110:		# .L1110:
	movq $0, %r13		# movq $0, %r(5888)
	jmp .L1109		# jmp .L1109
	.L1109:		# .L1109:
	movq %r13, %rdi		# movq %r(5863), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(5889)
	movq %rbx, %r13		# movq %r(5889), %r(5866)
	movq $0, %r12		# movq $0, %r(5890)
	movq $8, %r14		# movq $8, %r(5891)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5924)
	subq %r14, %rbx		# subq %r(5891), %r(5892)
	movq (%rbx), %rbx		# movq (%r(5892)), %r(5893)
	cmpq %rbx, %r12		# cmpq %r(5893), %r(5890)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(5894)
	salq $3, %r14		# salq $3, %r(5895)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5925)
	addq %r14, %rbx		# addq %r(5895), %r(5896)
	movq (%rbx), %rbx		# movq (%r(5896)), %r(5897)
	movq $65, %r12		# movq $65, %r(5898)
	cmpq %r12, %rbx		# cmpq %r(5898), %r(5897)
	je .L1113		# je .L1113
	.L1114:		# .L1114:
	movq $0, %r13		# movq $0, %r(5899)
	jmp .L1113		# jmp .L1113
	.L1113:		# .L1113:
	movq %r13, %rdi		# movq %r(5866), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(5900)
	movq %rbx, %r13		# movq %r(5900), %r(5869)
	movq $1, %r14		# movq $1, %r(5901)
	movq $8, %r12		# movq $8, %r(5902)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5926)
	subq %r12, %rbx		# subq %r(5902), %r(5903)
	movq (%rbx), %rbx		# movq (%r(5903)), %r(5904)
	cmpq %rbx, %r14		# cmpq %r(5904), %r(5901)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(5905)
	salq $3, %r14		# salq $3, %r(5906)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5927)
	addq %r14, %rbx		# addq %r(5906), %r(5907)
	movq (%rbx), %rbx		# movq (%r(5907)), %r(5908)
	movq $66, %r12		# movq $66, %r(5909)
	cmpq %r12, %rbx		# cmpq %r(5909), %r(5908)
	je .L1117		# je .L1117
	.L1118:		# .L1118:
	movq $0, %r13		# movq $0, %r(5910)
	jmp .L1117		# jmp .L1117
	.L1117:		# .L1117:
	movq %r13, %rdi		# movq %r(5869), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(5911)
	movq %rbx, %r13		# movq %r(5911), %r(5872)
	movq $2, %r14		# movq $2, %r(5912)
	movq $8, %r12		# movq $8, %r(5913)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5928)
	subq %r12, %rbx		# subq %r(5913), %r(5914)
	movq (%rbx), %rbx		# movq (%r(5914)), %r(5915)
	cmpq %rbx, %r14		# cmpq %r(5915), %r(5912)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r14		# movq $2, %r(5916)
	salq $3, %r14		# salq $3, %r(5917)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5929)
	addq %r14, %rbx		# addq %r(5917), %r(5918)
	movq (%rbx), %rbx		# movq (%r(5918)), %r(5919)
	movq $67, %r12		# movq $67, %r(5920)
	cmpq %r12, %rbx		# cmpq %r(5920), %r(5919)
	je .L1121		# je .L1121
	.L1122:		# .L1122:
	movq $0, %r13		# movq $0, %r(5921)
	jmp .L1121		# jmp .L1121
	.L1121:		# .L1121:
	movq %r13, %rdi		# movq %r(5872), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1105		# jmp .L1105
	.L1105:		# .L1105:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strdup_aii
_I_c_internal_strdup_aii:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5942)
	movq %rbx, -16(%rbp)		# movq %r(5942), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5943)
	movq (%rbx), %rbx		# movq (%r(5943)), %r(5930)
	movq %rbx, %r14		# movq %r(5930), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(5931)
	salq $3, %rbx		# salq $3, %r(5931)
	movq $8, %r12		# movq $8, %r(5932)
	addq %r12, %rbx		# addq %r(5932), %r(5933)
	movq %rbx, %rdi		# movq %r(5933), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(5879)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(5934)
	salq $3, %rbx		# salq $3, %r(5934)
	movq %r12, %r15		# movq %r(5879), %r(5935)
	addq %rbx, %r15		# addq %r(5934), %r(5935)
	movq %r14, %r13		# movq %r(t10), %r(5936)
	salq $3, %r13		# salq $3, %r(5936)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5944)
	movq %rbx, -8(%rbp)		# movq %r(5945), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5946)
	addq %r13, %rbx		# addq %r(5936), %r(5946)
	movq %rbx, -8(%rbp)		# movq %r(5946), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5947)
	movq (%rbx), %rbx		# movq (%r(5947)), %r(5938)
	movq %rbx, (%r15)		# movq %r(5938), (%r(5935))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(5939)
	cmpq %rbx, %r14		# cmpq %r(5939), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5940)
	addq %rbx, %r12		# addq %r(5940), %r(5941)
	movq %r12, %rax		# movq %r(5941), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L1106:
	.quad 3
	.quad 65
	.quad 66
	.quad 67
	.text

error_outofbounds:
call _I_outOfBounds_p
