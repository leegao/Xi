.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $32, %rbx		# movq $32, %r(95)
	movq %rbx, %rdi		# movq %r(95), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(85)
	movq (%r15), %rbx		# movq (%r(72)), %r(96)
	movq $3, %rbx		# movq $3, %r(96)
	addq $8, %r15		# addq $8, %r(97)
	movq %r15, %r13		# movq %r(71), %r(98)
	addq $0, %r13		# addq $0, %r(98)
	movq (%r13), %rbx		# movq (%r(98)), %r(99)
	movq $65, %rbx		# movq $65, %r(99)
	movq %r15, %r13		# movq %r(71), %r(100)
	addq $8, %r13		# addq $8, %r(100)
	movq (%r13), %rbx		# movq (%r(100)), %r(101)
	movq $66, %rbx		# movq $66, %r(101)
	movq %r15, %rbx		# movq %r(71), %r(102)
	addq $16, %rbx		# addq $16, %r(102)
	movq (%rbx), %rbx		# movq (%r(102)), %r(103)
	movq $67, %rbx		# movq $67, %r(103)
	leaq .L45(%rip), %rdi		# leaq .L45(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(86)
	movq %r12, %rdi		# movq %r(86), %rdi
	movq %r15, %rsi		# movq %r(b), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(87)
	movq $32, %r12		# movq $32, %r(105)
	movq %r12, %rdi		# movq %r(105), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(123)
	movq %r12, -32(%rbp)		# movq %r(123), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(124)
	movq %r13, -24(%rbp)		# movq %r(125), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(126)
	movq (%r12), %rbx		# movq (%r(126)), %r(106)
	movq $3, %rbx		# movq $3, %r(106)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(127)
	movq %r13, -8(%rbp)		# movq %r(128), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(129)
	addq $8, %r12		# addq $8, %r(129)
	movq %r12, -8(%rbp)		# movq %r(129), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(130)
	movq %r13, -16(%rbp)		# movq %r(131), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(132)
	addq $0, %r13		# addq $0, %r(108)
	movq (%r13), %rbx		# movq (%r(108)), %r(109)
	movq $70, %rbx		# movq $70, %r(109)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(133)
	addq $8, %r13		# addq $8, %r(110)
	movq (%r13), %rbx		# movq (%r(110)), %r(111)
	movq $71, %rbx		# movq $71, %r(111)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(134)
	addq $16, %r13		# addq $16, %r(112)
	movq (%r13), %rbx		# movq (%r(112)), %r(113)
	movq $72, %rbx		# movq $72, %r(113)
	movq %rbx, %rdi		# movq %r(a), %rdi
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(135)
	movq %rbx, %rsi		# movq %r(135), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r13		# movq %rax, %r(89)
	movq $32, %rbx		# movq $32, %r(114)
	movq %rbx, %rdi		# movq %r(114), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(90)
	movq (%r15), %rbx		# movq (%r(77)), %r(115)
	movq $3, %rbx		# movq $3, %r(115)
	addq $8, %r15		# addq $8, %r(116)
	movq %r15, %r14		# movq %r(76), %r(117)
	addq $0, %r14		# addq $0, %r(117)
	movq (%r14), %rbx		# movq (%r(117)), %r(118)
	movq $73, %rbx		# movq $73, %r(118)
	movq %r15, %r14		# movq %r(76), %r(119)
	addq $8, %r14		# addq $8, %r(119)
	movq (%r14), %rbx		# movq (%r(119)), %r(120)
	movq $74, %rbx		# movq $74, %r(120)
	movq %r15, %rbx		# movq %r(76), %r(121)
	addq $16, %rbx		# addq $16, %r(121)
	movq (%rbx), %rbx		# movq (%r(121)), %r(122)
	movq $75, %rbx		# movq $75, %r(122)
	movq %r13, %rdi		# movq %r(89), %rdi
	movq %r15, %rsi		# movq %r(76), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(91)
	movq %rbx, %rdi		# movq %r(91), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L44:		# .L44:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strdup_aii
