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
	leaq .L980(%rip), %rdi		# leaq .L980(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5148)
	movq %rbx, %rdi		# movq %r(5148), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(5149)
	movq %rbx, %rdi		# movq %r(5149), %rdi
	call _If_aabb		# call _If_aabb
	jmp .L979		# jmp .L979
	.L979:		# .L979:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_aabb
_If_aabb:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(b)
	movq $40, %rbx		# movq $40, %r(5158)
	movq %rbx, %rdi		# movq %r(5158), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5151)
	movq $4, %r12		# movq $4, %r(5159)
	movq %r12, (%r13)		# movq %r(5159), (%r(5151))
	movq $8, %r12		# movq $8, %r(5160)
	addq %r12, %r13		# addq %r(5160), %r(5161)
	movq %r13, %r15		# movq %r(5161), %r(5136)
	movq $24, %rbx		# movq $24, %r(5162)
	movq %rbx, %rdi		# movq %r(5162), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5152)
	movq $2, %rbx		# movq $2, %r(5163)
	movq %rbx, (%r13)		# movq %r(5163), (%r(5152))
	movq $8, %rbx		# movq $8, %r(5164)
	addq %rbx, %r13		# addq %r(5164), %r(5165)
	movq %r13, %r14		# movq %r(5165), %r(5138)
	movq $0, %rbx		# movq $0, %r(5166)
	movq %r14, %r13		# movq %r(5138), %r(5167)
	addq %rbx, %r13		# addq %r(5166), %r(5167)
	movq $1, %rbx		# movq $1, %r(5168)
	movq %rbx, (%r13)		# movq %r(5168), (%r(5167))
	movq $8, %rbx		# movq $8, %r(5169)
	movq %r14, %r13		# movq %r(5138), %r(5170)
	addq %rbx, %r13		# addq %r(5169), %r(5170)
	movq $1, %rbx		# movq $1, %r(5171)
	movq %rbx, (%r13)		# movq %r(5171), (%r(5170))
	movq $0, %rbx		# movq $0, %r(5172)
	movq %r15, %r13		# movq %r(5136), %r(5173)
	addq %rbx, %r13		# addq %r(5172), %r(5173)
	movq %r14, (%r13)		# movq %r(5138), (%r(5173))
	movq $24, %rbx		# movq $24, %r(5174)
	movq %rbx, %rdi		# movq %r(5174), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5153)
	movq $2, %rbx		# movq $2, %r(5175)
	movq %rbx, (%r13)		# movq %r(5175), (%r(5153))
	movq $8, %rbx		# movq $8, %r(5176)
	addq %rbx, %r13		# addq %r(5176), %r(5177)
	movq %r13, %r14		# movq %r(5177), %r(5140)
	movq $0, %rbx		# movq $0, %r(5178)
	movq %r14, %r13		# movq %r(5140), %r(5179)
	addq %rbx, %r13		# addq %r(5178), %r(5179)
	movq $1, %rbx		# movq $1, %r(5180)
	movq %rbx, (%r13)		# movq %r(5180), (%r(5179))
	movq $8, %rbx		# movq $8, %r(5181)
	movq %r14, %r13		# movq %r(5140), %r(5182)
	addq %rbx, %r13		# addq %r(5181), %r(5182)
	movq $0, %rbx		# movq $0, %r(5183)
	movq %rbx, (%r13)		# movq %r(5183), (%r(5182))
	movq $8, %rbx		# movq $8, %r(5184)
	movq %r15, %r13		# movq %r(5136), %r(5185)
	addq %rbx, %r13		# addq %r(5184), %r(5185)
	movq %r14, (%r13)		# movq %r(5140), (%r(5185))
	movq $24, %rbx		# movq $24, %r(5186)
	movq %rbx, %rdi		# movq %r(5186), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5154)
	movq $2, %rbx		# movq $2, %r(5187)
	movq %rbx, (%r13)		# movq %r(5187), (%r(5154))
	movq $8, %rbx		# movq $8, %r(5188)
	addq %rbx, %r13		# addq %r(5188), %r(5189)
	movq %r13, %r14		# movq %r(5189), %r(5142)
	movq $0, %rbx		# movq $0, %r(5190)
	movq %r14, %r13		# movq %r(5142), %r(5191)
	addq %rbx, %r13		# addq %r(5190), %r(5191)
	movq $0, %rbx		# movq $0, %r(5192)
	movq %rbx, (%r13)		# movq %r(5192), (%r(5191))
	movq $8, %rbx		# movq $8, %r(5193)
	movq %r14, %r13		# movq %r(5142), %r(5194)
	addq %rbx, %r13		# addq %r(5193), %r(5194)
	movq $1, %rbx		# movq $1, %r(5195)
	movq %rbx, (%r13)		# movq %r(5195), (%r(5194))
	movq $16, %rbx		# movq $16, %r(5196)
	movq %r15, %r13		# movq %r(5136), %r(5197)
	addq %rbx, %r13		# addq %r(5196), %r(5197)
	movq %r14, (%r13)		# movq %r(5142), (%r(5197))
	movq $24, %rbx		# movq $24, %r(5198)
	movq %rbx, %rdi		# movq %r(5198), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5155)
	movq $2, %rbx		# movq $2, %r(5199)
	movq %rbx, (%r13)		# movq %r(5199), (%r(5155))
	movq $8, %rbx		# movq $8, %r(5200)
	addq %rbx, %r13		# addq %r(5200), %r(5201)
	movq %r13, %r14		# movq %r(5201), %r(5144)
	movq $0, %rbx		# movq $0, %r(5202)
	movq %r14, %r13		# movq %r(5144), %r(5203)
	addq %rbx, %r13		# addq %r(5202), %r(5203)
	movq $0, %rbx		# movq $0, %r(5204)
	movq %rbx, (%r13)		# movq %r(5204), (%r(5203))
	movq $8, %rbx		# movq $8, %r(5205)
	movq %r14, %r13		# movq %r(5144), %r(5206)
	addq %rbx, %r13		# addq %r(5205), %r(5206)
	movq $0, %rbx		# movq $0, %r(5207)
	movq %rbx, (%r13)		# movq %r(5207), (%r(5206))
	movq $24, %rbx		# movq $24, %r(5208)
	movq %r15, %r13		# movq %r(5136), %r(5209)
	addq %rbx, %r13		# addq %r(5208), %r(5209)
	movq %r14, (%r13)		# movq %r(5144), (%r(5209))
	movq %r15, %rax		# movq %r(5136), %rax
	jmp .L981		# jmp .L981
	.L981:		# .L981:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_b
