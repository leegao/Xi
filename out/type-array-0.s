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
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L17(%rip), %rdi		# leaq .L17(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(57)
	movq %r13, %rdi		# movq %r(57), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L16		# jmp .L16
	.L16:		# .L16:
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
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $16, %rbx		# movq $16, %r(83)
	movq %rbx, %rdi		# movq %r(83), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(61)
	movq $1, %r12		# movq $1, %r(84)
	movq %r12, (%r13)		# movq %r(84), (%r(61))
	movq $8, %r12		# movq $8, %r(85)
	addq %r12, %r13		# addq %r(85), %r(86)
	movq $0, %r12		# movq $0, %r(87)
	movq %r13, %rbx		# movq %r(14), %r(88)
	addq %r12, %rbx		# addq %r(87), %r(88)
	movq $10, %r12		# movq $10, %r(89)
	movq %r12, (%rbx)		# movq %r(89), (%r(88))
	movq %r13, %rdi		# movq %r(14), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(170)
	movq %rbx, -8(%rbp)		# movq %r(170), -8(%rbp)
	leaq .L20(%rip), %rdi		# leaq .L20(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(63)
	movq $1, %rbx		# movq $1, %r(91)
	movq %rbx, %r12		# movq %r(91), %r(16)
	movq $8, %r13		# movq $8, %r(92)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(171)
	subq %r13, %rbx		# subq %r(92), %r(93)
	movq (%rbx), %rbx		# movq (%r(93)), %r(94)
	movq $10, %r13		# movq $10, %r(95)
	cmpq %r13, %rbx		# cmpq %r(95), %r(94)
	je .L21		# je .L21
	.L22:		# .L22:
	movq $0, %rbx		# movq $0, %r(96)
	movq %rbx, %r12		# movq %r(96), %r(16)
	jmp .L21		# jmp .L21
	.L21:		# .L21:
	movq %r14, %rdi		# movq %r(63), %rdi
	movq %r12, %rsi		# movq %r(16), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r13		# movq $0, %r(97)
	movq $8, %r12		# movq $8, %r(98)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(172)
	subq %r12, %r14		# subq %r(98), %r(99)
	movq (%r14), %rbx		# movq (%r(99)), %r(100)
	cmpq %rbx, %r13		# cmpq %r(100), %r(97)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(101)
	salq $3, %r13		# salq $3, %r(102)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(173)
	addq %r13, %r14		# addq %r(102), %r(103)
	movq $42, %rbx		# movq $42, %r(104)
	movq %rbx, (%r14)		# movq %r(104), (%r(103))
	movq $1, %r13		# movq $1, %r(105)
	movq $8, %r12		# movq $8, %r(106)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(174)
	subq %r12, %r14		# subq %r(106), %r(107)
	movq (%r14), %rbx		# movq (%r(107)), %r(108)
	cmpq %rbx, %r13		# cmpq %r(108), %r(105)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(109)
	salq $3, %r13		# salq $3, %r(110)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(175)
	addq %r13, %r14		# addq %r(110), %r(111)
	movq $52, %rbx		# movq $52, %r(112)
	movq %rbx, (%r14)		# movq %r(112), (%r(111))
	movq $2, %r13		# movq $2, %r(113)
	movq $8, %r12		# movq $8, %r(114)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(176)
	subq %r12, %r14		# subq %r(114), %r(115)
	movq (%r14), %rbx		# movq (%r(115)), %r(116)
	cmpq %rbx, %r13		# cmpq %r(116), %r(113)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(117)
	salq $3, %r13		# salq $3, %r(118)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(177)
	addq %r13, %r14		# addq %r(118), %r(119)
	movq $62, %rbx		# movq $62, %r(120)
	movq %rbx, (%r14)		# movq %r(120), (%r(119))
	leaq .L29(%rip), %rdi		# leaq .L29(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(178)
	movq %rbx, -40(%rbp)		# movq %r(178), -40(%rbp)
	movq $1, %r12		# movq $1, %r(122)
	movq %r12, -32(%rbp)		# movq %r(179), -32(%rbp)
	movq $0, %r13		# movq $0, %r(123)
	movq $8, %r12		# movq $8, %r(124)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(180)
	movq %r14, -24(%rbp)		# movq %r(181), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(182)
	subq %r12, %rbx		# subq %r(124), %r(182)
	movq %rbx, -24(%rbp)		# movq %r(182), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(183)
	movq (%rbx), %rbx		# movq (%r(183)), %r(126)
	cmpq %rbx, %r13		# cmpq %r(126), %r(123)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(127)
	salq $3, %r13		# salq $3, %r(128)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(184)
	addq %r13, %rbx		# addq %r(128), %r(129)
	movq (%rbx), %rbx		# movq (%r(129)), %r(130)
	movq $42, %r12		# movq $42, %r(131)
	cmpq %r12, %rbx		# cmpq %r(131), %r(130)
	je .L32		# je .L32
	.L33:		# .L33:
	movq $0, %r12		# movq $0, %r(132)
	movq %r12, -32(%rbp)		# movq %r(185), -32(%rbp)
	jmp .L32		# jmp .L32
	.L32:		# .L32:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(186)
	movq %rbx, %rdi		# movq %r(186), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(187)
	movq %rbx, %rsi		# movq %r(187), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L34(%rip), %rdi		# leaq .L34(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(67)
	movq $1, %r12		# movq $1, %r(134)
	movq %r12, -72(%rbp)		# movq %r(201), -72(%rbp)
	movq $1, %r14		# movq $1, %r(135)
	movq $8, %r12		# movq $8, %r(136)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(188)
	movq %rbx, -16(%rbp)		# movq %r(189), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(190)
	subq %r12, %rbx		# subq %r(136), %r(190)
	movq %rbx, -16(%rbp)		# movq %r(190), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(191)
	movq (%rbx), %rbx		# movq (%r(191)), %r(138)
	cmpq %rbx, %r14		# cmpq %r(138), %r(135)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(139)
	salq $3, %r14		# salq $3, %r(140)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(192)
	addq %r14, %rbx		# addq %r(140), %r(141)
	movq (%rbx), %rbx		# movq (%r(141)), %r(142)
	movq $52, %r12		# movq $52, %r(143)
	cmpq %r12, %rbx		# cmpq %r(143), %r(142)
	je .L37		# je .L37
	.L38:		# .L38:
	movq $0, %r12		# movq $0, %r(144)
	movq %r12, -72(%rbp)		# movq %r(202), -72(%rbp)
	jmp .L37		# jmp .L37
	.L37:		# .L37:
	movq %r13, %rdi		# movq %r(67), %rdi
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(203)
	movq %rbx, %rsi		# movq %r(203), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L39(%rip), %rdi		# leaq .L39(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(204)
	movq %rbx, -64(%rbp)		# movq %r(204), -64(%rbp)
	movq $1, %r13		# movq $1, %r(146)
	movq $2, %r12		# movq $2, %r(147)
	movq $8, %rbx		# movq $8, %r(205)
	movq %rbx, -80(%rbp)		# movq %r(205), -80(%rbp)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(193)
	movq %r14, -48(%rbp)		# movq %r(194), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(195)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(206)
	subq %r14, %rbx		# subq %r(206), %r(195)
	movq %rbx, -48(%rbp)		# movq %r(195), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(196)
	movq (%rbx), %rbx		# movq (%r(196)), %r(150)
	cmpq %rbx, %r12		# cmpq %r(150), %r(147)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r14		# movq $2, %r(151)
	salq $3, %r14		# salq $3, %r(152)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(197)
	addq %r14, %rbx		# addq %r(152), %r(153)
	movq (%rbx), %rbx		# movq (%r(153)), %r(154)
	movq $62, %r12		# movq $62, %r(155)
	cmpq %r12, %rbx		# cmpq %r(155), %r(154)
	je .L42		# je .L42
	.L43:		# .L43:
	movq $0, %r13		# movq $0, %r(156)
	jmp .L42		# jmp .L42
	.L42:		# .L42:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(207)
	movq %rbx, %rdi		# movq %r(207), %rdi
	movq %r13, %rsi		# movq %r(31), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $8, %rbx		# movq $8, %r(157)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(198)
	subq %rbx, %r13		# subq %r(157), %r(158)
	movq (%r13), %rbx		# movq (%r(158)), %r(159)
	movq %rbx, %rdi		# movq %r(159), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(71)
	movq %rbx, %rdi		# movq %r(71), %rdi
	call _Iprint_pai		# call _Iprint_pai
	leaq .L44(%rip), %rdi		# leaq .L44(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(73)
	movq $1, %rbx		# movq $1, %r(161)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(199)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(208)
	cmpq %r13, %r14		# cmpq %r(199), %r(208)
	je .L45		# je .L45
	.L46:		# .L46:
	movq $0, %rbx		# movq $0, %r(162)
	jmp .L45		# jmp .L45
	.L45:		# .L45:
	movq %r12, %rdi		# movq %r(73), %rdi
	movq %rbx, %rsi		# movq %r(33), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L47(%rip), %rdi		# leaq .L47(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(75)
	movq $1, %rbx		# movq $1, %r(164)
	movq %rbx, %r12		# movq %r(164), %r(34)
	movq $8, %r13		# movq $8, %r(165)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(200)
	subq %r13, %rbx		# subq %r(165), %r(166)
	movq (%rbx), %rbx		# movq (%r(166)), %r(167)
	movq $10, %r13		# movq $10, %r(168)
	cmpq %r13, %rbx		# cmpq %r(168), %r(167)
	je .L48		# je .L48
	.L49:		# .L49:
	movq $0, %rbx		# movq $0, %r(169)
	movq %rbx, %r12		# movq %r(169), %r(34)
	jmp .L48		# jmp .L48
	.L48:		# .L48:
	movq %r14, %rdi		# movq %r(75), %rdi
	movq %r12, %rsi		# movq %r(34), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L18		# jmp .L18
	.L18:		# .L18:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(252)
	movq %rbx, -48(%rbp)		# movq %r(252), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(209)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(253)
	subq %rbx, %r13		# subq %r(209), %r(210)
	movq (%r13), %r12		# movq (%r(210)), %r(211)
	movq %r12, -24(%rbp)		# movq %r(254), -24(%rbp)
	movq $1, %r12		# movq $1, %r(212)
	movq %r12, -56(%rbp)		# movq %r(255), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(213)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(256)
	cmpq %rbx, %r12		# cmpq %r(213), %r(256)
	jne .L50		# jne .L50
	.L51:		# .L51:
	movq $0, %rbx		# movq $0, %r(214)
	movq %rbx, %rax		# movq %r(214), %rax
	jmp .L52		# jmp .L52
	.L52:		# .L52:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L50:		# .L50:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(257)
	salq $3, %r12		# salq $3, %r(215)
	movq %r12, %rdi		# movq %r(215), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(77)
	movq $1, %r12		# movq $1, %r(216)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(258)
	movq %r14, -40(%rbp)		# movq %r(259), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(260)
	subq %r12, %rbx		# subq %r(216), %r(260)
	movq %rbx, -40(%rbp)		# movq %r(260), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(261)
	movq %rbx, (%r13)		# movq %r(261), (%r(77))
	movq $8, %rbx		# movq $8, %r(218)
	addq %rbx, %r13		# addq %r(218), %r(219)
	movq %r13, -32(%rbp)		# movq %r(262), -32(%rbp)
	jmp .L53		# jmp .L53
	.L53:		# .L53:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(263)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(264)
	cmpq %rbx, %r12		# cmpq %r(263), %r(264)
	jge .L54		# jge .L54
	.L55:		# .L55:
	movq $8, %rbx		# movq $8, %r(220)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(265)
	subq %rbx, %r13		# subq %r(220), %r(221)
	movq (%r13), %rbx		# movq (%r(221)), %r(222)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(266)
	cmpq %rbx, %r12		# cmpq %r(222), %r(266)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(223)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(267)
	subq %rbx, %r14		# subq %r(223), %r(224)
	movq $8, %r13		# movq $8, %r(225)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(268)
	movq %r12, -16(%rbp)		# movq %r(269), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(270)
	subq %r13, %rbx		# subq %r(225), %r(270)
	movq %rbx, -16(%rbp)		# movq %r(270), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(271)
	movq (%rbx), %rbx		# movq (%r(271)), %r(227)
	cmpq %rbx, %r14		# cmpq %r(227), %r(44)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(228)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(272)
	addq %r14, %rbx		# addq %r(228), %r(229)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(273)
	salq $3, %r14		# salq $3, %r(230)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(274)
	movq %r12, -72(%rbp)		# movq %r(275), -72(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(276)
	addq %r14, %r13		# addq %r(230), %r(276)
	movq %r13, -72(%rbp)		# movq %r(276), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(277)
	movq (%r12), %r12		# movq (%r(277)), %r(232)
	movq %r12, (%rbx)		# movq %r(232), (%r(229))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(278)
	incq %rbx		# incq %r(278)
	movq %rbx, -56(%rbp)		# movq %r(278), -56(%rbp)
	jmp .L53		# jmp .L53
	.L54:		# .L54:
	movq $0, %r13		# movq $0, %r(233)
	movq $8, %r12		# movq $8, %r(234)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(279)
	subq %r12, %r14		# subq %r(234), %r(235)
	movq (%r14), %rbx		# movq (%r(235)), %r(236)
	cmpq %rbx, %r13		# cmpq %r(236), %r(233)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(237)
	salq $3, %r13		# salq $3, %r(238)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(280)
	addq %r13, %rbx		# addq %r(238), %r(239)
	movq (%rbx), %r12		# movq (%r(239)), %r(240)
	movq %r12, -56(%rbp)		# movq %r(281), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(241)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(282)
	addq %rbx, %r12		# addq %r(241), %r(242)
	salq $3, %r12		# salq $3, %r(243)
	movq %r12, %rdi		# movq %r(243), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(78)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(283)
	movq %r12, (%rbx)		# movq %r(283), (%r(78))
	movq $8, %r12		# movq $8, %r(244)
	addq %r12, %rbx		# addq %r(244), %r(245)
	movq %rbx, -80(%rbp)		# movq %r(284), -80(%rbp)
	jmp .L59		# jmp .L59
	.L59:		# .L59:
	movq $0, %rbx		# movq $0, %r(246)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(285)
	cmpq %rbx, %r12		# cmpq %r(246), %r(285)
	jle .L60		# jle .L60
	.L61:		# .L61:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(286)
	decq %rbx		# decq %r(286)
	movq %rbx, -56(%rbp)		# movq %r(286), -56(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(287)
	movq %rbx, %rdi		# movq %r(287), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(288)
	movq %rbx, -88(%rbp)		# movq %r(288), -88(%rbp)
	movq $8, %r12		# movq $8, %r(247)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(289)
	movq %r13, -64(%rbp)		# movq %r(290), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(291)
	subq %r12, %rbx		# subq %r(247), %r(291)
	movq %rbx, -64(%rbp)		# movq %r(291), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(292)
	movq (%rbx), %rbx		# movq (%r(292)), %r(249)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(293)
	cmpq %rbx, %r12		# cmpq %r(249), %r(293)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(294)
	salq $3, %r13		# salq $3, %r(250)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(295)
	movq %rbx, -8(%rbp)		# movq %r(296), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(297)
	addq %r13, %r12		# addq %r(250), %r(297)
	movq %r12, -8(%rbp)		# movq %r(297), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(298)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(299)
	movq %r12, (%rbx)		# movq %r(299), (%r(298))
	jmp .L59		# jmp .L59
	.L60:		# .L60:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(300)
	movq %rbx, %rax		# movq %r(300), %rax
	jmp .L52		# jmp .L52
	
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
	movq %rdi, %rbx		# movq %rdi, %r(316)
	movq %rbx, -24(%rbp)		# movq %r(316), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(317)
	movq (%rbx), %rbx		# movq (%r(317)), %r(301)
	movq %rbx, %r12		# movq %r(t10), %r(302)
	salq $3, %r12		# salq $3, %r(302)
	movq $8, %r13		# movq $8, %r(303)
	addq %r13, %r12		# addq %r(303), %r(304)
	movq %r12, %rdi		# movq %r(304), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(318)
	movq %r12, -32(%rbp)		# movq %r(318), -32(%rbp)
	jmp .L63		# jmp .L63
	.L63:		# .L63:
	movq %rbx, %r14		# movq %r(t10), %r(305)
	salq $3, %r14		# salq $3, %r(305)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(319)
	movq %r13, -16(%rbp)		# movq %r(320), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(321)
	addq %r14, %r12		# addq %r(305), %r(321)
	movq %r12, -16(%rbp)		# movq %r(321), -16(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(307)
	salq $3, %r14		# salq $3, %r(307)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(322)
	movq %r13, -8(%rbp)		# movq %r(313), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(314)
	addq %r14, %r12		# addq %r(307), %r(314)
	movq %r12, -8(%rbp)		# movq %r(314), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(315)
	movq (%r12), %r12		# movq (%r(315)), %r(309)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(323)
	movq %r12, (%r13)		# movq %r(309), (%r(323))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(310)
	cmpq %r12, %rbx		# cmpq %r(310), %r(t10)
	jge .L63		# jge .L63
	.L64:		# .L64:
	movq $8, %rbx		# movq $8, %r(311)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(324)
	addq %rbx, %r13		# addq %r(311), %r(312)
	movq %r13, %rax		# movq %r(312), %rax
	jmp .L65		# jmp .L65
	.L65:		# .L65:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L34:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L20:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L17:
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
.L39:
	.quad 2
	.quad 35
	.quad 52
	.text

#.section .rodata
.align 8
.L47:
	.quad 2
	.quad 35
	.quad 54
	.text

#.section .rodata
.align 8
.L29:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L44:
	.quad 2
	.quad 35
	.quad 53
	.text

error_outofbounds:
call _I_outOfBounds_p
