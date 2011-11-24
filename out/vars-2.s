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
	movq %rax, %rbx		# movq %rax, %r(5958)
	movq %rbx, -8(%rbp)		# movq %r(5958), -8(%rbp)
	.L1107:		# .L1107:
	movq $1, %rbx		# movq $1, %r(5918)
	movq %rbx, %rdi		# movq %r(5918), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(5919)
	movq $8, %r12		# movq $8, %r(5920)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5959)
	subq %r12, %r14		# subq %r(5920), %r(5921)
	movq (%r14), %rbx		# movq (%r(5921)), %r(5922)
	movq $3, %r12		# movq $3, %r(5923)
	cmpq %r12, %rbx		# cmpq %r(5923), %r(5922)
	je .L1109		# je .L1109
	.L1110:		# .L1110:
	movq $0, %r13		# movq $0, %r(5924)
	jmp .L1109		# jmp .L1109
	.L1109:		# .L1109:
	movq %r13, %rdi		# movq %r(5899), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(5925)
	movq %rbx, %r13		# movq %r(5925), %r(5902)
	movq $0, %r14		# movq $0, %r(5926)
	movq $8, %r12		# movq $8, %r(5927)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5960)
	subq %r12, %rbx		# subq %r(5927), %r(5928)
	movq (%rbx), %rbx		# movq (%r(5928)), %r(5929)
	cmpq %rbx, %r14		# cmpq %r(5929), %r(5926)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(5930)
	salq $3, %r14		# salq $3, %r(5931)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5961)
	addq %r14, %rbx		# addq %r(5931), %r(5932)
	movq (%rbx), %rbx		# movq (%r(5932)), %r(5933)
	movq $65, %r12		# movq $65, %r(5934)
	cmpq %r12, %rbx		# cmpq %r(5934), %r(5933)
	je .L1113		# je .L1113
	.L1114:		# .L1114:
	movq $0, %r13		# movq $0, %r(5935)
	jmp .L1113		# jmp .L1113
	.L1113:		# .L1113:
	movq %r13, %rdi		# movq %r(5902), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(5936)
	movq %rbx, %r13		# movq %r(5936), %r(5905)
	movq $1, %r12		# movq $1, %r(5937)
	movq $8, %r14		# movq $8, %r(5938)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5962)
	subq %r14, %rbx		# subq %r(5938), %r(5939)
	movq (%rbx), %rbx		# movq (%r(5939)), %r(5940)
	cmpq %rbx, %r12		# cmpq %r(5940), %r(5937)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(5941)
	salq $3, %r14		# salq $3, %r(5942)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5963)
	addq %r14, %rbx		# addq %r(5942), %r(5943)
	movq (%rbx), %rbx		# movq (%r(5943)), %r(5944)
	movq $66, %r12		# movq $66, %r(5945)
	cmpq %r12, %rbx		# cmpq %r(5945), %r(5944)
	je .L1117		# je .L1117
	.L1118:		# .L1118:
	movq $0, %r13		# movq $0, %r(5946)
	jmp .L1117		# jmp .L1117
	.L1117:		# .L1117:
	movq %r13, %rdi		# movq %r(5905), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(5947)
	movq %rbx, %r13		# movq %r(5947), %r(5908)
	movq $2, %r12		# movq $2, %r(5948)
	movq $8, %r14		# movq $8, %r(5949)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5964)
	subq %r14, %rbx		# subq %r(5949), %r(5950)
	movq (%rbx), %rbx		# movq (%r(5950)), %r(5951)
	cmpq %rbx, %r12		# cmpq %r(5951), %r(5948)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r14		# movq $2, %r(5952)
	salq $3, %r14		# salq $3, %r(5953)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5965)
	addq %r14, %rbx		# addq %r(5953), %r(5954)
	movq (%rbx), %rbx		# movq (%r(5954)), %r(5955)
	movq $67, %r12		# movq $67, %r(5956)
	cmpq %r12, %rbx		# cmpq %r(5956), %r(5955)
	je .L1121		# je .L1121
	.L1122:		# .L1122:
	movq $0, %r13		# movq $0, %r(5957)
	jmp .L1121		# jmp .L1121
	.L1121:		# .L1121:
	movq %r13, %rdi		# movq %r(5908), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(5978)
	movq %rbx, -16(%rbp)		# movq %r(5978), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5979)
	movq (%rbx), %r12		# movq (%r(5979)), %r(5966)
	movq %r12, -24(%rbp)		# movq %r(5980), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5981)
	salq $3, %rbx		# salq $3, %r(5967)
	movq $8, %r12		# movq $8, %r(5968)
	addq %r12, %rbx		# addq %r(5968), %r(5969)
	movq %rbx, %rdi		# movq %r(5969), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5915)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5982)
	salq $3, %r12		# salq $3, %r(5970)
	movq %r14, %r13		# movq %r(5915), %r(5971)
	addq %r12, %r13		# addq %r(5970), %r(5971)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5983)
	movq %rbx, %r12		# movq %r(5983), %r(5972)
	salq $3, %r12		# salq $3, %r(5972)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5984)
	movq %rbx, -8(%rbp)		# movq %r(5985), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5986)
	addq %r12, %rbx		# addq %r(5972), %r(5986)
	movq %rbx, -8(%rbp)		# movq %r(5986), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5987)
	movq (%rbx), %rbx		# movq (%r(5987)), %r(5974)
	movq %rbx, (%r13)		# movq %r(5974), (%r(5971))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5988)
	decq %rbx		# decq %r(5988)
	movq %rbx, -24(%rbp)		# movq %r(5988), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(5975)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5989)
	cmpq %rbx, %r12		# cmpq %r(5975), %r(5989)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5976)
	movq %r14, %r12		# movq %r(5915), %r(5977)
	addq %rbx, %r12		# addq %r(5976), %r(5977)
	movq %r12, %rax		# movq %r(5977), %rax
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