_I_c_internal_strdup_aii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %rbx		# movq (%r(p0)), %r(136)
	movq %rbx, %r12		# movq %r(136), %r(t10)
	movq %r12, %rbx		# movq %r(t10), %r(137)
	salq $3, %rbx		# salq $3, %r(137)
	addq $8, %rbx		# addq $8, %r(138)
	movq %rbx, %rdi		# movq %r(138), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(93)
	movq %rbx, %r13		# movq %r(93), %r(t27)
	.L24:		# .L24:
	movq %r12, %r14		# movq %r(t10), %r(139)
	salq $3, %r14		# salq $3, %r(139)
	movq %r13, %rbx		# movq %r(t27), %r(146)
	movq %rbx, -8(%rbp)		# movq %r(146), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(147)
	addq %r14, %rbx		# addq %r(139), %r(147)
	movq %rbx, -8(%rbp)		# movq %r(147), -8(%rbp)
	movq %r12, %rbx		# movq %r(t10), %r(141)
	salq $3, %rbx		# salq $3, %r(141)
	movq %r15, %r14		# movq %r(p0), %r(142)
	addq %rbx, %r14		# addq %r(141), %r(142)
	movq (%r14), %rbx		# movq (%r(142)), %r(143)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(148)
	movq %rbx, (%r14)		# movq %r(143), (%r(148))
	decq %r12		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(144)
	cmpq %rbx, %r12		# cmpq %r(144), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq %r13, %rbx		# movq %r(t27), %r(145)
	addq $8, %rbx		# addq $8, %r(145)
	movq %rbx, %rax		# movq %r(145), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(167)
	movq %rbx, -48(%rbp)		# movq %r(167), -48(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(168)
	movq %rbx, -32(%rbp)		# movq %r(168), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(169)
	movq %rbx, -56(%rbp)		# movq %r(169), -56(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(170)
	subq $8, %r12		# subq $8, %r(149)
	movq (%r12), %r12		# movq (%r(149)), %r(150)
	movq %r12, -16(%rbp)		# movq %r(171), -16(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(172)
	subq $8, %r12		# subq $8, %r(151)
	movq (%r12), %rbx		# movq (%r(151)), %r(152)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(173)
	addq %rbx, %r12		# addq %r(152), %r(153)
	movq %r12, -64(%rbp)		# movq %r(174), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(175)
	addq $1, %r12		# addq $1, %r(154)
	movq %r12, %rdi		# movq %r(154), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(94)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(176)
	movq %r12, (%r13)		# movq %r(176), (%r(82))
	addq $8, %r13		# addq $8, %r(155)
	movq %r13, -8(%rbp)		# movq %r(177), -8(%rbp)
	.L46:		# .L46:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(178)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(179)
	cmpq %rbx, %r12		# cmpq %r(178), %r(179)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(180)
	salq $3, %r13		# salq $3, %r(156)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(181)
	movq %rbx, -40(%rbp)		# movq %r(182), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(183)
	addq %r13, %r12		# addq %r(156), %r(183)
	movq %r12, -40(%rbp)		# movq %r(183), -40(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(184)
	salq $3, %r13		# salq $3, %r(158)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(185)
	movq %rbx, -24(%rbp)		# movq %r(186), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(187)
	addq %r13, %r12		# addq %r(158), %r(187)
	movq %r12, -24(%rbp)		# movq %r(187), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(188)
	movq (%rbx), %rbx		# movq (%r(188)), %r(160)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(189)
	movq %rbx, (%r12)		# movq %r(160), (%r(189))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(190)
	incq %rbx		# incq %r(190)
	movq %rbx, -56(%rbp)		# movq %r(190), -56(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(191)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(192)
	cmpq %r12, %rbx		# cmpq %r(192), %r(191)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(193)
	salq $3, %r13		# salq $3, %r(161)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(194)
	addq %r13, %r15		# addq %r(161), %r(162)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(195)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(196)
	subq %r13, %rbx		# subq %r(196), %r(163)
	salq $3, %rbx		# salq $3, %r(164)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(197)
	addq %rbx, %r12		# addq %r(164), %r(165)
	movq (%r12), %rbx		# movq (%r(165)), %r(166)
	movq %rbx, (%r15)		# movq %r(166), (%r(162))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(198)
	incq %rbx		# incq %r(198)
	movq %rbx, -56(%rbp)		# movq %r(198), -56(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(199)
	movq %rbx, %rax		# movq %r(199), %rax
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

