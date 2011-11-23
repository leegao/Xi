.att_syntax prefix
.text
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
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $0, %r12		# movq $0, %r(46739)
	movq %r12, -16(%rbp)		# movq %r(46798), -16(%rbp)
	movq $88, %rbx		# movq $88, %r(46740)
	movq %rbx, %rdi		# movq %r(46740), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46726)
	movq $10, %r12		# movq $10, %r(46741)
	movq %r12, (%rbx)		# movq %r(46741), (%r(46716))
	movq $8, %r12		# movq $8, %r(46742)
	addq %r12, %rbx		# addq %r(46742), %r(46743)
	movq $0, %r12		# movq $0, %r(46744)
	movq %rbx, %r14		# movq %r(46715), %r(46745)
	addq %r12, %r14		# addq %r(46744), %r(46745)
	movq $0, %r12		# movq $0, %r(46746)
	movq %r12, (%r14)		# movq %r(46746), (%r(46745))
	movq $8, %r12		# movq $8, %r(46747)
	movq %rbx, %r14		# movq %r(46715), %r(46748)
	addq %r12, %r14		# addq %r(46747), %r(46748)
	movq $0, %r12		# movq $0, %r(46749)
	movq %r12, (%r14)		# movq %r(46749), (%r(46748))
	movq $16, %r12		# movq $16, %r(46750)
	movq %rbx, %r14		# movq %r(46715), %r(46751)
	addq %r12, %r14		# addq %r(46750), %r(46751)
	movq $0, %r12		# movq $0, %r(46752)
	movq %r12, (%r14)		# movq %r(46752), (%r(46751))
	movq $24, %r12		# movq $24, %r(46753)
	movq %rbx, %r14		# movq %r(46715), %r(46754)
	addq %r12, %r14		# addq %r(46753), %r(46754)
	movq $0, %r12		# movq $0, %r(46755)
	movq %r12, (%r14)		# movq %r(46755), (%r(46754))
	movq $32, %r12		# movq $32, %r(46756)
	movq %rbx, %r14		# movq %r(46715), %r(46757)
	addq %r12, %r14		# addq %r(46756), %r(46757)
	movq $0, %r12		# movq $0, %r(46758)
	movq %r12, (%r14)		# movq %r(46758), (%r(46757))
	movq $40, %r12		# movq $40, %r(46759)
	movq %rbx, %r14		# movq %r(46715), %r(46760)
	addq %r12, %r14		# addq %r(46759), %r(46760)
	movq $0, %r12		# movq $0, %r(46761)
	movq %r12, (%r14)		# movq %r(46761), (%r(46760))
	movq $48, %r12		# movq $48, %r(46762)
	movq %rbx, %r14		# movq %r(46715), %r(46763)
	addq %r12, %r14		# addq %r(46762), %r(46763)
	movq $0, %r12		# movq $0, %r(46764)
	movq %r12, (%r14)		# movq %r(46764), (%r(46763))
	movq $56, %r12		# movq $56, %r(46765)
	movq %rbx, %r14		# movq %r(46715), %r(46766)
	addq %r12, %r14		# addq %r(46765), %r(46766)
	movq $0, %r12		# movq $0, %r(46767)
	movq %r12, (%r14)		# movq %r(46767), (%r(46766))
	movq $64, %r12		# movq $64, %r(46768)
	movq %rbx, %r14		# movq %r(46715), %r(46769)
	addq %r12, %r14		# addq %r(46768), %r(46769)
	movq $0, %r12		# movq $0, %r(46770)
	movq %r12, (%r14)		# movq %r(46770), (%r(46769))
	movq $72, %r12		# movq $72, %r(46771)
	movq %rbx, %r14		# movq %r(46715), %r(46772)
	addq %r12, %r14		# addq %r(46771), %r(46772)
	movq $0, %r12		# movq $0, %r(46773)
	movq %r12, (%r14)		# movq %r(46773), (%r(46772))
	movq %rbx, -24(%rbp)		# movq %r(46799), -24(%rbp)
	.L129:		# .L129:
	movq $1, %r12		# movq $1, %r(46774)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(46727)
	testq $1, %rbx		# testq $1, %r(46727)
	jne .L132		# jne .L132
	.L134:		# .L134:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(46728)
	testq $1, %rbx		# testq $1, %r(46728)
	jne .L132		# jne .L132
	.L133:		# .L133:
	movq $0, %r12		# movq $0, %r(46775)
	.L132:		# .L132:
	movq $1, %rbx		# movq $1, %r(46776)
	xorq %rbx, %r12		# xorq %r(46776), %r(46777)
	testq $1, %r12		# testq $1, %r(46777)
	jne .L131		# jne .L131
	.L137:		# .L137:
	movq $1, %r13		# movq $1, %r(46778)
	movq $20, %rbx		# movq $20, %r(46779)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46800)
	cmpq %rbx, %r12		# cmpq %r(46779), %r(46800)
	jl .L135		# jl .L135
	.L136:		# .L136:
	movq $0, %r13		# movq $0, %r(46780)
	.L135:		# .L135:
	movq $1, %rbx		# movq $1, %r(46781)
	xorq %rbx, %r13		# xorq %r(46781), %r(46782)
	testq $1, %r13		# testq $1, %r(46782)
	jne .L131		# jne .L131
	.L130:		# .L130:
	movq $8, %rbx		# movq $8, %r(46783)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(46801)
	subq %rbx, %r13		# subq %r(46783), %r(46784)
	movq (%r13), %rbx		# movq (%r(46784)), %r(46785)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46802)
	cmpq %rbx, %r12		# cmpq %r(46785), %r(46802)
	jge .L139		# jge .L139
	.L138:		# .L138:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46803)
	movq %rbx, %r15		# movq %r(46803), %r(46719)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46804)
	movq %rbx, %r13		# movq %r(46804), %r(46720)
	movq $8, %r14		# movq $8, %r(46786)
	movq %r15, %rbx		# movq %r(46719), %r(46805)
	movq %rbx, -8(%rbp)		# movq %r(46805), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46806)
	subq %r14, %rbx		# subq %r(46786), %r(46806)
	movq %rbx, -8(%rbp)		# movq %r(46806), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46807)
	movq (%rbx), %rbx		# movq (%r(46807)), %r(46788)
	cmpq %rbx, %r13		# cmpq %r(46788), %r(46720)
	jae error_outofbounds		# jae error_outofbounds
	movq %r13, %rbx		# movq %r(46720), %r(46789)
	salq $3, %rbx		# salq $3, %r(46789)
	movq %r15, %r13		# movq %r(46719), %r(46790)
	addq %rbx, %r13		# addq %r(46789), %r(46790)
	movq $10, %rbx		# movq $10, %r(46791)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46808)
	imulq %r12, %rbx		# imulq %r(46808), %r(46792)
	movq $-8, %r12		# movq $-8, %r(46793)
	addq %r12, %rbx		# addq %r(46793), %r(46794)
	movq %rbx, (%r13)		# movq %r(46794), (%r(46790))
	.L139:		# .L139:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46809)
	incq %rbx		# incq %r(46809)
	movq %rbx, -16(%rbp)		# movq %r(46809), -16(%rbp)
	jmp .L129		# jmp .L129
	.L131:		# .L131:
	movq $50, %rbx		# movq $50, %r(46795)
	movq %rbx, %rdi		# movq %r(46795), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L142(%rip), %rdi		# leaq .L142(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(46730)
	leaq .L143(%rip), %rdi		# leaq .L143(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(46731)
	movq %r13, %rdi		# movq %r(g), %rdi
	movq %rbx, %rsi		# movq %r(h), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(46732)
	movq %r13, %rdi		# movq %r(g), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L128:		# .L128:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ifoo_pi
