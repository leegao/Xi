.att_syntax prefix
.text
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
	movq $32, %rbx		# movq $32, %r(130)
	movq %rbx, %rdi		# movq %r(130), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(120)
	movq $3, %r12		# movq $3, %r(131)
	movq %r12, (%rbx)		# movq %r(131), (%r(107))
	movq $8, %r12		# movq $8, %r(132)
	addq %r12, %rbx		# addq %r(132), %r(133)
	movq $0, %r12		# movq $0, %r(134)
	movq %rbx, %r14		# movq %r(106), %r(135)
	addq %r12, %r14		# addq %r(134), %r(135)
	movq $65, %r12		# movq $65, %r(136)
	movq %r12, (%r14)		# movq %r(136), (%r(135))
	movq $8, %r12		# movq $8, %r(137)
	movq %rbx, %r14		# movq %r(106), %r(138)
	addq %r12, %r14		# addq %r(137), %r(138)
	movq $66, %r12		# movq $66, %r(139)
	movq %r12, (%r14)		# movq %r(139), (%r(138))
	movq $16, %r12		# movq $16, %r(140)
	movq %rbx, %r14		# movq %r(106), %r(141)
	addq %r12, %r14		# addq %r(140), %r(141)
	movq $67, %r12		# movq $67, %r(142)
	movq %r12, (%r14)		# movq %r(142), (%r(141))
	leaq .L45(%rip), %rdi		# leaq .L45(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(121)
	movq %r12, %rdi		# movq %r(121), %rdi
	movq %rbx, %rsi		# movq %r(b), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(122)
	movq %rbx, %r14		# movq %r(122), %r(a)
	movq $32, %rbx		# movq $32, %r(144)
	movq %rbx, %rdi		# movq %r(144), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(123)
	movq $3, %r12		# movq $3, %r(145)
	movq %r12, (%r13)		# movq %r(145), (%r(110))
	movq $8, %r12		# movq $8, %r(146)
	addq %r12, %r13		# addq %r(146), %r(147)
	movq $0, %rbx		# movq $0, %r(148)
	movq %r13, %r12		# movq %r(109), %r(149)
	addq %rbx, %r12		# addq %r(148), %r(149)
	movq $70, %rbx		# movq $70, %r(150)
	movq %rbx, (%r12)		# movq %r(150), (%r(149))
	movq $8, %rbx		# movq $8, %r(151)
	movq %r13, %r12		# movq %r(109), %r(152)
	addq %rbx, %r12		# addq %r(151), %r(152)
	movq $71, %rbx		# movq $71, %r(153)
	movq %rbx, (%r12)		# movq %r(153), (%r(152))
	movq $16, %rbx		# movq $16, %r(154)
	movq %r13, %r12		# movq %r(109), %r(155)
	addq %rbx, %r12		# addq %r(154), %r(155)
	movq $72, %rbx		# movq $72, %r(156)
	movq %rbx, (%r12)		# movq %r(156), (%r(155))
	movq %r14, %rdi		# movq %r(a), %rdi
	movq %r13, %rsi		# movq %r(109), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(124)
	movq $32, %rbx		# movq $32, %r(157)
	movq %rbx, %rdi		# movq %r(157), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(125)
	movq $3, %r12		# movq $3, %r(158)
	movq %r12, (%r13)		# movq %r(158), (%r(112))
	movq $8, %r12		# movq $8, %r(159)
	addq %r12, %r13		# addq %r(159), %r(160)
	movq $0, %rbx		# movq $0, %r(161)
	movq %r13, %r12		# movq %r(111), %r(162)
	addq %rbx, %r12		# addq %r(161), %r(162)
	movq $73, %rbx		# movq $73, %r(163)
	movq %rbx, (%r12)		# movq %r(163), (%r(162))
	movq $8, %rbx		# movq $8, %r(164)
	movq %r13, %r12		# movq %r(111), %r(165)
	addq %rbx, %r12		# addq %r(164), %r(165)
	movq $74, %rbx		# movq $74, %r(166)
	movq %rbx, (%r12)		# movq %r(166), (%r(165))
	movq $16, %rbx		# movq $16, %r(167)
	movq %r13, %r12		# movq %r(111), %r(168)
	addq %rbx, %r12		# addq %r(167), %r(168)
	movq $75, %rbx		# movq $75, %r(169)
	movq %rbx, (%r12)		# movq %r(169), (%r(168))
	movq %r14, %rdi		# movq %r(124), %rdi
	movq %r13, %rsi		# movq %r(111), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(126)
	movq %rbx, %rdi		# movq %r(126), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L44:		# .L44:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(185)
	movq %rbx, -32(%rbp)		# movq %r(185), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(186)
	movq (%rbx), %r12		# movq (%r(186)), %r(170)
	movq %r12, -24(%rbp)		# movq %r(187), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(188)
	salq $3, %rbx		# salq $3, %r(171)
	movq $8, %r12		# movq $8, %r(172)
	addq %r12, %rbx		# addq %r(172), %r(173)
	movq %rbx, %rdi		# movq %r(173), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(128)
	movq %r12, -40(%rbp)		# movq %r(189), -40(%rbp)
	.L24:		# .L24:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(190)
	salq $3, %r13		# salq $3, %r(174)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(191)
	addq %r13, %r12		# addq %r(174), %r(175)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(192)
	movq %r13, -16(%rbp)		# movq %r(193), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(194)
	salq $3, %rbx		# salq $3, %r(194)
	movq %rbx, -16(%rbp)		# movq %r(194), -16(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(195)
	movq %r13, -8(%rbp)		# movq %r(182), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(183)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(196)
	addq %r13, %rbx		# addq %r(196), %r(183)
	movq %rbx, -8(%rbp)		# movq %r(183), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(184)
	movq (%rbx), %rbx		# movq (%r(184)), %r(178)
	movq %rbx, (%r12)		# movq %r(178), (%r(175))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(197)
	decq %rbx		# decq %r(197)
	movq %rbx, -24(%rbp)		# movq %r(197), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(179)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(198)
	cmpq %rbx, %r12		# cmpq %r(179), %r(198)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(180)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(199)
	addq %rbx, %r13		# addq %r(180), %r(181)
	movq %r13, %rax		# movq %r(181), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(223)
	movq %rbx, -32(%rbp)		# movq %r(223), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(224)
	movq %rbx, -8(%rbp)		# movq %r(224), -8(%rbp)
	movq $0, %r12		# movq $0, %r(200)
	movq %r12, -56(%rbp)		# movq %r(225), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(201)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(226)
	subq %rbx, %r13		# subq %r(201), %r(202)
	movq (%r13), %r12		# movq (%r(202)), %r(203)
	movq %r12, -16(%rbp)		# movq %r(227), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(204)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(228)
	subq %rbx, %r13		# subq %r(204), %r(205)
	movq (%r13), %rbx		# movq (%r(205)), %r(206)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(229)
	addq %rbx, %r12		# addq %r(206), %r(207)
	movq %r12, -48(%rbp)		# movq %r(230), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(208)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(231)
	addq %rbx, %r13		# addq %r(208), %r(209)
	movq %r13, %rdi		# movq %r(209), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(129)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(232)
	movq %r12, (%r13)		# movq %r(232), (%r(117))
	movq $8, %r12		# movq $8, %r(210)
	addq %r12, %r13		# addq %r(210), %r(211)
	movq %r13, -64(%rbp)		# movq %r(233), -64(%rbp)
	.L46:		# .L46:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(234)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(235)
	cmpq %rbx, %r12		# cmpq %r(234), %r(235)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(236)
	salq $3, %r13		# salq $3, %r(212)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(237)
	movq %rbx, -24(%rbp)		# movq %r(238), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(239)
	addq %r13, %r12		# addq %r(212), %r(239)
	movq %r12, -24(%rbp)		# movq %r(239), -24(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(240)
	salq $3, %r13		# salq $3, %r(214)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(241)
	movq %rbx, -40(%rbp)		# movq %r(242), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(243)
	addq %r13, %r12		# addq %r(214), %r(243)
	movq %r12, -40(%rbp)		# movq %r(243), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(244)
	movq (%rbx), %rbx		# movq (%r(244)), %r(216)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(245)
	movq %rbx, (%r12)		# movq %r(216), (%r(245))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(246)
	incq %rbx		# incq %r(246)
	movq %rbx, -56(%rbp)		# movq %r(246), -56(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(247)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(248)
	cmpq %rbx, %r12		# cmpq %r(247), %r(248)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(249)
	salq $3, %r13		# salq $3, %r(217)
	movq -64(%rbp), %r15		# movq -64(%rbp), %r(250)
	addq %r13, %r15		# addq %r(217), %r(218)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(251)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(252)
	subq %r13, %rbx		# subq %r(252), %r(219)
	salq $3, %rbx		# salq $3, %r(220)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(253)
	addq %rbx, %r12		# addq %r(220), %r(221)
	movq (%r12), %rbx		# movq (%r(221)), %r(222)
	movq %rbx, (%r15)		# movq %r(222), (%r(218))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(254)
	incq %rbx		# incq %r(254)
	movq %rbx, -56(%rbp)		# movq %r(254), -56(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(255)
	movq %rbx, %rax		# movq %r(255), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L45:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

