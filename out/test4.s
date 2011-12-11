.att_syntax prefix
.text
.globl _Ia_ai
_Ia_ai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %r13		# movq $0, %r(5166)
	movq %r13, %rbx		# movq %r(5166), %r(5210)
	movq %rbx, -40(%rbp)		# movq %r(5210), -40(%rbp)
	leaq .L810(%rip), %rdi		# leaq .L810(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5211)
	movq %rbx, -32(%rbp)		# movq %r(5211), -32(%rbp)
	movq $16, %rbx		# movq $16, %r(5168)
	movq %rbx, %rdi		# movq %r(5168), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5155)
	movq $1, %rbx		# movq $1, %r(5169)
	movq %rbx, (%r14)		# movq %r(5169), (%r(5155))
	movq $8, %rbx		# movq $8, %r(5170)
	movq %r14, %r13		# movq %r(5155), %r(5171)
	addq %rbx, %r13		# addq %r(5170), %r(5171)
	movq %r13, %r12		# movq %r(5171), %r(5212)
	movq %r12, -16(%rbp)		# movq %r(5212), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(5172)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5213)
	movq %r13, %r14		# movq %r(5213), %r(5173)
	addq %rbx, %r14		# addq %r(5172), %r(5173)
	movq $8, %r12		# movq $8, %r(5174)
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(5214)
	movq %r15, %rbx		# movq %r(5214), %r(5215)
	movq %rbx, -8(%rbp)		# movq %r(5215), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5216)
	subq %r12, %rbx		# subq %r(5174), %r(5216)
	movq %rbx, -8(%rbp)		# movq %r(5216), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5217)
	movq (%rbx), %r12		# movq (%r(5217)), %r(5176)
	movq %r12, (%r14)		# movq %r(5176), (%r(5173))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5218)
	movq %rbx, %rdi		# movq %r(5218), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5219)
	movq %rbx, -24(%rbp)		# movq %r(5219), -24(%rbp)
	jmp .L812		# jmp .L812
	.L812:		# .L812:
	movq $8, %rbx		# movq $8, %r(5177)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(5220)
	movq %r14, %r12		# movq %r(5220), %r(5178)
	subq %rbx, %r12		# subq %r(5177), %r(5178)
	movq (%r12), %rbx		# movq (%r(5178)), %r(5179)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5221)
	cmpq %rbx, %r12		# cmpq %r(5179), %r(5221)
	jge .L814		# jge .L814
	.L813:		# .L813:
	movq $8, %rbx		# movq $8, %r(5180)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(5222)
	movq %r14, %r12		# movq %r(5222), %r(5181)
	subq %rbx, %r12		# subq %r(5180), %r(5181)
	movq (%r12), %rbx		# movq (%r(5181)), %r(5182)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5223)
	cmpq %rbx, %r12		# cmpq %r(5182), %r(5223)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(5183)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5224)
	movq %r14, %r12		# movq %r(5224), %r(5184)
	subq %rbx, %r12		# subq %r(5183), %r(5184)
	movq (%r12), %rbx		# movq (%r(5184)), %r(5185)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5225)
	cmpq %rbx, %r12		# cmpq %r(5185), %r(5225)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5226)
	movq %r13, %r14		# movq %r(5226), %r(5186)
	salq $3, %r14		# salq $3, %r(5186)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5227)
	movq %r12, %r15		# movq %r(5227), %r(5187)
	addq %r14, %r15		# addq %r(5186), %r(5187)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5228)
	movq %r13, %rbx		# movq %r(5228), %r(5236)
	movq %rbx, -64(%rbp)		# movq %r(5236), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5237)
	salq $3, %rbx		# salq $3, %r(5237)
	movq %rbx, -64(%rbp)		# movq %r(5237), -64(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5229)
	movq %r13, %rbx		# movq %r(5229), %r(5238)
	movq %rbx, -48(%rbp)		# movq %r(5238), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5239)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5240)
	addq %r12, %rbx		# addq %r(5240), %r(5239)
	movq %rbx, -48(%rbp)		# movq %r(5239), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5241)
	movq (%rbx), %r12		# movq (%r(5241)), %r(5190)
	movq %r12, (%r15)		# movq %r(5190), (%r(5187))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5230)
	incq %rbx		# incq %r(5230)
	movq %rbx, -40(%rbp)		# movq %r(5230), -40(%rbp)
	jmp .L812		# jmp .L812
	.L814:		# .L814:
	movq $0, %r13		# movq $0, %r(5191)
	movq $8, %rbx		# movq $8, %r(5192)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5231)
	movq %r12, %r14		# movq %r(5231), %r(5193)
	subq %rbx, %r14		# subq %r(5192), %r(5193)
	movq (%r14), %rbx		# movq (%r(5193)), %r(5194)
	cmpq %rbx, %r13		# cmpq %r(5194), %r(5191)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5195)
	movq %r13, %r14		# movq %r(5195), %r(5196)
	salq $3, %r14		# salq $3, %r(5196)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5232)
	movq %r12, %r15		# movq %r(5232), %r(5197)
	addq %r14, %r15		# addq %r(5196), %r(5197)
	movq $66, %rbx		# movq $66, %r(5198)
	movq %rbx, (%r15)		# movq %r(5198), (%r(5197))
	movq $1, %r13		# movq $1, %r(5199)
	movq %r13, %rbx		# movq %r(5199), %r(5242)
	movq %rbx, -56(%rbp)		# movq %r(5242), -56(%rbp)
	movq $0, %r13		# movq $0, %r(5200)
	movq $8, %rbx		# movq $8, %r(5201)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5233)
	movq %r12, %r14		# movq %r(5233), %r(5202)
	subq %rbx, %r14		# subq %r(5201), %r(5202)
	movq (%r14), %rbx		# movq (%r(5202)), %r(5203)
	cmpq %rbx, %r13		# cmpq %r(5203), %r(5200)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5204)
	movq %r13, %r14		# movq %r(5204), %r(5205)
	salq $3, %r14		# salq $3, %r(5205)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5234)
	movq %r12, %r15		# movq %r(5234), %r(5206)
	addq %r14, %r15		# addq %r(5205), %r(5206)
	movq (%r15), %rbx		# movq (%r(5206)), %r(5207)
	movq $66, %r12		# movq $66, %r(5208)
	cmpq %r12, %rbx		# cmpq %r(5208), %r(5207)
	je .L823		# je .L823
	.L824:		# .L824:
	movq $0, %r13		# movq $0, %r(5209)
	movq %r13, %rbx		# movq %r(5209), %r(5243)
	movq %rbx, -56(%rbp)		# movq %r(5243), -56(%rbp)
	jmp .L823		# jmp .L823
	.L823:		# .L823:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5244)
	movq %rbx, %rdi		# movq %r(5244), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5235)
	movq %rbx, %rax		# movq %r(5235), %rax
	jmp .L809		# jmp .L809
	.L809:		# .L809:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5149)
	call _Ia_ai		# call _Ia_ai
	call _Ia_ai		# call _Ia_ai
	movq %rax, %rbx		# movq %rax, %r(5256)
	movq %rbx, -8(%rbp)		# movq %r(5256), -8(%rbp)
	movq $1, %r13		# movq $1, %r(5245)
	movq %r13, %rbx		# movq %r(5245), %r(5259)
	movq %rbx, -16(%rbp)		# movq %r(5259), -16(%rbp)
	movq $0, %r13		# movq $0, %r(5246)
	movq $8, %rbx		# movq $8, %r(5247)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5257)
	movq %r12, %r14		# movq %r(5257), %r(5248)
	subq %rbx, %r14		# subq %r(5247), %r(5248)
	movq (%r14), %rbx		# movq (%r(5248)), %r(5249)
	cmpq %rbx, %r13		# cmpq %r(5249), %r(5246)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5250)
	movq %r13, %r14		# movq %r(5250), %r(5251)
	salq $3, %r14		# salq $3, %r(5251)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5258)
	movq %r12, %r15		# movq %r(5258), %r(5252)
	addq %r14, %r15		# addq %r(5251), %r(5252)
	movq (%r15), %rbx		# movq (%r(5252)), %r(5253)
	movq $72, %r12		# movq $72, %r(5254)
	cmpq %r12, %rbx		# cmpq %r(5254), %r(5253)
	je .L828		# je .L828
	.L829:		# .L829:
	movq $0, %r13		# movq $0, %r(5255)
	movq %r13, %rbx		# movq %r(5255), %r(5260)
	movq %rbx, -16(%rbp)		# movq %r(5260), -16(%rbp)
	jmp .L828		# jmp .L828
	.L828:		# .L828:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5261)
	movq %rbx, %rdi		# movq %r(5261), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L825		# jmp .L825
	.L825:		# .L825:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5305)
	movq %rbx, -80(%rbp)		# movq %r(5305), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(5262)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5306)
	movq %r14, %r12		# movq %r(5306), %r(5263)
	subq %rbx, %r12		# subq %r(5262), %r(5263)
	movq (%r12), %r13		# movq (%r(5263)), %r(5264)
	movq %r13, %rbx		# movq %r(5264), %r(5307)
	movq %rbx, -8(%rbp)		# movq %r(5307), -8(%rbp)
	movq $1, %r13		# movq $1, %r(5265)
	movq %r13, %rbx		# movq %r(5265), %r(5308)
	movq %rbx, -72(%rbp)		# movq %r(5308), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(5266)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5309)
	cmpq %rbx, %r12		# cmpq %r(5266), %r(5309)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(5267)
	movq %rbx, %rax		# movq %r(5267), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L318:		# .L318:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5310)
	movq %r13, %rbx		# movq %r(5310), %r(5268)
	salq $3, %rbx		# salq $3, %r(5268)
	movq %rbx, %rdi		# movq %r(5268), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5311)
	movq %rbx, -64(%rbp)		# movq %r(5311), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(5269)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5312)
	movq %r14, %r12		# movq %r(5312), %r(5270)
	subq %rbx, %r12		# subq %r(5269), %r(5270)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5313)
	movq %r12, (%rbx)		# movq %r(5270), (%r(5313))
	movq $8, %rbx		# movq $8, %r(5271)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5314)
	movq %r14, %r13		# movq %r(5314), %r(5272)
	addq %rbx, %r13		# addq %r(5271), %r(5272)
	movq %r13, %r12		# movq %r(5272), %r(5315)
	movq %r12, -16(%rbp)		# movq %r(5315), -16(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5316)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5317)
	cmpq %rbx, %r12		# cmpq %r(5316), %r(5317)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(5273)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5318)
	movq %r14, %r12		# movq %r(5318), %r(5274)
	subq %rbx, %r12		# subq %r(5273), %r(5274)
	movq (%r12), %rbx		# movq (%r(5274)), %r(5275)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5319)
	cmpq %rbx, %r12		# cmpq %r(5275), %r(5319)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(5276)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5320)
	movq %r14, %r13		# movq %r(5320), %r(5277)
	subq %rbx, %r13		# subq %r(5276), %r(5277)
	movq %r13, %r12		# movq %r(5277), %r(5321)
	movq %r12, -32(%rbp)		# movq %r(5321), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(5278)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5322)
	movq %r14, %r12		# movq %r(5322), %r(5279)
	subq %rbx, %r12		# subq %r(5278), %r(5279)
	movq (%r12), %rbx		# movq (%r(5279)), %r(5280)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5323)
	cmpq %rbx, %r12		# cmpq %r(5280), %r(5323)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5324)
	movq %r13, %r14		# movq %r(5324), %r(5281)
	salq $3, %r14		# salq $3, %r(5281)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5325)
	movq %r12, %r15		# movq %r(5325), %r(5282)
	addq %r14, %r15		# addq %r(5281), %r(5282)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5326)
	movq %r13, %rbx		# movq %r(5326), %r(5357)
	movq %rbx, -104(%rbp)		# movq %r(5357), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(5358)
	salq $3, %rbx		# salq $3, %r(5358)
	movq %rbx, -104(%rbp)		# movq %r(5358), -104(%rbp)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(5327)
	movq %r13, %rbx		# movq %r(5327), %r(5328)
	movq %rbx, -96(%rbp)		# movq %r(5328), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(5329)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(5359)
	addq %r12, %rbx		# addq %r(5359), %r(5329)
	movq %rbx, -96(%rbp)		# movq %r(5329), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(5330)
	movq (%rbx), %r12		# movq (%r(5330)), %r(5285)
	movq %r12, (%r15)		# movq %r(5285), (%r(5282))
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5331)
	incq %rbx		# incq %r(5331)
	movq %rbx, -72(%rbp)		# movq %r(5331), -72(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(5286)
	movq $8, %rbx		# movq $8, %r(5287)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5332)
	movq %r12, %r14		# movq %r(5332), %r(5288)
	subq %rbx, %r14		# subq %r(5287), %r(5288)
	movq (%r14), %rbx		# movq (%r(5288)), %r(5289)
	cmpq %rbx, %r13		# cmpq %r(5289), %r(5286)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5290)
	movq %r13, %r14		# movq %r(5290), %r(5291)
	salq $3, %r14		# salq $3, %r(5291)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5333)
	movq %r12, %r15		# movq %r(5333), %r(5292)
	addq %r14, %r15		# addq %r(5291), %r(5292)
	movq (%r15), %r13		# movq (%r(5292)), %r(5293)
	movq %r13, %rbx		# movq %r(5293), %r(5334)
	movq %rbx, -72(%rbp)		# movq %r(5334), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(5294)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5335)
	movq %r14, %r13		# movq %r(5335), %r(5295)
	addq %rbx, %r13		# addq %r(5294), %r(5295)
	movq %r13, %r12		# movq %r(5295), %r(5296)
	salq $3, %r12		# salq $3, %r(5296)
	movq %r12, %rdi		# movq %r(5296), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5162)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5336)
	movq %rbx, (%r14)		# movq %r(5336), (%r(5162))
	movq $8, %r13		# movq $8, %r(5297)
	movq %r14, %r12		# movq %r(5162), %r(5337)
	movq %r12, -56(%rbp)		# movq %r(5337), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5338)
	addq %r13, %rbx		# addq %r(5297), %r(5338)
	movq %rbx, -56(%rbp)		# movq %r(5338), -56(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5339)
	movq %r13, %rbx		# movq %r(5339), %r(5340)
	movq %rbx, -40(%rbp)		# movq %r(5340), -40(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(5299)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5341)
	cmpq %rbx, %r12		# cmpq %r(5299), %r(5341)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5342)
	decq %rbx		# decq %r(5342)
	movq %rbx, -72(%rbp)		# movq %r(5342), -72(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5343)
	movq %rbx, %rdi		# movq %r(5343), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5344)
	movq %rbx, -48(%rbp)		# movq %r(5344), -48(%rbp)
	movq $8, %r13		# movq $8, %r(5300)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5345)
	movq %r14, %rbx		# movq %r(5345), %r(5346)
	movq %rbx, -24(%rbp)		# movq %r(5346), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5347)
	subq %r13, %rbx		# subq %r(5300), %r(5347)
	movq %rbx, -24(%rbp)		# movq %r(5347), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5348)
	movq (%rbx), %r12		# movq (%r(5348)), %r(5302)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5349)
	cmpq %r12, %rbx		# cmpq %r(5302), %r(5349)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5350)
	movq %r12, %r14		# movq %r(5350), %r(5303)
	salq $3, %r14		# salq $3, %r(5303)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5351)
	movq %r13, %rbx		# movq %r(5351), %r(5352)
	movq %rbx, -88(%rbp)		# movq %r(5352), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5353)
	addq %r14, %rbx		# addq %r(5303), %r(5353)
	movq %rbx, -88(%rbp)		# movq %r(5353), -88(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5354)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(5355)
	movq %rbx, (%r12)		# movq %r(5354), (%r(5355))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5356)
	movq %rbx, %rax		# movq %r(5356), %rax
	jmp .L320		# jmp .L320
	
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
	movq %rdi, %rbx		# movq %rdi, %r(5372)
	movq %rbx, -16(%rbp)		# movq %r(5372), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5373)
	movq (%rbx), %r13		# movq (%r(5373)), %r(5360)
	movq %r13, %r12		# movq %r(5360), %r(5374)
	movq %r12, -24(%rbp)		# movq %r(5374), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5375)
	movq %r12, %r13		# movq %r(5375), %r(5361)
	salq $3, %r13		# salq $3, %r(5361)
	movq $8, %rbx		# movq $8, %r(5362)
	movq %r13, %r14		# movq %r(5361), %r(5363)
	addq %rbx, %r14		# addq %r(5362), %r(5363)
	movq %r14, %rdi		# movq %r(5363), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5164)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5376)
	movq %r13, %rbx		# movq %r(5376), %r(5364)
	salq $3, %rbx		# salq $3, %r(5364)
	movq %r15, %r13		# movq %r(5164), %r(5365)
	addq %rbx, %r13		# addq %r(5364), %r(5365)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5377)
	movq %rbx, %r12		# movq %r(5377), %r(5366)
	salq $3, %r12		# salq $3, %r(5366)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5378)
	movq %rbx, %r14		# movq %r(5378), %r(5379)
	movq %r14, -8(%rbp)		# movq %r(5379), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5380)
	addq %r12, %rbx		# addq %r(5366), %r(5380)
	movq %rbx, -8(%rbp)		# movq %r(5380), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5381)
	movq (%rbx), %r12		# movq (%r(5381)), %r(5368)
	movq %r12, (%r13)		# movq %r(5368), (%r(5365))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5382)
	decq %rbx		# decq %r(5382)
	movq %rbx, -24(%rbp)		# movq %r(5382), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(5369)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5383)
	cmpq %rbx, %r12		# cmpq %r(5369), %r(5383)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5370)
	movq %r15, %r13		# movq %r(5164), %r(5371)
	addq %rbx, %r13		# addq %r(5370), %r(5371)
	movq %r13, %rax		# movq %r(5371), %rax
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
.L810:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

error_outofbounds:
call _I_outOfBounds_p
