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
	movq $0, %r12		# movq $0, %r(197)
	movq %r12, -24(%rbp)		# movq %r(256), -24(%rbp)
	movq $88, %rbx		# movq $88, %r(198)
	movq %rbx, %rdi		# movq %r(198), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(184)
	movq $10, %r12		# movq $10, %r(199)
	movq %r12, (%rbx)		# movq %r(199), (%r(164))
	movq $8, %r12		# movq $8, %r(200)
	addq %r12, %rbx		# addq %r(200), %r(201)
	movq $0, %r12		# movq $0, %r(202)
	movq %rbx, %r14		# movq %r(163), %r(203)
	addq %r12, %r14		# addq %r(202), %r(203)
	movq $0, %r12		# movq $0, %r(204)
	movq %r12, (%r14)		# movq %r(204), (%r(203))
	movq $8, %r12		# movq $8, %r(205)
	movq %rbx, %r14		# movq %r(163), %r(206)
	addq %r12, %r14		# addq %r(205), %r(206)
	movq $0, %r12		# movq $0, %r(207)
	movq %r12, (%r14)		# movq %r(207), (%r(206))
	movq $16, %r12		# movq $16, %r(208)
	movq %rbx, %r14		# movq %r(163), %r(209)
	addq %r12, %r14		# addq %r(208), %r(209)
	movq $0, %r12		# movq $0, %r(210)
	movq %r12, (%r14)		# movq %r(210), (%r(209))
	movq $24, %r12		# movq $24, %r(211)
	movq %rbx, %r14		# movq %r(163), %r(212)
	addq %r12, %r14		# addq %r(211), %r(212)
	movq $0, %r12		# movq $0, %r(213)
	movq %r12, (%r14)		# movq %r(213), (%r(212))
	movq $32, %r12		# movq $32, %r(214)
	movq %rbx, %r14		# movq %r(163), %r(215)
	addq %r12, %r14		# addq %r(214), %r(215)
	movq $0, %r12		# movq $0, %r(216)
	movq %r12, (%r14)		# movq %r(216), (%r(215))
	movq $40, %r12		# movq $40, %r(217)
	movq %rbx, %r14		# movq %r(163), %r(218)
	addq %r12, %r14		# addq %r(217), %r(218)
	movq $0, %r12		# movq $0, %r(219)
	movq %r12, (%r14)		# movq %r(219), (%r(218))
	movq $48, %r12		# movq $48, %r(220)
	movq %rbx, %r14		# movq %r(163), %r(221)
	addq %r12, %r14		# addq %r(220), %r(221)
	movq $0, %r12		# movq $0, %r(222)
	movq %r12, (%r14)		# movq %r(222), (%r(221))
	movq $56, %r12		# movq $56, %r(223)
	movq %rbx, %r14		# movq %r(163), %r(224)
	addq %r12, %r14		# addq %r(223), %r(224)
	movq $0, %r12		# movq $0, %r(225)
	movq %r12, (%r14)		# movq %r(225), (%r(224))
	movq $64, %r12		# movq $64, %r(226)
	movq %rbx, %r14		# movq %r(163), %r(227)
	addq %r12, %r14		# addq %r(226), %r(227)
	movq $0, %r12		# movq $0, %r(228)
	movq %r12, (%r14)		# movq %r(228), (%r(227))
	movq $72, %r12		# movq $72, %r(229)
	movq %rbx, %r14		# movq %r(163), %r(230)
	addq %r12, %r14		# addq %r(229), %r(230)
	movq $0, %r12		# movq $0, %r(231)
	movq %r12, (%r14)		# movq %r(231), (%r(230))
	movq %rbx, -16(%rbp)		# movq %r(257), -16(%rbp)
	.L42:		# .L42:
	movq $1, %r12		# movq $1, %r(232)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(185)
	testq $1, %rbx		# testq $1, %r(185)
	jne .L45		# jne .L45
	.L47:		# .L47:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(186)
	testq $1, %rbx		# testq $1, %r(186)
	jne .L45		# jne .L45
	.L46:		# .L46:
	movq $0, %r12		# movq $0, %r(233)
	.L45:		# .L45:
	movq $1, %rbx		# movq $1, %r(234)
	xorq %rbx, %r12		# xorq %r(234), %r(235)
	testq $1, %r12		# testq $1, %r(235)
	jne .L44		# jne .L44
	.L50:		# .L50:
	movq $1, %r13		# movq $1, %r(236)
	movq $20, %rbx		# movq $20, %r(237)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(258)
	cmpq %rbx, %r12		# cmpq %r(237), %r(258)
	jl .L48		# jl .L48
	.L49:		# .L49:
	movq $0, %r13		# movq $0, %r(238)
	.L48:		# .L48:
	movq $1, %rbx		# movq $1, %r(239)
	xorq %rbx, %r13		# xorq %r(239), %r(240)
	testq $1, %r13		# testq $1, %r(240)
	jne .L44		# jne .L44
	.L43:		# .L43:
	movq $8, %rbx		# movq $8, %r(241)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(259)
	subq %rbx, %r13		# subq %r(241), %r(242)
	movq (%r13), %rbx		# movq (%r(242)), %r(243)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(260)
	cmpq %rbx, %r12		# cmpq %r(243), %r(260)
	jge .L52		# jge .L52
	.L51:		# .L51:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(261)
	movq %rbx, %r14		# movq %r(261), %r(167)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(262)
	movq %rbx, %r13		# movq %r(262), %r(168)
	movq $8, %r12		# movq $8, %r(244)
	movq %r14, %rbx		# movq %r(167), %r(263)
	movq %rbx, -8(%rbp)		# movq %r(263), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(264)
	subq %r12, %rbx		# subq %r(244), %r(264)
	movq %rbx, -8(%rbp)		# movq %r(264), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(265)
	movq (%rbx), %rbx		# movq (%r(265)), %r(246)
	cmpq %rbx, %r13		# cmpq %r(246), %r(168)
	jae error_outofbounds		# jae error_outofbounds
	movq %r13, %rbx		# movq %r(168), %r(247)
	salq $3, %rbx		# salq $3, %r(247)
	movq %r14, %r13		# movq %r(167), %r(248)
	addq %rbx, %r13		# addq %r(247), %r(248)
	movq $10, %rbx		# movq $10, %r(249)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(266)
	imulq %r12, %rbx		# imulq %r(266), %r(250)
	movq $-8, %r12		# movq $-8, %r(251)
	addq %r12, %rbx		# addq %r(251), %r(252)
	movq %rbx, (%r13)		# movq %r(252), (%r(248))
	.L52:		# .L52:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(267)
	incq %rbx		# incq %r(267)
	movq %rbx, -24(%rbp)		# movq %r(267), -24(%rbp)
	jmp .L42		# jmp .L42
	.L44:		# .L44:
	movq $50, %rbx		# movq $50, %r(253)
	movq %rbx, %rdi		# movq %r(253), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L55(%rip), %rdi		# leaq .L55(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(188)
	leaq .L56(%rip), %rdi		# leaq .L56(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(189)
	movq %r13, %rdi		# movq %r(g), %rdi
	movq %rbx, %rsi		# movq %r(h), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(190)
	movq %r13, %rdi		# movq %r(g), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L41:		# .L41:
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
	movq $0, %r12		# movq $0, %r(268)
	cmpq %r12, %r13		# cmpq %r(268), %r(x)
	jge .L59		# jge .L59
	.L58:		# .L58:
	movq $1, %r12		# movq $1, %r(269)
	subq %r12, %r13		# subq %r(269), %r(270)
	movq %r13, %rdi		# movq %r(270), %rdi
	call _Ibar_pi		# call _Ibar_pi
	.L59:		# .L59:
	.L57:		# .L57:
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
	movq $1, %r12		# movq $1, %r(271)
	subq %r12, %r13		# subq %r(271), %r(272)
	movq %r13, %rdi		# movq %r(272), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	.L60:		# .L60:
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
	movq $1, %rbx		# movq $1, %r(273)
	movq %rbx, %rax		# movq %r(273), %rax
	jmp .L61		# jmp .L61
	.L61:		# .L61:
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
	movq $0, %rbx		# movq $0, %r(274)
	movq %rbx, %rax		# movq %r(274), %rax
	jmp .L62		# jmp .L62
	.L62:		# .L62:
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
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %r12		# movq (%r(p0)), %r(275)
	movq %r12, -16(%rbp)		# movq %r(290), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(291)
	salq $3, %rbx		# salq $3, %r(276)
	movq $8, %r12		# movq $8, %r(277)
	addq %r12, %rbx		# addq %r(277), %r(278)
	movq %rbx, %rdi		# movq %r(278), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(194)
	movq %r12, -24(%rbp)		# movq %r(292), -24(%rbp)
	.L63:		# .L63:
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(293)
	salq $3, %r14		# salq $3, %r(279)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(294)
	movq %rbx, -32(%rbp)		# movq %r(295), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(296)
	addq %r14, %r12		# addq %r(279), %r(296)
	movq %r12, -32(%rbp)		# movq %r(296), -32(%rbp)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(297)
	salq $3, %r14		# salq $3, %r(281)
	movq %r15, %rbx		# movq %r(p0), %r(287)
	movq %rbx, -8(%rbp)		# movq %r(287), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(288)
	addq %r14, %r12		# addq %r(281), %r(288)
	movq %r12, -8(%rbp)		# movq %r(288), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(289)
	movq (%rbx), %rbx		# movq (%r(289)), %r(283)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(298)
	movq %rbx, (%r12)		# movq %r(283), (%r(298))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(299)
	decq %rbx		# decq %r(299)
	movq %rbx, -16(%rbp)		# movq %r(299), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(284)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(300)
	cmpq %rbx, %r12		# cmpq %r(284), %r(300)
	jge .L63		# jge .L63
	.L64:		# .L64:
	movq $8, %rbx		# movq $8, %r(285)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(301)
	addq %rbx, %r13		# addq %r(285), %r(286)
	movq %r13, %rax		# movq %r(286), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(325)
	movq %rbx, -56(%rbp)		# movq %r(325), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(326)
	movq %rbx, -32(%rbp)		# movq %r(326), -32(%rbp)
	movq $0, %r12		# movq $0, %r(302)
	movq %r12, -24(%rbp)		# movq %r(327), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(303)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(328)
	subq %rbx, %r13		# subq %r(303), %r(304)
	movq (%r13), %r12		# movq (%r(304)), %r(305)
	movq %r12, -16(%rbp)		# movq %r(329), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(306)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(330)
	subq %rbx, %r13		# subq %r(306), %r(307)
	movq (%r13), %rbx		# movq (%r(307)), %r(308)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(331)
	addq %rbx, %r12		# addq %r(308), %r(309)
	movq %r12, -64(%rbp)		# movq %r(332), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(310)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(333)
	addq %rbx, %r13		# addq %r(310), %r(311)
	movq %r13, %rdi		# movq %r(311), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(195)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(334)
	movq %r12, (%r13)		# movq %r(334), (%r(181))
	movq $8, %r12		# movq $8, %r(312)
	addq %r12, %r13		# addq %r(312), %r(313)
	movq %r13, -40(%rbp)		# movq %r(335), -40(%rbp)
	.L65:		# .L65:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(336)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(337)
	cmpq %rbx, %r12		# cmpq %r(336), %r(337)
	jge .L67		# jge .L67
	.L66:		# .L66:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(338)
	salq $3, %r13		# salq $3, %r(314)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(339)
	movq %rbx, -48(%rbp)		# movq %r(340), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(341)
	addq %r13, %r12		# addq %r(314), %r(341)
	movq %r12, -48(%rbp)		# movq %r(341), -48(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(342)
	salq $3, %r13		# salq $3, %r(316)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(343)
	movq %rbx, -8(%rbp)		# movq %r(344), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(345)
	addq %r13, %r12		# addq %r(316), %r(345)
	movq %r12, -8(%rbp)		# movq %r(345), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(346)
	movq (%rbx), %rbx		# movq (%r(346)), %r(318)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(347)
	movq %rbx, (%r12)		# movq %r(318), (%r(347))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(348)
	incq %rbx		# incq %r(348)
	movq %rbx, -24(%rbp)		# movq %r(348), -24(%rbp)
	jmp .L65		# jmp .L65
	.L67:		# .L67:
	.L68:		# .L68:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(349)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(350)
	cmpq %r12, %rbx		# cmpq %r(350), %r(349)
	jge .L70		# jge .L70
	.L69:		# .L69:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(351)
	salq $3, %r13		# salq $3, %r(319)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(352)
	addq %r13, %r14		# addq %r(319), %r(320)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(353)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(354)
	subq %r13, %rbx		# subq %r(354), %r(321)
	salq $3, %rbx		# salq $3, %r(322)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(355)
	addq %rbx, %r12		# addq %r(322), %r(323)
	movq (%r12), %rbx		# movq (%r(323)), %r(324)
	movq %rbx, (%r14)		# movq %r(324), (%r(320))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(356)
	incq %rbx		# incq %r(356)
	movq %rbx, -24(%rbp)		# movq %r(356), -24(%rbp)
	jmp .L68		# jmp .L68
	.L70:		# .L70:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(357)
	movq %rbx, %rax		# movq %r(357), %rax
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
.L55:
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
.L56:
	.quad 5
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
