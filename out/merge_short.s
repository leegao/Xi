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
	movq $168, %rbx		# movq $168, %r(93)
	movq %rbx, %rdi		# movq %r(93), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(80)
	movq $20, %r12		# movq $20, %r(94)
	movq %r12, (%r13)		# movq %r(94), (%r(80))
	movq $8, %r12		# movq $8, %r(95)
	addq %r12, %r13		# addq %r(95), %r(96)
	movq %r13, %r14		# movq %r(96), %r(11)
	movq $0, %rbx		# movq $0, %r(97)
	movq %r14, %r13		# movq %r(11), %r(98)
	addq %rbx, %r13		# addq %r(97), %r(98)
	movq $20, %rbx		# movq $20, %r(99)
	movq %rbx, (%r13)		# movq %r(99), (%r(98))
	movq $8, %rbx		# movq $8, %r(100)
	movq %r14, %r13		# movq %r(11), %r(101)
	addq %rbx, %r13		# addq %r(100), %r(101)
	movq $19, %rbx		# movq $19, %r(102)
	movq %rbx, (%r13)		# movq %r(102), (%r(101))
	movq $16, %rbx		# movq $16, %r(103)
	movq %r14, %r13		# movq %r(11), %r(104)
	addq %rbx, %r13		# addq %r(103), %r(104)
	movq $18, %rbx		# movq $18, %r(105)
	movq %rbx, (%r13)		# movq %r(105), (%r(104))
	movq $24, %rbx		# movq $24, %r(106)
	movq %r14, %r13		# movq %r(11), %r(107)
	addq %rbx, %r13		# addq %r(106), %r(107)
	movq $14, %rbx		# movq $14, %r(108)
	movq %rbx, (%r13)		# movq %r(108), (%r(107))
	movq $32, %rbx		# movq $32, %r(109)
	movq %r14, %r13		# movq %r(11), %r(110)
	addq %rbx, %r13		# addq %r(109), %r(110)
	movq $2, %rbx		# movq $2, %r(111)
	movq %rbx, (%r13)		# movq %r(111), (%r(110))
	movq $40, %rbx		# movq $40, %r(112)
	movq %r14, %r13		# movq %r(11), %r(113)
	addq %rbx, %r13		# addq %r(112), %r(113)
	movq $3, %rbx		# movq $3, %r(114)
	movq %rbx, (%r13)		# movq %r(114), (%r(113))
	movq $48, %rbx		# movq $48, %r(115)
	movq %r14, %r13		# movq %r(11), %r(116)
	addq %rbx, %r13		# addq %r(115), %r(116)
	movq $6, %rbx		# movq $6, %r(117)
	movq %rbx, (%r13)		# movq %r(117), (%r(116))
	movq $56, %rbx		# movq $56, %r(118)
	movq %r14, %r13		# movq %r(11), %r(119)
	addq %rbx, %r13		# addq %r(118), %r(119)
	movq $5, %rbx		# movq $5, %r(120)
	movq %rbx, (%r13)		# movq %r(120), (%r(119))
	movq $64, %rbx		# movq $64, %r(121)
	movq %r14, %r13		# movq %r(11), %r(122)
	addq %rbx, %r13		# addq %r(121), %r(122)
	movq $1, %rbx		# movq $1, %r(123)
	movq %rbx, (%r13)		# movq %r(123), (%r(122))
	movq $72, %rbx		# movq $72, %r(124)
	movq %r14, %r13		# movq %r(11), %r(125)
	addq %rbx, %r13		# addq %r(124), %r(125)
	movq $15, %rbx		# movq $15, %r(126)
	movq %rbx, (%r13)		# movq %r(126), (%r(125))
	movq $80, %rbx		# movq $80, %r(127)
	movq %r14, %r13		# movq %r(11), %r(128)
	addq %rbx, %r13		# addq %r(127), %r(128)
	movq $16, %rbx		# movq $16, %r(129)
	movq %rbx, (%r13)		# movq %r(129), (%r(128))
	movq $88, %rbx		# movq $88, %r(130)
	movq %r14, %r13		# movq %r(11), %r(131)
	addq %rbx, %r13		# addq %r(130), %r(131)
	movq $11, %rbx		# movq $11, %r(132)
	movq %rbx, (%r13)		# movq %r(132), (%r(131))
	movq $96, %rbx		# movq $96, %r(133)
	movq %r14, %r13		# movq %r(11), %r(134)
	addq %rbx, %r13		# addq %r(133), %r(134)
	movq $13, %rbx		# movq $13, %r(135)
	movq %rbx, (%r13)		# movq %r(135), (%r(134))
	movq $104, %rbx		# movq $104, %r(136)
	movq %r14, %r13		# movq %r(11), %r(137)
	addq %rbx, %r13		# addq %r(136), %r(137)
	movq $12, %rbx		# movq $12, %r(138)
	movq %rbx, (%r13)		# movq %r(138), (%r(137))
	movq $112, %rbx		# movq $112, %r(139)
	movq %r14, %r13		# movq %r(11), %r(140)
	addq %rbx, %r13		# addq %r(139), %r(140)
	movq $7, %rbx		# movq $7, %r(141)
	movq %rbx, (%r13)		# movq %r(141), (%r(140))
	movq $120, %rbx		# movq $120, %r(142)
	movq %r14, %r13		# movq %r(11), %r(143)
	addq %rbx, %r13		# addq %r(142), %r(143)
	movq $8, %rbx		# movq $8, %r(144)
	movq %rbx, (%r13)		# movq %r(144), (%r(143))
	movq $128, %rbx		# movq $128, %r(145)
	movq %r14, %r13		# movq %r(11), %r(146)
	addq %rbx, %r13		# addq %r(145), %r(146)
	movq $9, %rbx		# movq $9, %r(147)
	movq %rbx, (%r13)		# movq %r(147), (%r(146))
	movq $136, %rbx		# movq $136, %r(148)
	movq %r14, %r13		# movq %r(11), %r(149)
	addq %rbx, %r13		# addq %r(148), %r(149)
	movq $17, %rbx		# movq $17, %r(150)
	movq %rbx, (%r13)		# movq %r(150), (%r(149))
	movq $144, %rbx		# movq $144, %r(151)
	movq %r14, %r13		# movq %r(11), %r(152)
	addq %rbx, %r13		# addq %r(151), %r(152)
	movq $10, %rbx		# movq $10, %r(153)
	movq %rbx, (%r13)		# movq %r(153), (%r(152))
	movq $152, %rbx		# movq $152, %r(154)
	movq %r14, %r13		# movq %r(11), %r(155)
	addq %rbx, %r13		# addq %r(154), %r(155)
	movq $4, %rbx		# movq $4, %r(156)
	movq %rbx, (%r13)		# movq %r(156), (%r(155))
	movq $168, %rbx		# movq $168, %r(157)
	movq %rbx, %rdi		# movq %r(157), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(81)
	movq $20, %rbx		# movq $20, %r(158)
	movq %rbx, (%r13)		# movq %r(158), (%r(81))
	movq $8, %rbx		# movq $8, %r(159)
	addq %rbx, %r13		# addq %r(159), %r(160)
	movq %r13, %r15		# movq %r(160), %r(14)
	movq $0, %rbx		# movq $0, %r(161)
	movq %r15, %r13		# movq %r(14), %r(162)
	addq %rbx, %r13		# addq %r(161), %r(162)
	movq $1, %rbx		# movq $1, %r(163)
	movq %rbx, (%r13)		# movq %r(163), (%r(162))
	movq $8, %rbx		# movq $8, %r(164)
	movq %r15, %r13		# movq %r(14), %r(165)
	addq %rbx, %r13		# addq %r(164), %r(165)
	movq $2, %rbx		# movq $2, %r(166)
	movq %rbx, (%r13)		# movq %r(166), (%r(165))
	movq $16, %rbx		# movq $16, %r(167)
	movq %r15, %r13		# movq %r(14), %r(168)
	addq %rbx, %r13		# addq %r(167), %r(168)
	movq $3, %rbx		# movq $3, %r(169)
	movq %rbx, (%r13)		# movq %r(169), (%r(168))
	movq $24, %rbx		# movq $24, %r(170)
	movq %r15, %r13		# movq %r(14), %r(171)
	addq %rbx, %r13		# addq %r(170), %r(171)
	movq $4, %rbx		# movq $4, %r(172)
	movq %rbx, (%r13)		# movq %r(172), (%r(171))
	movq $32, %rbx		# movq $32, %r(173)
	movq %r15, %r13		# movq %r(14), %r(174)
	addq %rbx, %r13		# addq %r(173), %r(174)
	movq $5, %rbx		# movq $5, %r(175)
	movq %rbx, (%r13)		# movq %r(175), (%r(174))
	movq $40, %rbx		# movq $40, %r(176)
	movq %r15, %r13		# movq %r(14), %r(177)
	addq %rbx, %r13		# addq %r(176), %r(177)
	movq $6, %rbx		# movq $6, %r(178)
	movq %rbx, (%r13)		# movq %r(178), (%r(177))
	movq $48, %rbx		# movq $48, %r(179)
	movq %r15, %r13		# movq %r(14), %r(180)
	addq %rbx, %r13		# addq %r(179), %r(180)
	movq $7, %rbx		# movq $7, %r(181)
	movq %rbx, (%r13)		# movq %r(181), (%r(180))
	movq $56, %rbx		# movq $56, %r(182)
	movq %r15, %r13		# movq %r(14), %r(183)
	addq %rbx, %r13		# addq %r(182), %r(183)
	movq $8, %rbx		# movq $8, %r(184)
	movq %rbx, (%r13)		# movq %r(184), (%r(183))
	movq $64, %rbx		# movq $64, %r(185)
	movq %r15, %r13		# movq %r(14), %r(186)
	addq %rbx, %r13		# addq %r(185), %r(186)
	movq $9, %rbx		# movq $9, %r(187)
	movq %rbx, (%r13)		# movq %r(187), (%r(186))
	movq $72, %rbx		# movq $72, %r(188)
	movq %r15, %r13		# movq %r(14), %r(189)
	addq %rbx, %r13		# addq %r(188), %r(189)
	movq $10, %rbx		# movq $10, %r(190)
	movq %rbx, (%r13)		# movq %r(190), (%r(189))
	movq $80, %rbx		# movq $80, %r(191)
	movq %r15, %r13		# movq %r(14), %r(192)
	addq %rbx, %r13		# addq %r(191), %r(192)
	movq $11, %rbx		# movq $11, %r(193)
	movq %rbx, (%r13)		# movq %r(193), (%r(192))
	movq $88, %rbx		# movq $88, %r(194)
	movq %r15, %r13		# movq %r(14), %r(195)
	addq %rbx, %r13		# addq %r(194), %r(195)
	movq $12, %rbx		# movq $12, %r(196)
	movq %rbx, (%r13)		# movq %r(196), (%r(195))
	movq $96, %rbx		# movq $96, %r(197)
	movq %r15, %r13		# movq %r(14), %r(198)
	addq %rbx, %r13		# addq %r(197), %r(198)
	movq $13, %rbx		# movq $13, %r(199)
	movq %rbx, (%r13)		# movq %r(199), (%r(198))
	movq $104, %rbx		# movq $104, %r(200)
	movq %r15, %r13		# movq %r(14), %r(201)
	addq %rbx, %r13		# addq %r(200), %r(201)
	movq $14, %rbx		# movq $14, %r(202)
	movq %rbx, (%r13)		# movq %r(202), (%r(201))
	movq $112, %rbx		# movq $112, %r(203)
	movq %r15, %r13		# movq %r(14), %r(204)
	addq %rbx, %r13		# addq %r(203), %r(204)
	movq $15, %rbx		# movq $15, %r(205)
	movq %rbx, (%r13)		# movq %r(205), (%r(204))
	movq $120, %rbx		# movq $120, %r(206)
	movq %r15, %r13		# movq %r(14), %r(207)
	addq %rbx, %r13		# addq %r(206), %r(207)
	movq $16, %rbx		# movq $16, %r(208)
	movq %rbx, (%r13)		# movq %r(208), (%r(207))
	movq $128, %rbx		# movq $128, %r(209)
	movq %r15, %r13		# movq %r(14), %r(210)
	addq %rbx, %r13		# addq %r(209), %r(210)
	movq $17, %rbx		# movq $17, %r(211)
	movq %rbx, (%r13)		# movq %r(211), (%r(210))
	movq $136, %rbx		# movq $136, %r(212)
	movq %r15, %r13		# movq %r(14), %r(213)
	addq %rbx, %r13		# addq %r(212), %r(213)
	movq $18, %rbx		# movq $18, %r(214)
	movq %rbx, (%r13)		# movq %r(214), (%r(213))
	movq $144, %rbx		# movq $144, %r(215)
	movq %r15, %r13		# movq %r(14), %r(216)
	addq %rbx, %r13		# addq %r(215), %r(216)
	movq $19, %rbx		# movq $19, %r(217)
	movq %rbx, (%r13)		# movq %r(217), (%r(216))
	movq $152, %rbx		# movq $152, %r(218)
	movq %r15, %r12		# movq %r(14), %r(219)
	addq %rbx, %r12		# addq %r(218), %r(219)
	movq $20, %rbx		# movq $20, %r(220)
	movq %rbx, (%r12)		# movq %r(220), (%r(219))
	movq $0, %rbx		# movq $0, %r(221)
	movq $19, %r13		# movq $19, %r(222)
	movq %r14, %rdi		# movq %r(11), %rdi
	movq %rbx, %rsi		# movq %r(221), %rsi
	movq %r13, %rdx		# movq %r(222), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq %r14, %rdi		# movq %r(11), %rdi
	movq %r15, %rsi		# movq %r(14), %rsi
	call _IassertEqual_paiai		# call _IassertEqual_paiai
	jmp .L10		# jmp .L10
	.L10:		# .L10:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imerge_paiii