_Ifoo_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $0, %r12		# movq $0, %r(46810)
	cmpq %r12, %r13		# cmpq %r(46810), %r(x)
	jge .L146		# jge .L146
	.L145:		# .L145:
	movq $1, %r12		# movq $1, %r(46811)
	subq %r12, %r13		# subq %r(46811), %r(46812)
	movq %r13, %rdi		# movq %r(46812), %rdi
	call _Ibar_pi		# call _Ibar_pi
	.L146:		# .L146:
	.L144:		# .L144:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ibar_pi
_Ibar_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $1, %r12		# movq $1, %r(46813)
	subq %r12, %r13		# subq %r(46813), %r(46814)
	movq %r13, %rdi		# movq %r(46814), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	.L147:		# .L147:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IretTrue_b
_IretTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(46815)
	movq %rbx, %rax		# movq %r(46815), %rax
	jmp .L148		# jmp .L148
	.L148:		# .L148:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IretFalse_b
_IretFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %rbx		# movq $0, %r(46816)
	movq %rbx, %rax		# movq %r(46816), %rax
	jmp .L149		# jmp .L149
	.L149:		# .L149:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(46829)
	movq %rbx, -16(%rbp)		# movq %r(46829), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46830)
	movq (%rbx), %r12		# movq (%r(46830)), %r(46817)
	movq %r12, -8(%rbp)		# movq %r(46831), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46832)
	salq $3, %rbx		# salq $3, %r(46818)
	movq $8, %r12		# movq $8, %r(46819)
	addq %r12, %rbx		# addq %r(46819), %r(46820)
	movq %rbx, %rdi		# movq %r(46820), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46736)
	movq %rbx, %r14		# movq %r(46736), %r(t27)
	.L24:		# .L24:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(46833)
	salq $3, %r12		# salq $3, %r(46821)
	movq %r14, %r13		# movq %r(t27), %r(46822)
	addq %r12, %r13		# addq %r(46821), %r(46822)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46834)
	movq %rbx, %r12		# movq %r(46834), %r(46823)
	salq $3, %r12		# salq $3, %r(46823)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46835)
	movq %rbx, -24(%rbp)		# movq %r(46836), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46837)
	addq %r12, %rbx		# addq %r(46823), %r(46837)
	movq %rbx, -24(%rbp)		# movq %r(46837), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46838)
	movq (%rbx), %rbx		# movq (%r(46838)), %r(46825)
	movq %rbx, (%r13)		# movq %r(46825), (%r(46822))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46839)
	decq %rbx		# decq %r(46839)
	movq %rbx, -8(%rbp)		# movq %r(46839), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(46826)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(46840)
	cmpq %rbx, %r12		# cmpq %r(46826), %r(46840)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(46827)
	movq %r14, %r12		# movq %r(t27), %r(46828)
	addq %rbx, %r12		# addq %r(46827), %r(46828)
	movq %r12, %rax		# movq %r(46828), %rax
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
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(46864)
	movq %rbx, -32(%rbp)		# movq %r(46864), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(46865)
	movq %rbx, -24(%rbp)		# movq %r(46865), -24(%rbp)
	movq $0, %r12		# movq $0, %r(46841)
	movq %r12, -8(%rbp)		# movq %r(46866), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(46842)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(46867)
	subq %rbx, %r13		# subq %r(46842), %r(46843)
	movq (%r13), %r12		# movq (%r(46843)), %r(46844)
	movq %r12, -16(%rbp)		# movq %r(46868), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(46845)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(46869)
	subq %rbx, %r13		# subq %r(46845), %r(46846)
	movq (%r13), %rbx		# movq (%r(46846)), %r(46847)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46870)
	addq %rbx, %r12		# addq %r(46847), %r(46848)
	movq %r12, -64(%rbp)		# movq %r(46871), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(46849)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(46872)
	addq %rbx, %r13		# addq %r(46849), %r(46850)
	movq %r13, %rdi		# movq %r(46850), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(46737)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(46873)
	movq %r12, (%r13)		# movq %r(46873), (%r(111))
	movq $8, %r12		# movq $8, %r(46851)
	addq %r12, %r13		# addq %r(46851), %r(46852)
	movq %r13, -56(%rbp)		# movq %r(46874), -56(%rbp)
	.L46:		# .L46:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46875)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46876)
	cmpq %r12, %rbx		# cmpq %r(46876), %r(46875)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(46877)
	salq $3, %r13		# salq $3, %r(46853)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(46878)
	movq %rbx, -48(%rbp)		# movq %r(46879), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(46880)
	addq %r13, %r12		# addq %r(46853), %r(46880)
	movq %r12, -48(%rbp)		# movq %r(46880), -48(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(46881)
	salq $3, %r13		# salq $3, %r(46855)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(46882)
	movq %rbx, -40(%rbp)		# movq %r(46883), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(46884)
	addq %r13, %r12		# addq %r(46855), %r(46884)
	movq %r12, -40(%rbp)		# movq %r(46884), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(46885)
	movq (%rbx), %rbx		# movq (%r(46885)), %r(46857)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(46886)
	movq %rbx, (%r12)		# movq %r(46857), (%r(46886))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46887)
	incq %rbx		# incq %r(46887)
	movq %rbx, -8(%rbp)		# movq %r(46887), -8(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46888)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(46889)
	cmpq %r12, %rbx		# cmpq %r(46889), %r(46888)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(46890)
	salq $3, %r13		# salq $3, %r(46858)
	movq -56(%rbp), %r15		# movq -56(%rbp), %r(46891)
	addq %r13, %r15		# addq %r(46858), %r(46859)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46892)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(46893)
	subq %r13, %rbx		# subq %r(46893), %r(46860)
	salq $3, %rbx		# salq $3, %r(46861)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46894)
	addq %rbx, %r12		# addq %r(46861), %r(46862)
	movq (%r12), %rbx		# movq (%r(46862)), %r(46863)
	movq %rbx, (%r15)		# movq %r(46863), (%r(46859))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46895)
	incq %rbx		# incq %r(46895)
	movq %rbx, -8(%rbp)		# movq %r(46895), -8(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(46896)
	movq %rbx, %rax		# movq %r(46896), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L143:
	.quad 5
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L142:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

error_outofbounds:
call _I_outOfBounds_p
