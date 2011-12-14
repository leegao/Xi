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
	movq %rdi, %rbx		# movq %rdi, %r(5752)
	movq %rsi, %r12		# movq %rsi, %r(5753)
	leaq .L899(%rip), %rdi		# leaq .L899(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5776)
	movq %r13, %rdi		# movq %r(5776), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(5752), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(5753), %rdi
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
	movq %rdi, %r15		# movq %rdi, %r(5754)
	movq $0, %r13		# movq $0, %r(5791)
	movq $8, %rbx		# movq $8, %r(5792)
	movq %r15, %r14		# movq %r(5754), %r(5793)
	subq %rbx, %r14		# subq %r(5792), %r(5793)
	movq (%r14), %rbx		# movq (%r(5793)), %r(5794)
	cmpq %rbx, %r13		# cmpq %r(5794), %r(5791)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5795)
	movq %r13, %rbx		# movq %r(5795), %r(5796)
	salq $3, %rbx		# salq $3, %r(5796)
	movq %r15, %r12		# movq %r(5754), %r(5797)
	addq %rbx, %r12		# addq %r(5796), %r(5797)
	movq $-42, %rbx		# movq $-42, %r(5798)
	movq %rbx, (%r12)		# movq %r(5798), (%r(5797))
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
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5757)
	movq $88, %rbx		# movq $88, %r(5799)
	movq %rbx, %rdi		# movq %r(5799), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5780)
	movq $10, %rbx		# movq $10, %r(5800)
	movq %rbx, (%r14)		# movq %r(5800), (%r(5780))
	movq $8, %rbx		# movq $8, %r(5801)
	movq %r14, %r13		# movq %r(5780), %r(5802)
	addq %rbx, %r13		# addq %r(5801), %r(5802)
	movq %r13, %r12		# movq %r(5802), %r(5893)
	movq %r12, -16(%rbp)		# movq %r(5893), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(5803)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5894)
	movq %r14, %r12		# movq %r(5894), %r(5804)
	addq %rbx, %r12		# addq %r(5803), %r(5804)
	movq $0, %rbx		# movq $0, %r(5805)
	movq %rbx, (%r12)		# movq %r(5805), (%r(5804))
	movq $8, %rbx		# movq $8, %r(5806)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5895)
	movq %r14, %r12		# movq %r(5895), %r(5807)
	addq %rbx, %r12		# addq %r(5806), %r(5807)
	movq $0, %rbx		# movq $0, %r(5808)
	movq %rbx, (%r12)		# movq %r(5808), (%r(5807))
	movq $16, %rbx		# movq $16, %r(5809)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5896)
	movq %r14, %r12		# movq %r(5896), %r(5810)
	addq %rbx, %r12		# addq %r(5809), %r(5810)
	movq $0, %rbx		# movq $0, %r(5811)
	movq %rbx, (%r12)		# movq %r(5811), (%r(5810))
	movq $24, %rbx		# movq $24, %r(5812)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5897)
	movq %r14, %r12		# movq %r(5897), %r(5813)
	addq %rbx, %r12		# addq %r(5812), %r(5813)
	movq $0, %rbx		# movq $0, %r(5814)
	movq %rbx, (%r12)		# movq %r(5814), (%r(5813))
	movq $32, %rbx		# movq $32, %r(5815)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5898)
	movq %r14, %r12		# movq %r(5898), %r(5816)
	addq %rbx, %r12		# addq %r(5815), %r(5816)
	movq $0, %rbx		# movq $0, %r(5817)
	movq %rbx, (%r12)		# movq %r(5817), (%r(5816))
	movq $40, %rbx		# movq $40, %r(5818)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5899)
	movq %r14, %r12		# movq %r(5899), %r(5819)
	addq %rbx, %r12		# addq %r(5818), %r(5819)
	movq $0, %rbx		# movq $0, %r(5820)
	movq %rbx, (%r12)		# movq %r(5820), (%r(5819))
	movq $48, %rbx		# movq $48, %r(5821)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5900)
	movq %r14, %r12		# movq %r(5900), %r(5822)
	addq %rbx, %r12		# addq %r(5821), %r(5822)
	movq $0, %rbx		# movq $0, %r(5823)
	movq %rbx, (%r12)		# movq %r(5823), (%r(5822))
	movq $56, %rbx		# movq $56, %r(5824)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5901)
	movq %r14, %r12		# movq %r(5901), %r(5825)
	addq %rbx, %r12		# addq %r(5824), %r(5825)
	movq $0, %rbx		# movq $0, %r(5826)
	movq %rbx, (%r12)		# movq %r(5826), (%r(5825))
	movq $64, %rbx		# movq $64, %r(5827)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5902)
	movq %r14, %r12		# movq %r(5902), %r(5828)
	addq %rbx, %r12		# addq %r(5827), %r(5828)
	movq $0, %rbx		# movq $0, %r(5829)
	movq %rbx, (%r12)		# movq %r(5829), (%r(5828))
	movq $72, %rbx		# movq $72, %r(5830)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5903)
	movq %r14, %r12		# movq %r(5903), %r(5831)
	addq %rbx, %r12		# addq %r(5830), %r(5831)
	movq $0, %rbx		# movq $0, %r(5832)
	movq %rbx, (%r12)		# movq %r(5832), (%r(5831))
	movq $0, %r13		# movq $0, %r(5833)
	movq $8, %rbx		# movq $8, %r(5834)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5904)
	movq %r12, %r14		# movq %r(5904), %r(5835)
	subq %rbx, %r14		# subq %r(5834), %r(5835)
	movq (%r14), %rbx		# movq (%r(5835)), %r(5836)
	cmpq %rbx, %r13		# cmpq %r(5836), %r(5833)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5837)
	movq %r13, %r14		# movq %r(5837), %r(5838)
	salq $3, %r14		# salq $3, %r(5838)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5905)
	movq %r12, %r15		# movq %r(5905), %r(5839)
	addq %r14, %r15		# addq %r(5838), %r(5839)
	movq $42, %rbx		# movq $42, %r(5840)
	movq %rbx, (%r15)		# movq %r(5840), (%r(5839))
	movq $1, %r13		# movq $1, %r(5841)
	movq $8, %rbx		# movq $8, %r(5842)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5906)
	movq %r12, %r14		# movq %r(5906), %r(5843)
	subq %rbx, %r14		# subq %r(5842), %r(5843)
	movq (%r14), %rbx		# movq (%r(5843)), %r(5844)
	cmpq %rbx, %r13		# cmpq %r(5844), %r(5841)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5845)
	movq %r13, %r14		# movq %r(5845), %r(5846)
	salq $3, %r14		# salq $3, %r(5846)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5907)
	movq %r12, %r15		# movq %r(5907), %r(5847)
	addq %r14, %r15		# addq %r(5846), %r(5847)
	movq $52, %rbx		# movq $52, %r(5848)
	movq %rbx, (%r15)		# movq %r(5848), (%r(5847))
	movq $2, %r13		# movq $2, %r(5849)
	movq $8, %rbx		# movq $8, %r(5850)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5908)
	movq %r12, %r14		# movq %r(5908), %r(5851)
	subq %rbx, %r14		# subq %r(5850), %r(5851)
	movq (%r14), %rbx		# movq (%r(5851)), %r(5852)
	cmpq %rbx, %r13		# cmpq %r(5852), %r(5849)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5853)
	movq %r13, %r14		# movq %r(5853), %r(5854)
	salq $3, %r14		# salq $3, %r(5854)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5909)
	movq %r12, %r15		# movq %r(5909), %r(5855)
	addq %r14, %r15		# addq %r(5854), %r(5855)
	movq $62, %rbx		# movq $62, %r(5856)
	movq %rbx, (%r15)		# movq %r(5856), (%r(5855))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5910)
	movq %rbx, %rdi		# movq %r(5910), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L910(%rip), %rdi		# leaq .L910(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5911)
	movq %rbx, -32(%rbp)		# movq %r(5911), -32(%rbp)
	movq $1, %r13		# movq $1, %r(5858)
	movq %r13, %rbx		# movq %r(5858), %r(5912)
	movq %rbx, -24(%rbp)		# movq %r(5912), -24(%rbp)
	movq $0, %r14		# movq $0, %r(5859)
	movq $8, %r12		# movq $8, %r(5860)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5913)
	movq %rbx, %r13		# movq %r(5913), %r(5914)
	movq %r13, -48(%rbp)		# movq %r(5914), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5915)
	subq %r12, %rbx		# subq %r(5860), %r(5915)
	movq %rbx, -48(%rbp)		# movq %r(5915), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5916)
	movq (%rbx), %r12		# movq (%r(5916)), %r(5862)
	cmpq %r12, %r14		# cmpq %r(5862), %r(5859)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5863)
	movq %r13, %r14		# movq %r(5863), %r(5864)
	salq $3, %r14		# salq $3, %r(5864)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5917)
	movq %r12, %r15		# movq %r(5917), %r(5865)
	addq %r14, %r15		# addq %r(5864), %r(5865)
	movq (%r15), %rbx		# movq (%r(5865)), %r(5866)
	movq $-42, %r12		# movq $-42, %r(5867)
	cmpq %r12, %rbx		# cmpq %r(5867), %r(5866)
	je .L913		# je .L913
	.L914:		# .L914:
	movq $0, %r13		# movq $0, %r(5868)
	movq %r13, %rbx		# movq %r(5868), %r(5918)
	movq %rbx, -24(%rbp)		# movq %r(5918), -24(%rbp)
	jmp .L913		# jmp .L913
	.L913:		# .L913:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5919)
	movq %rbx, %rdi		# movq %r(5919), %rdi
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5920)
	movq %rbx, %rsi		# movq %r(5920), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L915(%rip), %rdi		# leaq .L915(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5933)
	movq %rbx, -64(%rbp)		# movq %r(5933), -64(%rbp)
	movq $1, %r13		# movq $1, %r(5870)
	movq %r13, %rbx		# movq %r(5870), %r(5934)
	movq %rbx, -80(%rbp)		# movq %r(5934), -80(%rbp)
	movq $1, %r14		# movq $1, %r(5871)
	movq $8, %r12		# movq $8, %r(5872)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5921)
	movq %rbx, %r13		# movq %r(5921), %r(5935)
	movq %r13, -72(%rbp)		# movq %r(5935), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5936)
	movq %rbx, -40(%rbp)		# movq %r(5936), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5923)
	subq %r12, %rbx		# subq %r(5872), %r(5923)
	movq %rbx, -40(%rbp)		# movq %r(5923), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5924)
	movq (%rbx), %r12		# movq (%r(5924)), %r(5874)
	cmpq %r12, %r14		# cmpq %r(5874), %r(5871)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5875)
	movq %r13, %r14		# movq %r(5875), %r(5876)
	salq $3, %r14		# salq $3, %r(5876)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5925)
	movq %r12, %r15		# movq %r(5925), %r(5877)
	addq %r14, %r15		# addq %r(5876), %r(5877)
	movq (%r15), %rbx		# movq (%r(5877)), %r(5878)
	movq $52, %r12		# movq $52, %r(5879)
	cmpq %r12, %rbx		# cmpq %r(5879), %r(5878)
	je .L918		# je .L918
	.L919:		# .L919:
	movq $0, %r13		# movq $0, %r(5880)
	movq %r13, %rbx		# movq %r(5880), %r(5937)
	movq %rbx, -80(%rbp)		# movq %r(5937), -80(%rbp)
	jmp .L918		# jmp .L918
	.L918:		# .L918:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5938)
	movq %rbx, %rdi		# movq %r(5938), %rdi
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5939)
	movq %rbx, %rsi		# movq %r(5939), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L920(%rip), %rdi		# leaq .L920(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5926)
	movq %rbx, -8(%rbp)		# movq %r(5926), -8(%rbp)
	movq $1, %r13		# movq $1, %r(5882)
	movq %r13, %rbx		# movq %r(5882), %r(5927)
	movq %rbx, -56(%rbp)		# movq %r(5927), -56(%rbp)
	movq $2, %r13		# movq $2, %r(5883)
	movq $8, %rbx		# movq $8, %r(5884)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5928)
	movq %r12, %r14		# movq %r(5928), %r(5885)
	subq %rbx, %r14		# subq %r(5884), %r(5885)
	movq (%r14), %rbx		# movq (%r(5885)), %r(5886)
	cmpq %rbx, %r13		# cmpq %r(5886), %r(5883)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5887)
	movq %r13, %r14		# movq %r(5887), %r(5888)
	salq $3, %r14		# salq $3, %r(5888)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5929)
	movq %r12, %r15		# movq %r(5929), %r(5889)
	addq %r14, %r15		# addq %r(5888), %r(5889)
	movq (%r15), %rbx		# movq (%r(5889)), %r(5890)
	movq $62, %r12		# movq $62, %r(5891)
	cmpq %r12, %rbx		# cmpq %r(5891), %r(5890)
	je .L923		# je .L923
	.L924:		# .L924:
	movq $0, %r13		# movq $0, %r(5892)
	movq %r13, %rbx		# movq %r(5892), %r(5930)
	movq %rbx, -56(%rbp)		# movq %r(5930), -56(%rbp)
	jmp .L923		# jmp .L923
	.L923:		# .L923:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5931)
	movq %rbx, %rdi		# movq %r(5931), %rdi
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5932)
	movq %rbx, %rsi		# movq %r(5932), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L903		# jmp .L903
	.L903:		# .L903:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(5952)
	movq %rbx, -24(%rbp)		# movq %r(5952), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5953)
	movq (%rbx), %r13		# movq (%r(5953)), %r(5940)
	movq %r13, %r12		# movq %r(5940), %r(5954)
	movq %r12, -8(%rbp)		# movq %r(5954), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5955)
	movq %r12, %r13		# movq %r(5955), %r(5941)
	salq $3, %r13		# salq $3, %r(5941)
	movq $8, %rbx		# movq $8, %r(5942)
	movq %r13, %r14		# movq %r(5941), %r(5943)
	addq %rbx, %r14		# addq %r(5942), %r(5943)
	movq %r14, %rdi		# movq %r(5943), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5788)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5956)
	movq %r13, %rbx		# movq %r(5956), %r(5944)
	salq $3, %rbx		# salq $3, %r(5944)
	movq %r15, %r13		# movq %r(5788), %r(5945)
	addq %rbx, %r13		# addq %r(5944), %r(5945)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5957)
	movq %rbx, %r12		# movq %r(5957), %r(5946)
	salq $3, %r12		# salq $3, %r(5946)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5958)
	movq %rbx, %r14		# movq %r(5958), %r(5959)
	movq %r14, -16(%rbp)		# movq %r(5959), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5960)
	addq %r12, %rbx		# addq %r(5946), %r(5960)
	movq %rbx, -16(%rbp)		# movq %r(5960), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5961)
	movq (%rbx), %r12		# movq (%r(5961)), %r(5948)
	movq %r12, (%r13)		# movq %r(5948), (%r(5945))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5962)
	decq %rbx		# decq %r(5962)
	movq %rbx, -8(%rbp)		# movq %r(5962), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(5949)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5963)
	cmpq %rbx, %r12		# cmpq %r(5949), %r(5963)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5950)
	movq %r15, %r13		# movq %r(5788), %r(5951)
	addq %rbx, %r13		# addq %r(5950), %r(5951)
	movq %r13, %rax		# movq %r(5951), %rax
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
.L910:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L915:
	.quad 2
	.quad 35
	.quad 50
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

error_outofbounds:
call _I_outOfBounds_p
