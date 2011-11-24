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
	movq $0, %r12		# movq $0, %r(4733)
	movq %r12, -8(%rbp)		# movq %r(4777), -8(%rbp)
	leaq .L810(%rip), %rdi		# leaq .L810(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4778)
	movq %rbx, -24(%rbp)		# movq %r(4778), -24(%rbp)
	movq $16, %rbx		# movq $16, %r(4735)
	movq %rbx, %rdi		# movq %r(4735), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4722)
	movq $1, %r12		# movq $1, %r(4736)
	movq %r12, (%r13)		# movq %r(4736), (%r(4722))
	movq $8, %r12		# movq $8, %r(4737)
	addq %r12, %r13		# addq %r(4737), %r(4738)
	movq $0, %rbx		# movq $0, %r(4739)
	movq %r13, %r12		# movq %r(4705), %r(4740)
	addq %rbx, %r12		# addq %r(4739), %r(4740)
	movq $8, %r14		# movq $8, %r(4741)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4779)
	movq %rbx, -16(%rbp)		# movq %r(4780), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4781)
	subq %r14, %rbx		# subq %r(4741), %r(4781)
	movq %rbx, -16(%rbp)		# movq %r(4781), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4782)
	movq (%rbx), %rbx		# movq (%r(4782)), %r(4743)
	movq %rbx, (%r12)		# movq %r(4743), (%r(4740))
	movq %r13, %rdi		# movq %r(4705), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4783)
	movq %rbx, -32(%rbp)		# movq %r(4783), -32(%rbp)
	jmp .L812		# jmp .L812
	.L812:		# .L812:
	movq $8, %rbx		# movq $8, %r(4744)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4784)
	subq %rbx, %r13		# subq %r(4744), %r(4745)
	movq (%r13), %rbx		# movq (%r(4745)), %r(4746)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4785)
	cmpq %rbx, %r12		# cmpq %r(4746), %r(4785)
	jge .L814		# jge .L814
	.L813:		# .L813:
	movq $8, %rbx		# movq $8, %r(4747)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4786)
	subq %rbx, %r13		# subq %r(4747), %r(4748)
	movq (%r13), %rbx		# movq (%r(4748)), %r(4749)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4787)
	cmpq %rbx, %r12		# cmpq %r(4749), %r(4787)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(4750)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4788)
	subq %rbx, %r13		# subq %r(4750), %r(4751)
	movq (%r13), %rbx		# movq (%r(4751)), %r(4752)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4789)
	cmpq %rbx, %r12		# cmpq %r(4752), %r(4789)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4790)
	salq $3, %r13		# salq $3, %r(4753)
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(4791)
	addq %r13, %r15		# addq %r(4753), %r(4754)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4792)
	salq $3, %r14		# salq $3, %r(4755)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4793)
	addq %r14, %rbx		# addq %r(4755), %r(4756)
	movq (%rbx), %rbx		# movq (%r(4756)), %r(4757)
	movq %rbx, (%r15)		# movq %r(4757), (%r(4754))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4794)
	incq %rbx		# incq %r(4794)
	movq %rbx, -8(%rbp)		# movq %r(4794), -8(%rbp)
	jmp .L812		# jmp .L812
	.L814:		# .L814:
	movq $0, %r13		# movq $0, %r(4758)
	movq $8, %r12		# movq $8, %r(4759)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4795)
	subq %r12, %r14		# subq %r(4759), %r(4760)
	movq (%r14), %rbx		# movq (%r(4760)), %r(4761)
	cmpq %rbx, %r13		# cmpq %r(4761), %r(4758)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4762)
	salq $3, %r13		# salq $3, %r(4763)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4796)
	addq %r13, %r14		# addq %r(4763), %r(4764)
	movq $66, %rbx		# movq $66, %r(4765)
	movq %rbx, (%r14)		# movq %r(4765), (%r(4764))
	movq $1, %rbx		# movq $1, %r(4766)
	movq %rbx, %r13		# movq %r(4766), %r(4715)
	movq $0, %r12		# movq $0, %r(4767)
	movq $8, %r14		# movq $8, %r(4768)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4797)
	subq %r14, %rbx		# subq %r(4768), %r(4769)
	movq (%rbx), %rbx		# movq (%r(4769)), %r(4770)
	cmpq %rbx, %r12		# cmpq %r(4770), %r(4767)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(4771)
	salq $3, %r14		# salq $3, %r(4772)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4798)
	addq %r14, %rbx		# addq %r(4772), %r(4773)
	movq (%rbx), %rbx		# movq (%r(4773)), %r(4774)
	movq $66, %r12		# movq $66, %r(4775)
	cmpq %r12, %rbx		# cmpq %r(4775), %r(4774)
	je .L823		# je .L823
	.L824:		# .L824:
	movq $0, %r13		# movq $0, %r(4776)
	jmp .L823		# jmp .L823
	.L823:		# .L823:
	movq %r13, %rdi		# movq %r(4715), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4799)
	movq %rbx, %rax		# movq %r(4799), %rax
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
	movq %rax, %r14		# movq %rax, %r(4726)
	movq $1, %rbx		# movq $1, %r(4800)
	movq %rbx, %r15		# movq %r(4800), %r(4720)
	movq $0, %r12		# movq $0, %r(4801)
	movq $8, %rbx		# movq $8, %r(4802)
	movq %r14, %r13		# movq %r(4726), %r(4803)
	subq %rbx, %r13		# subq %r(4802), %r(4803)
	movq (%r13), %rbx		# movq (%r(4803)), %r(4804)
	cmpq %rbx, %r12		# cmpq %r(4804), %r(4801)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4805)
	salq $3, %r13		# salq $3, %r(4806)
	movq %r14, %r12		# movq %r(4726), %r(4807)
	addq %r13, %r12		# addq %r(4806), %r(4807)
	movq (%r12), %rbx		# movq (%r(4807)), %r(4808)
	movq $72, %r12		# movq $72, %r(4809)
	cmpq %r12, %rbx		# cmpq %r(4809), %r(4808)
	je .L828		# je .L828
	.L829:		# .L829:
	movq $0, %rbx		# movq $0, %r(4810)
	movq %rbx, %r15		# movq %r(4810), %r(4720)
	jmp .L828		# jmp .L828
	.L828:		# .L828:
	movq %r15, %rdi		# movq %r(4720), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(4854)
	movq %rbx, -32(%rbp)		# movq %r(4854), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(4811)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4855)
	subq %rbx, %r13		# subq %r(4811), %r(4812)
	movq (%r13), %r12		# movq (%r(4812)), %r(4813)
	movq %r12, -88(%rbp)		# movq %r(4856), -88(%rbp)
	movq $1, %r12		# movq $1, %r(4814)
	movq %r12, -56(%rbp)		# movq %r(4857), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(4815)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4858)
	cmpq %rbx, %r12		# cmpq %r(4815), %r(4858)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(4816)
	movq %rbx, %rax		# movq %r(4816), %rax
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
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4859)
	salq $3, %r12		# salq $3, %r(4817)
	movq %r12, %rdi		# movq %r(4817), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4728)
	movq $1, %r12		# movq $1, %r(4818)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(4860)
	movq %r14, -24(%rbp)		# movq %r(4861), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4862)
	subq %r12, %rbx		# subq %r(4818), %r(4862)
	movq %rbx, -24(%rbp)		# movq %r(4862), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4863)
	movq %rbx, (%r13)		# movq %r(4863), (%r(4728))
	movq $8, %rbx		# movq $8, %r(4820)
	addq %rbx, %r13		# addq %r(4820), %r(4821)
	movq %r13, -80(%rbp)		# movq %r(4864), -80(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4865)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4866)
	cmpq %r12, %rbx		# cmpq %r(4866), %r(4865)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(4822)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4867)
	subq %rbx, %r13		# subq %r(4822), %r(4823)
	movq (%r13), %rbx		# movq (%r(4823)), %r(4824)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4868)
	cmpq %rbx, %r12		# cmpq %r(4824), %r(4868)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4825)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(4869)
	subq %rbx, %r14		# subq %r(4825), %r(4826)
	movq $8, %r13		# movq $8, %r(4827)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(4870)
	movq %r12, -40(%rbp)		# movq %r(4871), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4872)
	subq %r13, %rbx		# subq %r(4827), %r(4872)
	movq %rbx, -40(%rbp)		# movq %r(4872), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4873)
	movq (%rbx), %rbx		# movq (%r(4873)), %r(4829)
	cmpq %rbx, %r14		# cmpq %r(4829), %r(1740)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4830)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4874)
	addq %r14, %rbx		# addq %r(4830), %r(4831)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(4875)
	salq $3, %r14		# salq $3, %r(4832)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4876)
	movq %r12, -8(%rbp)		# movq %r(4877), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4878)
	addq %r14, %r13		# addq %r(4832), %r(4878)
	movq %r13, -8(%rbp)		# movq %r(4878), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4879)
	movq (%r12), %r12		# movq (%r(4879)), %r(4834)
	movq %r12, (%rbx)		# movq %r(4834), (%r(4831))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4880)
	incq %rbx		# incq %r(4880)
	movq %rbx, -56(%rbp)		# movq %r(4880), -56(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(4835)
	movq $8, %r12		# movq $8, %r(4836)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4881)
	subq %r12, %r14		# subq %r(4836), %r(4837)
	movq (%r14), %rbx		# movq (%r(4837)), %r(4838)
	cmpq %rbx, %r13		# cmpq %r(4838), %r(4835)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4839)
	salq $3, %r13		# salq $3, %r(4840)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4882)
	addq %r13, %rbx		# addq %r(4840), %r(4841)
	movq (%rbx), %r12		# movq (%r(4841)), %r(4842)
	movq %r12, -56(%rbp)		# movq %r(4883), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(4843)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4884)
	addq %rbx, %r12		# addq %r(4843), %r(4844)
	salq $3, %r12		# salq $3, %r(4845)
	movq %r12, %rdi		# movq %r(4845), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4729)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4885)
	movq %r12, (%rbx)		# movq %r(4885), (%r(4729))
	movq $8, %r12		# movq $8, %r(4846)
	addq %r12, %rbx		# addq %r(4846), %r(4847)
	movq %rbx, -64(%rbp)		# movq %r(4886), -64(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(4848)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4887)
	cmpq %rbx, %r12		# cmpq %r(4848), %r(4887)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4888)
	decq %rbx		# decq %r(4888)
	movq %rbx, -56(%rbp)		# movq %r(4888), -56(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4889)
	movq %rbx, %rdi		# movq %r(4889), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4890)
	movq %rbx, -16(%rbp)		# movq %r(4890), -16(%rbp)
	movq $8, %r12		# movq $8, %r(4849)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4891)
	movq %r13, -72(%rbp)		# movq %r(4892), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4893)
	subq %r12, %rbx		# subq %r(4849), %r(4893)
	movq %rbx, -72(%rbp)		# movq %r(4893), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4894)
	movq (%rbx), %rbx		# movq (%r(4894)), %r(4851)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4895)
	cmpq %rbx, %r12		# cmpq %r(4851), %r(4895)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4896)
	salq $3, %r13		# salq $3, %r(4852)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4897)
	movq %rbx, -48(%rbp)		# movq %r(4898), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4899)
	addq %r13, %r12		# addq %r(4852), %r(4899)
	movq %r12, -48(%rbp)		# movq %r(4899), -48(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4900)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4901)
	movq %rbx, (%r12)		# movq %r(4900), (%r(4901))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4902)
	movq %rbx, %rax		# movq %r(4902), %rax
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(4903)
	movq %r12, -16(%rbp)		# movq %r(4915), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4916)
	salq $3, %rbx		# salq $3, %r(4904)
	movq $8, %r12		# movq $8, %r(4905)
	addq %r12, %rbx		# addq %r(4905), %r(4906)
	movq %rbx, %rdi		# movq %r(4906), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4731)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4917)
	salq $3, %r12		# salq $3, %r(4907)
	movq %r13, %r15		# movq %r(4731), %r(4908)
	addq %r12, %r15		# addq %r(4907), %r(4908)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4918)
	movq %rbx, %r12		# movq %r(4918), %r(4909)
	salq $3, %r12		# salq $3, %r(4909)
	movq %r14, %rbx		# movq %r(p0), %r(4919)
	movq %rbx, -8(%rbp)		# movq %r(4919), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4920)
	addq %r12, %rbx		# addq %r(4909), %r(4920)
	movq %rbx, -8(%rbp)		# movq %r(4920), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4921)
	movq (%rbx), %rbx		# movq (%r(4921)), %r(4911)
	movq %rbx, (%r15)		# movq %r(4911), (%r(4908))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4922)
	decq %rbx		# decq %r(4922)
	movq %rbx, -16(%rbp)		# movq %r(4922), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(4912)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4923)
	cmpq %rbx, %r12		# cmpq %r(4912), %r(4923)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(4913)
	movq %r13, %r12		# movq %r(4731), %r(4914)
	addq %rbx, %r12		# addq %r(4913), %r(4914)
	movq %r12, %rax		# movq %r(4914), %rax
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