_Imerge_paiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $336, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(316)
	movq %rbx, -208(%rbp)		# movq %r(316), -208(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(317)
	movq %rbx, -288(%rbp)		# movq %r(317), -288(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(318)
	movq %rbx, -136(%rbp)		# movq %r(318), -136(%rbp)
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(319)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(320)
	cmpq %r12, %rbx		# cmpq %r(320), %r(319)
	jl .L13		# jl .L13
	.L12:		# .L12:
	jmp .L11		# jmp .L11
	.L11:		# .L11:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $336, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L13:		# .L13:
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(321)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(322)
	addq %r12, %r13		# addq %r(322), %r(223)
	movq $2, %r12		# movq $2, %r(224)
	movq %r13, %rax		# movq %r(223), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(224)
	movq %rax, %r12		# movq %rax, %r(225)
	movq %r12, -184(%rbp)		# movq %r(323), -184(%rbp)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(324)
	movq %rbx, %rdi		# movq %r(324), %rdi
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(325)
	movq %rbx, %rsi		# movq %r(325), %rsi
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(326)
	movq %rbx, %rdx		# movq %r(326), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq $1, %rbx		# movq $1, %r(226)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(327)
	addq %rbx, %r13		# addq %r(226), %r(227)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(328)
	movq %rbx, %rdi		# movq %r(328), %rdi
	movq %r13, %rsi		# movq %r(227), %rsi
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(329)
	movq %rbx, %rdx		# movq %r(329), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq $16, %rbx		# movq $16, %r(228)
	movq %rbx, %rdi		# movq %r(228), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(86)
	movq $1, %r12		# movq $1, %r(229)
	movq %r12, (%rbx)		# movq %r(229), (%r(86))
	movq $8, %r12		# movq $8, %r(330)
	movq %r12, -224(%rbp)		# movq %r(330), -224(%rbp)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(331)
	addq %r12, %rbx		# addq %r(331), %r(231)
	movq %rbx, -64(%rbp)		# movq %r(332), -64(%rbp)
	movq $0, %r12		# movq $0, %r(232)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(333)
	movq %r13, -296(%rbp)		# movq %r(334), -296(%rbp)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(335)
	addq %r12, %rbx		# addq %r(232), %r(335)
	movq %rbx, -296(%rbp)		# movq %r(335), -296(%rbp)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(336)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(337)
	subq %r12, %r13		# subq %r(337), %r(234)
	movq $1, %r12		# movq $1, %r(338)
	movq %r12, -320(%rbp)		# movq %r(338), -320(%rbp)
	movq -320(%rbp), %r12		# movq -320(%rbp), %r(339)
	addq %r12, %r13		# addq %r(339), %r(236)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(340)
	movq %r13, (%r12)		# movq %r(236), (%r(340))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(341)
	movq %rbx, %rdi		# movq %r(341), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(342)
	movq %rbx, -128(%rbp)		# movq %r(342), -128(%rbp)
	movq $0, %r12		# movq $0, %r(237)
	movq %r12, -72(%rbp)		# movq %r(343), -72(%rbp)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(344)
	movq %r12, -192(%rbp)		# movq %r(345), -192(%rbp)
	movq $1, %r12		# movq $1, %r(238)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(346)
	movq %r13, -176(%rbp)		# movq %r(347), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(348)
	addq %r12, %rbx		# addq %r(238), %r(348)
	movq %rbx, -176(%rbp)		# movq %r(348), -176(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(349)
	movq %r12, -200(%rbp)		# movq %r(350), -200(%rbp)
	jmp .L15		# jmp .L15
	.L15:		# .L15:
	movq $1, %r13		# movq $1, %r(240)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(351)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(352)
	cmpq %rbx, %r12		# cmpq %r(351), %r(352)
	jle .L18		# jle .L18
	.L19:		# .L19:
	movq $0, %r13		# movq $0, %r(241)
	jmp .L18		# jmp .L18
	.L18:		# .L18:
	movq $1, %rbx		# movq $1, %r(353)
	movq %rbx, -144(%rbp)		# movq %r(353), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(354)
	xorq %rbx, %r13		# xorq %r(354), %r(243)
	testq $1, %r13		# testq $1, %r(243)
	jne .L17		# jne .L17
	.L22:		# .L22:
	movq $1, %r13		# movq $1, %r(244)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(355)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(356)
	cmpq %rbx, %r12		# cmpq %r(355), %r(356)
	jle .L20		# jle .L20
	.L21:		# .L21:
	movq $0, %r13		# movq $0, %r(245)
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq $1, %rbx		# movq $1, %r(357)
	movq %rbx, -304(%rbp)		# movq %r(357), -304(%rbp)
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(358)
	xorq %rbx, %r13		# xorq %r(358), %r(247)
	testq $1, %r13		# testq $1, %r(247)
	jne .L17		# jne .L17
	.L16:		# .L16:
	movq $8, %r12		# movq $8, %r(248)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(359)
	movq %r13, -40(%rbp)		# movq %r(360), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(361)
	subq %r12, %rbx		# subq %r(248), %r(361)
	movq %rbx, -40(%rbp)		# movq %r(361), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(362)
	movq (%rbx), %rbx		# movq (%r(362)), %r(250)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(363)
	cmpq %rbx, %r12		# cmpq %r(250), %r(363)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(251)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(364)
	movq %r13, -80(%rbp)		# movq %r(365), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(366)
	subq %r12, %rbx		# subq %r(251), %r(366)
	movq %rbx, -80(%rbp)		# movq %r(366), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(367)
	movq (%rbx), %rbx		# movq (%r(367)), %r(253)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(368)
	cmpq %rbx, %r12		# cmpq %r(253), %r(368)
	jae error_outofbounds		# jae error_outofbounds
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(369)
	salq $3, %r13		# salq $3, %r(254)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(370)
	movq %rbx, -232(%rbp)		# movq %r(371), -232(%rbp)
	movq -232(%rbp), %r12		# movq -232(%rbp), %r(372)
	addq %r13, %r12		# addq %r(254), %r(372)
	movq %r12, -232(%rbp)		# movq %r(372), -232(%rbp)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(373)
	movq (%rbx), %rbx		# movq (%r(373)), %r(374)
	movq %rbx, -152(%rbp)		# movq %r(374), -152(%rbp)
	movq -200(%rbp), %r13		# movq -200(%rbp), %r(375)
	salq $3, %r13		# salq $3, %r(257)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(376)
	movq %rbx, -104(%rbp)		# movq %r(377), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(378)
	addq %r13, %r12		# addq %r(257), %r(378)
	movq %r12, -104(%rbp)		# movq %r(378), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(379)
	movq (%rbx), %rbx		# movq (%r(379)), %r(259)
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(380)
	cmpq %rbx, %r12		# cmpq %r(259), %r(380)
	jg .L28		# jg .L28
	.L27:		# .L27:
	movq $8, %r12		# movq $8, %r(260)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(381)
	movq %r13, -56(%rbp)		# movq %r(382), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(383)
	subq %r12, %rbx		# subq %r(260), %r(383)
	movq %rbx, -56(%rbp)		# movq %r(383), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(384)
	movq (%rbx), %rbx		# movq (%r(384)), %r(262)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(385)
	cmpq %rbx, %r12		# cmpq %r(262), %r(385)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(263)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(386)
	movq %r13, -256(%rbp)		# movq %r(387), -256(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(388)
	subq %r12, %rbx		# subq %r(263), %r(388)
	movq %rbx, -256(%rbp)		# movq %r(388), -256(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(389)
	movq (%rbx), %rbx		# movq (%r(389)), %r(265)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(390)
	cmpq %rbx, %r12		# cmpq %r(265), %r(390)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(391)
	salq $3, %r13		# salq $3, %r(266)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(392)
	movq %rbx, -248(%rbp)		# movq %r(393), -248(%rbp)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(394)
	addq %r13, %r12		# addq %r(266), %r(394)
	movq %r12, -248(%rbp)		# movq %r(394), -248(%rbp)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(395)
	salq $3, %r13		# salq $3, %r(268)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(396)
	movq %rbx, -280(%rbp)		# movq %r(397), -280(%rbp)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(398)
	addq %r13, %r12		# addq %r(268), %r(398)
	movq %r12, -280(%rbp)		# movq %r(398), -280(%rbp)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(399)
	movq (%rbx), %rbx		# movq (%r(399)), %r(270)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(400)
	movq %rbx, (%r12)		# movq %r(270), (%r(400))
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(401)
	incq %rbx		# incq %r(401)
	movq %rbx, -192(%rbp)		# movq %r(401), -192(%rbp)
	jmp .L33		# jmp .L33
	.L33:		# .L33:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(402)
	incq %rbx		# incq %r(402)
	movq %rbx, -72(%rbp)		# movq %r(402), -72(%rbp)
	jmp .L15		# jmp .L15
	.L28:		# .L28:
	movq $8, %r12		# movq $8, %r(271)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(403)
	movq %r13, -24(%rbp)		# movq %r(404), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(405)
	subq %r12, %rbx		# subq %r(271), %r(405)
	movq %rbx, -24(%rbp)		# movq %r(405), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(406)
	movq (%rbx), %rbx		# movq (%r(406)), %r(273)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(407)
	cmpq %rbx, %r12		# cmpq %r(273), %r(407)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(274)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(408)
	movq %r13, -120(%rbp)		# movq %r(409), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(410)
	subq %r12, %rbx		# subq %r(274), %r(410)
	movq %rbx, -120(%rbp)		# movq %r(410), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(411)
	movq (%rbx), %rbx		# movq (%r(411)), %r(276)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(412)
	cmpq %rbx, %r12		# cmpq %r(276), %r(412)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(413)
	salq $3, %r13		# salq $3, %r(277)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(414)
	movq %rbx, -160(%rbp)		# movq %r(415), -160(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(416)
	addq %r13, %r12		# addq %r(277), %r(416)
	movq %r12, -160(%rbp)		# movq %r(416), -160(%rbp)
	movq -200(%rbp), %r13		# movq -200(%rbp), %r(417)
	salq $3, %r13		# salq $3, %r(279)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(418)
	movq %rbx, -32(%rbp)		# movq %r(419), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(420)
	addq %r13, %r12		# addq %r(279), %r(420)
	movq %r12, -32(%rbp)		# movq %r(420), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(421)
	movq (%rbx), %rbx		# movq (%r(421)), %r(281)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(422)
	movq %rbx, (%r12)		# movq %r(281), (%r(422))
	movq -200(%rbp), %rbx		# movq -200(%rbp), %r(423)
	incq %rbx		# incq %r(423)
	movq %rbx, -200(%rbp)		# movq %r(423), -200(%rbp)
	jmp .L33		# jmp .L33
	.L17:		# .L17:
	jmp .L38		# jmp .L38
	.L38:		# .L38:
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(424)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(425)
	cmpq %rbx, %r12		# cmpq %r(424), %r(425)
	jg .L40		# jg .L40
	.L39:		# .L39:
	movq $8, %r12		# movq $8, %r(282)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(426)
	movq %r13, -240(%rbp)		# movq %r(427), -240(%rbp)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(428)
	subq %r12, %rbx		# subq %r(282), %r(428)
	movq %rbx, -240(%rbp)		# movq %r(428), -240(%rbp)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(429)
	movq (%rbx), %rbx		# movq (%r(429)), %r(284)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(430)
	cmpq %rbx, %r12		# cmpq %r(284), %r(430)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(285)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(431)
	movq %r13, -48(%rbp)		# movq %r(432), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(433)
	subq %r12, %rbx		# subq %r(285), %r(433)
	movq %rbx, -48(%rbp)		# movq %r(433), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(434)
	movq (%rbx), %rbx		# movq (%r(434)), %r(287)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(435)
	cmpq %rbx, %r12		# cmpq %r(287), %r(435)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(436)
	salq $3, %r13		# salq $3, %r(288)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(437)
	movq %rbx, -88(%rbp)		# movq %r(438), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(439)
	addq %r13, %r12		# addq %r(288), %r(439)
	movq %r12, -88(%rbp)		# movq %r(439), -88(%rbp)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(440)
	salq $3, %r13		# salq $3, %r(290)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(441)
	movq %rbx, -8(%rbp)		# movq %r(442), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(443)
	addq %r13, %r12		# addq %r(290), %r(443)
	movq %r12, -8(%rbp)		# movq %r(443), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(444)
	movq (%rbx), %rbx		# movq (%r(444)), %r(292)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(445)
	movq %rbx, (%r12)		# movq %r(292), (%r(445))
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(446)
	incq %rbx		# incq %r(446)
	movq %rbx, -192(%rbp)		# movq %r(446), -192(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(447)
	incq %rbx		# incq %r(447)
	movq %rbx, -72(%rbp)		# movq %r(447), -72(%rbp)
	jmp .L38		# jmp .L38
	.L40:		# .L40:
	jmp .L45		# jmp .L45
	.L45:		# .L45:
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(448)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(449)
	cmpq %rbx, %r12		# cmpq %r(448), %r(449)
	jg .L47		# jg .L47
	.L46:		# .L46:
	movq $8, %r12		# movq $8, %r(293)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(450)
	movq %r13, -264(%rbp)		# movq %r(451), -264(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(452)
	subq %r12, %rbx		# subq %r(293), %r(452)
	movq %rbx, -264(%rbp)		# movq %r(452), -264(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(453)
	movq (%rbx), %rbx		# movq (%r(453)), %r(295)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(454)
	cmpq %rbx, %r12		# cmpq %r(295), %r(454)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(296)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(455)
	movq %r13, -112(%rbp)		# movq %r(456), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(457)
	subq %r12, %rbx		# subq %r(296), %r(457)
	movq %rbx, -112(%rbp)		# movq %r(457), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(458)
	movq (%rbx), %rbx		# movq (%r(458)), %r(298)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(459)
	cmpq %rbx, %r12		# cmpq %r(298), %r(459)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(460)
	salq $3, %r13		# salq $3, %r(299)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(461)
	movq %rbx, -312(%rbp)		# movq %r(462), -312(%rbp)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(463)
	addq %r13, %r12		# addq %r(299), %r(463)
	movq %r12, -312(%rbp)		# movq %r(463), -312(%rbp)
	movq -200(%rbp), %r13		# movq -200(%rbp), %r(464)
	salq $3, %r13		# salq $3, %r(301)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(465)
	movq %rbx, -216(%rbp)		# movq %r(466), -216(%rbp)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(467)
	addq %r13, %r12		# addq %r(301), %r(467)
	movq %r12, -216(%rbp)		# movq %r(467), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(468)
	movq (%rbx), %rbx		# movq (%r(468)), %r(303)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(469)
	movq %rbx, (%r12)		# movq %r(303), (%r(469))
	movq -200(%rbp), %rbx		# movq -200(%rbp), %r(470)
	incq %rbx		# incq %r(470)
	movq %rbx, -200(%rbp)		# movq %r(470), -200(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(471)
	incq %rbx		# incq %r(471)
	movq %rbx, -72(%rbp)		# movq %r(471), -72(%rbp)
	jmp .L45		# jmp .L45
	.L47:		# .L47:
	movq $0, %r12		# movq $0, %r(304)
	movq %r12, -72(%rbp)		# movq %r(472), -72(%rbp)
	jmp .L52		# jmp .L52
	.L52:		# .L52:
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(473)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(474)
	cmpq %r12, %rbx		# cmpq %r(474), %r(473)
	jg .L54		# jg .L54
	.L53:		# .L53:
	movq $8, %r12		# movq $8, %r(305)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(475)
	movq %r13, -96(%rbp)		# movq %r(476), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(477)
	subq %r12, %rbx		# subq %r(305), %r(477)
	movq %rbx, -96(%rbp)		# movq %r(477), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(478)
	movq (%rbx), %rbx		# movq (%r(478)), %r(307)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(479)
	cmpq %rbx, %r12		# cmpq %r(307), %r(479)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(308)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(480)
	movq %r13, -168(%rbp)		# movq %r(481), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(482)
	subq %r12, %rbx		# subq %r(308), %r(482)
	movq %rbx, -168(%rbp)		# movq %r(482), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(483)
	movq (%rbx), %rbx		# movq (%r(483)), %r(310)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(484)
	cmpq %rbx, %r12		# cmpq %r(310), %r(484)
	jae error_outofbounds		# jae error_outofbounds
	movq -288(%rbp), %r13		# movq -288(%rbp), %r(485)
	salq $3, %r13		# salq $3, %r(311)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(486)
	movq %rbx, -272(%rbp)		# movq %r(487), -272(%rbp)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(488)
	addq %r13, %r12		# addq %r(311), %r(488)
	movq %r12, -272(%rbp)		# movq %r(488), -272(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(489)
	salq $3, %r13		# salq $3, %r(313)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(490)
	movq %rbx, -16(%rbp)		# movq %r(491), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(492)
	addq %r13, %r12		# addq %r(313), %r(492)
	movq %r12, -16(%rbp)		# movq %r(492), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(493)
	movq (%rbx), %rbx		# movq (%r(493)), %r(315)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(494)
	movq %rbx, (%r12)		# movq %r(315), (%r(494))
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(495)
	incq %rbx		# incq %r(495)
	movq %rbx, -72(%rbp)		# movq %r(495), -72(%rbp)
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(496)
	incq %rbx		# incq %r(496)
	movq %rbx, -288(%rbp)		# movq %r(496), -288(%rbp)
	jmp .L52		# jmp .L52
	.L54:		# .L54:
	jmp .L11		# jmp .L11
	
