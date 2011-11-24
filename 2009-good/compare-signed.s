.att_syntax prefix
.text
.globl _IisLess1_bii
_IisLess1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jge .L39		# jge .L39
	.L38:		# .L38:
	movq $1, %rbx		# movq $1, %r(183)
	movq %rbx, %rax		# movq %r(183), %rax
	jmp .L37		# jmp .L37
	.L37:		# .L37:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L39:		# .L39:
	movq $0, %rbx		# movq $0, %r(184)
	movq %rbx, %rax		# movq %r(184), %rax
	jmp .L37		# jmp .L37
	
.globl _IisLess2_bii
_IisLess2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(185)
	cmpq %r12, %r13		# cmpq %r(b), %r(a)
	jl .L41		# jl .L41
	.L42:		# .L42:
	movq $0, %rbx		# movq $0, %r(186)
	.L41:		# .L41:
	movq %rbx, %rax		# movq %r(87), %rax
	jmp .L40		# jmp .L40
	.L40:		# .L40:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IisLEQ1_bii
_IisLEQ1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jg .L45		# jg .L45
	.L44:		# .L44:
	movq $1, %rbx		# movq $1, %r(187)
	movq %rbx, %rax		# movq %r(187), %rax
	jmp .L43		# jmp .L43
	.L43:		# .L43:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L45:		# .L45:
	movq $0, %rbx		# movq $0, %r(188)
	movq %rbx, %rax		# movq %r(188), %rax
	jmp .L43		# jmp .L43
	
.globl _IisLEQ2_bii
_IisLEQ2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(189)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jle .L47		# jle .L47
	.L48:		# .L48:
	movq $0, %rbx		# movq $0, %r(190)
	.L47:		# .L47:
	movq %rbx, %rax		# movq %r(92), %rax
	jmp .L46		# jmp .L46
	.L46:		# .L46:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IisMore1_bii
_IisMore1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jle .L51		# jle .L51
	.L50:		# .L50:
	movq $1, %rbx		# movq $1, %r(191)
	movq %rbx, %rax		# movq %r(191), %rax
	jmp .L49		# jmp .L49
	.L49:		# .L49:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L51:		# .L51:
	movq $0, %rbx		# movq $0, %r(192)
	movq %rbx, %rax		# movq %r(192), %rax
	jmp .L49		# jmp .L49
	
.globl _IisMore2_bii
_IisMore2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(193)
	cmpq %r12, %r13		# cmpq %r(b), %r(a)
	jg .L53		# jg .L53
	.L54:		# .L54:
	movq $0, %rbx		# movq $0, %r(194)
	.L53:		# .L53:
	movq %rbx, %rax		# movq %r(97), %rax
	jmp .L52		# jmp .L52
	.L52:		# .L52:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IisGEQ1_bii
_IisGEQ1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jl .L57		# jl .L57
	.L56:		# .L56:
	movq $1, %rbx		# movq $1, %r(195)
	movq %rbx, %rax		# movq %r(195), %rax
	jmp .L55		# jmp .L55
	.L55:		# .L55:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L57:		# .L57:
	movq $0, %rbx		# movq $0, %r(196)
	movq %rbx, %rax		# movq %r(196), %rax
	jmp .L55		# jmp .L55
	