_Ig_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(5210)
	movq %rbx, %rax		# movq %r(5210), %rax
	jmp .L982		# jmp .L982
	.L982:		# .L982:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ih_bi
_Ih_bi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $0, %rbx		# movq $0, %r(5211)
	movq %rbx, %rax		# movq %r(5211), %rax
	jmp .L983		# jmp .L983
	.L983:		# .L983:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ii_bai
_Ii_bai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $1, %rbx		# movq $1, %r(5212)
	movq %rbx, %rax		# movq %r(5212), %rax
	jmp .L984		# jmp .L984
	.L984:		# .L984:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5228)
	movq %rbx, -24(%rbp)		# movq %r(5228), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5229)
	movq (%rbx), %rbx		# movq (%r(5229)), %r(5213)
	movq %rbx, %r12		# movq %r(t10), %r(5214)
	salq $3, %r12		# salq $3, %r(5214)
	movq $8, %r13		# movq $8, %r(5215)
	addq %r13, %r12		# addq %r(5215), %r(5216)
	movq %r12, %rdi		# movq %r(5216), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(5230)
	movq %r12, -32(%rbp)		# movq %r(5230), -32(%rbp)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %rbx, %r14		# movq %r(t10), %r(5217)
	salq $3, %r14		# salq $3, %r(5217)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5231)
	movq %r13, -16(%rbp)		# movq %r(5232), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5233)
	addq %r14, %r12		# addq %r(5217), %r(5233)
	movq %r12, -16(%rbp)		# movq %r(5233), -16(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(5219)
	salq $3, %r14		# salq $3, %r(5219)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5234)
	movq %r13, -8(%rbp)		# movq %r(5225), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5226)
	addq %r14, %r12		# addq %r(5219), %r(5226)
	movq %r12, -8(%rbp)		# movq %r(5226), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5227)
	movq (%r12), %r12		# movq (%r(5227)), %r(5221)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5235)
	movq %r12, (%r13)		# movq %r(5221), (%r(5235))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(5222)
	cmpq %r12, %rbx		# cmpq %r(5222), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(5223)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5236)
	addq %rbx, %r13		# addq %r(5223), %r(5224)
	movq %r13, %rax		# movq %r(5224), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L980:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

