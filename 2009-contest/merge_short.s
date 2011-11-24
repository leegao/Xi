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
	movq %rax, %rbx		# movq %rax, %r(80)
	movq $20, %r12		# movq $20, %r(94)
	movq %r12, (%rbx)		# movq %r(94), (%r(12))
	movq $8, %r12		# movq $8, %r(95)
	addq %r12, %rbx		# addq %r(95), %r(96)
	movq $0, %r12		# movq $0, %r(97)
	movq %rbx, %r14		# movq %r(11), %r(98)
	addq %r12, %r14		# addq %r(97), %r(98)
	movq $20, %r12		# movq $20, %r(99)
	movq %r12, (%r14)		# movq %r(99), (%r(98))
	movq $8, %r12		# movq $8, %r(100)
	movq %rbx, %r14		# movq %r(11), %r(101)
	addq %r12, %r14		# addq %r(100), %r(101)
	movq $19, %r12		# movq $19, %r(102)
	movq %r12, (%r14)		# movq %r(102), (%r(101))
	movq $16, %r12		# movq $16, %r(103)
	movq %rbx, %r14		# movq %r(11), %r(104)
	addq %r12, %r14		# addq %r(103), %r(104)
	movq $18, %r12		# movq $18, %r(105)
	movq %r12, (%r14)		# movq %r(105), (%r(104))
	movq $24, %r12		# movq $24, %r(106)
	movq %rbx, %r14		# movq %r(11), %r(107)
	addq %r12, %r14		# addq %r(106), %r(107)
	movq $14, %r12		# movq $14, %r(108)
	movq %r12, (%r14)		# movq %r(108), (%r(107))
	movq $32, %r12		# movq $32, %r(109)
	movq %rbx, %r14		# movq %r(11), %r(110)
	addq %r12, %r14		# addq %r(109), %r(110)
	movq $2, %r12		# movq $2, %r(111)
	movq %r12, (%r14)		# movq %r(111), (%r(110))
	movq $40, %r12		# movq $40, %r(112)
	movq %rbx, %r14		# movq %r(11), %r(113)
	addq %r12, %r14		# addq %r(112), %r(113)
	movq $3, %r12		# movq $3, %r(114)
	movq %r12, (%r14)		# movq %r(114), (%r(113))
	movq $48, %r12		# movq $48, %r(115)
	movq %rbx, %r14		# movq %r(11), %r(116)
	addq %r12, %r14		# addq %r(115), %r(116)
	movq $6, %r12		# movq $6, %r(117)
	movq %r12, (%r14)		# movq %r(117), (%r(116))
	movq $56, %r12		# movq $56, %r(118)
	movq %rbx, %r14		# movq %r(11), %r(119)
	addq %r12, %r14		# addq %r(118), %r(119)
	movq $5, %r12		# movq $5, %r(120)
	movq %r12, (%r14)		# movq %r(120), (%r(119))
	movq $64, %r12		# movq $64, %r(121)
	movq %rbx, %r14		# movq %r(11), %r(122)
	addq %r12, %r14		# addq %r(121), %r(122)
	movq $1, %r12		# movq $1, %r(123)
	movq %r12, (%r14)		# movq %r(123), (%r(122))
	movq $72, %r12		# movq $72, %r(124)
	movq %rbx, %r14		# movq %r(11), %r(125)
	addq %r12, %r14		# addq %r(124), %r(125)
	movq $15, %r12		# movq $15, %r(126)
	movq %r12, (%r14)		# movq %r(126), (%r(125))
	movq $80, %r12		# movq $80, %r(127)
	movq %rbx, %r14		# movq %r(11), %r(128)
	addq %r12, %r14		# addq %r(127), %r(128)
	movq $16, %r12		# movq $16, %r(129)
	movq %r12, (%r14)		# movq %r(129), (%r(128))
	movq $88, %r12		# movq $88, %r(130)
	movq %rbx, %r14		# movq %r(11), %r(131)
	addq %r12, %r14		# addq %r(130), %r(131)
	movq $11, %r12		# movq $11, %r(132)
	movq %r12, (%r14)		# movq %r(132), (%r(131))
	movq $96, %r12		# movq $96, %r(133)
	movq %rbx, %r14		# movq %r(11), %r(134)
	addq %r12, %r14		# addq %r(133), %r(134)
	movq $13, %r12		# movq $13, %r(135)
	movq %r12, (%r14)		# movq %r(135), (%r(134))
	movq $104, %r12		# movq $104, %r(136)
	movq %rbx, %r14		# movq %r(11), %r(137)
	addq %r12, %r14		# addq %r(136), %r(137)
	movq $12, %r12		# movq $12, %r(138)
	movq %r12, (%r14)		# movq %r(138), (%r(137))
	movq $112, %r12		# movq $112, %r(139)
	movq %rbx, %r14		# movq %r(11), %r(140)
	addq %r12, %r14		# addq %r(139), %r(140)
	movq $7, %r12		# movq $7, %r(141)
	movq %r12, (%r14)		# movq %r(141), (%r(140))
	movq $120, %r12		# movq $120, %r(142)
	movq %rbx, %r14		# movq %r(11), %r(143)
	addq %r12, %r14		# addq %r(142), %r(143)
	movq $8, %r12		# movq $8, %r(144)
	movq %r12, (%r14)		# movq %r(144), (%r(143))
	movq $128, %r12		# movq $128, %r(145)
	movq %rbx, %r14		# movq %r(11), %r(146)
	addq %r12, %r14		# addq %r(145), %r(146)
	movq $9, %r12		# movq $9, %r(147)
	movq %r12, (%r14)		# movq %r(147), (%r(146))
	movq $136, %r12		# movq $136, %r(148)
	movq %rbx, %r14		# movq %r(11), %r(149)
	addq %r12, %r14		# addq %r(148), %r(149)
	movq $17, %r12		# movq $17, %r(150)
	movq %r12, (%r14)		# movq %r(150), (%r(149))
	movq $144, %r12		# movq $144, %r(151)
	movq %rbx, %r14		# movq %r(11), %r(152)
	addq %r12, %r14		# addq %r(151), %r(152)
	movq $10, %r12		# movq $10, %r(153)
	movq %r12, (%r14)		# movq %r(153), (%r(152))
	movq $152, %r12		# movq $152, %r(154)
	movq %rbx, %r14		# movq %r(11), %r(155)
	addq %r12, %r14		# addq %r(154), %r(155)
	movq $4, %r12		# movq $4, %r(156)
	movq %r12, (%r14)		# movq %r(156), (%r(155))
	movq %rbx, %r15		# movq %r(11), %r(a)
	movq $168, %rbx		# movq $168, %r(157)
	movq %rbx, %rdi		# movq %r(157), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(81)
	movq $20, %r12		# movq $20, %r(158)
	movq %r12, (%r13)		# movq %r(158), (%r(15))
	movq $8, %r12		# movq $8, %r(159)
	addq %r12, %r13		# addq %r(159), %r(160)
	movq $0, %rbx		# movq $0, %r(161)
	movq %r13, %r12		# movq %r(14), %r(162)
	addq %rbx, %r12		# addq %r(161), %r(162)
	movq $1, %rbx		# movq $1, %r(163)
	movq %rbx, (%r12)		# movq %r(163), (%r(162))
	movq $8, %rbx		# movq $8, %r(164)
	movq %r13, %r12		# movq %r(14), %r(165)
	addq %rbx, %r12		# addq %r(164), %r(165)
	movq $2, %rbx		# movq $2, %r(166)
	movq %rbx, (%r12)		# movq %r(166), (%r(165))
	movq $16, %rbx		# movq $16, %r(167)
	movq %r13, %r12		# movq %r(14), %r(168)
	addq %rbx, %r12		# addq %r(167), %r(168)
	movq $3, %rbx		# movq $3, %r(169)
	movq %rbx, (%r12)		# movq %r(169), (%r(168))
	movq $24, %rbx		# movq $24, %r(170)
	movq %r13, %r12		# movq %r(14), %r(171)
	addq %rbx, %r12		# addq %r(170), %r(171)
	movq $4, %rbx		# movq $4, %r(172)
	movq %rbx, (%r12)		# movq %r(172), (%r(171))
	movq $32, %rbx		# movq $32, %r(173)
	movq %r13, %r12		# movq %r(14), %r(174)
	addq %rbx, %r12		# addq %r(173), %r(174)
	movq $5, %rbx		# movq $5, %r(175)
	movq %rbx, (%r12)		# movq %r(175), (%r(174))
	movq $40, %rbx		# movq $40, %r(176)
	movq %r13, %r12		# movq %r(14), %r(177)
	addq %rbx, %r12		# addq %r(176), %r(177)
	movq $6, %rbx		# movq $6, %r(178)
	movq %rbx, (%r12)		# movq %r(178), (%r(177))
	movq $48, %rbx		# movq $48, %r(179)
	movq %r13, %r12		# movq %r(14), %r(180)
	addq %rbx, %r12		# addq %r(179), %r(180)
	movq $7, %rbx		# movq $7, %r(181)
	movq %rbx, (%r12)		# movq %r(181), (%r(180))
	movq $56, %rbx		# movq $56, %r(182)
	movq %r13, %r12		# movq %r(14), %r(183)
	addq %rbx, %r12		# addq %r(182), %r(183)
	movq $8, %rbx		# movq $8, %r(184)
	movq %rbx, (%r12)		# movq %r(184), (%r(183))
	movq $64, %rbx		# movq $64, %r(185)
	movq %r13, %r12		# movq %r(14), %r(186)
	addq %rbx, %r12		# addq %r(185), %r(186)
	movq $9, %rbx		# movq $9, %r(187)
	movq %rbx, (%r12)		# movq %r(187), (%r(186))
	movq $72, %rbx		# movq $72, %r(188)
	movq %r13, %r12		# movq %r(14), %r(189)
	addq %rbx, %r12		# addq %r(188), %r(189)
	movq $10, %rbx		# movq $10, %r(190)
	movq %rbx, (%r12)		# movq %r(190), (%r(189))
	movq $80, %rbx		# movq $80, %r(191)
	movq %r13, %r12		# movq %r(14), %r(192)
	addq %rbx, %r12		# addq %r(191), %r(192)
	movq $11, %rbx		# movq $11, %r(193)
	movq %rbx, (%r12)		# movq %r(193), (%r(192))
	movq $88, %rbx		# movq $88, %r(194)
	movq %r13, %r12		# movq %r(14), %r(195)
	addq %rbx, %r12		# addq %r(194), %r(195)
	movq $12, %rbx		# movq $12, %r(196)
	movq %rbx, (%r12)		# movq %r(196), (%r(195))
	movq $96, %rbx		# movq $96, %r(197)
	movq %r13, %r12		# movq %r(14), %r(198)
	addq %rbx, %r12		# addq %r(197), %r(198)
	movq $13, %rbx		# movq $13, %r(199)
	movq %rbx, (%r12)		# movq %r(199), (%r(198))
	movq $104, %rbx		# movq $104, %r(200)
	movq %r13, %r12		# movq %r(14), %r(201)
	addq %rbx, %r12		# addq %r(200), %r(201)
	movq $14, %rbx		# movq $14, %r(202)
	movq %rbx, (%r12)		# movq %r(202), (%r(201))
	movq $112, %rbx		# movq $112, %r(203)
	movq %r13, %r12		# movq %r(14), %r(204)
	addq %rbx, %r12		# addq %r(203), %r(204)
	movq $15, %rbx		# movq $15, %r(205)
	movq %rbx, (%r12)		# movq %r(205), (%r(204))
	movq $120, %rbx		# movq $120, %r(206)
	movq %r13, %r12		# movq %r(14), %r(207)
	addq %rbx, %r12		# addq %r(206), %r(207)
	movq $16, %rbx		# movq $16, %r(208)
	movq %rbx, (%r12)		# movq %r(208), (%r(207))
	movq $128, %rbx		# movq $128, %r(209)
	movq %r13, %r12		# movq %r(14), %r(210)
	addq %rbx, %r12		# addq %r(209), %r(210)
	movq $17, %rbx		# movq $17, %r(211)
	movq %rbx, (%r12)		# movq %r(211), (%r(210))
	movq $136, %rbx		# movq $136, %r(212)
	movq %r13, %r12		# movq %r(14), %r(213)
	addq %rbx, %r12		# addq %r(212), %r(213)
	movq $18, %rbx		# movq $18, %r(214)
	movq %rbx, (%r12)		# movq %r(214), (%r(213))
	movq $144, %rbx		# movq $144, %r(215)
	movq %r13, %r12		# movq %r(14), %r(216)
	addq %rbx, %r12		# addq %r(215), %r(216)
	movq $19, %rbx		# movq $19, %r(217)
	movq %rbx, (%r12)		# movq %r(217), (%r(216))
	movq $152, %rbx		# movq $152, %r(218)
	movq %r13, %r12		# movq %r(14), %r(219)
	addq %rbx, %r12		# addq %r(218), %r(219)
	movq $20, %rbx		# movq $20, %r(220)
	movq %rbx, (%r12)		# movq %r(220), (%r(219))
	movq %r13, %rbx		# movq %r(14), %r(b)
	movq $0, %r12		# movq $0, %r(221)
	movq $19, %r14		# movq $19, %r(222)
	movq %r15, %rdi		# movq %r(a), %rdi
	movq %r12, %rsi		# movq %r(221), %rsi
	movq %r14, %rdx		# movq %r(222), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq %r15, %rdi		# movq %r(a), %rdi
	movq %rbx, %rsi		# movq %r(b), %rsi
	call _IassertEqual_paiai		# call _IassertEqual_paiai
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
	subq $464, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(316)
	movq %rbx, -216(%rbp)		# movq %r(316), -216(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(317)
	movq %rbx, -368(%rbp)		# movq %r(317), -368(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(318)
	movq %rbx, -192(%rbp)		# movq %r(318), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(319)
	movq -368(%rbp), %r12		# movq -368(%rbp), %r(320)
	cmpq %rbx, %r12		# cmpq %r(319), %r(320)
	jl .L13		# jl .L13
	.L12:		# .L12:
	jmp .L11		# jmp .L11
	.L13:		# .L13:
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(321)
	movq -368(%rbp), %r12		# movq -368(%rbp), %r(322)
	addq %r12, %r13		# addq %r(322), %r(223)
	movq $2, %r12		# movq $2, %r(224)
	movq %r13, %rax		# movq %r(223), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(224)
	movq %rax, %r12		# movq %rax, %r(225)
	movq %r12, -16(%rbp)		# movq %r(323), -16(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(324)
	movq %rbx, %rdi		# movq %r(324), %rdi
	movq -368(%rbp), %rbx		# movq -368(%rbp), %r(325)
	movq %rbx, %rsi		# movq %r(325), %rsi
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(326)
	movq %rbx, %rdx		# movq %r(326), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq $1, %rbx		# movq $1, %r(226)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(327)
	addq %rbx, %r13		# addq %r(226), %r(227)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(328)
	movq %rbx, %rdi		# movq %r(328), %rdi
	movq %r13, %rsi		# movq %r(227), %rsi
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(329)
	movq %rbx, %rdx		# movq %r(329), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq $16, %rbx		# movq $16, %r(228)
	movq %rbx, %rdi		# movq %r(228), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(86)
	movq $1, %r12		# movq $1, %r(229)
	movq %r12, (%r13)		# movq %r(229), (%r(22))
	movq $8, %r12		# movq $8, %r(330)
	movq %r12, -176(%rbp)		# movq %r(330), -176(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(331)
	addq %r12, %r13		# addq %r(331), %r(231)
	movq %r13, -88(%rbp)		# movq %r(332), -88(%rbp)
	movq $0, %r12		# movq $0, %r(232)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(333)
	movq %r13, -24(%rbp)		# movq %r(334), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(335)
	addq %r12, %rbx		# addq %r(232), %r(335)
	movq %rbx, -24(%rbp)		# movq %r(335), -24(%rbp)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(336)
	movq -368(%rbp), %r12		# movq -368(%rbp), %r(337)
	subq %r12, %r13		# subq %r(337), %r(234)
	movq $1, %r12		# movq $1, %r(338)
	movq %r12, -312(%rbp)		# movq %r(338), -312(%rbp)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(339)
	addq %r12, %r13		# addq %r(339), %r(236)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(340)
	movq %r13, (%r12)		# movq %r(236), (%r(340))
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(341)
	movq %rbx, %rdi		# movq %r(341), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(87)
	movq %r12, -208(%rbp)		# movq %r(342), -208(%rbp)
	movq $0, %r12		# movq $0, %r(237)
	movq %r12, -336(%rbp)		# movq %r(343), -336(%rbp)
	movq -368(%rbp), %r12		# movq -368(%rbp), %r(344)
	movq %r12, -160(%rbp)		# movq %r(345), -160(%rbp)
	movq $1, %r12		# movq $1, %r(238)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(346)
	movq %r13, -144(%rbp)		# movq %r(347), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(348)
	addq %r12, %rbx		# addq %r(238), %r(348)
	movq %rbx, -144(%rbp)		# movq %r(348), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(349)
	movq %r12, -320(%rbp)		# movq %r(350), -320(%rbp)
	.L15:		# .L15:
	movq $1, %r13		# movq $1, %r(240)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(351)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(352)
	cmpq %rbx, %r12		# cmpq %r(351), %r(352)
	jle .L18		# jle .L18
	.L19:		# .L19:
	movq $0, %r13		# movq $0, %r(241)
	.L18:		# .L18:
	movq $1, %rbx		# movq $1, %r(353)
	movq %rbx, -272(%rbp)		# movq %r(353), -272(%rbp)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(354)
	xorq %rbx, %r13		# xorq %r(354), %r(243)
	testq $1, %r13		# testq $1, %r(243)
	jne .L17		# jne .L17
	.L22:		# .L22:
	movq $1, %r13		# movq $1, %r(244)
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(355)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(356)
	cmpq %r12, %rbx		# cmpq %r(356), %r(355)
	jle .L20		# jle .L20
	.L21:		# .L21:
	movq $0, %r13		# movq $0, %r(245)
	.L20:		# .L20:
	movq $1, %rbx		# movq $1, %r(357)
	movq %rbx, -152(%rbp)		# movq %r(357), -152(%rbp)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(358)
	xorq %rbx, %r13		# xorq %r(358), %r(247)
	testq $1, %r13		# testq $1, %r(247)
	jne .L17		# jne .L17
	.L16:		# .L16:
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(359)
	movq %r12, -32(%rbp)		# movq %r(360), -32(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(361)
	movq %r12, -240(%rbp)		# movq %r(362), -240(%rbp)
	movq $8, %r12		# movq $8, %r(248)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(363)
	movq %r13, -64(%rbp)		# movq %r(364), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(365)
	subq %r12, %rbx		# subq %r(248), %r(365)
	movq %rbx, -64(%rbp)		# movq %r(365), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(366)
	movq (%rbx), %rbx		# movq (%r(366)), %r(250)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(367)
	cmpq %rbx, %r12		# cmpq %r(250), %r(367)
	jae error_outofbounds		# jae error_outofbounds
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(368)
	movq %r12, -344(%rbp)		# movq %r(369), -344(%rbp)
	movq -320(%rbp), %r12		# movq -320(%rbp), %r(370)
	movq %r12, -392(%rbp)		# movq %r(371), -392(%rbp)
	movq $8, %r12		# movq $8, %r(251)
	movq -344(%rbp), %r13		# movq -344(%rbp), %r(372)
	movq %r13, -264(%rbp)		# movq %r(373), -264(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(374)
	subq %r12, %rbx		# subq %r(251), %r(374)
	movq %rbx, -264(%rbp)		# movq %r(374), -264(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(375)
	movq (%rbx), %rbx		# movq (%r(375)), %r(253)
	movq -392(%rbp), %r12		# movq -392(%rbp), %r(376)
	cmpq %rbx, %r12		# cmpq %r(253), %r(376)
	jae error_outofbounds		# jae error_outofbounds
	movq -240(%rbp), %r13		# movq -240(%rbp), %r(377)
	salq $3, %r13		# salq $3, %r(254)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(378)
	movq %rbx, -120(%rbp)		# movq %r(379), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(380)
	addq %r13, %r12		# addq %r(254), %r(380)
	movq %r12, -120(%rbp)		# movq %r(380), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(381)
	movq (%rbx), %rbx		# movq (%r(381)), %r(382)
	movq %rbx, -280(%rbp)		# movq %r(382), -280(%rbp)
	movq -392(%rbp), %r12		# movq -392(%rbp), %r(383)
	movq %r12, -248(%rbp)		# movq %r(384), -248(%rbp)
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(385)
	salq $3, %rbx		# salq $3, %r(385)
	movq %rbx, -248(%rbp)		# movq %r(385), -248(%rbp)
	movq -344(%rbp), %r13		# movq -344(%rbp), %r(386)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(387)
	addq %r12, %r13		# addq %r(387), %r(258)
	movq (%r13), %rbx		# movq (%r(258)), %r(259)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(388)
	cmpq %rbx, %r12		# cmpq %r(259), %r(388)
	jg .L28		# jg .L28
	.L27:		# .L27:
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(389)
	movq %r12, -232(%rbp)		# movq %r(390), -232(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(391)
	movq %r12, -56(%rbp)		# movq %r(392), -56(%rbp)
	movq $8, %r12		# movq $8, %r(260)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(393)
	movq %r13, -72(%rbp)		# movq %r(394), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(395)
	subq %r12, %rbx		# subq %r(260), %r(395)
	movq %rbx, -72(%rbp)		# movq %r(395), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(396)
	movq (%rbx), %rbx		# movq (%r(396)), %r(262)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(397)
	cmpq %rbx, %r12		# cmpq %r(262), %r(397)
	jae error_outofbounds		# jae error_outofbounds
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(398)
	movq %r12, -96(%rbp)		# movq %r(399), -96(%rbp)
	movq -336(%rbp), %r12		# movq -336(%rbp), %r(400)
	movq %r12, -8(%rbp)		# movq %r(401), -8(%rbp)
	movq $8, %r12		# movq $8, %r(263)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(402)
	movq %r13, -384(%rbp)		# movq %r(403), -384(%rbp)
	movq -384(%rbp), %rbx		# movq -384(%rbp), %r(404)
	subq %r12, %rbx		# subq %r(263), %r(404)
	movq %rbx, -384(%rbp)		# movq %r(404), -384(%rbp)
	movq -384(%rbp), %rbx		# movq -384(%rbp), %r(405)
	movq (%rbx), %rbx		# movq (%r(405)), %r(265)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(406)
	cmpq %rbx, %r12		# cmpq %r(265), %r(406)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(407)
	salq $3, %r13		# salq $3, %r(266)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(408)
	movq %rbx, -360(%rbp)		# movq %r(409), -360(%rbp)
	movq -360(%rbp), %r12		# movq -360(%rbp), %r(410)
	addq %r13, %r12		# addq %r(266), %r(410)
	movq %r12, -360(%rbp)		# movq %r(410), -360(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(411)
	movq %r12, -136(%rbp)		# movq %r(412), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(413)
	salq $3, %rbx		# salq $3, %r(413)
	movq %rbx, -136(%rbp)		# movq %r(413), -136(%rbp)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(414)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(415)
	addq %r12, %r13		# addq %r(415), %r(269)
	movq (%r13), %rbx		# movq (%r(269)), %r(270)
	movq -360(%rbp), %r12		# movq -360(%rbp), %r(416)
	movq %rbx, (%r12)		# movq %r(270), (%r(416))
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(417)
	incq %rbx		# incq %r(417)
	movq %rbx, -160(%rbp)		# movq %r(417), -160(%rbp)
	jmp .L33		# jmp .L33
	.L28:		# .L28:
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(418)
	movq %r12, -112(%rbp)		# movq %r(419), -112(%rbp)
	movq -320(%rbp), %r12		# movq -320(%rbp), %r(420)
	movq %r12, -80(%rbp)		# movq %r(421), -80(%rbp)
	movq $8, %r12		# movq $8, %r(271)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(422)
	movq %r13, -400(%rbp)		# movq %r(423), -400(%rbp)
	movq -400(%rbp), %rbx		# movq -400(%rbp), %r(424)
	subq %r12, %rbx		# subq %r(271), %r(424)
	movq %rbx, -400(%rbp)		# movq %r(424), -400(%rbp)
	movq -400(%rbp), %rbx		# movq -400(%rbp), %r(425)
	movq (%rbx), %rbx		# movq (%r(425)), %r(273)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(426)
	cmpq %rbx, %r12		# cmpq %r(273), %r(426)
	jae error_outofbounds		# jae error_outofbounds
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(427)
	movq %r12, -40(%rbp)		# movq %r(428), -40(%rbp)
	movq -336(%rbp), %r12		# movq -336(%rbp), %r(429)
	movq %r12, -328(%rbp)		# movq %r(430), -328(%rbp)
	movq $8, %r12		# movq $8, %r(274)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(431)
	movq %r13, -304(%rbp)		# movq %r(432), -304(%rbp)
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(433)
	subq %r12, %rbx		# subq %r(274), %r(433)
	movq %rbx, -304(%rbp)		# movq %r(433), -304(%rbp)
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(434)
	movq (%rbx), %rbx		# movq (%r(434)), %r(276)
	movq -328(%rbp), %r12		# movq -328(%rbp), %r(435)
	cmpq %rbx, %r12		# cmpq %r(276), %r(435)
	jae error_outofbounds		# jae error_outofbounds
	movq -328(%rbp), %r13		# movq -328(%rbp), %r(436)
	salq $3, %r13		# salq $3, %r(277)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(437)
	movq %rbx, -296(%rbp)		# movq %r(438), -296(%rbp)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(439)
	addq %r13, %r12		# addq %r(277), %r(439)
	movq %r12, -296(%rbp)		# movq %r(439), -296(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(440)
	movq %r12, -48(%rbp)		# movq %r(441), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(442)
	salq $3, %rbx		# salq $3, %r(442)
	movq %rbx, -48(%rbp)		# movq %r(442), -48(%rbp)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(443)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(444)
	addq %r12, %r13		# addq %r(444), %r(280)
	movq (%r13), %rbx		# movq (%r(280)), %r(281)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(445)
	movq %rbx, (%r12)		# movq %r(281), (%r(445))
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(446)
	incq %rbx		# incq %r(446)
	movq %rbx, -320(%rbp)		# movq %r(446), -320(%rbp)
	.L33:		# .L33:
	movq -336(%rbp), %rbx		# movq -336(%rbp), %r(447)
	incq %rbx		# incq %r(447)
	movq %rbx, -336(%rbp)		# movq %r(447), -336(%rbp)
	jmp .L15		# jmp .L15
	.L17:		# .L17:
	.L38:		# .L38:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(448)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(449)
	cmpq %rbx, %r12		# cmpq %r(448), %r(449)
	jg .L40		# jg .L40
	.L39:		# .L39:
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(450)
	movq %r12, -432(%rbp)		# movq %r(508), -432(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(451)
	movq %r12, -256(%rbp)		# movq %r(452), -256(%rbp)
	movq $8, %rbx		# movq $8, %r(282)
	movq -432(%rbp), %r13		# movq -432(%rbp), %r(509)
	subq %rbx, %r13		# subq %r(282), %r(283)
	movq (%r13), %rbx		# movq (%r(283)), %r(284)
	movq -256(%rbp), %r12		# movq -256(%rbp), %r(453)
	cmpq %rbx, %r12		# cmpq %r(284), %r(453)
	jae error_outofbounds		# jae error_outofbounds
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(503)
	movq %rbx, -408(%rbp)		# movq %r(503), -408(%rbp)
	movq -408(%rbp), %r12		# movq -408(%rbp), %r(504)
	movq %r12, -416(%rbp)		# movq %r(505), -416(%rbp)
	movq -336(%rbp), %rbx		# movq -336(%rbp), %r(510)
	movq %rbx, -448(%rbp)		# movq %r(510), -448(%rbp)
	movq -448(%rbp), %r12		# movq -448(%rbp), %r(511)
	movq %r12, -440(%rbp)		# movq %r(512), -440(%rbp)
	movq $8, %rbx		# movq $8, %r(285)
	movq -416(%rbp), %r13		# movq -416(%rbp), %r(506)
	subq %rbx, %r13		# subq %r(285), %r(286)
	movq (%r13), %rbx		# movq (%r(286)), %r(287)
	movq -440(%rbp), %r12		# movq -440(%rbp), %r(513)
	cmpq %rbx, %r12		# cmpq %r(287), %r(513)
	jae error_outofbounds		# jae error_outofbounds
	movq -440(%rbp), %r12		# movq -440(%rbp), %r(514)
	movq %r12, -424(%rbp)		# movq %r(515), -424(%rbp)
	movq -424(%rbp), %rbx		# movq -424(%rbp), %r(516)
	salq $3, %rbx		# salq $3, %r(516)
	movq %rbx, -424(%rbp)		# movq %r(516), -424(%rbp)
	movq -416(%rbp), %rbx		# movq -416(%rbp), %r(507)
	movq -424(%rbp), %r12		# movq -424(%rbp), %r(517)
	addq %r12, %rbx		# addq %r(517), %r(289)
	movq -256(%rbp), %r14		# movq -256(%rbp), %r(456)
	salq $3, %r14		# salq $3, %r(290)
	movq -432(%rbp), %r12		# movq -432(%rbp), %r(518)
	movq %r12, -456(%rbp)		# movq %r(519), -456(%rbp)
	movq -456(%rbp), %r13		# movq -456(%rbp), %r(520)
	addq %r14, %r13		# addq %r(290), %r(520)
	movq %r13, -456(%rbp)		# movq %r(520), -456(%rbp)
	movq -456(%rbp), %r12		# movq -456(%rbp), %r(521)
	movq (%r12), %r12		# movq (%r(521)), %r(292)
	movq %r12, (%rbx)		# movq %r(292), (%r(289))
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(457)
	incq %rbx		# incq %r(457)
	movq %rbx, -160(%rbp)		# movq %r(457), -160(%rbp)
	movq -336(%rbp), %rbx		# movq -336(%rbp), %r(458)
	incq %rbx		# incq %r(458)
	movq %rbx, -336(%rbp)		# movq %r(458), -336(%rbp)
	jmp .L38		# jmp .L38
	.L40:		# .L40:
	.L45:		# .L45:
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(459)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(460)
	cmpq %r12, %rbx		# cmpq %r(460), %r(459)
	jg .L47		# jg .L47
	.L46:		# .L46:
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(461)
	movq %r12, -200(%rbp)		# movq %r(462), -200(%rbp)
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(463)
	movq %rbx, %r15		# movq %r(463), %r(47)
	movq $8, %r12		# movq $8, %r(293)
	movq -200(%rbp), %r13		# movq -200(%rbp), %r(464)
	subq %r12, %r13		# subq %r(293), %r(294)
	movq (%r13), %rbx		# movq (%r(294)), %r(295)
	cmpq %rbx, %r15		# cmpq %r(295), %r(47)
	jae error_outofbounds		# jae error_outofbounds
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(465)
	movq %rbx, %r14		# movq %r(465), %r(44)
	movq -336(%rbp), %rbx		# movq -336(%rbp), %r(466)
	movq %rbx, %r13		# movq %r(466), %r(45)
	movq $8, %rbx		# movq $8, %r(296)
	movq %r14, %r12		# movq %r(44), %r(297)
	subq %rbx, %r12		# subq %r(296), %r(297)
	movq (%r12), %rbx		# movq (%r(297)), %r(298)
	cmpq %rbx, %r13		# cmpq %r(298), %r(45)
	jae error_outofbounds		# jae error_outofbounds
	movq %r13, %rbx		# movq %r(45), %r(299)
	salq $3, %rbx		# salq $3, %r(299)
	movq %r14, %r13		# movq %r(44), %r(300)
	addq %rbx, %r13		# addq %r(299), %r(300)
	movq %r15, %r12		# movq %r(47), %r(301)
	salq $3, %r12		# salq $3, %r(301)
	movq -200(%rbp), %r14		# movq -200(%rbp), %r(467)
	addq %r12, %r14		# addq %r(301), %r(302)
	movq (%r14), %rbx		# movq (%r(302)), %r(303)
	movq %rbx, (%r13)		# movq %r(303), (%r(300))
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(468)
	incq %rbx		# incq %r(468)
	movq %rbx, -320(%rbp)		# movq %r(468), -320(%rbp)
	movq -336(%rbp), %rbx		# movq -336(%rbp), %r(469)
	incq %rbx		# incq %r(469)
	movq %rbx, -336(%rbp)		# movq %r(469), -336(%rbp)
	jmp .L45		# jmp .L45
	.L47:		# .L47:
	movq $0, %r12		# movq $0, %r(304)
	movq %r12, -336(%rbp)		# movq %r(470), -336(%rbp)
	.L52:		# .L52:
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(471)
	movq -368(%rbp), %r12		# movq -368(%rbp), %r(472)
	cmpq %rbx, %r12		# cmpq %r(471), %r(472)
	jg .L54		# jg .L54
	.L53:		# .L53:
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(473)
	movq %r12, -288(%rbp)		# movq %r(474), -288(%rbp)
	movq -336(%rbp), %r12		# movq -336(%rbp), %r(475)
	movq %r12, -224(%rbp)		# movq %r(476), -224(%rbp)
	movq $8, %r12		# movq $8, %r(305)
	movq -288(%rbp), %r13		# movq -288(%rbp), %r(477)
	movq %r13, -168(%rbp)		# movq %r(478), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(479)
	subq %r12, %rbx		# subq %r(305), %r(479)
	movq %rbx, -168(%rbp)		# movq %r(479), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(480)
	movq (%rbx), %rbx		# movq (%r(480)), %r(307)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(481)
	cmpq %rbx, %r12		# cmpq %r(307), %r(481)
	jae error_outofbounds		# jae error_outofbounds
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(482)
	movq %r12, -376(%rbp)		# movq %r(483), -376(%rbp)
	movq -368(%rbp), %r12		# movq -368(%rbp), %r(484)
	movq %r12, -104(%rbp)		# movq %r(485), -104(%rbp)
	movq $8, %r12		# movq $8, %r(308)
	movq -376(%rbp), %r13		# movq -376(%rbp), %r(486)
	movq %r13, -184(%rbp)		# movq %r(487), -184(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(488)
	subq %r12, %rbx		# subq %r(308), %r(488)
	movq %rbx, -184(%rbp)		# movq %r(488), -184(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(489)
	movq (%rbx), %rbx		# movq (%r(489)), %r(310)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(490)
	cmpq %rbx, %r12		# cmpq %r(310), %r(490)
	jae error_outofbounds		# jae error_outofbounds
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(491)
	salq $3, %r13		# salq $3, %r(311)
	movq -376(%rbp), %rbx		# movq -376(%rbp), %r(492)
	movq %rbx, -128(%rbp)		# movq %r(493), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(494)
	addq %r13, %r12		# addq %r(311), %r(494)
	movq %r12, -128(%rbp)		# movq %r(494), -128(%rbp)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(495)
	movq %r12, -352(%rbp)		# movq %r(496), -352(%rbp)
	movq -352(%rbp), %rbx		# movq -352(%rbp), %r(497)
	salq $3, %rbx		# salq $3, %r(497)
	movq %rbx, -352(%rbp)		# movq %r(497), -352(%rbp)
	movq -288(%rbp), %r13		# movq -288(%rbp), %r(498)
	movq -352(%rbp), %r12		# movq -352(%rbp), %r(499)
	addq %r12, %r13		# addq %r(499), %r(314)
	movq (%r13), %rbx		# movq (%r(314)), %r(315)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(500)
	movq %rbx, (%r12)		# movq %r(315), (%r(500))
	movq -336(%rbp), %rbx		# movq -336(%rbp), %r(501)
	incq %rbx		# incq %r(501)
	movq %rbx, -336(%rbp)		# movq %r(501), -336(%rbp)
	movq -368(%rbp), %rbx		# movq -368(%rbp), %r(502)
	incq %rbx		# incq %r(502)
	movq %rbx, -368(%rbp)		# movq %r(502), -368(%rbp)
	jmp .L52		# jmp .L52
	.L54:		# .L54:
	.L11:		# .L11:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $464, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IassertEqual_paiai