.globl _IisGEQ2_bii
_IisGEQ2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(197)
	cmpq %r12, %r13		# cmpq %r(b), %r(a)
	jge .L59		# jge .L59
	.L60:		# .L60:
	movq $0, %rbx		# movq $0, %r(198)
	.L59:		# .L59:
	movq %rbx, %rax		# movq %r(102), %rax
	jmp .L58		# jmp .L58
	.L58:		# .L58:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	leaq .L62(%rip), %rdi		# leaq .L62(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(106)
	movq %r13, %rdi		# movq %r(106), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
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
	movq %rdi, %rbx		# movq %rdi, %r(a)
	leaq .L64(%rip), %rdi		# leaq .L64(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(110)
	movq $2, %rbx		# movq $2, %r(201)
	movq $40, %r12		# movq $40, %r(202)
	movq %rbx, %rdi		# movq %r(201), %rdi
	movq %r12, %rsi		# movq %r(202), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(111)
	movq %r13, %rdi		# movq %r(110), %rdi
	movq %rbx, %rsi		# movq %r(111), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L65(%rip), %rdi		# leaq .L65(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(113)
	movq $2, %rbx		# movq $2, %r(204)
	movq $40, %r12		# movq $40, %r(205)
	movq %rbx, %rdi		# movq %r(204), %rdi
	movq %r12, %rsi		# movq %r(205), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(114)
	movq %r13, %rdi		# movq %r(113), %rdi
	movq %rbx, %rsi		# movq %r(114), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L66(%rip), %rdi		# leaq .L66(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(116)
	movq $-1, %rbx		# movq $-1, %r(207)
	movq $0, %r12		# movq $0, %r(208)
	movq %rbx, %rdi		# movq %r(207), %rdi
	movq %r12, %rsi		# movq %r(208), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(117)
	movq %r13, %rdi		# movq %r(116), %rdi
	movq %rbx, %rsi		# movq %r(117), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L67(%rip), %rdi		# leaq .L67(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(119)
	movq $-1, %rbx		# movq $-1, %r(210)
	movq $0, %r12		# movq $0, %r(211)
	movq %rbx, %rdi		# movq %r(210), %rdi
	movq %r12, %rsi		# movq %r(211), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(120)
	movq %r13, %rdi		# movq %r(119), %rdi
	movq %rbx, %rsi		# movq %r(120), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L68(%rip), %rdi		# leaq .L68(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(122)
	movq $-5, %rbx		# movq $-5, %r(213)
	movq $-3, %r12		# movq $-3, %r(214)
	movq %rbx, %rdi		# movq %r(213), %rdi
	movq %r12, %rsi		# movq %r(214), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(123)
	movq %r13, %rdi		# movq %r(122), %rdi
	movq %rbx, %rsi		# movq %r(123), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L69(%rip), %rdi		# leaq .L69(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(125)
	movq $-5, %rbx		# movq $-5, %r(216)
	movq $-3, %r12		# movq $-3, %r(217)
	movq %rbx, %rdi		# movq %r(216), %rdi
	movq %r12, %rsi		# movq %r(217), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(126)
	movq %r13, %rdi		# movq %r(125), %rdi
	movq %rbx, %rsi		# movq %r(126), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L70(%rip), %rdi		# leaq .L70(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(128)
	movq $2, %rbx		# movq $2, %r(219)
	movq $40, %r12		# movq $40, %r(220)
	movq %rbx, %rdi		# movq %r(219), %rdi
	movq %r12, %rsi		# movq %r(220), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(129)
	movq %r13, %rdi		# movq %r(128), %rdi
	movq %rbx, %rsi		# movq %r(129), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L71(%rip), %rdi		# leaq .L71(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(131)
	movq $2, %rbx		# movq $2, %r(222)
	movq $40, %r12		# movq $40, %r(223)
	movq %rbx, %rdi		# movq %r(222), %rdi
	movq %r12, %rsi		# movq %r(223), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(132)
	movq %r13, %rdi		# movq %r(131), %rdi
	movq %rbx, %rsi		# movq %r(132), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L72(%rip), %rdi		# leaq .L72(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(134)
	movq $-1, %rbx		# movq $-1, %r(225)
	movq $0, %r12		# movq $0, %r(226)
	movq %rbx, %rdi		# movq %r(225), %rdi
	movq %r12, %rsi		# movq %r(226), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(135)
	movq %r13, %rdi		# movq %r(134), %rdi
	movq %rbx, %rsi		# movq %r(135), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L73(%rip), %rdi		# leaq .L73(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(137)
	movq $-1, %rbx		# movq $-1, %r(228)
	movq $0, %r12		# movq $0, %r(229)
	movq %rbx, %rdi		# movq %r(228), %rdi
	movq %r12, %rsi		# movq %r(229), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(138)
	movq %r13, %rdi		# movq %r(137), %rdi
	movq %rbx, %rsi		# movq %r(138), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L74(%rip), %rdi		# leaq .L74(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(140)
	movq $-5, %rbx		# movq $-5, %r(231)
	movq $-3, %r12		# movq $-3, %r(232)
	movq %rbx, %rdi		# movq %r(231), %rdi
	movq %r12, %rsi		# movq %r(232), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(141)
	movq %r13, %rdi		# movq %r(140), %rdi
	movq %rbx, %rsi		# movq %r(141), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L75(%rip), %rdi		# leaq .L75(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(143)
	movq $-5, %rbx		# movq $-5, %r(234)
	movq $-3, %r12		# movq $-3, %r(235)
	movq %rbx, %rdi		# movq %r(234), %rdi
	movq %r12, %rsi		# movq %r(235), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(144)
	movq %r13, %rdi		# movq %r(143), %rdi
	movq %rbx, %rsi		# movq %r(144), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L76(%rip), %rdi		# leaq .L76(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(146)
	movq $2, %rbx		# movq $2, %r(237)
	movq $40, %r12		# movq $40, %r(238)
	movq %rbx, %rdi		# movq %r(237), %rdi
	movq %r12, %rsi		# movq %r(238), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(147)
	movq $1, %r12		# movq $1, %r(239)
	xorq %r12, %r14		# xorq %r(239), %r(240)
	movq %r13, %rdi		# movq %r(146), %rdi
	movq %r14, %rsi		# movq %r(240), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L77(%rip), %rdi		# leaq .L77(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(149)
	movq $2, %rbx		# movq $2, %r(242)
	movq $40, %r12		# movq $40, %r(243)
	movq %rbx, %rdi		# movq %r(242), %rdi
	movq %r12, %rsi		# movq %r(243), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(150)
	movq $1, %r12		# movq $1, %r(244)
	xorq %r12, %r14		# xorq %r(244), %r(245)
	movq %r13, %rdi		# movq %r(149), %rdi
	movq %r14, %rsi		# movq %r(245), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L78(%rip), %rdi		# leaq .L78(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(152)
	movq $-1, %rbx		# movq $-1, %r(247)
	movq $0, %r12		# movq $0, %r(248)
	movq %rbx, %rdi		# movq %r(247), %rdi
	movq %r12, %rsi		# movq %r(248), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(153)
	movq $1, %r12		# movq $1, %r(249)
	xorq %r12, %r14		# xorq %r(249), %r(250)
	movq %r13, %rdi		# movq %r(152), %rdi
	movq %r14, %rsi		# movq %r(250), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L79(%rip), %rdi		# leaq .L79(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(155)
	movq $-1, %rbx		# movq $-1, %r(252)
	movq $0, %r12		# movq $0, %r(253)
	movq %rbx, %rdi		# movq %r(252), %rdi
	movq %r12, %rsi		# movq %r(253), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(156)
	movq $1, %r12		# movq $1, %r(254)
	xorq %r12, %r14		# xorq %r(254), %r(255)
	movq %r13, %rdi		# movq %r(155), %rdi
	movq %r14, %rsi		# movq %r(255), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L80(%rip), %rdi		# leaq .L80(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(158)
	movq $-5, %rbx		# movq $-5, %r(257)
	movq $-3, %r12		# movq $-3, %r(258)
	movq %rbx, %rdi		# movq %r(257), %rdi
	movq %r12, %rsi		# movq %r(258), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(159)
	movq $1, %r12		# movq $1, %r(259)
	xorq %r12, %r14		# xorq %r(259), %r(260)
	movq %r13, %rdi		# movq %r(158), %rdi
	movq %r14, %rsi		# movq %r(260), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L81(%rip), %rdi		# leaq .L81(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(161)
	movq $-5, %rbx		# movq $-5, %r(262)
	movq $-3, %r12		# movq $-3, %r(263)
	movq %rbx, %rdi		# movq %r(262), %rdi
	movq %r12, %rsi		# movq %r(263), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(162)
	movq $1, %r12		# movq $1, %r(264)
	xorq %r12, %r14		# xorq %r(264), %r(265)
	movq %r13, %rdi		# movq %r(161), %rdi
	movq %r14, %rsi		# movq %r(265), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L82(%rip), %rdi		# leaq .L82(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(164)
	movq $2, %rbx		# movq $2, %r(267)
	movq $40, %r12		# movq $40, %r(268)
	movq %rbx, %rdi		# movq %r(267), %rdi
	movq %r12, %rsi		# movq %r(268), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(165)
	movq $1, %r12		# movq $1, %r(269)
	xorq %r12, %r14		# xorq %r(269), %r(270)
	movq %r13, %rdi		# movq %r(164), %rdi
	movq %r14, %rsi		# movq %r(270), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L83(%rip), %rdi		# leaq .L83(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(167)
	movq $2, %rbx		# movq $2, %r(272)
	movq $40, %r12		# movq $40, %r(273)
	movq %rbx, %rdi		# movq %r(272), %rdi
	movq %r12, %rsi		# movq %r(273), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(168)
	movq $1, %r12		# movq $1, %r(274)
	xorq %r12, %r14		# xorq %r(274), %r(275)
	movq %r13, %rdi		# movq %r(167), %rdi
	movq %r14, %rsi		# movq %r(275), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L84(%rip), %rdi		# leaq .L84(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(170)
	movq $-1, %rbx		# movq $-1, %r(277)
	movq $0, %r12		# movq $0, %r(278)
	movq %rbx, %rdi		# movq %r(277), %rdi
	movq %r12, %rsi		# movq %r(278), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(171)
	movq $1, %r12		# movq $1, %r(279)
	xorq %r12, %r14		# xorq %r(279), %r(280)
	movq %r13, %rdi		# movq %r(170), %rdi
	movq %r14, %rsi		# movq %r(280), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L85(%rip), %rdi		# leaq .L85(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(173)
	movq $-1, %rbx		# movq $-1, %r(282)
	movq $0, %r12		# movq $0, %r(283)
	movq %rbx, %rdi		# movq %r(282), %rdi
	movq %r12, %rsi		# movq %r(283), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(174)
	movq $1, %r12		# movq $1, %r(284)
	xorq %r12, %r14		# xorq %r(284), %r(285)
	movq %r13, %rdi		# movq %r(173), %rdi
	movq %r14, %rsi		# movq %r(285), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L86(%rip), %rdi		# leaq .L86(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(176)
	movq $-5, %rbx		# movq $-5, %r(287)
	movq $-3, %r12		# movq $-3, %r(288)
	movq %rbx, %rdi		# movq %r(287), %rdi
	movq %r12, %rsi		# movq %r(288), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(177)
	movq $1, %r12		# movq $1, %r(289)
	xorq %r12, %r14		# xorq %r(289), %r(290)
	movq %r13, %rdi		# movq %r(176), %rdi
	movq %r14, %rsi		# movq %r(290), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L87(%rip), %rdi		# leaq .L87(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(179)
	movq $-5, %rbx		# movq $-5, %r(292)
	movq $-3, %r12		# movq $-3, %r(293)
	movq %rbx, %rdi		# movq %r(292), %rdi
	movq %r12, %rsi		# movq %r(293), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(180)
	movq $1, %r12		# movq $1, %r(294)
	xorq %r12, %r14		# xorq %r(294), %r(295)
	movq %r13, %rdi		# movq %r(179), %rdi
	movq %r14, %rsi		# movq %r(295), %rsi
	call _Itest_paib		# call _Itest_paib
	.L63:		# .L63:
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
	movq %rdi, %rbx		# movq %rdi, %r(311)
	movq %rbx, -32(%rbp)		# movq %r(311), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(312)
	movq (%rbx), %r12		# movq (%r(312)), %r(296)
	movq %r12, -16(%rbp)		# movq %r(313), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(314)
	salq $3, %rbx		# salq $3, %r(297)
	movq $8, %r12		# movq $8, %r(298)
	addq %r12, %rbx		# addq %r(298), %r(299)
	movq %rbx, %rdi		# movq %r(299), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(182)
	movq %r12, -40(%rbp)		# movq %r(315), -40(%rbp)
	.L16:		# .L16:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(316)
	salq $3, %r13		# salq $3, %r(300)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(317)
	addq %r13, %r12		# addq %r(300), %r(301)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(318)
	movq %r13, -24(%rbp)		# movq %r(319), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(320)
	salq $3, %rbx		# salq $3, %r(320)
	movq %rbx, -24(%rbp)		# movq %r(320), -24(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(321)
	movq %r13, -8(%rbp)		# movq %r(308), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(309)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(322)
	addq %r13, %rbx		# addq %r(322), %r(309)
	movq %rbx, -8(%rbp)		# movq %r(309), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(310)
	movq (%rbx), %rbx		# movq (%r(310)), %r(304)
	movq %rbx, (%r12)		# movq %r(304), (%r(301))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(323)
	decq %rbx		# decq %r(323)
	movq %rbx, -16(%rbp)		# movq %r(323), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(305)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(324)
	cmpq %rbx, %r12		# cmpq %r(305), %r(324)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(306)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(325)
	addq %rbx, %r13		# addq %r(306), %r(307)
	movq %r13, %rax		# movq %r(307), %rax
	.L18:		# .L18:
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
.L76:
	.quad 3
	.quad 62
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L66:
	.quad 3
	.quad 60
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L87:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L83:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L70:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L84:
	.quad 4
	.quad 62
	.quad 61
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L77:
	.quad 3
	.quad 62
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L75:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L64:
	.quad 3
	.quad 60
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L79:
	.quad 3
	.quad 62
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L62:
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
.L71:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L82:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L69:
	.quad 3
	.quad 60
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L73:
	.quad 4
	.quad 60
	.quad 61
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L74:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L78:
	.quad 3
	.quad 62
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L86:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L80:
	.quad 3
	.quad 62
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L65:
	.quad 3
	.quad 60
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L72:
	.quad 4
	.quad 60
	.quad 61
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L67:
	.quad 3
	.quad 60
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L81:
	.quad 3
	.quad 62
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L68:
	.quad 3
	.quad 60
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L85:
	.quad 4
	.quad 62
	.quad 61
	.quad 49
	.quad 98
	.text

