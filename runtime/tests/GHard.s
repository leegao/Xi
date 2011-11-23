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
	movq $0, %r12		# movq $0, %r(46702)
	movq %r12, -8(%rbp)		# movq %r(46761), -8(%rbp)
	movq $88, %rbx		# movq $88, %r(46703)
	movq %rbx, %rdi		# movq %r(46703), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46689)
	movq $10, %r12		# movq $10, %r(46704)
	movq %r12, (%rbx)		# movq %r(46704), (%r(46679))
	movq $8, %r12		# movq $8, %r(46705)
	addq %r12, %rbx		# addq %r(46705), %r(46706)
	movq $0, %r12		# movq $0, %r(46707)
	movq %rbx, %r14		# movq %r(46678), %r(46708)
	addq %r12, %r14		# addq %r(46707), %r(46708)
	movq $0, %r12		# movq $0, %r(46709)
	movq %r12, (%r14)		# movq %r(46709), (%r(46708))
	movq $8, %r12		# movq $8, %r(46710)
	movq %rbx, %r14		# movq %r(46678), %r(46711)
	addq %r12, %r14		# addq %r(46710), %r(46711)
	movq $0, %r12		# movq $0, %r(46712)
	movq %r12, (%r14)		# movq %r(46712), (%r(46711))
	movq $16, %r12		# movq $16, %r(46713)
	movq %rbx, %r14		# movq %r(46678), %r(46714)
	addq %r12, %r14		# addq %r(46713), %r(46714)
	movq $0, %r12		# movq $0, %r(46715)
	movq %r12, (%r14)		# movq %r(46715), (%r(46714))
	movq $24, %r12		# movq $24, %r(46716)
	movq %rbx, %r14		# movq %r(46678), %r(46717)
	addq %r12, %r14		# addq %r(46716), %r(46717)
	movq $0, %r12		# movq $0, %r(46718)
	movq %r12, (%r14)		# movq %r(46718), (%r(46717))
	movq $32, %r12		# movq $32, %r(46719)
	movq %rbx, %r14		# movq %r(46678), %r(46720)
	addq %r12, %r14		# addq %r(46719), %r(46720)
	movq $0, %r12		# movq $0, %r(46721)
	movq %r12, (%r14)		# movq %r(46721), (%r(46720))
	movq $40, %r12		# movq $40, %r(46722)
	movq %rbx, %r14		# movq %r(46678), %r(46723)
	addq %r12, %r14		# addq %r(46722), %r(46723)
	movq $0, %r12		# movq $0, %r(46724)
	movq %r12, (%r14)		# movq %r(46724), (%r(46723))
	movq $48, %r12		# movq $48, %r(46725)
	movq %rbx, %r14		# movq %r(46678), %r(46726)
	addq %r12, %r14		# addq %r(46725), %r(46726)
	movq $0, %r12		# movq $0, %r(46727)
	movq %r12, (%r14)		# movq %r(46727), (%r(46726))
	movq $56, %r12		# movq $56, %r(46728)
	movq %rbx, %r14		# movq %r(46678), %r(46729)
	addq %r12, %r14		# addq %r(46728), %r(46729)
	movq $0, %r12		# movq $0, %r(46730)
	movq %r12, (%r14)		# movq %r(46730), (%r(46729))
	movq $64, %r12		# movq $64, %r(46731)
	movq %rbx, %r14		# movq %r(46678), %r(46732)
	addq %r12, %r14		# addq %r(46731), %r(46732)
	movq $0, %r12		# movq $0, %r(46733)
	movq %r12, (%r14)		# movq %r(46733), (%r(46732))
	movq $72, %r12		# movq $72, %r(46734)
	movq %rbx, %r14		# movq %r(46678), %r(46735)
	addq %r12, %r14		# addq %r(46734), %r(46735)
	movq $0, %r12		# movq $0, %r(46736)
	movq %r12, (%r14)		# movq %r(46736), (%r(46735))
	movq %rbx, -24(%rbp)		# movq %r(46762), -24(%rbp)
	.L129:		# .L129:
	movq $1, %r12		# movq $1, %r(46737)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(46690)
	testq $1, %rbx		# testq $1, %r(46690)
	jne .L132		# jne .L132
	.L134:		# .L134:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(46691)
	testq $1, %rbx		# testq $1, %r(46691)
	jne .L132		# jne .L132
	.L133:		# .L133:
	movq $0, %r12		# movq $0, %r(46738)
	.L132:		# .L132:
	movq $1, %rbx		# movq $1, %r(46739)
	xorq %rbx, %r12		# xorq %r(46739), %r(46740)
	testq $1, %r12		# testq $1, %r(46740)
	jne .L131		# jne .L131
	.L137:		# .L137:
	movq $1, %r13		# movq $1, %r(46741)
	movq $20, %rbx		# movq $20, %r(46742)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(46763)
	cmpq %rbx, %r12		# cmpq %r(46742), %r(46763)
	jl .L135		# jl .L135
	.L136:		# .L136:
	movq $0, %r13		# movq $0, %r(46743)
	.L135:		# .L135:
	movq $1, %rbx		# movq $1, %r(46744)
	xorq %rbx, %r13		# xorq %r(46744), %r(46745)
	testq $1, %r13		# testq $1, %r(46745)
	jne .L131		# jne .L131
	.L130:		# .L130:
	movq $8, %rbx		# movq $8, %r(46746)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(46764)
	subq %rbx, %r13		# subq %r(46746), %r(46747)
	movq (%r13), %rbx		# movq (%r(46747)), %r(46748)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(46765)
	cmpq %rbx, %r12		# cmpq %r(46748), %r(46765)
	jge .L139		# jge .L139
	.L138:		# .L138:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46766)
	movq %rbx, %r14		# movq %r(46766), %r(46682)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46767)
	movq %rbx, %r12		# movq %r(46767), %r(46683)
	movq $8, %r13		# movq $8, %r(46749)
	movq %r14, %rbx		# movq %r(46682), %r(46768)
	movq %rbx, -16(%rbp)		# movq %r(46768), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46769)
	subq %r13, %rbx		# subq %r(46749), %r(46769)
	movq %rbx, -16(%rbp)		# movq %r(46769), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46770)
	movq (%rbx), %rbx		# movq (%r(46770)), %r(46751)
	cmpq %rbx, %r12		# cmpq %r(46751), %r(46683)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(46683), %r(46752)
	salq $3, %rbx		# salq $3, %r(46752)
	movq %r14, %r13		# movq %r(46682), %r(46753)
	addq %rbx, %r13		# addq %r(46752), %r(46753)
	movq $10, %rbx		# movq $10, %r(46754)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(46771)
	imulq %r12, %rbx		# imulq %r(46771), %r(46755)
	movq $-8, %r12		# movq $-8, %r(46756)
	addq %r12, %rbx		# addq %r(46756), %r(46757)
	movq %rbx, (%r13)		# movq %r(46757), (%r(46753))
	.L139:		# .L139:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46772)
	incq %rbx		# incq %r(46772)
	movq %rbx, -8(%rbp)		# movq %r(46772), -8(%rbp)
	jmp .L129		# jmp .L129
	.L131:		# .L131:
	movq $50, %rbx		# movq $50, %r(46758)
	movq %rbx, %rdi		# movq %r(46758), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L142(%rip), %rdi		# leaq .L142(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(46693)
	leaq .L143(%rip), %rdi		# leaq .L143(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(46694)
	movq %r13, %rdi		# movq %r(g), %rdi
	movq %rbx, %rsi		# movq %r(h), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(46695)
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
	movq $0, %r12		# movq $0, %r(46773)
	cmpq %r12, %r13		# cmpq %r(46773), %r(x)
	jge .L146		# jge .L146
	.L145:		# .L145:
	movq $1, %r12		# movq $1, %r(46774)
	subq %r12, %r13		# subq %r(46774), %r(46775)
	movq %r13, %rdi		# movq %r(46775), %rdi
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
	movq $1, %r12		# movq $1, %r(46776)
	subq %r12, %r13		# subq %r(46776), %r(46777)
	movq %r13, %rdi		# movq %r(46777), %rdi
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
	movq $1, %rbx		# movq $1, %r(46778)
	movq %rbx, %rax		# movq %r(46778), %rax
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
	movq $0, %rbx		# movq $0, %r(46779)
	movq %rbx, %rax		# movq %r(46779), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(46792)
	movq %rbx, -16(%rbp)		# movq %r(46792), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46793)
	movq (%rbx), %rbx		# movq (%r(46793)), %r(46780)
	movq %rbx, %r14		# movq %r(46780), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(46781)
	salq $3, %rbx		# salq $3, %r(46781)
	movq $8, %r12		# movq $8, %r(46782)
	addq %r12, %rbx		# addq %r(46782), %r(46783)
	movq %rbx, %rdi		# movq %r(46783), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46699)
	movq %rbx, %r15		# movq %r(46699), %r(t27)
	.L24:		# .L24:
	movq %r14, %rbx		# movq %r(t10), %r(46784)
	salq $3, %rbx		# salq $3, %r(46784)
	movq %r15, %r12		# movq %r(t27), %r(46785)
	addq %rbx, %r12		# addq %r(46784), %r(46785)
	movq %r14, %r13		# movq %r(t10), %r(46786)
	salq $3, %r13		# salq $3, %r(46786)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46794)
	movq %rbx, -8(%rbp)		# movq %r(46795), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46796)
	addq %r13, %rbx		# addq %r(46786), %r(46796)
	movq %rbx, -8(%rbp)		# movq %r(46796), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46797)
	movq (%rbx), %rbx		# movq (%r(46797)), %r(46788)
	movq %rbx, (%r12)		# movq %r(46788), (%r(46785))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(46789)
	cmpq %rbx, %r14		# cmpq %r(46789), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(46790)
	movq %r15, %r12		# movq %r(t27), %r(46791)
	addq %rbx, %r12		# addq %r(46790), %r(46791)
	movq %r12, %rax		# movq %r(46791), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(46821)
	movq %rbx, -16(%rbp)		# movq %r(46821), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(46822)
	movq %rbx, -24(%rbp)		# movq %r(46822), -24(%rbp)
	movq $0, %r12		# movq $0, %r(46798)
	movq %r12, -48(%rbp)		# movq %r(46823), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(46799)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(46824)
	subq %rbx, %r13		# subq %r(46799), %r(46800)
	movq (%r13), %r12		# movq (%r(46800)), %r(46801)
	movq %r12, -56(%rbp)		# movq %r(46825), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(46802)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(46826)
	subq %rbx, %r13		# subq %r(46802), %r(46803)
	movq (%r13), %rbx		# movq (%r(46803)), %r(46804)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(46827)
	addq %rbx, %r12		# addq %r(46804), %r(46805)
	movq %r12, -40(%rbp)		# movq %r(46828), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(46806)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(46829)
	addq %rbx, %r13		# addq %r(46806), %r(46807)
	movq %r13, %rdi		# movq %r(46807), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(46700)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(46830)
	movq %r12, (%r13)		# movq %r(46830), (%r(105))
	movq $8, %r12		# movq $8, %r(46808)
	addq %r12, %r13		# addq %r(46808), %r(46809)
	movq %r13, -8(%rbp)		# movq %r(46831), -8(%rbp)
	.L46:		# .L46:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(46832)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(46833)
	cmpq %r12, %rbx		# cmpq %r(46833), %r(46832)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(46834)
	salq $3, %r13		# salq $3, %r(46810)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46835)
	movq %rbx, -32(%rbp)		# movq %r(46836), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(46837)
	addq %r13, %r12		# addq %r(46810), %r(46837)
	movq %r12, -32(%rbp)		# movq %r(46837), -32(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(46838)
	salq $3, %r13		# salq $3, %r(46812)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46839)
	movq %rbx, -64(%rbp)		# movq %r(46840), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(46841)
	addq %r13, %r12		# addq %r(46812), %r(46841)
	movq %r12, -64(%rbp)		# movq %r(46841), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(46842)
	movq (%rbx), %rbx		# movq (%r(46842)), %r(46814)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(46843)
	movq %rbx, (%r12)		# movq %r(46814), (%r(46843))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(46844)
	incq %rbx		# incq %r(46844)
	movq %rbx, -48(%rbp)		# movq %r(46844), -48(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(46845)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(46846)
	cmpq %rbx, %r12		# cmpq %r(46845), %r(46846)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(46847)
	salq $3, %r13		# salq $3, %r(46815)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(46848)
	addq %r13, %r14		# addq %r(46815), %r(46816)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(46849)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(46850)
	subq %r13, %rbx		# subq %r(46850), %r(46817)
	salq $3, %rbx		# salq $3, %r(46818)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46851)
	addq %rbx, %r12		# addq %r(46818), %r(46819)
	movq (%r12), %rbx		# movq (%r(46819)), %r(46820)
	movq %rbx, (%r14)		# movq %r(46820), (%r(46816))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(46852)
	incq %rbx		# incq %r(46852)
	movq %rbx, -48(%rbp)		# movq %r(46852), -48(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46853)
	movq %rbx, %rax		# movq %r(46853), %rax
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
.L142:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

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

error_outofbounds:
call _I_outOfBounds_p
