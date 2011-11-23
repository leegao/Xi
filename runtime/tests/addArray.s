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
	movq $32, %rbx		# movq $32, %r(121)
	movq %rbx, %rdi		# movq %r(121), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(111)
	movq $3, %r12		# movq $3, %r(122)
	movq %r12, (%rbx)		# movq %r(122), (%r(98))
	movq $8, %r12		# movq $8, %r(123)
	addq %r12, %rbx		# addq %r(123), %r(124)
	movq $0, %r12		# movq $0, %r(125)
	movq %rbx, %r14		# movq %r(97), %r(126)
	addq %r12, %r14		# addq %r(125), %r(126)
	movq $65, %r12		# movq $65, %r(127)
	movq %r12, (%r14)		# movq %r(127), (%r(126))
	movq $8, %r12		# movq $8, %r(128)
	movq %rbx, %r14		# movq %r(97), %r(129)
	addq %r12, %r14		# addq %r(128), %r(129)
	movq $66, %r12		# movq $66, %r(130)
	movq %r12, (%r14)		# movq %r(130), (%r(129))
	movq $16, %r12		# movq $16, %r(131)
	movq %rbx, %r14		# movq %r(97), %r(132)
	addq %r12, %r14		# addq %r(131), %r(132)
	movq $67, %r12		# movq $67, %r(133)
	movq %r12, (%r14)		# movq %r(133), (%r(132))
	leaq .L45(%rip), %rdi		# leaq .L45(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(112)
	movq %r12, %rdi		# movq %r(112), %rdi
	movq %rbx, %rsi		# movq %r(b), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(113)
	movq %rbx, %r14		# movq %r(113), %r(a)
	movq $32, %rbx		# movq $32, %r(135)
	movq %rbx, %rdi		# movq %r(135), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(114)
	movq $3, %r12		# movq $3, %r(136)
	movq %r12, (%r13)		# movq %r(136), (%r(101))
	movq $8, %r12		# movq $8, %r(137)
	addq %r12, %r13		# addq %r(137), %r(138)
	movq $0, %rbx		# movq $0, %r(139)
	movq %r13, %r12		# movq %r(100), %r(140)
	addq %rbx, %r12		# addq %r(139), %r(140)
	movq $70, %rbx		# movq $70, %r(141)
	movq %rbx, (%r12)		# movq %r(141), (%r(140))
	movq $8, %rbx		# movq $8, %r(142)
	movq %r13, %r12		# movq %r(100), %r(143)
	addq %rbx, %r12		# addq %r(142), %r(143)
	movq $71, %rbx		# movq $71, %r(144)
	movq %rbx, (%r12)		# movq %r(144), (%r(143))
	movq $16, %rbx		# movq $16, %r(145)
	movq %r13, %r12		# movq %r(100), %r(146)
	addq %rbx, %r12		# addq %r(145), %r(146)
	movq $72, %rbx		# movq $72, %r(147)
	movq %rbx, (%r12)		# movq %r(147), (%r(146))
	movq %r14, %rdi		# movq %r(a), %rdi
	movq %r13, %rsi		# movq %r(100), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(115)
	movq $32, %rbx		# movq $32, %r(148)
	movq %rbx, %rdi		# movq %r(148), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(116)
	movq $3, %r12		# movq $3, %r(149)
	movq %r12, (%r13)		# movq %r(149), (%r(103))
	movq $8, %r12		# movq $8, %r(150)
	addq %r12, %r13		# addq %r(150), %r(151)
	movq $0, %rbx		# movq $0, %r(152)
	movq %r13, %r12		# movq %r(102), %r(153)
	addq %rbx, %r12		# addq %r(152), %r(153)
	movq $73, %rbx		# movq $73, %r(154)
	movq %rbx, (%r12)		# movq %r(154), (%r(153))
	movq $8, %rbx		# movq $8, %r(155)
	movq %r13, %r12		# movq %r(102), %r(156)
	addq %rbx, %r12		# addq %r(155), %r(156)
	movq $74, %rbx		# movq $74, %r(157)
	movq %rbx, (%r12)		# movq %r(157), (%r(156))
	movq $16, %rbx		# movq $16, %r(158)
	movq %r13, %r12		# movq %r(102), %r(159)
	addq %rbx, %r12		# addq %r(158), %r(159)
	movq $75, %rbx		# movq $75, %r(160)
	movq %rbx, (%r12)		# movq %r(160), (%r(159))
	movq %r14, %rdi		# movq %r(115), %rdi
	movq %r13, %rsi		# movq %r(102), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(117)
	movq %rbx, %rdi		# movq %r(117), %rdi
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(161)
	movq %r12, -16(%rbp)		# movq %r(173), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(174)
	salq $3, %rbx		# salq $3, %r(162)
	movq $8, %r12		# movq $8, %r(163)
	addq %r12, %rbx		# addq %r(163), %r(164)
	movq %rbx, %rdi		# movq %r(164), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(119)
	movq %rbx, %r13		# movq %r(119), %r(t27)
	.L24:		# .L24:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(175)
	salq $3, %r12		# salq $3, %r(165)
	movq %r13, %r15		# movq %r(t27), %r(166)
	addq %r12, %r15		# addq %r(165), %r(166)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(176)
	movq %rbx, %r12		# movq %r(176), %r(167)
	salq $3, %r12		# salq $3, %r(167)
	movq %r14, %rbx		# movq %r(p0), %r(177)
	movq %rbx, -8(%rbp)		# movq %r(177), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(178)
	addq %r12, %rbx		# addq %r(167), %r(178)
	movq %rbx, -8(%rbp)		# movq %r(178), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(179)
	movq (%rbx), %rbx		# movq (%r(179)), %r(169)
	movq %rbx, (%r15)		# movq %r(169), (%r(166))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(180)
	decq %rbx		# decq %r(180)
	movq %rbx, -16(%rbp)		# movq %r(180), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(170)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(181)
	cmpq %rbx, %r12		# cmpq %r(170), %r(181)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(171)
	movq %r13, %r12		# movq %r(t27), %r(172)
	addq %rbx, %r12		# addq %r(171), %r(172)
	movq %r12, %rax		# movq %r(172), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(205)
	movq %rbx, -56(%rbp)		# movq %r(205), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(206)
	movq %rbx, -64(%rbp)		# movq %r(206), -64(%rbp)
	movq $0, %r12		# movq $0, %r(182)
	movq %r12, -32(%rbp)		# movq %r(207), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(183)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(208)
	subq %rbx, %r13		# subq %r(183), %r(184)
	movq (%r13), %r12		# movq (%r(184)), %r(185)
	movq %r12, -40(%rbp)		# movq %r(209), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(186)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(210)
	subq %rbx, %r13		# subq %r(186), %r(187)
	movq (%r13), %rbx		# movq (%r(187)), %r(188)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(211)
	addq %rbx, %r12		# addq %r(188), %r(189)
	movq %r12, -8(%rbp)		# movq %r(212), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(190)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(213)
	addq %rbx, %r13		# addq %r(190), %r(191)
	movq %r13, %rdi		# movq %r(191), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(120)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(214)
	movq %r12, (%r13)		# movq %r(214), (%r(108))
	movq $8, %r12		# movq $8, %r(192)
	addq %r12, %r13		# addq %r(192), %r(193)
	movq %r13, -48(%rbp)		# movq %r(215), -48(%rbp)
	.L46:		# .L46:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(216)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(217)
	cmpq %r12, %rbx		# cmpq %r(217), %r(216)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(218)
	salq $3, %r13		# salq $3, %r(194)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(219)
	movq %rbx, -16(%rbp)		# movq %r(220), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(221)
	addq %r13, %r12		# addq %r(194), %r(221)
	movq %r12, -16(%rbp)		# movq %r(221), -16(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(222)
	salq $3, %r13		# salq $3, %r(196)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(223)
	movq %rbx, -24(%rbp)		# movq %r(224), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(225)
	addq %r13, %r12		# addq %r(196), %r(225)
	movq %r12, -24(%rbp)		# movq %r(225), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(226)
	movq (%rbx), %rbx		# movq (%r(226)), %r(198)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(227)
	movq %rbx, (%r12)		# movq %r(198), (%r(227))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(228)
	incq %rbx		# incq %r(228)
	movq %rbx, -32(%rbp)		# movq %r(228), -32(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(229)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(230)
	cmpq %rbx, %r12		# cmpq %r(229), %r(230)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(231)
	salq $3, %r13		# salq $3, %r(199)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(232)
	addq %r13, %r15		# addq %r(199), %r(200)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(233)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(234)
	subq %r13, %rbx		# subq %r(234), %r(201)
	salq $3, %rbx		# salq $3, %r(202)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(235)
	addq %rbx, %r12		# addq %r(202), %r(203)
	movq (%r12), %rbx		# movq (%r(203)), %r(204)
	movq %rbx, (%r15)		# movq %r(204), (%r(200))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(236)
	incq %rbx		# incq %r(236)
	movq %rbx, -32(%rbp)		# movq %r(236), -32(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(237)
	movq %rbx, %rax		# movq %r(237), %rax
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

