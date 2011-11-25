.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $304, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L885(%rip), %rdi		# leaq .L885(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4752)
	leaq .L886(%rip), %rdi		# leaq .L886(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(4753)
	movq %rbx, %rdi		# movq %r(4752), %rdi
	movq %r12, %rsi		# movq %r(4753), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r15		# movq %rax, %r(4754)
	movq $24, %rbx		# movq $24, %r(4784)
	movq %rbx, %rdi		# movq %r(4784), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4755)
	movq $2, %rbx		# movq $2, %r(4785)
	movq %rbx, (%r13)		# movq %r(4785), (%r(4755))
	movq $8, %rbx		# movq $8, %r(4786)
	movq %r13, %r14		# movq %r(4755), %r(4787)
	addq %rbx, %r14		# addq %r(4786), %r(4787)
	movq %r14, %r12		# movq %r(4787), %r(4694)
	movq $0, %rbx		# movq $0, %r(4788)
	movq %r12, %r13		# movq %r(4694), %r(4789)
	addq %rbx, %r13		# addq %r(4788), %r(4789)
	movq $100, %rbx		# movq $100, %r(4790)
	movq %rbx, (%r13)		# movq %r(4790), (%r(4789))
	movq $8, %rbx		# movq $8, %r(4791)
	movq %r12, %r13		# movq %r(4694), %r(4792)
	addq %rbx, %r13		# addq %r(4791), %r(4792)
	movq $101, %rbx		# movq $101, %r(4793)
	movq %rbx, (%r13)		# movq %r(4793), (%r(4792))
	movq %r15, %rdi		# movq %r(4754), %rdi
	movq %r12, %rsi		# movq %r(4694), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(4902)
	movq %rbx, -112(%rbp)		# movq %r(4902), -112(%rbp)
	movq $32, %rbx		# movq $32, %r(4794)
	movq %rbx, %rdi		# movq %r(4794), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4757)
	movq $3, %rbx		# movq $3, %r(4795)
	movq %rbx, (%r14)		# movq %r(4795), (%r(4757))
	movq $8, %rbx		# movq $8, %r(4796)
	movq %r14, %r13		# movq %r(4757), %r(4797)
	addq %rbx, %r13		# addq %r(4796), %r(4797)
	movq %r13, %r12		# movq %r(4797), %r(4903)
	movq %r12, -240(%rbp)		# movq %r(4903), -240(%rbp)
	movq $0, %rbx		# movq $0, %r(4798)
	movq -240(%rbp), %r14		# movq -240(%rbp), %r(4904)
	movq %r14, %r12		# movq %r(4904), %r(4799)
	addq %rbx, %r12		# addq %r(4798), %r(4799)
	movq $1, %rbx		# movq $1, %r(4800)
	movq %rbx, (%r12)		# movq %r(4800), (%r(4799))
	movq $8, %rbx		# movq $8, %r(4801)
	movq -240(%rbp), %r14		# movq -240(%rbp), %r(4905)
	movq %r14, %r12		# movq %r(4905), %r(4802)
	addq %rbx, %r12		# addq %r(4801), %r(4802)
	movq $1, %rbx		# movq $1, %r(4803)
	movq %rbx, (%r12)		# movq %r(4803), (%r(4802))
	movq $16, %rbx		# movq $16, %r(4804)
	movq -240(%rbp), %r14		# movq -240(%rbp), %r(4906)
	movq %r14, %r12		# movq %r(4906), %r(4805)
	addq %rbx, %r12		# addq %r(4804), %r(4805)
	movq $1, %rbx		# movq $1, %r(4806)
	movq %rbx, (%r12)		# movq %r(4806), (%r(4805))
	movq $32, %rbx		# movq $32, %r(4807)
	movq %rbx, %rdi		# movq %r(4807), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4758)
	movq $3, %rbx		# movq $3, %r(4808)
	movq %rbx, (%r14)		# movq %r(4808), (%r(4758))
	movq $8, %rbx		# movq $8, %r(4809)
	movq %r14, %r13		# movq %r(4758), %r(4810)
	addq %rbx, %r13		# addq %r(4809), %r(4810)
	movq %r13, %r12		# movq %r(4810), %r(4907)
	movq %r12, -248(%rbp)		# movq %r(4907), -248(%rbp)
	movq $24, %rbx		# movq $24, %r(4811)
	movq %rbx, %rdi		# movq %r(4811), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4759)
	movq $2, %rbx		# movq $2, %r(4812)
	movq %rbx, (%r14)		# movq %r(4812), (%r(4759))
	movq $8, %r13		# movq $8, %r(4813)
	movq %r14, %r12		# movq %r(4759), %r(4908)
	movq %r12, -120(%rbp)		# movq %r(4908), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(4909)
	addq %r13, %rbx		# addq %r(4813), %r(4909)
	movq %rbx, -120(%rbp)		# movq %r(4909), -120(%rbp)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(4910)
	movq %r13, %rbx		# movq %r(4910), %r(4911)
	movq %rbx, -280(%rbp)		# movq %r(4911), -280(%rbp)
	movq $0, %rbx		# movq $0, %r(4815)
	movq -280(%rbp), %r14		# movq -280(%rbp), %r(4912)
	movq %r14, %r12		# movq %r(4912), %r(4816)
	addq %rbx, %r12		# addq %r(4815), %r(4816)
	movq $1, %rbx		# movq $1, %r(4817)
	movq %rbx, (%r12)		# movq %r(4817), (%r(4816))
	movq $8, %rbx		# movq $8, %r(4818)
	movq -280(%rbp), %r14		# movq -280(%rbp), %r(4913)
	movq %r14, %r12		# movq %r(4913), %r(4819)
	addq %rbx, %r12		# addq %r(4818), %r(4819)
	movq $2, %rbx		# movq $2, %r(4820)
	movq %rbx, (%r12)		# movq %r(4820), (%r(4819))
	movq $0, %rbx		# movq $0, %r(4821)
	movq -248(%rbp), %r14		# movq -248(%rbp), %r(4914)
	movq %r14, %r12		# movq %r(4914), %r(4822)
	addq %rbx, %r12		# addq %r(4821), %r(4822)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(4915)
	movq %rbx, (%r12)		# movq %r(4915), (%r(4822))
	movq $24, %rbx		# movq $24, %r(4823)
	movq %rbx, %rdi		# movq %r(4823), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4760)
	movq $2, %rbx		# movq $2, %r(4824)
	movq %rbx, (%r14)		# movq %r(4824), (%r(4760))
	movq $8, %r13		# movq $8, %r(4825)
	movq %r14, %r12		# movq %r(4760), %r(4916)
	movq %r12, -256(%rbp)		# movq %r(4916), -256(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(4917)
	addq %r13, %rbx		# addq %r(4825), %r(4917)
	movq %rbx, -256(%rbp)		# movq %r(4917), -256(%rbp)
	movq -256(%rbp), %r13		# movq -256(%rbp), %r(4918)
	movq %r13, %rbx		# movq %r(4918), %r(4919)
	movq %rbx, -96(%rbp)		# movq %r(4919), -96(%rbp)
	movq $0, %rbx		# movq $0, %r(4827)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(4920)
	movq %r14, %r12		# movq %r(4920), %r(4828)
	addq %rbx, %r12		# addq %r(4827), %r(4828)
	movq $3, %rbx		# movq $3, %r(4829)
	movq %rbx, (%r12)		# movq %r(4829), (%r(4828))
	movq $8, %rbx		# movq $8, %r(4830)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(4921)
	movq %r14, %r12		# movq %r(4921), %r(4831)
	addq %rbx, %r12		# addq %r(4830), %r(4831)
	movq $4, %rbx		# movq $4, %r(4832)
	movq %rbx, (%r12)		# movq %r(4832), (%r(4831))
	movq $8, %rbx		# movq $8, %r(4833)
	movq -248(%rbp), %r14		# movq -248(%rbp), %r(4922)
	movq %r14, %r12		# movq %r(4922), %r(4834)
	addq %rbx, %r12		# addq %r(4833), %r(4834)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(4923)
	movq %rbx, (%r12)		# movq %r(4923), (%r(4834))
	movq $24, %rbx		# movq $24, %r(4835)
	movq %rbx, %rdi		# movq %r(4835), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4761)
	movq $2, %rbx		# movq $2, %r(4836)
	movq %rbx, (%r14)		# movq %r(4836), (%r(4761))
	movq $8, %r13		# movq $8, %r(4837)
	movq %r14, %r12		# movq %r(4761), %r(4924)
	movq %r12, -8(%rbp)		# movq %r(4924), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4925)
	addq %r13, %rbx		# addq %r(4837), %r(4925)
	movq %rbx, -8(%rbp)		# movq %r(4925), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4926)
	movq %r13, %rbx		# movq %r(4926), %r(4927)
	movq %rbx, -216(%rbp)		# movq %r(4927), -216(%rbp)
	movq $0, %rbx		# movq $0, %r(4839)
	movq -216(%rbp), %r14		# movq -216(%rbp), %r(4928)
	movq %r14, %r12		# movq %r(4928), %r(4840)
	addq %rbx, %r12		# addq %r(4839), %r(4840)
	movq $5, %rbx		# movq $5, %r(4841)
	movq %rbx, (%r12)		# movq %r(4841), (%r(4840))
	movq $8, %rbx		# movq $8, %r(4842)
	movq -216(%rbp), %r14		# movq -216(%rbp), %r(4929)
	movq %r14, %r12		# movq %r(4929), %r(4843)
	addq %rbx, %r12		# addq %r(4842), %r(4843)
	movq $6, %rbx		# movq $6, %r(4844)
	movq %rbx, (%r12)		# movq %r(4844), (%r(4843))
	movq $16, %rbx		# movq $16, %r(4845)
	movq -248(%rbp), %r14		# movq -248(%rbp), %r(4930)
	movq %r14, %r12		# movq %r(4930), %r(4846)
	addq %rbx, %r12		# addq %r(4845), %r(4846)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(4931)
	movq %rbx, (%r12)		# movq %r(4931), (%r(4846))
	movq $32, %rbx		# movq $32, %r(4847)
	movq %rbx, %rdi		# movq %r(4847), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4762)
	movq $3, %rbx		# movq $3, %r(4848)
	movq %rbx, (%r14)		# movq %r(4848), (%r(4762))
	movq $8, %r13		# movq $8, %r(4849)
	movq %r14, %r12		# movq %r(4762), %r(4932)
	movq %r12, -88(%rbp)		# movq %r(4932), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4933)
	addq %r13, %rbx		# addq %r(4849), %r(4933)
	movq %rbx, -88(%rbp)		# movq %r(4933), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4934)
	movq %r13, %rbx		# movq %r(4934), %r(4935)
	movq %rbx, -200(%rbp)		# movq %r(4935), -200(%rbp)
	movq $0, %rbx		# movq $0, %r(4851)
	movq -200(%rbp), %r14		# movq -200(%rbp), %r(4936)
	movq %r14, %r12		# movq %r(4936), %r(4852)
	addq %rbx, %r12		# addq %r(4851), %r(4852)
	movq $1, %rbx		# movq $1, %r(4853)
	movq %rbx, (%r12)		# movq %r(4853), (%r(4852))
	movq $8, %rbx		# movq $8, %r(4854)
	movq -200(%rbp), %r14		# movq -200(%rbp), %r(4937)
	movq %r14, %r12		# movq %r(4937), %r(4855)
	addq %rbx, %r12		# addq %r(4854), %r(4855)
	movq $2, %rbx		# movq $2, %r(4856)
	movq %rbx, (%r12)		# movq %r(4856), (%r(4855))
	movq $16, %rbx		# movq $16, %r(4857)
	movq -200(%rbp), %r14		# movq -200(%rbp), %r(4938)
	movq %r14, %r12		# movq %r(4938), %r(4858)
	addq %rbx, %r12		# addq %r(4857), %r(4858)
	movq $3, %rbx		# movq $3, %r(4859)
	movq %rbx, (%r12)		# movq %r(4859), (%r(4858))
	leaq .L887(%rip), %rdi		# leaq .L887(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4939)
	movq %rbx, -136(%rbp)		# movq %r(4939), -136(%rbp)
	movq $16, %rbx		# movq $16, %r(4861)
	movq %rbx, %rdi		# movq %r(4861), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4940)
	movq %rbx, -56(%rbp)		# movq %r(4940), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(4862)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4941)
	movq %rbx, (%r12)		# movq %r(4862), (%r(4941))
	movq $8, %r13		# movq $8, %r(4863)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(4942)
	movq %r14, %rbx		# movq %r(4942), %r(4943)
	movq %rbx, -64(%rbp)		# movq %r(4943), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4944)
	addq %r13, %rbx		# addq %r(4863), %r(4944)
	movq %rbx, -64(%rbp)		# movq %r(4944), -64(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4945)
	movq %r13, %rbx		# movq %r(4945), %r(4946)
	movq %rbx, -176(%rbp)		# movq %r(4946), -176(%rbp)
	movq $32, %rbx		# movq $32, %r(4865)
	movq %rbx, %rdi		# movq %r(4865), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4947)
	movq %rbx, -296(%rbp)		# movq %r(4947), -296(%rbp)
	movq $3, %rbx		# movq $3, %r(4866)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(4948)
	movq %rbx, (%r12)		# movq %r(4866), (%r(4948))
	movq $8, %r13		# movq $8, %r(4867)
	movq -296(%rbp), %r14		# movq -296(%rbp), %r(4949)
	movq %r14, %rbx		# movq %r(4949), %r(4950)
	movq %rbx, -48(%rbp)		# movq %r(4950), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4951)
	addq %r13, %rbx		# addq %r(4867), %r(4951)
	movq %rbx, -48(%rbp)		# movq %r(4951), -48(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4952)
	movq %r13, %rbx		# movq %r(4952), %r(4953)
	movq %rbx, -224(%rbp)		# movq %r(4953), -224(%rbp)
	movq $16, %rbx		# movq $16, %r(4869)
	movq %rbx, %rdi		# movq %r(4869), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4954)
	movq %rbx, -272(%rbp)		# movq %r(4954), -272(%rbp)
	movq $1, %rbx		# movq $1, %r(4870)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(4955)
	movq %rbx, (%r12)		# movq %r(4870), (%r(4955))
	movq $8, %r13		# movq $8, %r(4871)
	movq -272(%rbp), %r14		# movq -272(%rbp), %r(4956)
	movq %r14, %rbx		# movq %r(4956), %r(4957)
	movq %rbx, -104(%rbp)		# movq %r(4957), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(4958)
	addq %r13, %rbx		# addq %r(4871), %r(4958)
	movq %rbx, -104(%rbp)		# movq %r(4958), -104(%rbp)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(4959)
	movq %r13, %rbx		# movq %r(4959), %r(4960)
	movq %rbx, -208(%rbp)		# movq %r(4960), -208(%rbp)
	movq $0, %r13		# movq $0, %r(4873)
	movq -208(%rbp), %r14		# movq -208(%rbp), %r(4961)
	movq %r14, %rbx		# movq %r(4961), %r(4962)
	movq %rbx, -168(%rbp)		# movq %r(4962), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(4963)
	addq %r13, %rbx		# addq %r(4873), %r(4963)
	movq %rbx, -168(%rbp)		# movq %r(4963), -168(%rbp)
	movq $1, %rbx		# movq $1, %r(4875)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(4964)
	movq %rbx, (%r12)		# movq %r(4875), (%r(4964))
	movq $0, %r13		# movq $0, %r(4876)
	movq -224(%rbp), %r14		# movq -224(%rbp), %r(4965)
	movq %r14, %rbx		# movq %r(4965), %r(4966)
	movq %rbx, -24(%rbp)		# movq %r(4966), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4967)
	addq %r13, %rbx		# addq %r(4876), %r(4967)
	movq %rbx, -24(%rbp)		# movq %r(4967), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4968)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(4969)
	movq %r12, (%rbx)		# movq %r(4969), (%r(4968))
	movq $16, %rbx		# movq $16, %r(4878)
	movq %rbx, %rdi		# movq %r(4878), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4970)
	movq %rbx, -288(%rbp)		# movq %r(4970), -288(%rbp)
	movq $1, %rbx		# movq $1, %r(4879)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(4971)
	movq %rbx, (%r12)		# movq %r(4879), (%r(4971))
	movq $8, %r13		# movq $8, %r(4880)
	movq -288(%rbp), %r14		# movq -288(%rbp), %r(4972)
	movq %r14, %rbx		# movq %r(4972), %r(4973)
	movq %rbx, -184(%rbp)		# movq %r(4973), -184(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(4974)
	addq %r13, %rbx		# addq %r(4880), %r(4974)
	movq %rbx, -184(%rbp)		# movq %r(4974), -184(%rbp)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(4975)
	movq %r13, %rbx		# movq %r(4975), %r(4976)
	movq %rbx, -80(%rbp)		# movq %r(4976), -80(%rbp)
	movq $0, %r13		# movq $0, %r(4882)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(4977)
	movq %r14, %rbx		# movq %r(4977), %r(4978)
	movq %rbx, -128(%rbp)		# movq %r(4978), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(4979)
	addq %r13, %rbx		# addq %r(4882), %r(4979)
	movq %rbx, -128(%rbp)		# movq %r(4979), -128(%rbp)
	movq $1, %rbx		# movq $1, %r(4884)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(4980)
	movq %rbx, (%r12)		# movq %r(4884), (%r(4980))
	movq $8, %r13		# movq $8, %r(4885)
	movq -224(%rbp), %r14		# movq -224(%rbp), %r(4981)
	movq %r14, %rbx		# movq %r(4981), %r(4982)
	movq %rbx, -264(%rbp)		# movq %r(4982), -264(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(4983)
	addq %r13, %rbx		# addq %r(4885), %r(4983)
	movq %rbx, -264(%rbp)		# movq %r(4983), -264(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(4984)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(4985)
	movq %r12, (%rbx)		# movq %r(4985), (%r(4984))
	movq $16, %rbx		# movq $16, %r(4887)
	movq %rbx, %rdi		# movq %r(4887), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4986)
	movq %rbx, -32(%rbp)		# movq %r(4986), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(4888)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4987)
	movq %rbx, (%r12)		# movq %r(4888), (%r(4987))
	movq $8, %r13		# movq $8, %r(4889)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4988)
	movq %r14, %rbx		# movq %r(4988), %r(4989)
	movq %rbx, -144(%rbp)		# movq %r(4989), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(4990)
	addq %r13, %rbx		# addq %r(4889), %r(4990)
	movq %rbx, -144(%rbp)		# movq %r(4990), -144(%rbp)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(4991)
	movq %r13, %rbx		# movq %r(4991), %r(4992)
	movq %rbx, -152(%rbp)		# movq %r(4992), -152(%rbp)
	movq $0, %r13		# movq $0, %r(4891)
	movq -152(%rbp), %r14		# movq -152(%rbp), %r(4993)
	movq %r14, %rbx		# movq %r(4993), %r(4994)
	movq %rbx, -40(%rbp)		# movq %r(4994), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4995)
	addq %r13, %rbx		# addq %r(4891), %r(4995)
	movq %rbx, -40(%rbp)		# movq %r(4995), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(4893)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4996)
	movq %rbx, (%r12)		# movq %r(4893), (%r(4996))
	movq $16, %r13		# movq $16, %r(4894)
	movq -224(%rbp), %r14		# movq -224(%rbp), %r(4997)
	movq %r14, %rbx		# movq %r(4997), %r(4998)
	movq %rbx, -72(%rbp)		# movq %r(4998), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4999)
	addq %r13, %rbx		# addq %r(4894), %r(4999)
	movq %rbx, -72(%rbp)		# movq %r(4999), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5000)
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(5001)
	movq %r12, (%rbx)		# movq %r(5001), (%r(5000))
	movq $0, %r13		# movq $0, %r(4896)
	movq -176(%rbp), %r14		# movq -176(%rbp), %r(5002)
	movq %r14, %rbx		# movq %r(5002), %r(5003)
	movq %rbx, -16(%rbp)		# movq %r(5003), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5004)
	addq %r13, %rbx		# addq %r(4896), %r(5004)
	movq %rbx, -16(%rbp)		# movq %r(5004), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5005)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(5006)
	movq %r12, (%rbx)		# movq %r(5006), (%r(5005))
	movq $32, %rbx		# movq $32, %r(4898)
	movq %rbx, %rdi		# movq %r(4898), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4769)
	movq %r13, %rbx		# movq %r(4769), %r(5007)
	movq %rbx, -192(%rbp)		# movq %r(5007), -192(%rbp)
	movq $0, %r12		# movq $0, %r(4899)
	movq $195, %rbx		# movq $195, %r(5008)
	movq %rbx, -160(%rbp)		# movq %r(5008), -160(%rbp)
	movq $1, %rbx		# movq $1, %r(5009)
	movq %rbx, -232(%rbp)		# movq %r(5009), -232(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(5010)
	movq %rbx, %rdi		# movq %r(5010), %rdi
	movq %r12, %rsi		# movq %r(4899), %rsi
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(5011)
	movq %rbx, %rdx		# movq %r(5011), %rdx
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(5012)
	movq %rbx, %rcx		# movq %r(5012), %rcx
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(5013)
	movq %rbx, %r8		# movq %r(5013), %r8
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(5014)
	movq %rbx, %r9		# movq %r(5014), %r9
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(5015)
	pushq %rbx		# pushq %r(5015)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(5016)
	pushq %rbx		# pushq %r(5016)
	movq -200(%rbp), %rbx		# movq -200(%rbp), %r(5017)
	pushq %rbx		# pushq %r(5017)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(5018)
	pushq %rbx		# pushq %r(5018)
	call _If_t4iaiaabaibaiabaaiibaiaiaaai		# call _If_t4iaiaabaibaiabaaiibaiaiaaai
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	jmp .L884		# jmp .L884
	.L884:		# .L884:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $304, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_t4iaiaabaibaiabaaiibaiaiaaai