_IassertEqual_paiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $128, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(540)
	movq %rbx, -40(%rbp)		# movq %r(540), -40(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(541)
	movq %rbx, -80(%rbp)		# movq %r(541), -80(%rbp)
	movq $0, %r12		# movq $0, %r(522)
	movq %r12, -32(%rbp)		# movq %r(542), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(523)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(543)
	subq %rbx, %r13		# subq %r(523), %r(524)
	movq (%r13), %r12		# movq (%r(524)), %r(525)
	movq %r12, -96(%rbp)		# movq %r(544), -96(%rbp)
	.L60:		# .L60:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(545)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(546)
	cmpq %r12, %rbx		# cmpq %r(546), %r(545)
	jge .L62		# jge .L62
	.L61:		# .L61:
	movq $1, %r12		# movq $1, %r(526)
	movq %r12, -48(%rbp)		# movq %r(547), -48(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(548)
	movq %r12, -16(%rbp)		# movq %r(549), -16(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(550)
	movq %r12, -64(%rbp)		# movq %r(551), -64(%rbp)
	movq $8, %r12		# movq $8, %r(527)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(552)
	movq %r13, -8(%rbp)		# movq %r(553), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(554)
	subq %r12, %rbx		# subq %r(527), %r(554)
	movq %rbx, -8(%rbp)		# movq %r(554), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(555)
	movq (%rbx), %rbx		# movq (%r(555)), %r(529)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(556)
	cmpq %rbx, %r12		# cmpq %r(529), %r(556)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(557)
	movq %r12, -112(%rbp)		# movq %r(558), -112(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(559)
	movq %r12, -88(%rbp)		# movq %r(560), -88(%rbp)
	movq $8, %r12		# movq $8, %r(530)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(561)
	movq %r13, -24(%rbp)		# movq %r(562), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(563)
	subq %r12, %rbx		# subq %r(530), %r(563)
	movq %rbx, -24(%rbp)		# movq %r(563), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(564)
	movq (%rbx), %rbx		# movq (%r(564)), %r(532)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(565)
	cmpq %rbx, %r12		# cmpq %r(532), %r(565)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(566)
	salq $3, %r13		# salq $3, %r(533)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(567)
	movq %rbx, -104(%rbp)		# movq %r(568), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(569)
	addq %r13, %r12		# addq %r(533), %r(569)
	movq %r12, -104(%rbp)		# movq %r(569), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(570)
	movq (%rbx), %rbx		# movq (%r(570)), %r(571)
	movq %rbx, -72(%rbp)		# movq %r(571), -72(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(572)
	movq %r12, -56(%rbp)		# movq %r(573), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(574)
	salq $3, %rbx		# salq $3, %r(574)
	movq %rbx, -56(%rbp)		# movq %r(574), -56(%rbp)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(575)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(576)
	addq %r12, %r13		# addq %r(576), %r(537)
	movq (%r13), %rbx		# movq (%r(537)), %r(538)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(577)
	cmpq %rbx, %r12		# cmpq %r(538), %r(577)
	je .L67		# je .L67
	.L68:		# .L68:
	movq $0, %r12		# movq $0, %r(539)
	movq %r12, -48(%rbp)		# movq %r(578), -48(%rbp)
	.L67:		# .L67:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(579)
	movq %rbx, %rdi		# movq %r(579), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(580)
	incq %rbx		# incq %r(580)
	movq %rbx, -32(%rbp)		# movq %r(580), -32(%rbp)
	jmp .L60		# jmp .L60
	.L62:		# .L62:
	.L59:		# .L59:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $128, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $160, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(623)
	movq %rbx, -40(%rbp)		# movq %r(623), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(581)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(624)
	subq %rbx, %r13		# subq %r(581), %r(582)
	movq (%r13), %r12		# movq (%r(582)), %r(583)
	movq %r12, -104(%rbp)		# movq %r(625), -104(%rbp)
	movq $1, %r12		# movq $1, %r(584)
	movq %r12, -16(%rbp)		# movq %r(626), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(585)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(627)
	cmpq %rbx, %r12		# cmpq %r(585), %r(627)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(586)
	movq %rbx, %rax		# movq %r(586), %rax
	jmp .L71		# jmp .L71
	.L69:		# .L69:
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(628)
	salq $3, %r12		# salq $3, %r(587)
	movq %r12, %rdi		# movq %r(587), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(89)
	movq $1, %r13		# movq $1, %r(588)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(629)
	movq %rbx, -72(%rbp)		# movq %r(630), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(631)
	subq %r13, %r12		# subq %r(588), %r(631)
	movq %r12, -72(%rbp)		# movq %r(631), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(632)
	movq %r12, (%r14)		# movq %r(632), (%r(65))
	movq $8, %r12		# movq $8, %r(590)
	addq %r12, %r14		# addq %r(590), %r(591)
	movq %r14, -32(%rbp)		# movq %r(633), -32(%rbp)
	.L72:		# .L72:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(634)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(635)
	cmpq %r12, %rbx		# cmpq %r(635), %r(634)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(636)
	movq %r12, -96(%rbp)		# movq %r(637), -96(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(638)
	movq %r12, -64(%rbp)		# movq %r(639), -64(%rbp)
	movq $8, %r12		# movq $8, %r(592)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(640)
	movq %r13, -144(%rbp)		# movq %r(641), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(642)
	subq %r12, %rbx		# subq %r(592), %r(642)
	movq %rbx, -144(%rbp)		# movq %r(642), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(643)
	movq (%rbx), %rbx		# movq (%r(643)), %r(594)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(644)
	cmpq %rbx, %r12		# cmpq %r(594), %r(644)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(645)
	movq %r12, -24(%rbp)		# movq %r(646), -24(%rbp)
	movq $1, %r12		# movq $1, %r(595)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(647)
	movq %r13, -80(%rbp)		# movq %r(648), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(649)
	subq %r12, %rbx		# subq %r(595), %r(649)
	movq %rbx, -80(%rbp)		# movq %r(649), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(650)
	movq %r12, -8(%rbp)		# movq %r(651), -8(%rbp)
	movq $8, %r12		# movq $8, %r(597)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(652)
	movq %r13, -88(%rbp)		# movq %r(653), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(654)
	subq %r12, %rbx		# subq %r(597), %r(654)
	movq %rbx, -88(%rbp)		# movq %r(654), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(655)
	movq (%rbx), %rbx		# movq (%r(655)), %r(599)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(656)
	cmpq %rbx, %r12		# cmpq %r(599), %r(656)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(657)
	salq $3, %r13		# salq $3, %r(600)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(658)
	movq %rbx, -128(%rbp)		# movq %r(659), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(660)
	addq %r13, %r12		# addq %r(600), %r(660)
	movq %r12, -128(%rbp)		# movq %r(660), -128(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(661)
	movq %r12, -136(%rbp)		# movq %r(662), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(663)
	salq $3, %rbx		# salq $3, %r(663)
	movq %rbx, -136(%rbp)		# movq %r(663), -136(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(664)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(665)
	addq %r12, %r13		# addq %r(665), %r(603)
	movq (%r13), %rbx		# movq (%r(603)), %r(604)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(666)
	movq %rbx, (%r12)		# movq %r(604), (%r(666))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(667)
	incq %rbx		# incq %r(667)
	movq %rbx, -16(%rbp)		# movq %r(667), -16(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq -40(%rbp), %r15		# movq -40(%rbp), %r(668)
	movq $0, %r12		# movq $0, %r(605)
	movq %r12, %r14		# movq %r(605), %r(72)
	movq $8, %r12		# movq $8, %r(606)
	movq %r15, %r13		# movq %r(71), %r(607)
	subq %r12, %r13		# subq %r(606), %r(607)
	movq (%r13), %r12		# movq (%r(607)), %r(608)
	cmpq %r12, %r14		# cmpq %r(608), %r(72)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(72), %r(609)
	salq $3, %r12		# salq $3, %r(609)
	movq %r15, %rbx		# movq %r(71), %r(610)
	addq %r12, %rbx		# addq %r(609), %r(610)
	movq (%rbx), %r12		# movq (%r(610)), %r(611)
	movq %r12, -16(%rbp)		# movq %r(669), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(612)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(670)
	addq %rbx, %r12		# addq %r(612), %r(613)
	salq $3, %r12		# salq $3, %r(614)
	movq %r12, %rdi		# movq %r(614), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(90)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(671)
	movq %r12, (%rbx)		# movq %r(671), (%r(74))
	movq $8, %r12		# movq $8, %r(615)
	addq %r12, %rbx		# addq %r(615), %r(616)
	movq %rbx, -56(%rbp)		# movq %r(672), -56(%rbp)
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(617)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(673)
	cmpq %rbx, %r12		# cmpq %r(617), %r(673)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(674)
	decq %rbx		# decq %r(674)
	movq %rbx, -16(%rbp)		# movq %r(674), -16(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(675)
	movq %rbx, %rdi		# movq %r(675), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(91)
	movq %rbx, -120(%rbp)		# movq %r(676), -120(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(677)
	movq %r12, -48(%rbp)		# movq %r(678), -48(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(679)
	movq $8, %r13		# movq $8, %r(618)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(680)
	movq %r14, -112(%rbp)		# movq %r(681), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(682)
	subq %r13, %r12		# subq %r(618), %r(682)
	movq %r12, -112(%rbp)		# movq %r(682), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(683)
	movq (%r12), %r12		# movq (%r(683)), %r(620)
	cmpq %r12, %rbx		# cmpq %r(620), %r(79)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(621)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(684)
	addq %rbx, %r13		# addq %r(621), %r(622)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(685)
	movq %rbx, (%r13)		# movq %r(685), (%r(622))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(686)
	movq %rbx, %rax		# movq %r(686), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $160, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
