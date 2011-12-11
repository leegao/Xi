.att_syntax prefix
.text
.globl _Iitoa_aiii
_Iitoa_aiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $144, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4856)
	movq %rbx, -128(%rbp)		# movq %r(4856), -128(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4857)
	movq %rbx, -104(%rbp)		# movq %r(4857), -104(%rbp)
	movq $8, %rbx		# movq $8, %r(4812)
	movq %rbx, %rdi		# movq %r(4812), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4800)
	movq $0, %rbx		# movq $0, %r(4813)
	movq %rbx, (%r14)		# movq %r(4813), (%r(4800))
	movq $8, %rbx		# movq $8, %r(4814)
	movq %r14, %r13		# movq %r(4800), %r(4815)
	addq %rbx, %r13		# addq %r(4814), %r(4815)
	movq %r13, %rbx		# movq %r(4815), %r(4767)
	movq %rbx, %r13		# movq %r(4767), %r(4858)
	movq %r13, -72(%rbp)		# movq %r(4858), -72(%rbp)
	jmp .L759		# jmp .L759
	.L759:		# .L759:
	jmp .L760		# jmp .L760
	.L760:		# .L760:
	movq $16, %rbx		# movq $16, %r(4816)
	movq %rbx, %rdi		# movq %r(4816), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4801)
	movq $1, %rbx		# movq $1, %r(4817)
	movq %rbx, (%r14)		# movq %r(4817), (%r(4801))
	movq $8, %r13		# movq $8, %r(4818)
	movq %r14, %r12		# movq %r(4801), %r(4859)
	movq %r12, -40(%rbp)		# movq %r(4859), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4860)
	addq %r13, %rbx		# addq %r(4818), %r(4860)
	movq %rbx, -40(%rbp)		# movq %r(4860), -40(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4861)
	movq %r13, %rbx		# movq %r(4861), %r(4862)
	movq %rbx, -24(%rbp)		# movq %r(4862), -24(%rbp)
	movq $0, %r13		# movq $0, %r(4820)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4863)
	movq %r14, %rbx		# movq %r(4863), %r(4864)
	movq %rbx, -56(%rbp)		# movq %r(4864), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4865)
	addq %r13, %rbx		# addq %r(4820), %r(4865)
	movq %rbx, -56(%rbp)		# movq %r(4865), -56(%rbp)
	movq $8, %r13		# movq $8, %r(4822)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4866)
	movq %r14, %rbx		# movq %r(4866), %r(4867)
	movq %rbx, -8(%rbp)		# movq %r(4867), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4868)
	subq %r13, %rbx		# subq %r(4822), %r(4868)
	movq %rbx, -8(%rbp)		# movq %r(4868), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4869)
	movq (%rbx), %r13		# movq (%r(4869)), %r(4824)
	movq $1, %rbx		# movq $1, %r(4870)
	movq %rbx, -80(%rbp)		# movq %r(4870), -80(%rbp)
	movq %r13, %r12		# movq %r(4824), %r(4871)
	movq %r12, -112(%rbp)		# movq %r(4871), -112(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4872)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(4873)
	addq %rbx, %r12		# addq %r(4872), %r(4873)
	movq %r12, -112(%rbp)		# movq %r(4873), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(4874)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4875)
	movq %rbx, (%r12)		# movq %r(4874), (%r(4875))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4876)
	movq %rbx, %rdi		# movq %r(4876), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4877)
	movq %rbx, -120(%rbp)		# movq %r(4877), -120(%rbp)
	movq $0, %r13		# movq $0, %r(4827)
	movq %r13, %rbx		# movq %r(4827), %r(4878)
	movq %rbx, -96(%rbp)		# movq %r(4878), -96(%rbp)
	jmp .L763		# jmp .L763
	.L763:		# .L763:
	movq $8, %rbx		# movq $8, %r(4828)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4879)
	movq %r14, %r12		# movq %r(4879), %r(4829)
	subq %rbx, %r12		# subq %r(4828), %r(4829)
	movq (%r12), %rbx		# movq (%r(4829)), %r(4830)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(4880)
	cmpq %rbx, %r12		# cmpq %r(4830), %r(4880)
	jge .L765		# jge .L765
	.L764:		# .L764:
	movq $8, %rbx		# movq $8, %r(4831)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4881)
	movq %r14, %r12		# movq %r(4881), %r(4832)
	subq %rbx, %r12		# subq %r(4831), %r(4832)
	movq (%r12), %rbx		# movq (%r(4832)), %r(4833)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(4882)
	cmpq %rbx, %r12		# cmpq %r(4833), %r(4882)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4834)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(4883)
	movq %r14, %r13		# movq %r(4883), %r(4835)
	addq %rbx, %r13		# addq %r(4834), %r(4835)
	movq %r13, %r12		# movq %r(4835), %r(4884)
	movq %r12, -16(%rbp)		# movq %r(4884), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(4836)
	movq -120(%rbp), %r14		# movq -120(%rbp), %r(4885)
	movq %r14, %r12		# movq %r(4885), %r(4837)
	subq %rbx, %r12		# subq %r(4836), %r(4837)
	movq (%r12), %rbx		# movq (%r(4837)), %r(4838)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4886)
	cmpq %rbx, %r12		# cmpq %r(4838), %r(4886)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4887)
	movq %r13, %r14		# movq %r(4887), %r(4839)
	salq $3, %r14		# salq $3, %r(4839)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(4888)
	movq %r12, %r15		# movq %r(4888), %r(4840)
	addq %r14, %r15		# addq %r(4839), %r(4840)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(4889)
	movq %r13, %rbx		# movq %r(4889), %r(4914)
	movq %rbx, -136(%rbp)		# movq %r(4914), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(4915)
	salq $3, %rbx		# salq $3, %r(4915)
	movq %rbx, -136(%rbp)		# movq %r(4915), -136(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(4890)
	movq %r13, %rbx		# movq %r(4890), %r(4891)
	movq %rbx, -48(%rbp)		# movq %r(4891), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4892)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(4916)
	addq %r12, %rbx		# addq %r(4916), %r(4892)
	movq %rbx, -48(%rbp)		# movq %r(4892), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4893)
	movq (%rbx), %r12		# movq (%r(4893)), %r(4843)
	movq %r12, (%r15)		# movq %r(4843), (%r(4840))
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(4894)
	incq %rbx		# incq %r(4894)
	movq %rbx, -96(%rbp)		# movq %r(4894), -96(%rbp)
	jmp .L763		# jmp .L763
	.L765:		# .L765:
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(4895)
	movq %r13, %rbx		# movq %r(4895), %r(4896)
	movq %rbx, -72(%rbp)		# movq %r(4896), -72(%rbp)
	movq $0, %r14		# movq $0, %r(4844)
	movq $8, %r12		# movq $8, %r(4845)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(4897)
	movq %rbx, %r13		# movq %r(4897), %r(4898)
	movq %r13, -32(%rbp)		# movq %r(4898), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4899)
	subq %r12, %rbx		# subq %r(4845), %r(4899)
	movq %rbx, -32(%rbp)		# movq %r(4899), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4900)
	movq (%rbx), %r12		# movq (%r(4900)), %r(4847)
	cmpq %r12, %r14		# cmpq %r(4847), %r(4844)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4848)
	movq %r13, %r14		# movq %r(4848), %r(4849)
	salq $3, %r14		# salq $3, %r(4849)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(4901)
	movq %r12, %r15		# movq %r(4901), %r(4850)
	addq %r14, %r15		# addq %r(4849), %r(4850)
	movq $48, %r13		# movq $48, %r(4851)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(4902)
	movq %rbx, %rax		# movq %r(4902), %rax
	cqto		# cqto
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(4903)
	idivq %rbx		# idivq %r(4903)
	movq %rdx, %rbx		# movq %rdx, %r(4904)
	movq %rbx, -88(%rbp)		# movq %r(4904), -88(%rbp)
	movq %r13, %r12		# movq %r(4851), %r(4905)
	movq %r12, -64(%rbp)		# movq %r(4905), -64(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4906)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4907)
	addq %rbx, %r12		# addq %r(4906), %r(4907)
	movq %r12, -64(%rbp)		# movq %r(4907), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4908)
	movq %rbx, (%r15)		# movq %r(4908), (%r(4850))
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(4909)
	movq %rbx, %rax		# movq %r(4909), %rax
	cqto		# cqto
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(4910)
	idivq %rbx		# idivq %r(4910)
	movq %rax, %r13		# movq %rax, %r(4854)
	movq %r13, %rbx		# movq %r(4854), %r(4911)
	movq %rbx, -128(%rbp)		# movq %r(4911), -128(%rbp)
	movq $0, %rbx		# movq $0, %r(4855)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(4912)
	cmpq %rbx, %r12		# cmpq %r(4855), %r(4912)
	jne .L773		# jne .L773
	.L772:		# .L772:
	jmp .L761		# jmp .L761
	.L761:		# .L761:
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(4913)
	movq %rbx, %rax		# movq %r(4913), %rax
	jmp .L758		# jmp .L758
	.L758:		# .L758:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $144, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L773:		# .L773:
	jmp .L759		# jmp .L759
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4997)
	movq %rbx, -16(%rbp)		# movq %r(4997), -16(%rbp)
	movq $153, %rbx		# movq $153, %r(4917)
	movq $10, %r12		# movq $10, %r(4918)
	movq %rbx, %rdi		# movq %r(4917), %rdi
	movq %r12, %rsi		# movq %r(4918), %rsi
	call _Iitoa_aiii		# call _Iitoa_aiii
	movq %rax, %r13		# movq %rax, %r(4803)
	movq $0, %r14		# movq $0, %r(4919)
	movq $8, %rbx		# movq $8, %r(4920)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4998)
	movq %r12, %r15		# movq %r(4998), %r(4921)
	subq %rbx, %r15		# subq %r(4920), %r(4921)
	movq (%r15), %rbx		# movq (%r(4921)), %r(4922)
	cmpq %rbx, %r14		# cmpq %r(4922), %r(4919)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(4923)
	movq %r12, %rbx		# movq %r(4923), %r(4924)
	salq $3, %rbx		# salq $3, %r(4924)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4999)
	movq %r14, %r12		# movq %r(4999), %r(4925)
	addq %rbx, %r12		# addq %r(4924), %r(4925)
	movq %r13, (%r12)		# movq %r(4803), (%r(4925))
	movq $1, %r13		# movq $1, %r(4926)
	movq %r13, %rbx		# movq %r(4926), %r(5000)
	movq %rbx, -48(%rbp)		# movq %r(5000), -48(%rbp)
	movq $0, %r13		# movq $0, %r(4927)
	movq $8, %rbx		# movq $8, %r(4928)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5001)
	movq %r12, %r14		# movq %r(5001), %r(4929)
	subq %rbx, %r14		# subq %r(4928), %r(4929)
	movq (%r14), %rbx		# movq (%r(4929)), %r(4930)
	cmpq %rbx, %r13		# cmpq %r(4930), %r(4927)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4931)
	movq %r13, %r14		# movq %r(4931), %r(4932)
	salq $3, %r14		# salq $3, %r(4932)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5002)
	movq %r12, %rbx		# movq %r(5002), %r(4933)
	addq %r14, %rbx		# addq %r(4932), %r(4933)
	movq (%rbx), %r14		# movq (%r(4933)), %r(4934)
	movq $8, %rbx		# movq $8, %r(4935)
	movq %r14, %r12		# movq %r(4934), %r(4936)
	subq %rbx, %r12		# subq %r(4935), %r(4936)
	movq (%r12), %rbx		# movq (%r(4936)), %r(4937)
	movq $3, %r12		# movq $3, %r(4938)
	cmpq %r12, %rbx		# cmpq %r(4938), %r(4937)
	je .L779		# je .L779
	.L780:		# .L780:
	movq $0, %r13		# movq $0, %r(4939)
	movq %r13, %rbx		# movq %r(4939), %r(5003)
	movq %rbx, -48(%rbp)		# movq %r(5003), -48(%rbp)
	jmp .L779		# jmp .L779
	.L779:		# .L779:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5004)
	movq %rbx, %rdi		# movq %r(5004), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(4940)
	movq %r13, %rbx		# movq %r(4940), %r(5005)
	movq %rbx, -56(%rbp)		# movq %r(5005), -56(%rbp)
	movq $0, %r13		# movq $0, %r(4941)
	movq $8, %rbx		# movq $8, %r(4942)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5006)
	movq %r12, %r14		# movq %r(5006), %r(4943)
	subq %rbx, %r14		# subq %r(4942), %r(4943)
	movq (%r14), %rbx		# movq (%r(4943)), %r(4944)
	cmpq %rbx, %r13		# cmpq %r(4944), %r(4941)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4945)
	movq %r13, %r14		# movq %r(4945), %r(4946)
	salq $3, %r14		# salq $3, %r(4946)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5007)
	movq %r12, %r15		# movq %r(5007), %r(4947)
	addq %r14, %r15		# addq %r(4946), %r(4947)
	movq (%r15), %r12		# movq (%r(4947)), %r(4948)
	movq %r12, %r14		# movq %r(4948), %r(4787)
	movq $0, %r13		# movq $0, %r(4949)
	movq $8, %r12		# movq $8, %r(4950)
	movq %r14, %rbx		# movq %r(4787), %r(5008)
	movq %rbx, -24(%rbp)		# movq %r(5008), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5009)
	subq %r12, %rbx		# subq %r(4950), %r(5009)
	movq %rbx, -24(%rbp)		# movq %r(5009), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5010)
	movq (%rbx), %r12		# movq (%r(5010)), %r(4952)
	cmpq %r12, %r13		# cmpq %r(4952), %r(4949)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4953)
	movq %r13, %rbx		# movq %r(4953), %r(4954)
	salq $3, %rbx		# salq $3, %r(4954)
	movq %r14, %r12		# movq %r(4787), %r(4955)
	addq %rbx, %r12		# addq %r(4954), %r(4955)
	movq (%r12), %rbx		# movq (%r(4955)), %r(4956)
	movq $49, %r12		# movq $49, %r(4957)
	cmpq %r12, %rbx		# cmpq %r(4957), %r(4956)
	je .L785		# je .L785
	.L786:		# .L786:
	movq $0, %r13		# movq $0, %r(4958)
	movq %r13, %rbx		# movq %r(4958), %r(5011)
	movq %rbx, -56(%rbp)		# movq %r(5011), -56(%rbp)
	jmp .L785		# jmp .L785
	.L785:		# .L785:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5012)
	movq %rbx, %rdi		# movq %r(5012), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(4959)
	movq %r13, %rbx		# movq %r(4959), %r(5013)
	movq %rbx, -8(%rbp)		# movq %r(5013), -8(%rbp)
	movq $0, %r13		# movq $0, %r(4960)
	movq $8, %rbx		# movq $8, %r(4961)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5014)
	movq %r12, %r14		# movq %r(5014), %r(4962)
	subq %rbx, %r14		# subq %r(4961), %r(4962)
	movq (%r14), %rbx		# movq (%r(4962)), %r(4963)
	cmpq %rbx, %r13		# cmpq %r(4963), %r(4960)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4964)
	movq %r13, %r14		# movq %r(4964), %r(4965)
	salq $3, %r14		# salq $3, %r(4965)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5015)
	movq %r12, %r15		# movq %r(5015), %r(4966)
	addq %r14, %r15		# addq %r(4965), %r(4966)
	movq (%r15), %r12		# movq (%r(4966)), %r(4967)
	movq %r12, %r14		# movq %r(4967), %r(4792)
	movq $1, %r13		# movq $1, %r(4968)
	movq $8, %r12		# movq $8, %r(4969)
	movq %r14, %rbx		# movq %r(4792), %r(5016)
	movq %rbx, -32(%rbp)		# movq %r(5016), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5017)
	subq %r12, %rbx		# subq %r(4969), %r(5017)
	movq %rbx, -32(%rbp)		# movq %r(5017), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5018)
	movq (%rbx), %r12		# movq (%r(5018)), %r(4971)
	cmpq %r12, %r13		# cmpq %r(4971), %r(4968)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(4972)
	movq %r13, %rbx		# movq %r(4972), %r(4973)
	salq $3, %rbx		# salq $3, %r(4973)
	movq %r14, %r12		# movq %r(4792), %r(4974)
	addq %rbx, %r12		# addq %r(4973), %r(4974)
	movq (%r12), %rbx		# movq (%r(4974)), %r(4975)
	movq $53, %r12		# movq $53, %r(4976)
	cmpq %r12, %rbx		# cmpq %r(4976), %r(4975)
	je .L791		# je .L791
	.L792:		# .L792:
	movq $0, %r13		# movq $0, %r(4977)
	movq %r13, %rbx		# movq %r(4977), %r(5019)
	movq %rbx, -8(%rbp)		# movq %r(5019), -8(%rbp)
	jmp .L791		# jmp .L791
	.L791:		# .L791:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5020)
	movq %rbx, %rdi		# movq %r(5020), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(4978)
	movq %r13, %rbx		# movq %r(4978), %r(5021)
	movq %rbx, -40(%rbp)		# movq %r(5021), -40(%rbp)
	movq $0, %r13		# movq $0, %r(4979)
	movq $8, %rbx		# movq $8, %r(4980)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5022)
	movq %r12, %r14		# movq %r(5022), %r(4981)
	subq %rbx, %r14		# subq %r(4980), %r(4981)
	movq (%r14), %rbx		# movq (%r(4981)), %r(4982)
	cmpq %rbx, %r13		# cmpq %r(4982), %r(4979)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4983)
	movq %r13, %r14		# movq %r(4983), %r(4984)
	salq $3, %r14		# salq $3, %r(4984)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5023)
	movq %r12, %r15		# movq %r(5023), %r(4985)
	addq %r14, %r15		# addq %r(4984), %r(4985)
	movq (%r15), %r12		# movq (%r(4985)), %r(4986)
	movq %r12, %r15		# movq %r(4986), %r(4797)
	movq $2, %r12		# movq $2, %r(4987)
	movq $8, %rbx		# movq $8, %r(4988)
	movq %r15, %r13		# movq %r(4797), %r(4989)
	subq %rbx, %r13		# subq %r(4988), %r(4989)
	movq (%r13), %rbx		# movq (%r(4989)), %r(4990)
	cmpq %rbx, %r12		# cmpq %r(4990), %r(4987)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(4991)
	movq %r13, %rbx		# movq %r(4991), %r(4992)
	salq $3, %rbx		# salq $3, %r(4992)
	movq %r15, %r12		# movq %r(4797), %r(4993)
	addq %rbx, %r12		# addq %r(4992), %r(4993)
	movq (%r12), %rbx		# movq (%r(4993)), %r(4994)
	movq $51, %r12		# movq $51, %r(4995)
	cmpq %r12, %rbx		# cmpq %r(4995), %r(4994)
	je .L797		# je .L797
	.L798:		# .L798:
	movq $0, %r13		# movq $0, %r(4996)
	movq %r13, %rbx		# movq %r(4996), %r(5024)
	movq %rbx, -40(%rbp)		# movq %r(5024), -40(%rbp)
	jmp .L797		# jmp .L797
	.L797:		# .L797:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5025)
	movq %rbx, %rdi		# movq %r(5025), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L774		# jmp .L774
	.L774:		# .L774:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $64, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(5069)
	movq %rbx, -88(%rbp)		# movq %r(5069), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(5026)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(5070)
	movq %r14, %r12		# movq %r(5070), %r(5027)
	subq %rbx, %r12		# subq %r(5026), %r(5027)
	movq (%r12), %r13		# movq (%r(5027)), %r(5028)
	movq %r13, %rbx		# movq %r(5028), %r(5071)
	movq %rbx, -8(%rbp)		# movq %r(5071), -8(%rbp)
	movq $1, %r13		# movq $1, %r(5029)
	movq %r13, %rbx		# movq %r(5029), %r(5072)
	movq %rbx, -80(%rbp)		# movq %r(5072), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(5030)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5073)
	cmpq %rbx, %r12		# cmpq %r(5030), %r(5073)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(5031)
	movq %rbx, %rax		# movq %r(5031), %rax
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
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5074)
	movq %r13, %rbx		# movq %r(5074), %r(5032)
	salq $3, %rbx		# salq $3, %r(5032)
	movq %rbx, %rdi		# movq %r(5032), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5075)
	movq %rbx, -96(%rbp)		# movq %r(5075), -96(%rbp)
	movq $1, %rbx		# movq $1, %r(5033)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5076)
	movq %r14, %r12		# movq %r(5076), %r(5034)
	subq %rbx, %r12		# subq %r(5033), %r(5034)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(5077)
	movq %r12, (%rbx)		# movq %r(5034), (%r(5077))
	movq $8, %rbx		# movq $8, %r(5035)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(5078)
	movq %r14, %r13		# movq %r(5078), %r(5036)
	addq %rbx, %r13		# addq %r(5035), %r(5036)
	movq %r13, %r12		# movq %r(5036), %r(5079)
	movq %r12, -24(%rbp)		# movq %r(5079), -24(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5080)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5081)
	cmpq %rbx, %r12		# cmpq %r(5080), %r(5081)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(5037)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(5082)
	movq %r14, %r12		# movq %r(5082), %r(5038)
	subq %rbx, %r12		# subq %r(5037), %r(5038)
	movq (%r12), %rbx		# movq (%r(5038)), %r(5039)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5083)
	cmpq %rbx, %r12		# cmpq %r(5039), %r(5083)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(5040)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5084)
	movq %r14, %r13		# movq %r(5084), %r(5041)
	subq %rbx, %r13		# subq %r(5040), %r(5041)
	movq %r13, %r12		# movq %r(5041), %r(5085)
	movq %r12, -40(%rbp)		# movq %r(5085), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(5042)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5086)
	movq %r14, %r12		# movq %r(5086), %r(5043)
	subq %rbx, %r12		# subq %r(5042), %r(5043)
	movq (%r12), %rbx		# movq (%r(5043)), %r(5044)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5087)
	cmpq %rbx, %r12		# cmpq %r(5044), %r(5087)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5088)
	movq %r13, %r14		# movq %r(5088), %r(5045)
	salq $3, %r14		# salq $3, %r(5045)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5089)
	movq %r12, %r15		# movq %r(5089), %r(5046)
	addq %r14, %r15		# addq %r(5045), %r(5046)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(5090)
	movq %r13, %rbx		# movq %r(5090), %r(5121)
	movq %rbx, -104(%rbp)		# movq %r(5121), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(5122)
	salq $3, %rbx		# salq $3, %r(5122)
	movq %rbx, -104(%rbp)		# movq %r(5122), -104(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(5091)
	movq %r13, %rbx		# movq %r(5091), %r(5092)
	movq %rbx, -32(%rbp)		# movq %r(5092), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5093)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(5123)
	addq %r12, %rbx		# addq %r(5123), %r(5093)
	movq %rbx, -32(%rbp)		# movq %r(5093), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5094)
	movq (%rbx), %r12		# movq (%r(5094)), %r(5049)
	movq %r12, (%r15)		# movq %r(5049), (%r(5046))
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5095)
	incq %rbx		# incq %r(5095)
	movq %rbx, -80(%rbp)		# movq %r(5095), -80(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(5050)
	movq $8, %rbx		# movq $8, %r(5051)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(5096)
	movq %r12, %r14		# movq %r(5096), %r(5052)
	subq %rbx, %r14		# subq %r(5051), %r(5052)
	movq (%r14), %rbx		# movq (%r(5052)), %r(5053)
	cmpq %rbx, %r13		# cmpq %r(5053), %r(5050)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5054)
	movq %r13, %r14		# movq %r(5054), %r(5055)
	salq $3, %r14		# salq $3, %r(5055)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(5097)
	movq %r12, %r15		# movq %r(5097), %r(5056)
	addq %r14, %r15		# addq %r(5055), %r(5056)
	movq (%r15), %r13		# movq (%r(5056)), %r(5057)
	movq %r13, %rbx		# movq %r(5057), %r(5098)
	movq %rbx, -80(%rbp)		# movq %r(5098), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(5058)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5099)
	movq %r14, %r13		# movq %r(5099), %r(5059)
	addq %rbx, %r13		# addq %r(5058), %r(5059)
	movq %r13, %r12		# movq %r(5059), %r(5060)
	salq $3, %r12		# salq $3, %r(5060)
	movq %r12, %rdi		# movq %r(5060), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4809)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5100)
	movq %rbx, (%r14)		# movq %r(5100), (%r(4809))
	movq $8, %r13		# movq $8, %r(5061)
	movq %r14, %r12		# movq %r(4809), %r(5101)
	movq %r12, -72(%rbp)		# movq %r(5101), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5102)
	addq %r13, %rbx		# addq %r(5061), %r(5102)
	movq %rbx, -72(%rbp)		# movq %r(5102), -72(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5103)
	movq %r13, %rbx		# movq %r(5103), %r(5104)
	movq %rbx, -56(%rbp)		# movq %r(5104), -56(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(5063)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5105)
	cmpq %rbx, %r12		# cmpq %r(5063), %r(5105)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5106)
	decq %rbx		# decq %r(5106)
	movq %rbx, -80(%rbp)		# movq %r(5106), -80(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5107)
	movq %rbx, %rdi		# movq %r(5107), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5108)
	movq %rbx, -16(%rbp)		# movq %r(5108), -16(%rbp)
	movq $8, %r13		# movq $8, %r(5064)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5109)
	movq %r14, %rbx		# movq %r(5109), %r(5110)
	movq %rbx, -64(%rbp)		# movq %r(5110), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5111)
	subq %r13, %rbx		# subq %r(5064), %r(5111)
	movq %rbx, -64(%rbp)		# movq %r(5111), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5112)
	movq (%rbx), %r12		# movq (%r(5112)), %r(5066)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5113)
	cmpq %r12, %rbx		# cmpq %r(5066), %r(5113)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5114)
	movq %r12, %r14		# movq %r(5114), %r(5067)
	salq $3, %r14		# salq $3, %r(5067)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5115)
	movq %r13, %rbx		# movq %r(5115), %r(5116)
	movq %rbx, -48(%rbp)		# movq %r(5116), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5117)
	addq %r14, %rbx		# addq %r(5067), %r(5117)
	movq %rbx, -48(%rbp)		# movq %r(5117), -48(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5118)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5119)
	movq %rbx, (%r12)		# movq %r(5118), (%r(5119))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5120)
	movq %rbx, %rax		# movq %r(5120), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
