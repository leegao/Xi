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
	movq %rdi, %rbx		# movq %rdi, %r(5750)
	movq %rsi, %r12		# movq %rsi, %r(5751)
	leaq .L899(%rip), %rdi		# leaq .L899(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5774)
	movq %r13, %rdi		# movq %r(5774), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(5750), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(5751), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L898		# jmp .L898
	.L898:		# .L898:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imodify_pai
_Imodify_pai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(5752)
	movq $0, %r13		# movq $0, %r(5789)
	movq $8, %rbx		# movq $8, %r(5790)
	movq %r15, %r14		# movq %r(5752), %r(5791)
	subq %rbx, %r14		# subq %r(5790), %r(5791)
	movq (%r14), %rbx		# movq (%r(5791)), %r(5792)
	cmpq %rbx, %r13		# cmpq %r(5792), %r(5789)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5793)
	movq %r13, %rbx		# movq %r(5793), %r(5794)
	salq $3, %rbx		# salq $3, %r(5794)
	movq %r15, %r12		# movq %r(5752), %r(5795)
	addq %rbx, %r12		# addq %r(5794), %r(5795)
	movq $-42, %rbx		# movq $-42, %r(5796)
	movq %rbx, (%r12)		# movq %r(5796), (%r(5795))
	jmp .L900		# jmp .L900
	.L900:		# .L900:
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
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5755)
	movq $88, %rbx		# movq $88, %r(5797)
	movq %rbx, %rdi		# movq %r(5797), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5778)
	movq $10, %rbx		# movq $10, %r(5798)
	movq %rbx, (%r14)		# movq %r(5798), (%r(5778))
	movq $8, %rbx		# movq $8, %r(5799)
	movq %r14, %r13		# movq %r(5778), %r(5800)
	addq %rbx, %r13		# addq %r(5799), %r(5800)
	movq %r13, %r12		# movq %r(5800), %r(5891)
	movq %r12, -40(%rbp)		# movq %r(5891), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(5801)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5892)
	movq %r14, %r12		# movq %r(5892), %r(5802)
	addq %rbx, %r12		# addq %r(5801), %r(5802)
	movq $0, %rbx		# movq $0, %r(5803)
	movq %rbx, (%r12)		# movq %r(5803), (%r(5802))
	movq $8, %rbx		# movq $8, %r(5804)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5893)
	movq %r14, %r12		# movq %r(5893), %r(5805)
	addq %rbx, %r12		# addq %r(5804), %r(5805)
	movq $0, %rbx		# movq $0, %r(5806)
	movq %rbx, (%r12)		# movq %r(5806), (%r(5805))
	movq $16, %rbx		# movq $16, %r(5807)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5894)
	movq %r14, %r12		# movq %r(5894), %r(5808)
	addq %rbx, %r12		# addq %r(5807), %r(5808)
	movq $0, %rbx		# movq $0, %r(5809)
	movq %rbx, (%r12)		# movq %r(5809), (%r(5808))
	movq $24, %rbx		# movq $24, %r(5810)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5895)
	movq %r14, %r12		# movq %r(5895), %r(5811)
	addq %rbx, %r12		# addq %r(5810), %r(5811)
	movq $0, %rbx		# movq $0, %r(5812)
	movq %rbx, (%r12)		# movq %r(5812), (%r(5811))
	movq $32, %rbx		# movq $32, %r(5813)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5896)
	movq %r14, %r12		# movq %r(5896), %r(5814)
	addq %rbx, %r12		# addq %r(5813), %r(5814)
	movq $0, %rbx		# movq $0, %r(5815)
	movq %rbx, (%r12)		# movq %r(5815), (%r(5814))
	movq $40, %rbx		# movq $40, %r(5816)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5897)
	movq %r14, %r12		# movq %r(5897), %r(5817)
	addq %rbx, %r12		# addq %r(5816), %r(5817)
	movq $0, %rbx		# movq $0, %r(5818)
	movq %rbx, (%r12)		# movq %r(5818), (%r(5817))
	movq $48, %rbx		# movq $48, %r(5819)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5898)
	movq %r14, %r12		# movq %r(5898), %r(5820)
	addq %rbx, %r12		# addq %r(5819), %r(5820)
	movq $0, %rbx		# movq $0, %r(5821)
	movq %rbx, (%r12)		# movq %r(5821), (%r(5820))
	movq $56, %rbx		# movq $56, %r(5822)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5899)
	movq %r14, %r12		# movq %r(5899), %r(5823)
	addq %rbx, %r12		# addq %r(5822), %r(5823)
	movq $0, %rbx		# movq $0, %r(5824)
	movq %rbx, (%r12)		# movq %r(5824), (%r(5823))
	movq $64, %rbx		# movq $64, %r(5825)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5900)
	movq %r14, %r12		# movq %r(5900), %r(5826)
	addq %rbx, %r12		# addq %r(5825), %r(5826)
	movq $0, %rbx		# movq $0, %r(5827)
	movq %rbx, (%r12)		# movq %r(5827), (%r(5826))
	movq $72, %rbx		# movq $72, %r(5828)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5901)
	movq %r14, %r12		# movq %r(5901), %r(5829)
	addq %rbx, %r12		# addq %r(5828), %r(5829)
	movq $0, %rbx		# movq $0, %r(5830)
	movq %rbx, (%r12)		# movq %r(5830), (%r(5829))
	movq $0, %r13		# movq $0, %r(5831)
	movq $8, %rbx		# movq $8, %r(5832)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5902)
	movq %r12, %r14		# movq %r(5902), %r(5833)
	subq %rbx, %r14		# subq %r(5832), %r(5833)
	movq (%r14), %rbx		# movq (%r(5833)), %r(5834)
	cmpq %rbx, %r13		# cmpq %r(5834), %r(5831)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5835)
	movq %r13, %r14		# movq %r(5835), %r(5836)
	salq $3, %r14		# salq $3, %r(5836)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5903)
	movq %r12, %r15		# movq %r(5903), %r(5837)
	addq %r14, %r15		# addq %r(5836), %r(5837)
	movq $42, %rbx		# movq $42, %r(5838)
	movq %rbx, (%r15)		# movq %r(5838), (%r(5837))
	movq $1, %r13		# movq $1, %r(5839)
	movq $8, %rbx		# movq $8, %r(5840)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5904)
	movq %r12, %r14		# movq %r(5904), %r(5841)
	subq %rbx, %r14		# subq %r(5840), %r(5841)
	movq (%r14), %rbx		# movq (%r(5841)), %r(5842)
	cmpq %rbx, %r13		# cmpq %r(5842), %r(5839)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5843)
	movq %r13, %r14		# movq %r(5843), %r(5844)
	salq $3, %r14		# salq $3, %r(5844)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5905)
	movq %r12, %r15		# movq %r(5905), %r(5845)
	addq %r14, %r15		# addq %r(5844), %r(5845)
	movq $52, %rbx		# movq $52, %r(5846)
	movq %rbx, (%r15)		# movq %r(5846), (%r(5845))
	movq $2, %r13		# movq $2, %r(5847)
	movq $8, %rbx		# movq $8, %r(5848)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5906)
	movq %r12, %r14		# movq %r(5906), %r(5849)
	subq %rbx, %r14		# subq %r(5848), %r(5849)
	movq (%r14), %rbx		# movq (%r(5849)), %r(5850)
	cmpq %rbx, %r13		# cmpq %r(5850), %r(5847)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5851)
	movq %r13, %r14		# movq %r(5851), %r(5852)
	salq $3, %r14		# salq $3, %r(5852)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5907)
	movq %r12, %r15		# movq %r(5907), %r(5853)
	addq %r14, %r15		# addq %r(5852), %r(5853)
	movq $62, %rbx		# movq $62, %r(5854)
	movq %rbx, (%r15)		# movq %r(5854), (%r(5853))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5908)
	movq %rbx, %rdi		# movq %r(5908), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L910(%rip), %rdi		# leaq .L910(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5909)
	movq %rbx, -48(%rbp)		# movq %r(5909), -48(%rbp)
	movq $1, %r13		# movq $1, %r(5856)
	movq %r13, %rbx		# movq %r(5856), %r(5910)
	movq %rbx, -16(%rbp)		# movq %r(5910), -16(%rbp)
	movq $0, %r14		# movq $0, %r(5857)
	movq $8, %r12		# movq $8, %r(5858)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5911)
	movq %rbx, %r13		# movq %r(5911), %r(5912)
	movq %r13, -64(%rbp)		# movq %r(5912), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5913)
	subq %r12, %rbx		# subq %r(5858), %r(5913)
	movq %rbx, -64(%rbp)		# movq %r(5913), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5914)
	movq (%rbx), %r12		# movq (%r(5914)), %r(5860)
	cmpq %r12, %r14		# cmpq %r(5860), %r(5857)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5861)
	movq %r13, %r14		# movq %r(5861), %r(5862)
	salq $3, %r14		# salq $3, %r(5862)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5915)
	movq %r12, %r15		# movq %r(5915), %r(5863)
	addq %r14, %r15		# addq %r(5862), %r(5863)
	movq (%r15), %rbx		# movq (%r(5863)), %r(5864)
	movq $-42, %r12		# movq $-42, %r(5865)
	cmpq %r12, %rbx		# cmpq %r(5865), %r(5864)
	je .L913		# je .L913
	.L914:		# .L914:
	movq $0, %r13		# movq $0, %r(5866)
	movq %r13, %rbx		# movq %r(5866), %r(5916)
	movq %rbx, -16(%rbp)		# movq %r(5916), -16(%rbp)
	jmp .L913		# jmp .L913
	.L913:		# .L913:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5917)
	movq %rbx, %rdi		# movq %r(5917), %rdi
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5918)
	movq %rbx, %rsi		# movq %r(5918), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L915(%rip), %rdi		# leaq .L915(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5919)
	movq %rbx, -56(%rbp)		# movq %r(5919), -56(%rbp)
	movq $1, %r12		# movq $1, %r(5868)
	movq %r12, %r13		# movq %r(5868), %r(5770)
	movq $1, %r15		# movq $1, %r(5869)
	movq $8, %r12		# movq $8, %r(5870)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5920)
	movq %rbx, %r14		# movq %r(5920), %r(5921)
	movq %r14, -8(%rbp)		# movq %r(5921), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5922)
	subq %r12, %rbx		# subq %r(5870), %r(5922)
	movq %rbx, -8(%rbp)		# movq %r(5922), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5923)
	movq (%rbx), %r12		# movq (%r(5923)), %r(5872)
	cmpq %r12, %r15		# cmpq %r(5872), %r(5869)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r12		# movq $1, %r(5873)
	movq %r12, %rbx		# movq %r(5873), %r(5874)
	salq $3, %rbx		# salq $3, %r(5874)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5924)
	movq %r14, %r15		# movq %r(5924), %r(5875)
	addq %rbx, %r15		# addq %r(5874), %r(5875)
	movq (%r15), %r12		# movq (%r(5875)), %r(5876)
	movq $52, %rbx		# movq $52, %r(5877)
	cmpq %rbx, %r12		# cmpq %r(5877), %r(5876)
	je .L918		# je .L918
	.L919:		# .L919:
	movq $0, %r12		# movq $0, %r(5878)
	movq %r12, %r13		# movq %r(5878), %r(5770)
	jmp .L918		# jmp .L918
	.L918:		# .L918:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5925)
	movq %rbx, %rdi		# movq %r(5925), %rdi
	movq %r13, %rsi		# movq %r(5770), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L920(%rip), %rdi		# leaq .L920(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5926)
	movq %rbx, -24(%rbp)		# movq %r(5926), -24(%rbp)
	movq $1, %r13		# movq $1, %r(5880)
	movq %r13, %rbx		# movq %r(5880), %r(5927)
	movq %rbx, -32(%rbp)		# movq %r(5927), -32(%rbp)
	movq $2, %r13		# movq $2, %r(5881)
	movq $8, %rbx		# movq $8, %r(5882)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5928)
	movq %r12, %r14		# movq %r(5928), %r(5883)
	subq %rbx, %r14		# subq %r(5882), %r(5883)
	movq (%r14), %rbx		# movq (%r(5883)), %r(5884)
	cmpq %rbx, %r13		# cmpq %r(5884), %r(5881)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5885)
	movq %r13, %r14		# movq %r(5885), %r(5886)
	salq $3, %r14		# salq $3, %r(5886)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5929)
	movq %r12, %r15		# movq %r(5929), %r(5887)
	addq %r14, %r15		# addq %r(5886), %r(5887)
	movq (%r15), %rbx		# movq (%r(5887)), %r(5888)
	movq $62, %r12		# movq $62, %r(5889)
	cmpq %r12, %rbx		# cmpq %r(5889), %r(5888)
	je .L923		# je .L923
	.L924:		# .L924:
	movq $0, %r13		# movq $0, %r(5890)
	movq %r13, %rbx		# movq %r(5890), %r(5930)
	movq %rbx, -32(%rbp)		# movq %r(5930), -32(%rbp)
	jmp .L923		# jmp .L923
	.L923:		# .L923:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5931)
	movq %rbx, %rdi		# movq %r(5931), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5932)
	movq %rbx, %rsi		# movq %r(5932), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L903		# jmp .L903
	.L903:		# .L903:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(5945)
	movq %rbx, -16(%rbp)		# movq %r(5945), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5946)
	movq (%rbx), %r13		# movq (%r(5946)), %r(5933)
	movq %r13, %r12		# movq %r(5933), %r(5947)
	movq %r12, -24(%rbp)		# movq %r(5947), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5948)
	movq %r12, %r13		# movq %r(5948), %r(5934)
	salq $3, %r13		# salq $3, %r(5934)
	movq $8, %rbx		# movq $8, %r(5935)
	movq %r13, %r14		# movq %r(5934), %r(5936)
	addq %rbx, %r14		# addq %r(5935), %r(5936)
	movq %r14, %rdi		# movq %r(5936), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5786)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5949)
	movq %r13, %rbx		# movq %r(5949), %r(5937)
	salq $3, %rbx		# salq $3, %r(5937)
	movq %r15, %r13		# movq %r(5786), %r(5938)
	addq %rbx, %r13		# addq %r(5937), %r(5938)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5950)
	movq %rbx, %r12		# movq %r(5950), %r(5939)
	salq $3, %r12		# salq $3, %r(5939)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5951)
	movq %rbx, %r14		# movq %r(5951), %r(5952)
	movq %r14, -8(%rbp)		# movq %r(5952), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5953)
	addq %r12, %rbx		# addq %r(5939), %r(5953)
	movq %rbx, -8(%rbp)		# movq %r(5953), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5954)
	movq (%rbx), %r12		# movq (%r(5954)), %r(5941)
	movq %r12, (%r13)		# movq %r(5941), (%r(5938))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5955)
	decq %rbx		# decq %r(5955)
	movq %rbx, -24(%rbp)		# movq %r(5955), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(5942)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5956)
	cmpq %rbx, %r12		# cmpq %r(5942), %r(5956)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5943)
	movq %r15, %r13		# movq %r(5786), %r(5944)
	addq %rbx, %r13		# addq %r(5943), %r(5944)
	movq %r13, %rax		# movq %r(5944), %rax
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
.L915:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L899:
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
.L920:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L910:
	.quad 2
	.quad 35
	.quad 49
	.text

error_outofbounds:
call _I_outOfBounds_p
