.att_syntax prefix
.text
.globl _Ia_ai
_Ia_ai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %r12		# movq $0, %r(4705)
	movq %r12, -8(%rbp)		# movq %r(4749), -8(%rbp)
	leaq .L810(%rip), %rdi		# leaq .L810(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4750)
	movq %rbx, -32(%rbp)		# movq %r(4750), -32(%rbp)
	movq $16, %rbx		# movq $16, %r(4707)
	movq %rbx, %rdi		# movq %r(4707), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4694)
	movq $1, %r12		# movq $1, %r(4708)
	movq %r12, (%r13)		# movq %r(4708), (%r(4694))
	movq $8, %r12		# movq $8, %r(4709)
	addq %r12, %r13		# addq %r(4709), %r(4710)
	movq $0, %rbx		# movq $0, %r(4711)
	movq %r13, %r12		# movq %r(4677), %r(4712)
	addq %rbx, %r12		# addq %r(4711), %r(4712)
	movq $8, %r14		# movq $8, %r(4713)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4751)
	movq %rbx, -24(%rbp)		# movq %r(4752), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4753)
	subq %r14, %rbx		# subq %r(4713), %r(4753)
	movq %rbx, -24(%rbp)		# movq %r(4753), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4754)
	movq (%rbx), %rbx		# movq (%r(4754)), %r(4715)
	movq %rbx, (%r12)		# movq %r(4715), (%r(4712))
	movq %r13, %rdi		# movq %r(4677), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4755)
	movq %rbx, -16(%rbp)		# movq %r(4755), -16(%rbp)
	jmp .L812		# jmp .L812
	.L812:		# .L812:
	movq $8, %rbx		# movq $8, %r(4716)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4756)
	subq %rbx, %r13		# subq %r(4716), %r(4717)
	movq (%r13), %rbx		# movq (%r(4717)), %r(4718)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4757)
	cmpq %rbx, %r12		# cmpq %r(4718), %r(4757)
	jge .L814		# jge .L814
	.L813:		# .L813:
	movq $8, %rbx		# movq $8, %r(4719)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4758)
	subq %rbx, %r13		# subq %r(4719), %r(4720)
	movq (%r13), %rbx		# movq (%r(4720)), %r(4721)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4759)
	cmpq %rbx, %r12		# cmpq %r(4721), %r(4759)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(4722)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4760)
	subq %rbx, %r13		# subq %r(4722), %r(4723)
	movq (%r13), %rbx		# movq (%r(4723)), %r(4724)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4761)
	cmpq %rbx, %r12		# cmpq %r(4724), %r(4761)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4762)
	salq $3, %r13		# salq $3, %r(4725)
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(4763)
	addq %r13, %r15		# addq %r(4725), %r(4726)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4764)
	salq $3, %r14		# salq $3, %r(4727)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4765)
	addq %r14, %rbx		# addq %r(4727), %r(4728)
	movq (%rbx), %rbx		# movq (%r(4728)), %r(4729)
	movq %rbx, (%r15)		# movq %r(4729), (%r(4726))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4766)
	incq %rbx		# incq %r(4766)
	movq %rbx, -8(%rbp)		# movq %r(4766), -8(%rbp)
	jmp .L812		# jmp .L812
	.L814:		# .L814:
	movq $0, %r13		# movq $0, %r(4730)
	movq $8, %r12		# movq $8, %r(4731)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4767)
	subq %r12, %r14		# subq %r(4731), %r(4732)
	movq (%r14), %rbx		# movq (%r(4732)), %r(4733)
	cmpq %rbx, %r13		# cmpq %r(4733), %r(4730)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4734)
	salq $3, %r13		# salq $3, %r(4735)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4768)
	addq %r13, %r14		# addq %r(4735), %r(4736)
	movq $66, %rbx		# movq $66, %r(4737)
	movq %rbx, (%r14)		# movq %r(4737), (%r(4736))
	movq $1, %rbx		# movq $1, %r(4738)
	movq %rbx, %r13		# movq %r(4738), %r(4687)
	movq $0, %r12		# movq $0, %r(4739)
	movq $8, %r14		# movq $8, %r(4740)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4769)
	subq %r14, %rbx		# subq %r(4740), %r(4741)
	movq (%rbx), %rbx		# movq (%r(4741)), %r(4742)
	cmpq %rbx, %r12		# cmpq %r(4742), %r(4739)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(4743)
	salq $3, %r14		# salq $3, %r(4744)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4770)
	addq %r14, %rbx		# addq %r(4744), %r(4745)
	movq (%rbx), %rbx		# movq (%r(4745)), %r(4746)
	movq $66, %r12		# movq $66, %r(4747)
	cmpq %r12, %rbx		# cmpq %r(4747), %r(4746)
	je .L823		# je .L823
	.L824:		# .L824:
	movq $0, %r13		# movq $0, %r(4748)
	jmp .L823		# jmp .L823
	.L823:		# .L823:
	movq %r13, %rdi		# movq %r(4687), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4771)
	movq %rbx, %rax		# movq %r(4771), %rax
	jmp .L809		# jmp .L809
	.L809:		# .L809:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	call _Ia_ai		# call _Ia_ai
	call _Ia_ai		# call _Ia_ai
	movq %rax, %r14		# movq %rax, %r(4698)
	movq $1, %rbx		# movq $1, %r(4772)
	movq %rbx, %r15		# movq %r(4772), %r(4692)
	movq $0, %r12		# movq $0, %r(4773)
	movq $8, %rbx		# movq $8, %r(4774)
	movq %r14, %r13		# movq %r(4698), %r(4775)
	subq %rbx, %r13		# subq %r(4774), %r(4775)
	movq (%r13), %rbx		# movq (%r(4775)), %r(4776)
	cmpq %rbx, %r12		# cmpq %r(4776), %r(4773)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4777)
	salq $3, %r13		# salq $3, %r(4778)
	movq %r14, %r12		# movq %r(4698), %r(4779)
	addq %r13, %r12		# addq %r(4778), %r(4779)
	movq (%r12), %rbx		# movq (%r(4779)), %r(4780)
	movq $72, %r12		# movq $72, %r(4781)
	cmpq %r12, %rbx		# cmpq %r(4781), %r(4780)
	je .L828		# je .L828
	.L829:		# .L829:
	movq $0, %rbx		# movq $0, %r(4782)
	movq %rbx, %r15		# movq %r(4782), %r(4692)
	jmp .L828		# jmp .L828
	.L828:		# .L828:
	movq %r15, %rdi		# movq %r(4692), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L825		# jmp .L825
	.L825:		# .L825:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(4826)
	movq %rbx, -72(%rbp)		# movq %r(4826), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(4783)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(4827)
	subq %rbx, %r13		# subq %r(4783), %r(4784)
	movq (%r13), %r12		# movq (%r(4784)), %r(4785)
	movq %r12, -64(%rbp)		# movq %r(4828), -64(%rbp)
	movq $1, %r12		# movq $1, %r(4786)
	movq %r12, -8(%rbp)		# movq %r(4829), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(4787)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4830)
	cmpq %rbx, %r12		# cmpq %r(4787), %r(4830)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(4788)
	movq %rbx, %rax		# movq %r(4788), %rax
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
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4831)
	salq $3, %r12		# salq $3, %r(4789)
	movq %r12, %rdi		# movq %r(4789), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4700)
	movq $1, %r12		# movq $1, %r(4790)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(4832)
	movq %r14, -40(%rbp)		# movq %r(4833), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4834)
	subq %r12, %rbx		# subq %r(4790), %r(4834)
	movq %rbx, -40(%rbp)		# movq %r(4834), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4835)
	movq %rbx, (%r13)		# movq %r(4835), (%r(4700))
	movq $8, %rbx		# movq $8, %r(4792)
	addq %rbx, %r13		# addq %r(4792), %r(4793)
	movq %r13, -56(%rbp)		# movq %r(4836), -56(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4837)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4838)
	cmpq %r12, %rbx		# cmpq %r(4838), %r(4837)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(4794)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(4839)
	subq %rbx, %r13		# subq %r(4794), %r(4795)
	movq (%r13), %rbx		# movq (%r(4795)), %r(4796)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4840)
	cmpq %rbx, %r12		# cmpq %r(4796), %r(4840)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4797)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4841)
	subq %rbx, %r14		# subq %r(4797), %r(4798)
	movq $8, %r13		# movq $8, %r(4799)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4842)
	movq %r12, -16(%rbp)		# movq %r(4843), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4844)
	subq %r13, %rbx		# subq %r(4799), %r(4844)
	movq %rbx, -16(%rbp)		# movq %r(4844), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4845)
	movq (%rbx), %rbx		# movq (%r(4845)), %r(4801)
	cmpq %rbx, %r14		# cmpq %r(4801), %r(1728)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4802)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4846)
	addq %r14, %rbx		# addq %r(4802), %r(4803)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4847)
	salq $3, %r14		# salq $3, %r(4804)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4848)
	movq %r12, -88(%rbp)		# movq %r(4849), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4850)
	addq %r14, %r13		# addq %r(4804), %r(4850)
	movq %r13, -88(%rbp)		# movq %r(4850), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4851)
	movq (%r12), %r12		# movq (%r(4851)), %r(4806)
	movq %r12, (%rbx)		# movq %r(4806), (%r(4803))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4852)
	incq %rbx		# incq %r(4852)
	movq %rbx, -8(%rbp)		# movq %r(4852), -8(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(4807)
	movq $8, %r12		# movq $8, %r(4808)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4853)
	subq %r12, %r14		# subq %r(4808), %r(4809)
	movq (%r14), %rbx		# movq (%r(4809)), %r(4810)
	cmpq %rbx, %r13		# cmpq %r(4810), %r(4807)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4811)
	salq $3, %r13		# salq $3, %r(4812)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4854)
	addq %r13, %rbx		# addq %r(4812), %r(4813)
	movq (%rbx), %r12		# movq (%r(4813)), %r(4814)
	movq %r12, -8(%rbp)		# movq %r(4855), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(4815)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4856)
	addq %rbx, %r12		# addq %r(4815), %r(4816)
	salq $3, %r12		# salq $3, %r(4817)
	movq %r12, %rdi		# movq %r(4817), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4701)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4857)
	movq %r12, (%rbx)		# movq %r(4857), (%r(4701))
	movq $8, %r12		# movq $8, %r(4818)
	addq %r12, %rbx		# addq %r(4818), %r(4819)
	movq %rbx, -48(%rbp)		# movq %r(4858), -48(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(4820)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4859)
	cmpq %rbx, %r12		# cmpq %r(4820), %r(4859)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4860)
	decq %rbx		# decq %r(4860)
	movq %rbx, -8(%rbp)		# movq %r(4860), -8(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4861)
	movq %rbx, %rdi		# movq %r(4861), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4862)
	movq %rbx, -24(%rbp)		# movq %r(4862), -24(%rbp)
	movq $8, %r12		# movq $8, %r(4821)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4863)
	movq %r13, -32(%rbp)		# movq %r(4864), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4865)
	subq %r12, %rbx		# subq %r(4821), %r(4865)
	movq %rbx, -32(%rbp)		# movq %r(4865), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4866)
	movq (%rbx), %rbx		# movq (%r(4866)), %r(4823)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4867)
	cmpq %rbx, %r12		# cmpq %r(4823), %r(4867)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4868)
	salq $3, %r13		# salq $3, %r(4824)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4869)
	movq %rbx, -80(%rbp)		# movq %r(4870), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(4871)
	addq %r13, %r12		# addq %r(4824), %r(4871)
	movq %r12, -80(%rbp)		# movq %r(4871), -80(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4872)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(4873)
	movq %rbx, (%r12)		# movq %r(4872), (%r(4873))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4874)
	movq %rbx, %rax		# movq %r(4874), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(4890)
	movq %rbx, -24(%rbp)		# movq %r(4890), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4891)
	movq (%rbx), %rbx		# movq (%r(4891)), %r(4875)
	movq %rbx, %r12		# movq %r(t10), %r(4876)
	salq $3, %r12		# salq $3, %r(4876)
	movq $8, %r13		# movq $8, %r(4877)
	addq %r13, %r12		# addq %r(4877), %r(4878)
	movq %r12, %rdi		# movq %r(4878), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(4892)
	movq %r12, -16(%rbp)		# movq %r(4892), -16(%rbp)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %rbx, %r14		# movq %r(t10), %r(4879)
	salq $3, %r14		# salq $3, %r(4879)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4893)
	movq %r13, -32(%rbp)		# movq %r(4894), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4895)
	addq %r14, %r12		# addq %r(4879), %r(4895)
	movq %r12, -32(%rbp)		# movq %r(4895), -32(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(4881)
	salq $3, %r14		# salq $3, %r(4881)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4896)
	movq %r13, -8(%rbp)		# movq %r(4887), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4888)
	addq %r14, %r12		# addq %r(4881), %r(4888)
	movq %r12, -8(%rbp)		# movq %r(4888), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4889)
	movq (%r12), %r12		# movq (%r(4889)), %r(4883)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4897)
	movq %r12, (%r13)		# movq %r(4883), (%r(4897))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(4884)
	cmpq %r12, %rbx		# cmpq %r(4884), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(4885)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4898)
	addq %rbx, %r13		# addq %r(4885), %r(4886)
	movq %r13, %rax		# movq %r(4886), %rax
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
