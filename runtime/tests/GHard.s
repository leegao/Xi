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
	movq $0, %r12		# movq $0, %r(46716)
	movq %r12, -8(%rbp)		# movq %r(46775), -8(%rbp)
	movq $88, %rbx		# movq $88, %r(46717)
	movq %rbx, %rdi		# movq %r(46717), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46703)
	movq $10, %r12		# movq $10, %r(46718)
	movq %r12, (%rbx)		# movq %r(46718), (%r(46693))
	movq $8, %r12		# movq $8, %r(46719)
	addq %r12, %rbx		# addq %r(46719), %r(46720)
	movq $0, %r12		# movq $0, %r(46721)
	movq %rbx, %r14		# movq %r(46692), %r(46722)
	addq %r12, %r14		# addq %r(46721), %r(46722)
	movq $0, %r12		# movq $0, %r(46723)
	movq %r12, (%r14)		# movq %r(46723), (%r(46722))
	movq $8, %r12		# movq $8, %r(46724)
	movq %rbx, %r14		# movq %r(46692), %r(46725)
	addq %r12, %r14		# addq %r(46724), %r(46725)
	movq $0, %r12		# movq $0, %r(46726)
	movq %r12, (%r14)		# movq %r(46726), (%r(46725))
	movq $16, %r12		# movq $16, %r(46727)
	movq %rbx, %r14		# movq %r(46692), %r(46728)
	addq %r12, %r14		# addq %r(46727), %r(46728)
	movq $0, %r12		# movq $0, %r(46729)
	movq %r12, (%r14)		# movq %r(46729), (%r(46728))
	movq $24, %r12		# movq $24, %r(46730)
	movq %rbx, %r14		# movq %r(46692), %r(46731)
	addq %r12, %r14		# addq %r(46730), %r(46731)
	movq $0, %r12		# movq $0, %r(46732)
	movq %r12, (%r14)		# movq %r(46732), (%r(46731))
	movq $32, %r12		# movq $32, %r(46733)
	movq %rbx, %r14		# movq %r(46692), %r(46734)
	addq %r12, %r14		# addq %r(46733), %r(46734)
	movq $0, %r12		# movq $0, %r(46735)
	movq %r12, (%r14)		# movq %r(46735), (%r(46734))
	movq $40, %r12		# movq $40, %r(46736)
	movq %rbx, %r14		# movq %r(46692), %r(46737)
	addq %r12, %r14		# addq %r(46736), %r(46737)
	movq $0, %r12		# movq $0, %r(46738)
	movq %r12, (%r14)		# movq %r(46738), (%r(46737))
	movq $48, %r12		# movq $48, %r(46739)
	movq %rbx, %r14		# movq %r(46692), %r(46740)
	addq %r12, %r14		# addq %r(46739), %r(46740)
	movq $0, %r12		# movq $0, %r(46741)
	movq %r12, (%r14)		# movq %r(46741), (%r(46740))
	movq $56, %r12		# movq $56, %r(46742)
	movq %rbx, %r14		# movq %r(46692), %r(46743)
	addq %r12, %r14		# addq %r(46742), %r(46743)
	movq $0, %r12		# movq $0, %r(46744)
	movq %r12, (%r14)		# movq %r(46744), (%r(46743))
	movq $64, %r12		# movq $64, %r(46745)
	movq %rbx, %r14		# movq %r(46692), %r(46746)
	addq %r12, %r14		# addq %r(46745), %r(46746)
	movq $0, %r12		# movq $0, %r(46747)
	movq %r12, (%r14)		# movq %r(46747), (%r(46746))
	movq $72, %r12		# movq $72, %r(46748)
	movq %rbx, %r14		# movq %r(46692), %r(46749)
	addq %r12, %r14		# addq %r(46748), %r(46749)
	movq $0, %r12		# movq $0, %r(46750)
	movq %r12, (%r14)		# movq %r(46750), (%r(46749))
	movq %rbx, -24(%rbp)		# movq %r(46776), -24(%rbp)
	.L129:		# .L129:
	movq $1, %r12		# movq $1, %r(46751)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(46704)
	testq $1, %rbx		# testq $1, %r(46704)
	jne .L132		# jne .L132
	.L134:		# .L134:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(46705)
	testq $1, %rbx		# testq $1, %r(46705)
	jne .L132		# jne .L132
	.L133:		# .L133:
	movq $0, %r12		# movq $0, %r(46752)
	.L132:		# .L132:
	movq $1, %rbx		# movq $1, %r(46753)
	xorq %rbx, %r12		# xorq %r(46753), %r(46754)
	testq $1, %r12		# testq $1, %r(46754)
	jne .L131		# jne .L131
	.L137:		# .L137:
	movq $1, %r13		# movq $1, %r(46755)
	movq $20, %rbx		# movq $20, %r(46756)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(46777)
	cmpq %rbx, %r12		# cmpq %r(46756), %r(46777)
	jl .L135		# jl .L135
	.L136:		# .L136:
	movq $0, %r13		# movq $0, %r(46757)
	.L135:		# .L135:
	movq $1, %rbx		# movq $1, %r(46758)
	xorq %rbx, %r13		# xorq %r(46758), %r(46759)
	testq $1, %r13		# testq $1, %r(46759)
	jne .L131		# jne .L131
	.L130:		# .L130:
	movq $8, %rbx		# movq $8, %r(46760)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(46778)
	subq %rbx, %r13		# subq %r(46760), %r(46761)
	movq (%r13), %rbx		# movq (%r(46761)), %r(46762)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(46779)
	cmpq %rbx, %r12		# cmpq %r(46762), %r(46779)
	jge .L139		# jge .L139
	.L138:		# .L138:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46780)
	movq %rbx, %r13		# movq %r(46780), %r(46696)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46781)
	movq %rbx, %r14		# movq %r(46781), %r(46697)
	movq $8, %r12		# movq $8, %r(46763)
	movq %r13, %rbx		# movq %r(46696), %r(46782)
	movq %rbx, -16(%rbp)		# movq %r(46782), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46783)
	subq %r12, %rbx		# subq %r(46763), %r(46783)
	movq %rbx, -16(%rbp)		# movq %r(46783), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46784)
	movq (%rbx), %rbx		# movq (%r(46784)), %r(46765)
	cmpq %rbx, %r14		# cmpq %r(46765), %r(46697)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %rbx		# movq %r(46697), %r(46766)
	salq $3, %rbx		# salq $3, %r(46766)
	addq %rbx, %r13		# addq %r(46766), %r(46767)
	movq $10, %rbx		# movq $10, %r(46768)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(46785)
	imulq %r12, %rbx		# imulq %r(46785), %r(46769)
	movq $-8, %r12		# movq $-8, %r(46770)
	addq %r12, %rbx		# addq %r(46770), %r(46771)
	movq %rbx, (%r13)		# movq %r(46771), (%r(46767))
	.L139:		# .L139:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46786)
	incq %rbx		# incq %r(46786)
	movq %rbx, -8(%rbp)		# movq %r(46786), -8(%rbp)
	jmp .L129		# jmp .L129
	.L131:		# .L131:
	movq $50, %rbx		# movq $50, %r(46772)
	movq %rbx, %rdi		# movq %r(46772), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L142(%rip), %rdi		# leaq .L142(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(46707)
	leaq .L143(%rip), %rdi		# leaq .L143(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(46708)
	movq %r13, %rdi		# movq %r(g), %rdi
	movq %rbx, %rsi		# movq %r(h), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(46709)
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
	movq $0, %r12		# movq $0, %r(46787)
	cmpq %r12, %r13		# cmpq %r(46787), %r(x)
	jge .L146		# jge .L146
	.L145:		# .L145:
	movq $1, %r12		# movq $1, %r(46788)
	subq %r12, %r13		# subq %r(46788), %r(46789)
	movq %r13, %rdi		# movq %r(46789), %rdi
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
	movq $1, %r12		# movq $1, %r(46790)
	subq %r12, %r13		# subq %r(46790), %r(46791)
	movq %r13, %rdi		# movq %r(46791), %rdi
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
	movq $1, %rbx		# movq $1, %r(46792)
	movq %rbx, %rax		# movq %r(46792), %rax
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
	movq $0, %rbx		# movq $0, %r(46793)
	movq %rbx, %rax		# movq %r(46793), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(46806)
	movq %rbx, -16(%rbp)		# movq %r(46806), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46807)
	movq (%rbx), %r12		# movq (%r(46807)), %r(46794)
	movq %r12, -24(%rbp)		# movq %r(46808), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46809)
	salq $3, %rbx		# salq $3, %r(46795)
	movq $8, %r12		# movq $8, %r(46796)
	addq %r12, %rbx		# addq %r(46796), %r(46797)
	movq %rbx, %rdi		# movq %r(46797), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46713)
	movq %rbx, %r14		# movq %r(46713), %r(t27)
	.L24:		# .L24:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46810)
	salq $3, %r12		# salq $3, %r(46798)
	movq %r14, %r13		# movq %r(t27), %r(46799)
	addq %r12, %r13		# addq %r(46798), %r(46799)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46811)
	movq %rbx, %r12		# movq %r(46811), %r(46800)
	salq $3, %r12		# salq $3, %r(46800)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46812)
	movq %rbx, -8(%rbp)		# movq %r(46813), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46814)
	addq %r12, %rbx		# addq %r(46800), %r(46814)
	movq %rbx, -8(%rbp)		# movq %r(46814), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46815)
	movq (%rbx), %rbx		# movq (%r(46815)), %r(46802)
	movq %rbx, (%r13)		# movq %r(46802), (%r(46799))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46816)
	decq %rbx		# decq %r(46816)
	movq %rbx, -24(%rbp)		# movq %r(46816), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(46803)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46817)
	cmpq %rbx, %r12		# cmpq %r(46803), %r(46817)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(46804)
	movq %r14, %r12		# movq %r(t27), %r(46805)
	addq %rbx, %r12		# addq %r(46804), %r(46805)
	movq %r12, %rax		# movq %r(46805), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(46841)
	movq %rbx, -48(%rbp)		# movq %r(46841), -48(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(46842)
	movq %rbx, -40(%rbp)		# movq %r(46842), -40(%rbp)
	movq $0, %r12		# movq $0, %r(46818)
	movq %r12, -16(%rbp)		# movq %r(46843), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(46819)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(46844)
	subq %rbx, %r13		# subq %r(46819), %r(46820)
	movq (%r13), %r12		# movq (%r(46820)), %r(46821)
	movq %r12, -24(%rbp)		# movq %r(46845), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(46822)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(46846)
	subq %rbx, %r13		# subq %r(46822), %r(46823)
	movq (%r13), %rbx		# movq (%r(46823)), %r(46824)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46847)
	addq %rbx, %r12		# addq %r(46824), %r(46825)
	movq %r12, -64(%rbp)		# movq %r(46848), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(46826)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(46849)
	addq %rbx, %r13		# addq %r(46826), %r(46827)
	movq %r13, %rdi		# movq %r(46827), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(46714)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(46850)
	movq %r12, (%r13)		# movq %r(46850), (%r(111))
	movq $8, %r12		# movq $8, %r(46828)
	addq %r12, %r13		# addq %r(46828), %r(46829)
	movq %r13, -56(%rbp)		# movq %r(46851), -56(%rbp)
	.L46:		# .L46:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46852)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46853)
	cmpq %r12, %rbx		# cmpq %r(46853), %r(46852)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(46854)
	salq $3, %r13		# salq $3, %r(46830)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(46855)
	movq %rbx, -32(%rbp)		# movq %r(46856), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(46857)
	addq %r13, %r12		# addq %r(46830), %r(46857)
	movq %r12, -32(%rbp)		# movq %r(46857), -32(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(46858)
	salq $3, %r13		# salq $3, %r(46832)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(46859)
	movq %rbx, -8(%rbp)		# movq %r(46860), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(46861)
	addq %r13, %r12		# addq %r(46832), %r(46861)
	movq %r12, -8(%rbp)		# movq %r(46861), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46862)
	movq (%rbx), %rbx		# movq (%r(46862)), %r(46834)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(46863)
	movq %rbx, (%r12)		# movq %r(46834), (%r(46863))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46864)
	incq %rbx		# incq %r(46864)
	movq %rbx, -16(%rbp)		# movq %r(46864), -16(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46865)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(46866)
	cmpq %r12, %rbx		# cmpq %r(46866), %r(46865)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(46867)
	salq $3, %r13		# salq $3, %r(46835)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(46868)
	addq %r13, %r14		# addq %r(46835), %r(46836)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46869)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(46870)
	subq %r13, %rbx		# subq %r(46870), %r(46837)
	salq $3, %rbx		# salq $3, %r(46838)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(46871)
	addq %rbx, %r12		# addq %r(46838), %r(46839)
	movq (%r12), %rbx		# movq (%r(46839)), %r(46840)
	movq %rbx, (%r14)		# movq %r(46840), (%r(46836))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46872)
	incq %rbx		# incq %r(46872)
	movq %rbx, -16(%rbp)		# movq %r(46872), -16(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(46873)
	movq %rbx, %rax		# movq %r(46873), %rax
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