_If_t4iaiaabaibaiabaaiibaiaiaaai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5070)
	movq %rbx, -16(%rbp)		# movq %r(5070), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(a)
	movq %rdx, %rbx		# movq %rdx, %r(b)
	movq %rcx, %rbx		# movq %rcx, %r(c)
	movq %r8, %rbx		# movq %r8, %r(d)
	movq %r9, %rbx		# movq %r9, %r(e)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(f_)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(g)
	movq 32(%rbp), %rbx		# movq 32(%rbp), %r(h)
	movq 40(%rbp), %rbx		# movq 40(%rbp), %r(i)
	movq $0, %rbx		# movq $0, %r(5019)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5071)
	movq %r14, %r12		# movq %r(5071), %r(5020)
	addq %rbx, %r12		# addq %r(5019), %r(5020)
	movq $1, %rbx		# movq $1, %r(5021)
	movq %rbx, (%r12)		# movq %r(5021), (%r(5020))
	movq $32, %rbx		# movq $32, %r(5022)
	movq %rbx, %rdi		# movq %r(5022), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4771)
	movq $3, %rbx		# movq $3, %r(5023)
	movq %rbx, (%r14)		# movq %r(5023), (%r(4771))
	movq $8, %rbx		# movq $8, %r(5024)
	movq %r14, %r13		# movq %r(4771), %r(5025)
	addq %rbx, %r13		# addq %r(5024), %r(5025)
	movq %r13, %r12		# movq %r(5025), %r(5087)
	movq %r12, -40(%rbp)		# movq %r(5087), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(5026)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5088)
	movq %r14, %r12		# movq %r(5088), %r(5027)
	addq %rbx, %r12		# addq %r(5026), %r(5027)
	movq $100, %rbx		# movq $100, %r(5028)
	movq %rbx, (%r12)		# movq %r(5028), (%r(5027))
	movq $8, %rbx		# movq $8, %r(5029)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5089)
	movq %r14, %r12		# movq %r(5089), %r(5030)
	addq %rbx, %r12		# addq %r(5029), %r(5030)
	movq $3, %rbx		# movq $3, %r(5031)
	movq %rbx, (%r12)		# movq %r(5031), (%r(5030))
	movq $16, %rbx		# movq $16, %r(5032)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5090)
	movq %r14, %r12		# movq %r(5090), %r(5033)
	addq %rbx, %r12		# addq %r(5032), %r(5033)
	movq $2, %rbx		# movq $2, %r(5034)
	movq %rbx, (%r12)		# movq %r(5034), (%r(5033))
	movq $8, %rbx		# movq $8, %r(5035)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5072)
	movq %r14, %r12		# movq %r(5072), %r(5036)
	addq %rbx, %r12		# addq %r(5035), %r(5036)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5091)
	movq %rbx, (%r12)		# movq %r(5091), (%r(5036))
	movq $24, %rbx		# movq $24, %r(5037)
	movq %rbx, %rdi		# movq %r(5037), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4772)
	movq $2, %rbx		# movq $2, %r(5038)
	movq %rbx, (%r14)		# movq %r(5038), (%r(4772))
	movq $8, %rbx		# movq $8, %r(5039)
	movq %r14, %r13		# movq %r(4772), %r(5040)
	addq %rbx, %r13		# addq %r(5039), %r(5040)
	movq %r13, %r12		# movq %r(5040), %r(5073)
	movq %r12, -24(%rbp)		# movq %r(5073), -24(%rbp)
	movq $24, %rbx		# movq $24, %r(5041)
	movq %rbx, %rdi		# movq %r(5041), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4773)
	movq $2, %rbx		# movq $2, %r(5042)
	movq %rbx, (%r14)		# movq %r(5042), (%r(4773))
	movq $8, %rbx		# movq $8, %r(5043)
	movq %r14, %r13		# movq %r(4773), %r(5044)
	addq %rbx, %r13		# addq %r(5043), %r(5044)
	movq %r13, %r12		# movq %r(5044), %r(5074)
	movq %r12, -8(%rbp)		# movq %r(5074), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(5045)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5075)
	movq %r14, %r12		# movq %r(5075), %r(5046)
	addq %rbx, %r12		# addq %r(5045), %r(5046)
	movq $1, %rbx		# movq $1, %r(5047)
	movq %rbx, (%r12)		# movq %r(5047), (%r(5046))
	movq $8, %rbx		# movq $8, %r(5048)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5076)
	movq %r14, %r12		# movq %r(5076), %r(5049)
	addq %rbx, %r12		# addq %r(5048), %r(5049)
	movq $0, %rbx		# movq $0, %r(5050)
	movq %rbx, (%r12)		# movq %r(5050), (%r(5049))
	movq $0, %rbx		# movq $0, %r(5051)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5077)
	movq %r14, %r12		# movq %r(5077), %r(5052)
	addq %rbx, %r12		# addq %r(5051), %r(5052)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5078)
	movq %rbx, (%r12)		# movq %r(5078), (%r(5052))
	movq $24, %rbx		# movq $24, %r(5053)
	movq %rbx, %rdi		# movq %r(5053), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4774)
	movq $2, %rbx		# movq $2, %r(5054)
	movq %rbx, (%r14)		# movq %r(5054), (%r(4774))
	movq $8, %rbx		# movq $8, %r(5055)
	movq %r14, %r13		# movq %r(4774), %r(5056)
	addq %rbx, %r13		# addq %r(5055), %r(5056)
	movq %r13, %r12		# movq %r(5056), %r(5079)
	movq %r12, -32(%rbp)		# movq %r(5079), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(5057)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(5080)
	movq %r14, %r12		# movq %r(5080), %r(5058)
	addq %rbx, %r12		# addq %r(5057), %r(5058)
	movq $0, %rbx		# movq $0, %r(5059)
	movq %rbx, (%r12)		# movq %r(5059), (%r(5058))
	movq $8, %rbx		# movq $8, %r(5060)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(5081)
	movq %r14, %r12		# movq %r(5081), %r(5061)
	addq %rbx, %r12		# addq %r(5060), %r(5061)
	movq $1, %rbx		# movq $1, %r(5062)
	movq %rbx, (%r12)		# movq %r(5062), (%r(5061))
	movq $8, %rbx		# movq $8, %r(5063)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5082)
	movq %r14, %r12		# movq %r(5082), %r(5064)
	addq %rbx, %r12		# addq %r(5063), %r(5064)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5083)
	movq %rbx, (%r12)		# movq %r(5083), (%r(5064))
	movq $16, %rbx		# movq $16, %r(5065)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5084)
	movq %r14, %r12		# movq %r(5084), %r(5066)
	addq %rbx, %r12		# addq %r(5065), %r(5066)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5085)
	movq %rbx, (%r12)		# movq %r(5085), (%r(5066))
	leaq .L890(%rip), %rdi		# leaq .L890(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(4775)
	movq $24, %rbx		# movq $24, %r(5068)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5086)
	movq %r13, %r14		# movq %r(5086), %r(5069)
	addq %rbx, %r14		# addq %r(5068), %r(5069)
	movq %r12, (%r14)		# movq %r(4775), (%r(5069))
	jmp .L889		# jmp .L889
	.L889:		# .L889:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(5135)
	movq %rbx, -48(%rbp)		# movq %r(5135), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(5092)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(5136)
	movq %r14, %r12		# movq %r(5136), %r(5093)
	subq %rbx, %r12		# subq %r(5092), %r(5093)
	movq (%r12), %r13		# movq (%r(5093)), %r(5094)
	movq %r13, %rbx		# movq %r(5094), %r(5137)
	movq %rbx, -56(%rbp)		# movq %r(5137), -56(%rbp)
	movq $1, %r13		# movq $1, %r(5095)
	movq %r13, %rbx		# movq %r(5095), %r(5138)
	movq %rbx, -40(%rbp)		# movq %r(5138), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(5096)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5139)
	cmpq %rbx, %r12		# cmpq %r(5096), %r(5139)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(5097)
	movq %rbx, %rax		# movq %r(5097), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L69:		# .L69:
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5140)
	movq %r13, %rbx		# movq %r(5140), %r(5098)
	salq $3, %rbx		# salq $3, %r(5098)
	movq %rbx, %rdi		# movq %r(5098), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5141)
	movq %rbx, -32(%rbp)		# movq %r(5141), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(5099)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5142)
	movq %r14, %r12		# movq %r(5142), %r(5100)
	subq %rbx, %r12		# subq %r(5099), %r(5100)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5143)
	movq %r12, (%rbx)		# movq %r(5100), (%r(5143))
	movq $8, %rbx		# movq $8, %r(5101)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(5144)
	movq %r14, %r13		# movq %r(5144), %r(5102)
	addq %rbx, %r13		# addq %r(5101), %r(5102)
	movq %r13, %r12		# movq %r(5102), %r(5145)
	movq %r12, -8(%rbp)		# movq %r(5145), -8(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5146)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5147)
	cmpq %r12, %rbx		# cmpq %r(5147), %r(5146)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(5103)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(5148)
	movq %r14, %r12		# movq %r(5148), %r(5104)
	subq %rbx, %r12		# subq %r(5103), %r(5104)
	movq (%r12), %rbx		# movq (%r(5104)), %r(5105)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5149)
	cmpq %rbx, %r12		# cmpq %r(5105), %r(5149)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(5106)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5150)
	movq %r14, %r13		# movq %r(5150), %r(5107)
	subq %rbx, %r13		# subq %r(5106), %r(5107)
	movq %r13, %r12		# movq %r(5107), %r(5151)
	movq %r12, -64(%rbp)		# movq %r(5151), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(5108)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5152)
	movq %r14, %r12		# movq %r(5152), %r(5109)
	subq %rbx, %r12		# subq %r(5108), %r(5109)
	movq (%r12), %rbx		# movq (%r(5109)), %r(5110)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5153)
	cmpq %rbx, %r12		# cmpq %r(5110), %r(5153)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5154)
	movq %r13, %r14		# movq %r(5154), %r(5111)
	salq $3, %r14		# salq $3, %r(5111)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5155)
	movq %r12, %r15		# movq %r(5155), %r(5112)
	addq %r14, %r15		# addq %r(5111), %r(5112)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5156)
	movq %r13, %rbx		# movq %r(5156), %r(5187)
	movq %rbx, -104(%rbp)		# movq %r(5187), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(5188)
	salq $3, %rbx		# salq $3, %r(5188)
	movq %rbx, -104(%rbp)		# movq %r(5188), -104(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(5157)
	movq %r13, %rbx		# movq %r(5157), %r(5158)
	movq %rbx, -24(%rbp)		# movq %r(5158), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5159)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(5189)
	addq %r12, %rbx		# addq %r(5189), %r(5159)
	movq %rbx, -24(%rbp)		# movq %r(5159), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5160)
	movq (%rbx), %r12		# movq (%r(5160)), %r(5115)
	movq %r12, (%r15)		# movq %r(5115), (%r(5112))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5161)
	incq %rbx		# incq %r(5161)
	movq %rbx, -40(%rbp)		# movq %r(5161), -40(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(5116)
	movq $8, %rbx		# movq $8, %r(5117)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5162)
	movq %r12, %r14		# movq %r(5162), %r(5118)
	subq %rbx, %r14		# subq %r(5117), %r(5118)
	movq (%r14), %rbx		# movq (%r(5118)), %r(5119)
	cmpq %rbx, %r13		# cmpq %r(5119), %r(5116)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5120)
	movq %r13, %r14		# movq %r(5120), %r(5121)
	salq $3, %r14		# salq $3, %r(5121)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5163)
	movq %r12, %r15		# movq %r(5163), %r(5122)
	addq %r14, %r15		# addq %r(5121), %r(5122)
	movq (%r15), %r13		# movq (%r(5122)), %r(5123)
	movq %r13, %rbx		# movq %r(5123), %r(5164)
	movq %rbx, -40(%rbp)		# movq %r(5164), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(5124)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5165)
	movq %r14, %r13		# movq %r(5165), %r(5125)
	addq %rbx, %r13		# addq %r(5124), %r(5125)
	movq %r13, %r12		# movq %r(5125), %r(5126)
	salq $3, %r12		# salq $3, %r(5126)
	movq %r12, %rdi		# movq %r(5126), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4777)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5166)
	movq %rbx, (%r14)		# movq %r(5166), (%r(4777))
	movq $8, %r13		# movq $8, %r(5127)
	movq %r14, %r12		# movq %r(4777), %r(5167)
	movq %r12, -16(%rbp)		# movq %r(5167), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5168)
	addq %r13, %rbx		# addq %r(5127), %r(5168)
	movq %rbx, -16(%rbp)		# movq %r(5168), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5169)
	movq %r13, %rbx		# movq %r(5169), %r(5170)
	movq %rbx, -72(%rbp)		# movq %r(5170), -72(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(5129)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5171)
	cmpq %rbx, %r12		# cmpq %r(5129), %r(5171)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5172)
	decq %rbx		# decq %r(5172)
	movq %rbx, -40(%rbp)		# movq %r(5172), -40(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5173)
	movq %rbx, %rdi		# movq %r(5173), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5174)
	movq %rbx, -80(%rbp)		# movq %r(5174), -80(%rbp)
	movq $8, %r13		# movq $8, %r(5130)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5175)
	movq %r14, %rbx		# movq %r(5175), %r(5176)
	movq %rbx, -88(%rbp)		# movq %r(5176), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5177)
	subq %r13, %rbx		# subq %r(5130), %r(5177)
	movq %rbx, -88(%rbp)		# movq %r(5177), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5178)
	movq (%rbx), %r12		# movq (%r(5178)), %r(5132)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5179)
	cmpq %r12, %rbx		# cmpq %r(5132), %r(5179)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5180)
	movq %r12, %r14		# movq %r(5180), %r(5133)
	salq $3, %r14		# salq $3, %r(5133)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5181)
	movq %r13, %rbx		# movq %r(5181), %r(5182)
	movq %rbx, -96(%rbp)		# movq %r(5182), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(5183)
	addq %r14, %rbx		# addq %r(5133), %r(5183)
	movq %rbx, -96(%rbp)		# movq %r(5183), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(5184)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5185)
	movq %r12, (%rbx)		# movq %r(5185), (%r(5184))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5186)
	movq %rbx, %rax		# movq %r(5186), %rax
	jmp .L71		# jmp .L71
	
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
	movq %rdi, %rbx		# movq %rdi, %r(5202)
	movq %rbx, -24(%rbp)		# movq %r(5202), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5203)
	movq (%rbx), %r13		# movq (%r(5203)), %r(5190)
	movq %r13, %r12		# movq %r(5190), %r(5204)
	movq %r12, -16(%rbp)		# movq %r(5204), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5205)
	movq %r12, %r13		# movq %r(5205), %r(5191)
	salq $3, %r13		# salq $3, %r(5191)
	movq $8, %rbx		# movq $8, %r(5192)
	movq %r13, %r14		# movq %r(5191), %r(5193)
	addq %rbx, %r14		# addq %r(5192), %r(5193)
	movq %r14, %rdi		# movq %r(5193), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(4779)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5206)
	movq %r13, %rbx		# movq %r(5206), %r(5194)
	salq $3, %rbx		# salq $3, %r(5194)
	movq %r15, %r13		# movq %r(4779), %r(5195)
	addq %rbx, %r13		# addq %r(5194), %r(5195)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5207)
	movq %rbx, %r12		# movq %r(5207), %r(5196)
	salq $3, %r12		# salq $3, %r(5196)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5208)
	movq %rbx, %r14		# movq %r(5208), %r(5209)
	movq %r14, -8(%rbp)		# movq %r(5209), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5210)
	addq %r12, %rbx		# addq %r(5196), %r(5210)
	movq %rbx, -8(%rbp)		# movq %r(5210), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5211)
	movq (%rbx), %r12		# movq (%r(5211)), %r(5198)
	movq %r12, (%r13)		# movq %r(5198), (%r(5195))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5212)
	decq %rbx		# decq %r(5212)
	movq %rbx, -16(%rbp)		# movq %r(5212), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(5199)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5213)
	cmpq %rbx, %r12		# cmpq %r(5199), %r(5213)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(5200)
	movq %r15, %r13		# movq %r(4779), %r(5201)
	addq %rbx, %r13		# addq %r(5200), %r(5201)
	movq %r13, %rax		# movq %r(5201), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5237)
	movq %rbx, -48(%rbp)		# movq %r(5237), -48(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(5238)
	movq %rbx, -40(%rbp)		# movq %r(5238), -40(%rbp)
	movq $0, %r13		# movq $0, %r(5214)
	movq %r13, %rbx		# movq %r(5214), %r(5239)
	movq %rbx, -24(%rbp)		# movq %r(5239), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(5215)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(5240)
	movq %r14, %r12		# movq %r(5240), %r(5216)
	subq %rbx, %r12		# subq %r(5215), %r(5216)
	movq (%r12), %r13		# movq (%r(5216)), %r(5217)
	movq %r13, %rbx		# movq %r(5217), %r(5241)
	movq %rbx, -56(%rbp)		# movq %r(5241), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(5218)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5242)
	movq %r14, %r15		# movq %r(5242), %r(5219)
	subq %rbx, %r15		# subq %r(5218), %r(5219)
	movq (%r15), %r12		# movq (%r(5219)), %r(5220)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5243)
	movq %r14, %r13		# movq %r(5243), %r(5221)
	addq %r12, %r13		# addq %r(5220), %r(5221)
	movq %r13, %r12		# movq %r(5221), %r(5244)
	movq %r12, -80(%rbp)		# movq %r(5244), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(5222)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5245)
	movq %r14, %r12		# movq %r(5245), %r(5223)
	addq %rbx, %r12		# addq %r(5222), %r(5223)
	movq %r12, %rdi		# movq %r(5223), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4780)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5246)
	movq %rbx, (%r14)		# movq %r(5246), (%r(4780))
	movq $8, %r13		# movq $8, %r(5224)
	movq %r14, %r12		# movq %r(4780), %r(5247)
	movq %r12, -32(%rbp)		# movq %r(5247), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5248)
	addq %r13, %rbx		# addq %r(5224), %r(5248)
	movq %rbx, -32(%rbp)		# movq %r(5248), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5249)
	movq %r13, %rbx		# movq %r(5249), %r(5250)
	movq %rbx, -88(%rbp)		# movq %r(5250), -88(%rbp)
	jmp .L158		# jmp .L158
	.L158:		# .L158:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5251)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5252)
	cmpq %r12, %rbx		# cmpq %r(5252), %r(5251)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5253)
	movq %r12, %r14		# movq %r(5253), %r(5226)
	salq $3, %r14		# salq $3, %r(5226)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(5254)
	movq %r13, %rbx		# movq %r(5254), %r(5255)
	movq %rbx, -16(%rbp)		# movq %r(5255), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5256)
	addq %r14, %rbx		# addq %r(5226), %r(5256)
	movq %rbx, -16(%rbp)		# movq %r(5256), -16(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5257)
	movq %r12, %r14		# movq %r(5257), %r(5228)
	salq $3, %r14		# salq $3, %r(5228)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(5258)
	movq %r13, %rbx		# movq %r(5258), %r(5259)
	movq %rbx, -72(%rbp)		# movq %r(5259), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5260)
	addq %r14, %rbx		# addq %r(5228), %r(5260)
	movq %rbx, -72(%rbp)		# movq %r(5260), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5261)
	movq (%rbx), %r12		# movq (%r(5261)), %r(5230)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5262)
	movq %r12, (%rbx)		# movq %r(5230), (%r(5262))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5263)
	incq %rbx		# incq %r(5263)
	movq %rbx, -24(%rbp)		# movq %r(5263), -24(%rbp)
	jmp .L158		# jmp .L158
	.L160:		# .L160:
	jmp .L161		# jmp .L161
	.L161:		# .L161:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5264)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5265)
	cmpq %r12, %rbx		# cmpq %r(5265), %r(5264)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5266)
	movq %r12, %r14		# movq %r(5266), %r(5231)
	salq $3, %r14		# salq $3, %r(5231)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(5267)
	movq %r13, %rbx		# movq %r(5267), %r(5268)
	movq %rbx, -8(%rbp)		# movq %r(5268), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5269)
	addq %r14, %rbx		# addq %r(5231), %r(5269)
	movq %rbx, -8(%rbp)		# movq %r(5269), -8(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5270)
	movq %r13, %r12		# movq %r(5270), %r(5233)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5271)
	subq %rbx, %r12		# subq %r(5271), %r(5233)
	movq %r12, %r14		# movq %r(5233), %r(5234)
	salq $3, %r14		# salq $3, %r(5234)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5272)
	movq %r13, %rbx		# movq %r(5272), %r(5273)
	movq %rbx, -64(%rbp)		# movq %r(5273), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5274)
	addq %r14, %rbx		# addq %r(5234), %r(5274)
	movq %rbx, -64(%rbp)		# movq %r(5274), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5275)
	movq (%rbx), %r12		# movq (%r(5275)), %r(5236)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5276)
	movq %r12, (%rbx)		# movq %r(5236), (%r(5276))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5277)
	incq %rbx		# incq %r(5277)
	movq %rbx, -24(%rbp)		# movq %r(5277), -24(%rbp)
	jmp .L161		# jmp .L161
	.L163:		# .L163:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5278)
	movq %rbx, %rax		# movq %r(5278), %rax
	jmp .L164		# jmp .L164
	.L164:		# .L164:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L886:
	.quad 5
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L890:
	.quad 7
	.quad 78
	.quad 111
	.quad 116
	.quad 104
	.quad 105
	.quad 110
	.quad 103
	.text

#.section .rodata
.align 8
.L887:
	.quad 9
	.quad 71
	.quad 111
	.quad 111
	.quad 100
	.quad 32
	.quad 76
	.quad 117
	.quad 99
	.quad 107
	.text

#.section .rodata
.align 8
.L885:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

error_outofbounds:
call _I_outOfBounds_p