.globl _IassertEqual_paiai
_IassertEqual_paiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(515)
	movq %rbx, -16(%rbp)		# movq %r(515), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(516)
	movq %rbx, -24(%rbp)		# movq %r(516), -24(%rbp)
	movq $0, %r12		# movq $0, %r(497)
	movq %r12, -48(%rbp)		# movq %r(517), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(498)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(518)
	subq %rbx, %r13		# subq %r(498), %r(499)
	movq (%r13), %r12		# movq (%r(499)), %r(500)
	movq %r12, -8(%rbp)		# movq %r(519), -8(%rbp)
	jmp .L60		# jmp .L60
	.L60:		# .L60:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(520)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(521)
	cmpq %rbx, %r12		# cmpq %r(520), %r(521)
	jge .L62		# jge .L62
	.L61:		# .L61:
	movq $1, %r12		# movq $1, %r(501)
	movq %r12, -72(%rbp)		# movq %r(522), -72(%rbp)
	movq $8, %r12		# movq $8, %r(502)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(523)
	movq %r13, -32(%rbp)		# movq %r(524), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(525)
	subq %r12, %rbx		# subq %r(502), %r(525)
	movq %rbx, -32(%rbp)		# movq %r(525), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(526)
	movq (%rbx), %rbx		# movq (%r(526)), %r(504)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(527)
	cmpq %rbx, %r12		# cmpq %r(504), %r(527)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(505)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(528)
	movq %r13, -64(%rbp)		# movq %r(529), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(530)
	subq %r12, %rbx		# subq %r(505), %r(530)
	movq %rbx, -64(%rbp)		# movq %r(530), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(531)
	movq (%rbx), %rbx		# movq (%r(531)), %r(507)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(532)
	cmpq %rbx, %r12		# cmpq %r(507), %r(532)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(533)
	salq $3, %r13		# salq $3, %r(508)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(534)
	movq %rbx, -56(%rbp)		# movq %r(535), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(536)
	addq %r13, %r12		# addq %r(508), %r(536)
	movq %r12, -56(%rbp)		# movq %r(536), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(537)
	movq (%rbx), %rbx		# movq (%r(537)), %r(538)
	movq %rbx, -80(%rbp)		# movq %r(538), -80(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(539)
	salq $3, %r13		# salq $3, %r(511)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(540)
	movq %rbx, -40(%rbp)		# movq %r(541), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(542)
	addq %r13, %r12		# addq %r(511), %r(542)
	movq %r12, -40(%rbp)		# movq %r(542), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(543)
	movq (%rbx), %rbx		# movq (%r(543)), %r(513)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(544)
	cmpq %rbx, %r12		# cmpq %r(513), %r(544)
	je .L67		# je .L67
	.L68:		# .L68:
	movq $0, %r12		# movq $0, %r(514)
	movq %r12, -72(%rbp)		# movq %r(545), -72(%rbp)
	jmp .L67		# jmp .L67
	.L67:		# .L67:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(546)
	movq %rbx, %rdi		# movq %r(546), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(547)
	incq %rbx		# incq %r(547)
	movq %rbx, -48(%rbp)		# movq %r(547), -48(%rbp)
	jmp .L60		# jmp .L60
	.L62:		# .L62:
	jmp .L59		# jmp .L59
	.L59:		# .L59:
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
	movq %rdi, %rbx		# movq %rdi, %r(591)
	movq %rbx, -88(%rbp)		# movq %r(591), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(548)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(592)
	subq %rbx, %r13		# subq %r(548), %r(549)
	movq (%r13), %r12		# movq (%r(549)), %r(550)
	movq %r12, -48(%rbp)		# movq %r(593), -48(%rbp)
	movq $1, %r12		# movq $1, %r(551)
	movq %r12, -56(%rbp)		# movq %r(594), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(552)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(595)
	cmpq %rbx, %r12		# cmpq %r(552), %r(595)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(553)
	movq %rbx, %rax		# movq %r(553), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L69:		# .L69:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(596)
	salq $3, %r12		# salq $3, %r(554)
	movq %r12, %rdi		# movq %r(554), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(89)
	movq $1, %r12		# movq $1, %r(555)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(597)
	movq %r14, -16(%rbp)		# movq %r(598), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(599)
	subq %r12, %rbx		# subq %r(555), %r(599)
	movq %rbx, -16(%rbp)		# movq %r(599), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(600)
	movq %rbx, (%r13)		# movq %r(600), (%r(89))
	movq $8, %rbx		# movq $8, %r(557)
	addq %rbx, %r13		# addq %r(557), %r(558)
	movq %r13, -40(%rbp)		# movq %r(601), -40(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(602)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(603)
	cmpq %rbx, %r12		# cmpq %r(602), %r(603)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(559)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(604)
	subq %rbx, %r13		# subq %r(559), %r(560)
	movq (%r13), %rbx		# movq (%r(560)), %r(561)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(605)
	cmpq %rbx, %r12		# cmpq %r(561), %r(605)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(562)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(606)
	subq %rbx, %r14		# subq %r(562), %r(563)
	movq $8, %r13		# movq $8, %r(564)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(607)
	movq %r12, -64(%rbp)		# movq %r(608), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(609)
	subq %r13, %rbx		# subq %r(564), %r(609)
	movq %rbx, -64(%rbp)		# movq %r(609), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(610)
	movq (%rbx), %rbx		# movq (%r(610)), %r(566)
	cmpq %rbx, %r14		# cmpq %r(566), %r(70)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(567)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(611)
	addq %r14, %rbx		# addq %r(567), %r(568)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(612)
	salq $3, %r14		# salq $3, %r(569)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(613)
	movq %r12, -72(%rbp)		# movq %r(614), -72(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(615)
	addq %r14, %r13		# addq %r(569), %r(615)
	movq %r13, -72(%rbp)		# movq %r(615), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(616)
	movq (%r12), %r12		# movq (%r(616)), %r(571)
	movq %r12, (%rbx)		# movq %r(571), (%r(568))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(617)
	incq %rbx		# incq %r(617)
	movq %rbx, -56(%rbp)		# movq %r(617), -56(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(572)
	movq $8, %r12		# movq $8, %r(573)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(618)
	subq %r12, %r14		# subq %r(573), %r(574)
	movq (%r14), %rbx		# movq (%r(574)), %r(575)
	cmpq %rbx, %r13		# cmpq %r(575), %r(572)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(576)
	salq $3, %r13		# salq $3, %r(577)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(619)
	addq %r13, %rbx		# addq %r(577), %r(578)
	movq (%rbx), %r12		# movq (%r(578)), %r(579)
	movq %r12, -56(%rbp)		# movq %r(620), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(580)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(621)
	addq %rbx, %r12		# addq %r(580), %r(581)
	salq $3, %r12		# salq $3, %r(582)
	movq %r12, %rdi		# movq %r(582), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(90)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(622)
	movq %r12, (%rbx)		# movq %r(622), (%r(90))
	movq $8, %r12		# movq $8, %r(583)
	addq %r12, %rbx		# addq %r(583), %r(584)
	movq %rbx, -80(%rbp)		# movq %r(623), -80(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(585)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(624)
	cmpq %rbx, %r12		# cmpq %r(585), %r(624)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(625)
	decq %rbx		# decq %r(625)
	movq %rbx, -56(%rbp)		# movq %r(625), -56(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(626)
	movq %rbx, %rdi		# movq %r(626), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(627)
	movq %rbx, -32(%rbp)		# movq %r(627), -32(%rbp)
	movq $8, %r12		# movq $8, %r(586)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(628)
	movq %r13, -8(%rbp)		# movq %r(629), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(630)
	subq %r12, %rbx		# subq %r(586), %r(630)
	movq %rbx, -8(%rbp)		# movq %r(630), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(631)
	movq (%rbx), %rbx		# movq (%r(631)), %r(588)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(632)
	cmpq %rbx, %r12		# cmpq %r(588), %r(632)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(633)
	salq $3, %r13		# salq $3, %r(589)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(634)
	movq %rbx, -24(%rbp)		# movq %r(635), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(636)
	addq %r13, %r12		# addq %r(589), %r(636)
	movq %r12, -24(%rbp)		# movq %r(636), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(637)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(638)
	movq %r12, (%rbx)		# movq %r(638), (%r(637))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(639)
	movq %rbx, %rax		# movq %r(639), %rax
	jmp .L71		# jmp .L71
	
error_outofbounds:
call _I_outOfBounds_p
