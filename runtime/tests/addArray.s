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
	movq $32, %rbx		# movq $32, %r(118)
	movq %rbx, %rdi		# movq %r(118), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(108)
	movq $3, %r12		# movq $3, %r(119)
	movq %r12, (%rbx)		# movq %r(119), (%r(95))
	movq $8, %r12		# movq $8, %r(120)
	addq %r12, %rbx		# addq %r(120), %r(121)
	movq $0, %r12		# movq $0, %r(122)
	movq %rbx, %r14		# movq %r(94), %r(123)
	addq %r12, %r14		# addq %r(122), %r(123)
	movq $65, %r12		# movq $65, %r(124)
	movq %r12, (%r14)		# movq %r(124), (%r(123))
	movq $8, %r12		# movq $8, %r(125)
	movq %rbx, %r14		# movq %r(94), %r(126)
	addq %r12, %r14		# addq %r(125), %r(126)
	movq $66, %r12		# movq $66, %r(127)
	movq %r12, (%r14)		# movq %r(127), (%r(126))
	movq $16, %r12		# movq $16, %r(128)
	movq %rbx, %r14		# movq %r(94), %r(129)
	addq %r12, %r14		# addq %r(128), %r(129)
	movq $67, %r12		# movq $67, %r(130)
	movq %r12, (%r14)		# movq %r(130), (%r(129))
	leaq .L45(%rip), %rdi		# leaq .L45(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(109)
	movq %r12, %rdi		# movq %r(109), %rdi
	movq %rbx, %rsi		# movq %r(b), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(110)
	movq %rbx, %r14		# movq %r(110), %r(a)
	movq $32, %rbx		# movq $32, %r(132)
	movq %rbx, %rdi		# movq %r(132), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(111)
	movq $3, %r12		# movq $3, %r(133)
	movq %r12, (%r13)		# movq %r(133), (%r(98))
	movq $8, %r12		# movq $8, %r(134)
	addq %r12, %r13		# addq %r(134), %r(135)
	movq $0, %rbx		# movq $0, %r(136)
	movq %r13, %r12		# movq %r(97), %r(137)
	addq %rbx, %r12		# addq %r(136), %r(137)
	movq $70, %rbx		# movq $70, %r(138)
	movq %rbx, (%r12)		# movq %r(138), (%r(137))
	movq $8, %rbx		# movq $8, %r(139)
	movq %r13, %r12		# movq %r(97), %r(140)
	addq %rbx, %r12		# addq %r(139), %r(140)
	movq $71, %rbx		# movq $71, %r(141)
	movq %rbx, (%r12)		# movq %r(141), (%r(140))
	movq $16, %rbx		# movq $16, %r(142)
	movq %r13, %r12		# movq %r(97), %r(143)
	addq %rbx, %r12		# addq %r(142), %r(143)
	movq $72, %rbx		# movq $72, %r(144)
	movq %rbx, (%r12)		# movq %r(144), (%r(143))
	movq %r14, %rdi		# movq %r(a), %rdi
	movq %r13, %rsi		# movq %r(97), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(112)
	movq $32, %rbx		# movq $32, %r(145)
	movq %rbx, %rdi		# movq %r(145), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(113)
	movq $3, %r12		# movq $3, %r(146)
	movq %r12, (%r13)		# movq %r(146), (%r(100))
	movq $8, %r12		# movq $8, %r(147)
	addq %r12, %r13		# addq %r(147), %r(148)
	movq $0, %rbx		# movq $0, %r(149)
	movq %r13, %r12		# movq %r(99), %r(150)
	addq %rbx, %r12		# addq %r(149), %r(150)
	movq $73, %rbx		# movq $73, %r(151)
	movq %rbx, (%r12)		# movq %r(151), (%r(150))
	movq $8, %rbx		# movq $8, %r(152)
	movq %r13, %r12		# movq %r(99), %r(153)
	addq %rbx, %r12		# addq %r(152), %r(153)
	movq $74, %rbx		# movq $74, %r(154)
	movq %rbx, (%r12)		# movq %r(154), (%r(153))
	movq $16, %rbx		# movq $16, %r(155)
	movq %r13, %r12		# movq %r(99), %r(156)
	addq %rbx, %r12		# addq %r(155), %r(156)
	movq $75, %rbx		# movq $75, %r(157)
	movq %rbx, (%r12)		# movq %r(157), (%r(156))
	movq %r14, %rdi		# movq %r(112), %rdi
	movq %r13, %rsi		# movq %r(99), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(114)
	movq %rbx, %rdi		# movq %r(114), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(170)
	movq %rbx, -16(%rbp)		# movq %r(170), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(171)
	movq (%rbx), %rbx		# movq (%r(171)), %r(158)
	movq %rbx, %r14		# movq %r(158), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(159)
	salq $3, %rbx		# salq $3, %r(159)
	movq $8, %r12		# movq $8, %r(160)
	addq %r12, %rbx		# addq %r(160), %r(161)
	movq %rbx, %rdi		# movq %r(161), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(116)
	movq %rbx, %r15		# movq %r(116), %r(t27)
	.L24:		# .L24:
	movq %r14, %rbx		# movq %r(t10), %r(162)
	salq $3, %rbx		# salq $3, %r(162)
	movq %r15, %r12		# movq %r(t27), %r(163)
	addq %rbx, %r12		# addq %r(162), %r(163)
	movq %r14, %r13		# movq %r(t10), %r(164)
	salq $3, %r13		# salq $3, %r(164)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(172)
	movq %rbx, -8(%rbp)		# movq %r(173), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(174)
	addq %r13, %rbx		# addq %r(164), %r(174)
	movq %rbx, -8(%rbp)		# movq %r(174), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(175)
	movq (%rbx), %rbx		# movq (%r(175)), %r(166)
	movq %rbx, (%r12)		# movq %r(166), (%r(163))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(167)
	cmpq %rbx, %r14		# cmpq %r(167), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(168)
	movq %r15, %r12		# movq %r(t27), %r(169)
	addq %rbx, %r12		# addq %r(168), %r(169)
	movq %r12, %rax		# movq %r(169), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(199)
	movq %rbx, -16(%rbp)		# movq %r(199), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(200)
	movq %rbx, -24(%rbp)		# movq %r(200), -24(%rbp)
	movq $0, %r12		# movq $0, %r(176)
	movq %r12, -56(%rbp)		# movq %r(201), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(177)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(202)
	subq %rbx, %r13		# subq %r(177), %r(178)
	movq (%r13), %r12		# movq (%r(178)), %r(179)
	movq %r12, -64(%rbp)		# movq %r(203), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(180)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(204)
	subq %rbx, %r13		# subq %r(180), %r(181)
	movq (%r13), %rbx		# movq (%r(181)), %r(182)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(205)
	addq %rbx, %r12		# addq %r(182), %r(183)
	movq %r12, -32(%rbp)		# movq %r(206), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(184)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(207)
	addq %rbx, %r13		# addq %r(184), %r(185)
	movq %r13, %rdi		# movq %r(185), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(117)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(208)
	movq %r12, (%r13)		# movq %r(208), (%r(105))
	movq $8, %r12		# movq $8, %r(186)
	addq %r12, %r13		# addq %r(186), %r(187)
	movq %r13, -8(%rbp)		# movq %r(209), -8(%rbp)
	.L46:		# .L46:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(210)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(211)
	cmpq %r12, %rbx		# cmpq %r(211), %r(210)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(212)
	salq $3, %r13		# salq $3, %r(188)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(213)
	movq %rbx, -48(%rbp)		# movq %r(214), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(215)
	addq %r13, %r12		# addq %r(188), %r(215)
	movq %r12, -48(%rbp)		# movq %r(215), -48(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(216)
	salq $3, %r13		# salq $3, %r(190)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(217)
	movq %rbx, -40(%rbp)		# movq %r(218), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(219)
	addq %r13, %r12		# addq %r(190), %r(219)
	movq %r12, -40(%rbp)		# movq %r(219), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(220)
	movq (%rbx), %rbx		# movq (%r(220)), %r(192)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(221)
	movq %rbx, (%r12)		# movq %r(192), (%r(221))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(222)
	incq %rbx		# incq %r(222)
	movq %rbx, -56(%rbp)		# movq %r(222), -56(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(223)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(224)
	cmpq %rbx, %r12		# cmpq %r(223), %r(224)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(225)
	salq $3, %r13		# salq $3, %r(193)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(226)
	addq %r13, %r15		# addq %r(193), %r(194)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(227)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(228)
	subq %r13, %rbx		# subq %r(228), %r(195)
	salq $3, %rbx		# salq $3, %r(196)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(229)
	addq %rbx, %r12		# addq %r(196), %r(197)
	movq (%r12), %rbx		# movq (%r(197)), %r(198)
	movq %rbx, (%r15)		# movq %r(198), (%r(194))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(230)
	incq %rbx		# incq %r(230)
	movq %rbx, -56(%rbp)		# movq %r(230), -56(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(231)
	movq %rbx, %rax		# movq %r(231), %rax
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

