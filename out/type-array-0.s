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
	movq %rax, %r13		# movq %rax, %r(4990)
	movq %r13, %rdi		# movq %r(4990), %rdi
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
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $16, %rbx		# movq $16, %r(5014)
	movq %rbx, %rdi		# movq %r(5014), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4994)
	movq $1, %r12		# movq $1, %r(5015)
	movq %r12, (%r13)		# movq %r(5015), (%r(4994))
	movq $8, %r12		# movq $8, %r(5016)
	addq %r12, %r13		# addq %r(5016), %r(5017)
	movq $0, %r12		# movq $0, %r(5018)
	movq %r13, %rbx		# movq %r(4969), %r(5019)
	addq %r12, %rbx		# addq %r(5018), %r(5019)
	movq $10, %r12		# movq $10, %r(5020)
	movq %r12, (%rbx)		# movq %r(5020), (%r(5019))
	movq %r13, %rdi		# movq %r(4969), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5098)
	movq %rbx, -24(%rbp)		# movq %r(5098), -24(%rbp)
	leaq .L857(%rip), %rdi		# leaq .L857(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5099)
	movq %rbx, -8(%rbp)		# movq %r(5099), -8(%rbp)
	movq $1, %r13		# movq $1, %r(5022)
	movq $8, %r12		# movq $8, %r(5023)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5100)
	subq %r12, %r14		# subq %r(5023), %r(5024)
	movq (%r14), %rbx		# movq (%r(5024)), %r(5025)
	movq $10, %r12		# movq $10, %r(5026)
	cmpq %r12, %rbx		# cmpq %r(5026), %r(5025)
	je .L858		# je .L858
	.L859:		# .L859:
	movq $0, %r13		# movq $0, %r(5027)
	jmp .L858		# jmp .L858
	.L858:		# .L858:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5101)
	movq %rbx, %rdi		# movq %r(5101), %rdi
	movq %r13, %rsi		# movq %r(4971), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r13		# movq $0, %r(5028)
	movq $8, %r12		# movq $8, %r(5029)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5102)
	subq %r12, %r14		# subq %r(5029), %r(5030)
	movq (%r14), %rbx		# movq (%r(5030)), %r(5031)
	cmpq %rbx, %r13		# cmpq %r(5031), %r(5028)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5032)
	salq $3, %r13		# salq $3, %r(5033)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5103)
	addq %r13, %r14		# addq %r(5033), %r(5034)
	movq $42, %rbx		# movq $42, %r(5035)
	movq %rbx, (%r14)		# movq %r(5035), (%r(5034))
	movq $1, %r13		# movq $1, %r(5036)
	movq $8, %r12		# movq $8, %r(5037)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5104)
	subq %r12, %r14		# subq %r(5037), %r(5038)
	movq (%r14), %rbx		# movq (%r(5038)), %r(5039)
	cmpq %rbx, %r13		# cmpq %r(5039), %r(5036)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5040)
	salq $3, %r13		# salq $3, %r(5041)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5105)
	addq %r13, %r14		# addq %r(5041), %r(5042)
	movq $52, %rbx		# movq $52, %r(5043)
	movq %rbx, (%r14)		# movq %r(5043), (%r(5042))
	movq $2, %r13		# movq $2, %r(5044)
	movq $8, %r12		# movq $8, %r(5045)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5106)
	subq %r12, %r14		# subq %r(5045), %r(5046)
	movq (%r14), %rbx		# movq (%r(5046)), %r(5047)
	cmpq %rbx, %r13		# cmpq %r(5047), %r(5044)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5048)
	salq $3, %r13		# salq $3, %r(5049)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5107)
	addq %r13, %r14		# addq %r(5049), %r(5050)
	movq $62, %rbx		# movq $62, %r(5051)
	movq %rbx, (%r14)		# movq %r(5051), (%r(5050))
	leaq .L866(%rip), %rdi		# leaq .L866(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5108)
	movq %rbx, -32(%rbp)		# movq %r(5108), -32(%rbp)
	movq $1, %r12		# movq $1, %r(5053)
	movq %r12, -40(%rbp)		# movq %r(5109), -40(%rbp)
	movq $0, %r13		# movq $0, %r(5054)
	movq $8, %r12		# movq $8, %r(5055)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5110)
	movq %r14, -16(%rbp)		# movq %r(5111), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5112)
	subq %r12, %rbx		# subq %r(5055), %r(5112)
	movq %rbx, -16(%rbp)		# movq %r(5112), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5113)
	movq (%rbx), %rbx		# movq (%r(5113)), %r(5057)
	cmpq %rbx, %r13		# cmpq %r(5057), %r(5054)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5058)
	salq $3, %r13		# salq $3, %r(5059)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5114)
	addq %r13, %rbx		# addq %r(5059), %r(5060)
	movq (%rbx), %rbx		# movq (%r(5060)), %r(5061)
	movq $42, %r12		# movq $42, %r(5062)
	cmpq %r12, %rbx		# cmpq %r(5062), %r(5061)
	je .L869		# je .L869
	.L870:		# .L870:
	movq $0, %r12		# movq $0, %r(5063)
	movq %r12, -40(%rbp)		# movq %r(5115), -40(%rbp)
	jmp .L869		# jmp .L869
	.L869:		# .L869:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5116)
	movq %rbx, %rdi		# movq %r(5116), %rdi
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5117)
	movq %rbx, %rsi		# movq %r(5117), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L871(%rip), %rdi		# leaq .L871(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5130)
	movq %rbx, -88(%rbp)		# movq %r(5130), -88(%rbp)
	movq $1, %r13		# movq $1, %r(5065)
	movq $1, %r12		# movq $1, %r(5066)
	movq $8, %rbx		# movq $8, %r(5131)
	movq %rbx, -64(%rbp)		# movq %r(5131), -64(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5118)
	movq %r14, -48(%rbp)		# movq %r(5119), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5120)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5132)
	subq %r14, %rbx		# subq %r(5132), %r(5120)
	movq %rbx, -48(%rbp)		# movq %r(5120), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5121)
	movq (%rbx), %rbx		# movq (%r(5121)), %r(5069)
	cmpq %rbx, %r12		# cmpq %r(5069), %r(5066)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(5070)
	salq $3, %r14		# salq $3, %r(5071)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5122)
	addq %r14, %rbx		# addq %r(5071), %r(5072)
	movq (%rbx), %rbx		# movq (%r(5072)), %r(5073)
	movq $52, %r12		# movq $52, %r(5074)
	cmpq %r12, %rbx		# cmpq %r(5074), %r(5073)
	je .L874		# je .L874
	.L875:		# .L875:
	movq $0, %r13		# movq $0, %r(5075)
	jmp .L874		# jmp .L874
	.L874:		# .L874:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5133)
	movq %rbx, %rdi		# movq %r(5133), %rdi
	movq %r13, %rsi		# movq %r(4983), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L876(%rip), %rdi		# leaq .L876(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5134)
	movq %rbx, -80(%rbp)		# movq %r(5134), -80(%rbp)
	movq $1, %r13		# movq $1, %r(5077)
	movq $2, %rbx		# movq $2, %r(5135)
	movq %rbx, -96(%rbp)		# movq %r(5135), -96(%rbp)
	movq $8, %r12		# movq $8, %r(5079)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5123)
	movq %r14, -56(%rbp)		# movq %r(5124), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5125)
	subq %r12, %rbx		# subq %r(5079), %r(5125)
	movq %rbx, -56(%rbp)		# movq %r(5125), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5126)
	movq (%rbx), %rbx		# movq (%r(5126)), %r(5081)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(5136)
	cmpq %rbx, %r12		# cmpq %r(5081), %r(5136)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r14		# movq $2, %r(5082)
	salq $3, %r14		# salq $3, %r(5083)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5127)
	addq %r14, %rbx		# addq %r(5083), %r(5084)
	movq (%rbx), %rbx		# movq (%r(5084)), %r(5085)
	movq $62, %r12		# movq $62, %r(5086)
	cmpq %r12, %rbx		# cmpq %r(5086), %r(5085)
	je .L879		# je .L879
	.L880:		# .L880:
	movq $0, %r13		# movq $0, %r(5087)
	jmp .L879		# jmp .L879
	.L879:		# .L879:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5137)
	movq %rbx, %rdi		# movq %r(5137), %rdi
	movq %r13, %rsi		# movq %r(4986), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L881(%rip), %rdi		# leaq .L881(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5004)
	movq $1, %rbx		# movq $1, %r(5089)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5128)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5138)
	cmpq %r13, %r14		# cmpq %r(5128), %r(5138)
	je .L882		# je .L882
	.L883:		# .L883:
	movq $0, %rbx		# movq $0, %r(5090)
	jmp .L882		# jmp .L882
	.L882:		# .L882:
	movq %r12, %rdi		# movq %r(5004), %rdi
	movq %rbx, %rsi		# movq %r(4988), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L884(%rip), %rdi		# leaq .L884(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5006)
	movq $1, %rbx		# movq $1, %r(5092)
	movq %rbx, %r12		# movq %r(5092), %r(4989)
	movq $8, %r13		# movq $8, %r(5093)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5129)
	subq %r13, %rbx		# subq %r(5093), %r(5094)
	movq (%rbx), %rbx		# movq (%r(5094)), %r(5095)
	movq $10, %r13		# movq $10, %r(5096)
	cmpq %r13, %rbx		# cmpq %r(5096), %r(5095)
	je .L885		# je .L885
	.L886:		# .L886:
	movq $0, %rbx		# movq $0, %r(5097)
	movq %rbx, %r12		# movq %r(5097), %r(4989)
	jmp .L885		# jmp .L885
	.L885:		# .L885:
	movq %r14, %rdi		# movq %r(5006), %rdi
	movq %r12, %rsi		# movq %r(4989), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L855		# jmp .L855
	.L855:		# .L855:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(5182)
	movq %rbx, -72(%rbp)		# movq %r(5182), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(5139)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5183)
	subq %rbx, %r13		# subq %r(5139), %r(5140)
	movq (%r13), %r12		# movq (%r(5140)), %r(5141)
	movq %r12, -64(%rbp)		# movq %r(5184), -64(%rbp)
	movq $1, %r12		# movq $1, %r(5142)
	movq %r12, -8(%rbp)		# movq %r(5185), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(5143)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5186)
	cmpq %rbx, %r12		# cmpq %r(5143), %r(5186)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(5144)
	movq %rbx, %rax		# movq %r(5144), %rax
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
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5187)
	salq $3, %r12		# salq $3, %r(5145)
	movq %r12, %rdi		# movq %r(5145), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5008)
	movq $1, %r12		# movq $1, %r(5146)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5188)
	movq %r14, -32(%rbp)		# movq %r(5189), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5190)
	subq %r12, %rbx		# subq %r(5146), %r(5190)
	movq %rbx, -32(%rbp)		# movq %r(5190), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5191)
	movq %rbx, (%r13)		# movq %r(5191), (%r(5008))
	movq $8, %rbx		# movq $8, %r(5148)
	addq %rbx, %r13		# addq %r(5148), %r(5149)
	movq %r13, -48(%rbp)		# movq %r(5192), -48(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5193)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5194)
	cmpq %r12, %rbx		# cmpq %r(5194), %r(5193)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(5150)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5195)
	subq %rbx, %r13		# subq %r(5150), %r(5151)
	movq (%r13), %rbx		# movq (%r(5151)), %r(5152)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5196)
	cmpq %rbx, %r12		# cmpq %r(5152), %r(5196)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(5153)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5197)
	subq %rbx, %r14		# subq %r(5153), %r(5154)
	movq $8, %r13		# movq $8, %r(5155)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5198)
	movq %r12, -24(%rbp)		# movq %r(5199), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5200)
	subq %r13, %rbx		# subq %r(5155), %r(5200)
	movq %rbx, -24(%rbp)		# movq %r(5200), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5201)
	movq (%rbx), %rbx		# movq (%r(5201)), %r(5157)
	cmpq %rbx, %r14		# cmpq %r(5157), %r(1728)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(5158)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5202)
	addq %r14, %rbx		# addq %r(5158), %r(5159)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5203)
	salq $3, %r14		# salq $3, %r(5160)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5204)
	movq %r12, -56(%rbp)		# movq %r(5205), -56(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5206)
	addq %r14, %r13		# addq %r(5160), %r(5206)
	movq %r13, -56(%rbp)		# movq %r(5206), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5207)
	movq (%r12), %r12		# movq (%r(5207)), %r(5162)
	movq %r12, (%rbx)		# movq %r(5162), (%r(5159))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5208)
	incq %rbx		# incq %r(5208)
	movq %rbx, -8(%rbp)		# movq %r(5208), -8(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(5163)
	movq $8, %r12		# movq $8, %r(5164)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5209)
	subq %r12, %r14		# subq %r(5164), %r(5165)
	movq (%r14), %rbx		# movq (%r(5165)), %r(5166)
	cmpq %rbx, %r13		# cmpq %r(5166), %r(5163)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5167)
	salq $3, %r13		# salq $3, %r(5168)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5210)
	addq %r13, %rbx		# addq %r(5168), %r(5169)
	movq (%rbx), %r12		# movq (%r(5169)), %r(5170)
	movq %r12, -8(%rbp)		# movq %r(5211), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(5171)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5212)
	addq %rbx, %r12		# addq %r(5171), %r(5172)
	salq $3, %r12		# salq $3, %r(5173)
	movq %r12, %rdi		# movq %r(5173), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5009)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5213)
	movq %r12, (%rbx)		# movq %r(5213), (%r(5009))
	movq $8, %r12		# movq $8, %r(5174)
	addq %r12, %rbx		# addq %r(5174), %r(5175)
	movq %rbx, -40(%rbp)		# movq %r(5214), -40(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(5176)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5215)
	cmpq %rbx, %r12		# cmpq %r(5176), %r(5215)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5216)
	decq %rbx		# decq %r(5216)
	movq %rbx, -8(%rbp)		# movq %r(5216), -8(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5217)
	movq %rbx, %rdi		# movq %r(5217), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5218)
	movq %rbx, -16(%rbp)		# movq %r(5218), -16(%rbp)
	movq $8, %r12		# movq $8, %r(5177)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5219)
	movq %r13, -88(%rbp)		# movq %r(5220), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5221)
	subq %r12, %rbx		# subq %r(5177), %r(5221)
	movq %rbx, -88(%rbp)		# movq %r(5221), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5222)
	movq (%rbx), %rbx		# movq (%r(5222)), %r(5179)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5223)
	cmpq %rbx, %r12		# cmpq %r(5179), %r(5223)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5224)
	salq $3, %r13		# salq $3, %r(5180)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5225)
	movq %rbx, -80(%rbp)		# movq %r(5226), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5227)
	addq %r13, %r12		# addq %r(5180), %r(5227)
	movq %r12, -80(%rbp)		# movq %r(5227), -80(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5228)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5229)
	movq %rbx, (%r12)		# movq %r(5228), (%r(5229))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5230)
	movq %rbx, %rax		# movq %r(5230), %rax
	jmp .L320		# jmp .L320
	
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
	movq %rdi, %rbx		# movq %rdi, %r(5246)
	movq %rbx, -16(%rbp)		# movq %r(5246), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5247)
	movq (%rbx), %rbx		# movq (%r(5247)), %r(5231)
	movq %rbx, %r12		# movq %r(t10), %r(5232)
	salq $3, %r12		# salq $3, %r(5232)
	movq $8, %r13		# movq $8, %r(5233)
	addq %r13, %r12		# addq %r(5233), %r(5234)
	movq %r12, %rdi		# movq %r(5234), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(5248)
	movq %r12, -32(%rbp)		# movq %r(5248), -32(%rbp)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %rbx, %r14		# movq %r(t10), %r(5235)
	salq $3, %r14		# salq $3, %r(5235)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5249)
	addq %r14, %r12		# addq %r(5235), %r(5236)
	movq %rbx, %r14		# movq %r(t10), %r(5250)
	movq %r14, -24(%rbp)		# movq %r(5250), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5251)
	salq $3, %r13		# salq $3, %r(5251)
	movq %r13, -24(%rbp)		# movq %r(5251), -24(%rbp)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5252)
	movq %r14, -8(%rbp)		# movq %r(5243), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5244)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5253)
	addq %r14, %r13		# addq %r(5253), %r(5244)
	movq %r13, -8(%rbp)		# movq %r(5244), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5245)
	movq (%r13), %r13		# movq (%r(5245)), %r(5239)
	movq %r13, (%r12)		# movq %r(5239), (%r(5236))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(5240)
	cmpq %r12, %rbx		# cmpq %r(5240), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5241)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5254)
	addq %rbx, %r13		# addq %r(5241), %r(5242)
	movq %r13, %rax		# movq %r(5242), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
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

#.section .rodata
.align 8
.L876:
	.quad 2
	.quad 35
	.quad 52
	.text

#.section .rodata
.align 8
.L884:
	.quad 2
	.quad 35
	.quad 54
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
.L881:
	.quad 2
	.quad 35
	.quad 53
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

error_outofbounds:
call _I_outOfBounds_p
