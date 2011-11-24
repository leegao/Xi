.att_syntax prefix
.text
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L854(%rip), %rdi		# leaq .L854(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5015)
	movq %r13, %rdi		# movq %r(5015), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L853		# jmp .L853
	.L853:		# .L853:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $16, %rbx		# movq $16, %r(5039)
	movq %rbx, %rdi		# movq %r(5039), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5019)
	movq $1, %r12		# movq $1, %r(5040)
	movq %r12, (%r13)		# movq %r(5040), (%r(5019))
	movq $8, %r12		# movq $8, %r(5041)
	addq %r12, %r13		# addq %r(5041), %r(5042)
	movq $0, %r12		# movq $0, %r(5043)
	movq %r13, %rbx		# movq %r(4994), %r(5044)
	addq %r12, %rbx		# addq %r(5043), %r(5044)
	movq $10, %r12		# movq $10, %r(5045)
	movq %r12, (%rbx)		# movq %r(5045), (%r(5044))
	movq %r13, %rdi		# movq %r(4994), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5123)
	movq %rbx, -8(%rbp)		# movq %r(5123), -8(%rbp)
	leaq .L857(%rip), %rdi		# leaq .L857(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5124)
	movq %rbx, -48(%rbp)		# movq %r(5124), -48(%rbp)
	movq $1, %r13		# movq $1, %r(5047)
	movq $8, %r12		# movq $8, %r(5048)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5125)
	subq %r12, %r14		# subq %r(5048), %r(5049)
	movq (%r14), %rbx		# movq (%r(5049)), %r(5050)
	movq $10, %r12		# movq $10, %r(5051)
	cmpq %r12, %rbx		# cmpq %r(5051), %r(5050)
	je .L858		# je .L858
	.L859:		# .L859:
	movq $0, %r13		# movq $0, %r(5052)
	jmp .L858		# jmp .L858
	.L858:		# .L858:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5126)
	movq %rbx, %rdi		# movq %r(5126), %rdi
	movq %r13, %rsi		# movq %r(4996), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r13		# movq $0, %r(5053)
	movq $8, %r12		# movq $8, %r(5054)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5127)
	subq %r12, %r14		# subq %r(5054), %r(5055)
	movq (%r14), %rbx		# movq (%r(5055)), %r(5056)
	cmpq %rbx, %r13		# cmpq %r(5056), %r(5053)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5057)
	salq $3, %r13		# salq $3, %r(5058)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5128)
	addq %r13, %r14		# addq %r(5058), %r(5059)
	movq $42, %rbx		# movq $42, %r(5060)
	movq %rbx, (%r14)		# movq %r(5060), (%r(5059))
	movq $1, %r13		# movq $1, %r(5061)
	movq $8, %r12		# movq $8, %r(5062)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5129)
	subq %r12, %r14		# subq %r(5062), %r(5063)
	movq (%r14), %rbx		# movq (%r(5063)), %r(5064)
	cmpq %rbx, %r13		# cmpq %r(5064), %r(5061)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5065)
	salq $3, %r13		# salq $3, %r(5066)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5130)
	addq %r13, %r14		# addq %r(5066), %r(5067)
	movq $52, %rbx		# movq $52, %r(5068)
	movq %rbx, (%r14)		# movq %r(5068), (%r(5067))
	movq $2, %r13		# movq $2, %r(5069)
	movq $8, %r12		# movq $8, %r(5070)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5131)
	subq %r12, %r14		# subq %r(5070), %r(5071)
	movq (%r14), %rbx		# movq (%r(5071)), %r(5072)
	cmpq %rbx, %r13		# cmpq %r(5072), %r(5069)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5073)
	salq $3, %r13		# salq $3, %r(5074)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5132)
	addq %r13, %r14		# addq %r(5074), %r(5075)
	movq $62, %rbx		# movq $62, %r(5076)
	movq %rbx, (%r14)		# movq %r(5076), (%r(5075))
	leaq .L866(%rip), %rdi		# leaq .L866(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5133)
	movq %rbx, -32(%rbp)		# movq %r(5133), -32(%rbp)
	movq $1, %r12		# movq $1, %r(5078)
	movq %r12, -56(%rbp)		# movq %r(5134), -56(%rbp)
	movq $0, %r13		# movq $0, %r(5079)
	movq $8, %r12		# movq $8, %r(5080)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5135)
	movq %r14, -24(%rbp)		# movq %r(5136), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5137)
	subq %r12, %rbx		# subq %r(5080), %r(5137)
	movq %rbx, -24(%rbp)		# movq %r(5137), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5138)
	movq (%rbx), %rbx		# movq (%r(5138)), %r(5082)
	cmpq %rbx, %r13		# cmpq %r(5082), %r(5079)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5083)
	salq $3, %r13		# salq $3, %r(5084)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5139)
	addq %r13, %rbx		# addq %r(5084), %r(5085)
	movq (%rbx), %rbx		# movq (%r(5085)), %r(5086)
	movq $42, %r12		# movq $42, %r(5087)
	cmpq %r12, %rbx		# cmpq %r(5087), %r(5086)
	je .L869		# je .L869
	.L870:		# .L870:
	movq $0, %r12		# movq $0, %r(5088)
	movq %r12, -56(%rbp)		# movq %r(5140), -56(%rbp)
	jmp .L869		# jmp .L869
	.L869:		# .L869:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5141)
	movq %rbx, %rdi		# movq %r(5141), %rdi
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5142)
	movq %rbx, %rsi		# movq %r(5142), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L871(%rip), %rdi		# leaq .L871(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5155)
	movq %rbx, -72(%rbp)		# movq %r(5155), -72(%rbp)
	movq $1, %r13		# movq $1, %r(5090)
	movq $1, %r12		# movq $1, %r(5091)
	movq $8, %rbx		# movq $8, %r(5156)
	movq %rbx, -80(%rbp)		# movq %r(5156), -80(%rbp)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5143)
	movq %r14, -16(%rbp)		# movq %r(5144), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5145)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5157)
	subq %r14, %rbx		# subq %r(5157), %r(5145)
	movq %rbx, -16(%rbp)		# movq %r(5145), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5146)
	movq (%rbx), %rbx		# movq (%r(5146)), %r(5094)
	cmpq %rbx, %r12		# cmpq %r(5094), %r(5091)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(5095)
	salq $3, %r14		# salq $3, %r(5096)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5147)
	addq %r14, %rbx		# addq %r(5096), %r(5097)
	movq (%rbx), %rbx		# movq (%r(5097)), %r(5098)
	movq $52, %r12		# movq $52, %r(5099)
	cmpq %r12, %rbx		# cmpq %r(5099), %r(5098)
	je .L874		# je .L874
	.L875:		# .L875:
	movq $0, %r13		# movq $0, %r(5100)
	jmp .L874		# jmp .L874
	.L874:		# .L874:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5158)
	movq %rbx, %rdi		# movq %r(5158), %rdi
	movq %r13, %rsi		# movq %r(5008), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L876(%rip), %rdi		# leaq .L876(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(5027)
	movq $1, %rbx		# movq $1, %r(5102)
	movq %rbx, %r12		# movq %r(5102), %r(5011)
	movq $2, %r13		# movq $2, %r(5103)
	movq $8, %rbx		# movq $8, %r(5159)
	movq %rbx, -88(%rbp)		# movq %r(5159), -88(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5148)
	movq %rbx, -40(%rbp)		# movq %r(5149), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5150)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(5160)
	subq %r14, %rbx		# subq %r(5160), %r(5150)
	movq %rbx, -40(%rbp)		# movq %r(5150), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5151)
	movq (%rbx), %rbx		# movq (%r(5151)), %r(5106)
	cmpq %rbx, %r13		# cmpq %r(5106), %r(5103)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %rbx		# movq $2, %r(5107)
	movq %rbx, %r13		# movq %r(5107), %r(5108)
	salq $3, %r13		# salq $3, %r(5108)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5152)
	addq %r13, %rbx		# addq %r(5108), %r(5109)
	movq (%rbx), %rbx		# movq (%r(5109)), %r(5110)
	movq $62, %r13		# movq $62, %r(5111)
	cmpq %r13, %rbx		# cmpq %r(5111), %r(5110)
	je .L879		# je .L879
	.L880:		# .L880:
	movq $0, %rbx		# movq $0, %r(5112)
	movq %rbx, %r12		# movq %r(5112), %r(5011)
	jmp .L879		# jmp .L879
	.L879:		# .L879:
	movq %r15, %rdi		# movq %r(5027), %rdi
	movq %r12, %rsi		# movq %r(5011), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L881(%rip), %rdi		# leaq .L881(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5029)
	movq $1, %rbx		# movq $1, %r(5114)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5153)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5161)
	cmpq %r13, %r14		# cmpq %r(5153), %r(5161)
	je .L882		# je .L882
	.L883:		# .L883:
	movq $0, %rbx		# movq $0, %r(5115)
	jmp .L882		# jmp .L882
	.L882:		# .L882:
	movq %r12, %rdi		# movq %r(5029), %rdi
	movq %rbx, %rsi		# movq %r(5013), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L884(%rip), %rdi		# leaq .L884(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5031)
	movq $1, %rbx		# movq $1, %r(5117)
	movq %rbx, %r12		# movq %r(5117), %r(5014)
	movq $8, %r13		# movq $8, %r(5118)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5154)
	subq %r13, %rbx		# subq %r(5118), %r(5119)
	movq (%rbx), %rbx		# movq (%r(5119)), %r(5120)
	movq $10, %r13		# movq $10, %r(5121)
	cmpq %r13, %rbx		# cmpq %r(5121), %r(5120)
	je .L885		# je .L885
	.L886:		# .L886:
	movq $0, %rbx		# movq $0, %r(5122)
	movq %rbx, %r12		# movq %r(5122), %r(5014)
	jmp .L885		# jmp .L885
	.L885:		# .L885:
	movq %r14, %rdi		# movq %r(5031), %rdi
	movq %r12, %rsi		# movq %r(5014), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L855		# jmp .L855
	.L855:		# .L855:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5205)
	movq %rbx, -16(%rbp)		# movq %r(5205), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(5162)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5206)
	subq %rbx, %r13		# subq %r(5162), %r(5163)
	movq (%r13), %r12		# movq (%r(5163)), %r(5164)
	movq %r12, -80(%rbp)		# movq %r(5207), -80(%rbp)
	movq $1, %r12		# movq $1, %r(5165)
	movq %r12, -40(%rbp)		# movq %r(5208), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(5166)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5209)
	cmpq %rbx, %r12		# cmpq %r(5166), %r(5209)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(5167)
	movq %rbx, %rax		# movq %r(5167), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L318:		# .L318:
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5210)
	salq $3, %r12		# salq $3, %r(5168)
	movq %r12, %rdi		# movq %r(5168), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5033)
	movq $1, %r12		# movq $1, %r(5169)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5211)
	movq %r14, -72(%rbp)		# movq %r(5212), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5213)
	subq %r12, %rbx		# subq %r(5169), %r(5213)
	movq %rbx, -72(%rbp)		# movq %r(5213), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5214)
	movq %rbx, (%r13)		# movq %r(5214), (%r(5033))
	movq $8, %rbx		# movq $8, %r(5171)
	addq %rbx, %r13		# addq %r(5171), %r(5172)
	movq %r13, -64(%rbp)		# movq %r(5215), -64(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5216)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5217)
	cmpq %r12, %rbx		# cmpq %r(5217), %r(5216)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(5173)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5218)
	subq %rbx, %r13		# subq %r(5173), %r(5174)
	movq (%r13), %rbx		# movq (%r(5174)), %r(5175)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5219)
	cmpq %rbx, %r12		# cmpq %r(5175), %r(5219)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(5176)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5220)
	subq %rbx, %r14		# subq %r(5176), %r(5177)
	movq $8, %r13		# movq $8, %r(5178)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5221)
	movq %r12, -32(%rbp)		# movq %r(5222), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5223)
	subq %r13, %rbx		# subq %r(5178), %r(5223)
	movq %rbx, -32(%rbp)		# movq %r(5223), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5224)
	movq (%rbx), %rbx		# movq (%r(5224)), %r(5180)
	cmpq %rbx, %r14		# cmpq %r(5180), %r(1740)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(5181)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5225)
	addq %r14, %rbx		# addq %r(5181), %r(5182)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5226)
	salq $3, %r14		# salq $3, %r(5183)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5227)
	movq %r12, -8(%rbp)		# movq %r(5228), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5229)
	addq %r14, %r13		# addq %r(5183), %r(5229)
	movq %r13, -8(%rbp)		# movq %r(5229), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5230)
	movq (%r12), %r12		# movq (%r(5230)), %r(5185)
	movq %r12, (%rbx)		# movq %r(5185), (%r(5182))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5231)
	incq %rbx		# incq %r(5231)
	movq %rbx, -40(%rbp)		# movq %r(5231), -40(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(5186)
	movq $8, %r12		# movq $8, %r(5187)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5232)
	subq %r12, %r14		# subq %r(5187), %r(5188)
	movq (%r14), %rbx		# movq (%r(5188)), %r(5189)
	cmpq %rbx, %r13		# cmpq %r(5189), %r(5186)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5190)
	salq $3, %r13		# salq $3, %r(5191)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5233)
	addq %r13, %rbx		# addq %r(5191), %r(5192)
	movq (%rbx), %r12		# movq (%r(5192)), %r(5193)
	movq %r12, -40(%rbp)		# movq %r(5234), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(5194)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5235)
	addq %rbx, %r12		# addq %r(5194), %r(5195)
	salq $3, %r12		# salq $3, %r(5196)
	movq %r12, %rdi		# movq %r(5196), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5034)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5236)
	movq %r12, (%rbx)		# movq %r(5236), (%r(5034))
	movq $8, %r12		# movq $8, %r(5197)
	addq %r12, %rbx		# addq %r(5197), %r(5198)
	movq %rbx, -48(%rbp)		# movq %r(5237), -48(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(5199)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5238)
	cmpq %rbx, %r12		# cmpq %r(5199), %r(5238)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5239)
	decq %rbx		# decq %r(5239)
	movq %rbx, -40(%rbp)		# movq %r(5239), -40(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5240)
	movq %rbx, %rdi		# movq %r(5240), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5241)
	movq %rbx, -56(%rbp)		# movq %r(5241), -56(%rbp)
	movq $8, %r12		# movq $8, %r(5200)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(5242)
	movq %r13, -88(%rbp)		# movq %r(5243), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5244)
	subq %r12, %rbx		# subq %r(5200), %r(5244)
	movq %rbx, -88(%rbp)		# movq %r(5244), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5245)
	movq (%rbx), %rbx		# movq (%r(5245)), %r(5202)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5246)
	cmpq %rbx, %r12		# cmpq %r(5202), %r(5246)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5247)
	salq $3, %r13		# salq $3, %r(5203)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5248)
	movq %rbx, -24(%rbp)		# movq %r(5249), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5250)
	addq %r13, %r12		# addq %r(5203), %r(5250)
	movq %r12, -24(%rbp)		# movq %r(5250), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5251)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5252)
	movq %r12, (%rbx)		# movq %r(5252), (%r(5251))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5253)
	movq %rbx, %rax		# movq %r(5253), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(5266)
	movq %rbx, -8(%rbp)		# movq %r(5266), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5267)
	movq (%rbx), %r12		# movq (%r(5267)), %r(5254)
	movq %r12, -16(%rbp)		# movq %r(5268), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5269)
	salq $3, %rbx		# salq $3, %r(5255)
	movq $8, %r12		# movq $8, %r(5256)
	addq %r12, %rbx		# addq %r(5256), %r(5257)
	movq %rbx, %rdi		# movq %r(5257), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5036)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5270)
	salq $3, %r12		# salq $3, %r(5258)
	movq %r14, %r13		# movq %r(5036), %r(5259)
	addq %r12, %r13		# addq %r(5258), %r(5259)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5271)
	movq %rbx, %r12		# movq %r(5271), %r(5260)
	salq $3, %r12		# salq $3, %r(5260)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5272)
	movq %rbx, -24(%rbp)		# movq %r(5273), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5274)
	addq %r12, %rbx		# addq %r(5260), %r(5274)
	movq %rbx, -24(%rbp)		# movq %r(5274), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5275)
	movq (%rbx), %rbx		# movq (%r(5275)), %r(5262)
	movq %rbx, (%r13)		# movq %r(5262), (%r(5259))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5276)
	decq %rbx		# decq %r(5276)
	movq %rbx, -16(%rbp)		# movq %r(5276), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(5263)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5277)
	cmpq %rbx, %r12		# cmpq %r(5263), %r(5277)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5264)
	movq %r14, %r12		# movq %r(5036), %r(5265)
	addq %rbx, %r12		# addq %r(5264), %r(5265)
	movq %r12, %rax		# movq %r(5265), %rax
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
.L884:
	.quad 2
	.quad 35
	.quad 54
	.text

#.section .rodata
.align 8
.L871:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L866:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L881:
	.quad 2
	.quad 35
	.quad 53
	.text

#.section .rodata
.align 8
.L876:
	.quad 2
	.quad 35
	.quad 52
	.text

#.section .rodata
.align 8
.L857:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L854:
	.quad 8
	.quad 84
	.quad 101
	.quad 115
	.quad 116
	.quad 105
	.quad 110
	.quad 103
	.quad 58
	.text

error_outofbounds:
call _I_outOfBounds_p
