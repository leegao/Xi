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
	movq $32, %rbx		# movq $32, %r(124)
	movq %rbx, %rdi		# movq %r(124), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(114)
	movq $3, %r12		# movq $3, %r(125)
	movq %r12, (%rbx)		# movq %r(125), (%r(101))
	movq $8, %r12		# movq $8, %r(126)
	addq %r12, %rbx		# addq %r(126), %r(127)
	movq $0, %r12		# movq $0, %r(128)
	movq %rbx, %r14		# movq %r(100), %r(129)
	addq %r12, %r14		# addq %r(128), %r(129)
	movq $65, %r12		# movq $65, %r(130)
	movq %r12, (%r14)		# movq %r(130), (%r(129))
	movq $8, %r12		# movq $8, %r(131)
	movq %rbx, %r14		# movq %r(100), %r(132)
	addq %r12, %r14		# addq %r(131), %r(132)
	movq $66, %r12		# movq $66, %r(133)
	movq %r12, (%r14)		# movq %r(133), (%r(132))
	movq $16, %r12		# movq $16, %r(134)
	movq %rbx, %r14		# movq %r(100), %r(135)
	addq %r12, %r14		# addq %r(134), %r(135)
	movq $67, %r12		# movq $67, %r(136)
	movq %r12, (%r14)		# movq %r(136), (%r(135))
	leaq .L45(%rip), %rdi		# leaq .L45(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(115)
	movq %r12, %rdi		# movq %r(115), %rdi
	movq %rbx, %rsi		# movq %r(b), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(116)
	movq %rbx, %r14		# movq %r(116), %r(a)
	movq $32, %rbx		# movq $32, %r(138)
	movq %rbx, %rdi		# movq %r(138), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(117)
	movq $3, %r12		# movq $3, %r(139)
	movq %r12, (%r13)		# movq %r(139), (%r(104))
	movq $8, %r12		# movq $8, %r(140)
	addq %r12, %r13		# addq %r(140), %r(141)
	movq $0, %rbx		# movq $0, %r(142)
	movq %r13, %r12		# movq %r(103), %r(143)
	addq %rbx, %r12		# addq %r(142), %r(143)
	movq $70, %rbx		# movq $70, %r(144)
	movq %rbx, (%r12)		# movq %r(144), (%r(143))
	movq $8, %rbx		# movq $8, %r(145)
	movq %r13, %r12		# movq %r(103), %r(146)
	addq %rbx, %r12		# addq %r(145), %r(146)
	movq $71, %rbx		# movq $71, %r(147)
	movq %rbx, (%r12)		# movq %r(147), (%r(146))
	movq $16, %rbx		# movq $16, %r(148)
	movq %r13, %r12		# movq %r(103), %r(149)
	addq %rbx, %r12		# addq %r(148), %r(149)
	movq $72, %rbx		# movq $72, %r(150)
	movq %rbx, (%r12)		# movq %r(150), (%r(149))
	movq %r14, %rdi		# movq %r(a), %rdi
	movq %r13, %rsi		# movq %r(103), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(118)
	movq $32, %rbx		# movq $32, %r(151)
	movq %rbx, %rdi		# movq %r(151), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(119)
	movq $3, %r12		# movq $3, %r(152)
	movq %r12, (%r13)		# movq %r(152), (%r(106))
	movq $8, %r12		# movq $8, %r(153)
	addq %r12, %r13		# addq %r(153), %r(154)
	movq $0, %rbx		# movq $0, %r(155)
	movq %r13, %r12		# movq %r(105), %r(156)
	addq %rbx, %r12		# addq %r(155), %r(156)
	movq $73, %rbx		# movq $73, %r(157)
	movq %rbx, (%r12)		# movq %r(157), (%r(156))
	movq $8, %rbx		# movq $8, %r(158)
	movq %r13, %r12		# movq %r(105), %r(159)
	addq %rbx, %r12		# addq %r(158), %r(159)
	movq $74, %rbx		# movq $74, %r(160)
	movq %rbx, (%r12)		# movq %r(160), (%r(159))
	movq $16, %rbx		# movq $16, %r(161)
	movq %r13, %r12		# movq %r(105), %r(162)
	addq %rbx, %r12		# addq %r(161), %r(162)
	movq $75, %rbx		# movq $75, %r(163)
	movq %rbx, (%r12)		# movq %r(163), (%r(162))
	movq %r14, %rdi		# movq %r(118), %rdi
	movq %r13, %rsi		# movq %r(105), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(120)
	movq %rbx, %rdi		# movq %r(120), %rdi
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(176)
	movq %rbx, -8(%rbp)		# movq %r(176), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(177)
	movq (%rbx), %r12		# movq (%r(177)), %r(164)
	movq %r12, -16(%rbp)		# movq %r(178), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(179)
	salq $3, %rbx		# salq $3, %r(165)
	movq $8, %r12		# movq $8, %r(166)
	addq %r12, %rbx		# addq %r(166), %r(167)
	movq %rbx, %rdi		# movq %r(167), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(122)
	movq %rbx, %r14		# movq %r(122), %r(t27)
	.L24:		# .L24:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(180)
	salq $3, %r12		# salq $3, %r(168)
	movq %r14, %r13		# movq %r(t27), %r(169)
	addq %r12, %r13		# addq %r(168), %r(169)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(181)
	movq %rbx, %r12		# movq %r(181), %r(170)
	salq $3, %r12		# salq $3, %r(170)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(182)
	movq %rbx, -24(%rbp)		# movq %r(183), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(184)
	addq %r12, %rbx		# addq %r(170), %r(184)
	movq %rbx, -24(%rbp)		# movq %r(184), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(185)
	movq (%rbx), %rbx		# movq (%r(185)), %r(172)
	movq %rbx, (%r13)		# movq %r(172), (%r(169))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(186)
	decq %rbx		# decq %r(186)
	movq %rbx, -16(%rbp)		# movq %r(186), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(173)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(187)
	cmpq %rbx, %r12		# cmpq %r(173), %r(187)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(174)
	movq %r14, %r12		# movq %r(t27), %r(175)
	addq %rbx, %r12		# addq %r(174), %r(175)
	movq %r12, %rax		# movq %r(175), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(211)
	movq %rbx, -40(%rbp)		# movq %r(211), -40(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(212)
	movq %rbx, -24(%rbp)		# movq %r(212), -24(%rbp)
	movq $0, %r12		# movq $0, %r(188)
	movq %r12, -16(%rbp)		# movq %r(213), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(189)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(214)
	subq %rbx, %r13		# subq %r(189), %r(190)
	movq (%r13), %r12		# movq (%r(190)), %r(191)
	movq %r12, -56(%rbp)		# movq %r(215), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(192)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(216)
	subq %rbx, %r13		# subq %r(192), %r(193)
	movq (%r13), %rbx		# movq (%r(193)), %r(194)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(217)
	addq %rbx, %r12		# addq %r(194), %r(195)
	movq %r12, -48(%rbp)		# movq %r(218), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(196)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(219)
	addq %rbx, %r13		# addq %r(196), %r(197)
	movq %r13, %rdi		# movq %r(197), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(123)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(220)
	movq %r12, (%r13)		# movq %r(220), (%r(111))
	movq $8, %r12		# movq $8, %r(198)
	addq %r12, %r13		# addq %r(198), %r(199)
	movq %r13, -64(%rbp)		# movq %r(221), -64(%rbp)
	.L46:		# .L46:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(222)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(223)
	cmpq %r12, %rbx		# cmpq %r(223), %r(222)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(224)
	salq $3, %r13		# salq $3, %r(200)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(225)
	movq %rbx, -32(%rbp)		# movq %r(226), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(227)
	addq %r13, %r12		# addq %r(200), %r(227)
	movq %r12, -32(%rbp)		# movq %r(227), -32(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(228)
	salq $3, %r13		# salq $3, %r(202)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(229)
	movq %rbx, -8(%rbp)		# movq %r(230), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(231)
	addq %r13, %r12		# addq %r(202), %r(231)
	movq %r12, -8(%rbp)		# movq %r(231), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(232)
	movq (%rbx), %rbx		# movq (%r(232)), %r(204)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(233)
	movq %rbx, (%r12)		# movq %r(204), (%r(233))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(234)
	incq %rbx		# incq %r(234)
	movq %rbx, -16(%rbp)		# movq %r(234), -16(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(235)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(236)
	cmpq %r12, %rbx		# cmpq %r(236), %r(235)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(237)
	salq $3, %r13		# salq $3, %r(205)
	movq -64(%rbp), %r15		# movq -64(%rbp), %r(238)
	addq %r13, %r15		# addq %r(205), %r(206)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(239)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(240)
	subq %r13, %rbx		# subq %r(240), %r(207)
	salq $3, %rbx		# salq $3, %r(208)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(241)
	addq %rbx, %r12		# addq %r(208), %r(209)
	movq (%r12), %rbx		# movq (%r(209)), %r(210)
	movq %rbx, (%r15)		# movq %r(210), (%r(206))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(242)
	incq %rbx		# incq %r(242)
	movq %rbx, -16(%rbp)		# movq %r(242), -16(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(243)
	movq %rbx, %rax		# movq %r(243), %rax
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
.L45:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

