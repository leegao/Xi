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
	jge .L38		# jge .L38
	.L37:		# .L37:
	movq $1, %rbx		# movq $1, %r(177)
	movq %rbx, %rax		# movq %r(177), %rax
	jmp .L36		# jmp .L36
	.L38:		# .L38:
	movq $0, %rbx		# movq $0, %r(178)
	movq %rbx, %rax		# movq %r(178), %rax
	jmp .L36		# jmp .L36
	.L36:		# .L36:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(179)
	movq %rbx, %rbx		# movq %r(179), %r(81)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jl .L40		# jl .L40
	.L41:		# .L41:
	movq $0, %rbx		# movq $0, %r(180)
	movq %rbx, %rbx		# movq %r(180), %r(81)
	.L40:		# .L40:
	movq %rbx, %rax		# movq %r(81), %rax
	jmp .L39		# jmp .L39
	.L39:		# .L39:
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
	jg .L44		# jg .L44
	.L43:		# .L43:
	movq $1, %rbx		# movq $1, %r(181)
	movq %rbx, %rax		# movq %r(181), %rax
	jmp .L42		# jmp .L42
	.L44:		# .L44:
	movq $0, %rbx		# movq $0, %r(182)
	movq %rbx, %rax		# movq %r(182), %rax
	jmp .L42		# jmp .L42
	.L42:		# .L42:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(183)
	movq %rbx, %rbx		# movq %r(183), %r(86)
	cmpq %r12, %r13		# cmpq %r(b), %r(a)
	jle .L46		# jle .L46
	.L47:		# .L47:
	movq $0, %rbx		# movq $0, %r(184)
	movq %rbx, %rbx		# movq %r(184), %r(86)
	.L46:		# .L46:
	movq %rbx, %rax		# movq %r(86), %rax
	jmp .L45		# jmp .L45
	.L45:		# .L45:
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
	jle .L50		# jle .L50
	.L49:		# .L49:
	movq $1, %rbx		# movq $1, %r(185)
	movq %rbx, %rax		# movq %r(185), %rax
	jmp .L48		# jmp .L48
	.L50:		# .L50:
	movq $0, %rbx		# movq $0, %r(186)
	movq %rbx, %rax		# movq %r(186), %rax
	jmp .L48		# jmp .L48
	.L48:		# .L48:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(187)
	movq %rbx, %rbx		# movq %r(187), %r(91)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jg .L52		# jg .L52
	.L53:		# .L53:
	movq $0, %rbx		# movq $0, %r(188)
	movq %rbx, %rbx		# movq %r(188), %r(91)
	.L52:		# .L52:
	movq %rbx, %rax		# movq %r(91), %rax
	jmp .L51		# jmp .L51
	.L51:		# .L51:
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
	jl .L56		# jl .L56
	.L55:		# .L55:
	movq $1, %rbx		# movq $1, %r(189)
	movq %rbx, %rax		# movq %r(189), %rax
	jmp .L54		# jmp .L54
	.L56:		# .L56:
	movq $0, %rbx		# movq $0, %r(190)
	movq %rbx, %rax		# movq %r(190), %rax
	jmp .L54		# jmp .L54
	.L54:		# .L54:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(191)
	movq %rbx, %rbx		# movq %r(191), %r(96)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jge .L58		# jge .L58
	.L59:		# .L59:
	movq $0, %rbx		# movq $0, %r(192)
	movq %rbx, %rbx		# movq %r(192), %r(96)
	.L58:		# .L58:
	movq %rbx, %rax		# movq %r(96), %rax
	jmp .L57		# jmp .L57
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
	leaq .L61(%rip), %rdi		# leaq .L61(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(100)
	movq %r13, %rdi		# movq %r(100), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
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
	leaq .L63(%rip), %rdi		# leaq .L63(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(104)
	movq $2, %rbx		# movq $2, %r(195)
	movq $40, %r12		# movq $40, %r(196)
	movq %rbx, %rdi		# movq %r(195), %rdi
	movq %r12, %rsi		# movq %r(196), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(105)
	movq %r13, %rdi		# movq %r(104), %rdi
	movq %rbx, %rsi		# movq %r(105), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L64(%rip), %rdi		# leaq .L64(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(107)
	movq $2, %rbx		# movq $2, %r(198)
	movq $40, %r12		# movq $40, %r(199)
	movq %rbx, %rdi		# movq %r(198), %rdi
	movq %r12, %rsi		# movq %r(199), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(108)
	movq %r13, %rdi		# movq %r(107), %rdi
	movq %rbx, %rsi		# movq %r(108), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L65(%rip), %rdi		# leaq .L65(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(110)
	movq $-1, %rbx		# movq $-1, %r(201)
	movq $0, %r12		# movq $0, %r(202)
	movq %rbx, %rdi		# movq %r(201), %rdi
	movq %r12, %rsi		# movq %r(202), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(111)
	movq %r13, %rdi		# movq %r(110), %rdi
	movq %rbx, %rsi		# movq %r(111), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L66(%rip), %rdi		# leaq .L66(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(113)
	movq $-1, %rbx		# movq $-1, %r(204)
	movq $0, %r12		# movq $0, %r(205)
	movq %rbx, %rdi		# movq %r(204), %rdi
	movq %r12, %rsi		# movq %r(205), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(114)
	movq %r13, %rdi		# movq %r(113), %rdi
	movq %rbx, %rsi		# movq %r(114), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L67(%rip), %rdi		# leaq .L67(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(116)
	movq $-5, %rbx		# movq $-5, %r(207)
	movq $-3, %r12		# movq $-3, %r(208)
	movq %rbx, %rdi		# movq %r(207), %rdi
	movq %r12, %rsi		# movq %r(208), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(117)
	movq %r13, %rdi		# movq %r(116), %rdi
	movq %rbx, %rsi		# movq %r(117), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L68(%rip), %rdi		# leaq .L68(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(119)
	movq $-5, %rbx		# movq $-5, %r(210)
	movq $-3, %r12		# movq $-3, %r(211)
	movq %rbx, %rdi		# movq %r(210), %rdi
	movq %r12, %rsi		# movq %r(211), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(120)
	movq %r13, %rdi		# movq %r(119), %rdi
	movq %rbx, %rsi		# movq %r(120), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L69(%rip), %rdi		# leaq .L69(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(122)
	movq $2, %rbx		# movq $2, %r(213)
	movq $40, %r12		# movq $40, %r(214)
	movq %rbx, %rdi		# movq %r(213), %rdi
	movq %r12, %rsi		# movq %r(214), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(123)
	movq %r13, %rdi		# movq %r(122), %rdi
	movq %rbx, %rsi		# movq %r(123), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L70(%rip), %rdi		# leaq .L70(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(125)
	movq $2, %rbx		# movq $2, %r(216)
	movq $40, %r12		# movq $40, %r(217)
	movq %rbx, %rdi		# movq %r(216), %rdi
	movq %r12, %rsi		# movq %r(217), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(126)
	movq %r13, %rdi		# movq %r(125), %rdi
	movq %rbx, %rsi		# movq %r(126), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L71(%rip), %rdi		# leaq .L71(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(128)
	movq $-1, %rbx		# movq $-1, %r(219)
	movq $0, %r12		# movq $0, %r(220)
	movq %rbx, %rdi		# movq %r(219), %rdi
	movq %r12, %rsi		# movq %r(220), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(129)
	movq %r13, %rdi		# movq %r(128), %rdi
	movq %rbx, %rsi		# movq %r(129), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L72(%rip), %rdi		# leaq .L72(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(131)
	movq $-1, %rbx		# movq $-1, %r(222)
	movq $0, %r12		# movq $0, %r(223)
	movq %rbx, %rdi		# movq %r(222), %rdi
	movq %r12, %rsi		# movq %r(223), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(132)
	movq %r13, %rdi		# movq %r(131), %rdi
	movq %rbx, %rsi		# movq %r(132), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L73(%rip), %rdi		# leaq .L73(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(134)
	movq $-5, %rbx		# movq $-5, %r(225)
	movq $-3, %r12		# movq $-3, %r(226)
	movq %rbx, %rdi		# movq %r(225), %rdi
	movq %r12, %rsi		# movq %r(226), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(135)
	movq %r13, %rdi		# movq %r(134), %rdi
	movq %rbx, %rsi		# movq %r(135), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L74(%rip), %rdi		# leaq .L74(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(137)
	movq $-5, %rbx		# movq $-5, %r(228)
	movq $-3, %r12		# movq $-3, %r(229)
	movq %rbx, %rdi		# movq %r(228), %rdi
	movq %r12, %rsi		# movq %r(229), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(138)
	movq %r13, %rdi		# movq %r(137), %rdi
	movq %rbx, %rsi		# movq %r(138), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L75(%rip), %rdi		# leaq .L75(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(140)
	movq $2, %rbx		# movq $2, %r(231)
	movq $40, %r12		# movq $40, %r(232)
	movq %rbx, %rdi		# movq %r(231), %rdi
	movq %r12, %rsi		# movq %r(232), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(141)
	movq $1, %r12		# movq $1, %r(233)
	movq %r14, %r14		# movq %r(141), %r(234)
	xorq %r12, %r14		# xorq %r(233), %r(234)
	movq %r13, %rdi		# movq %r(140), %rdi
	movq %r14, %rsi		# movq %r(234), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L76(%rip), %rdi		# leaq .L76(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(143)
	movq $2, %rbx		# movq $2, %r(236)
	movq $40, %r12		# movq $40, %r(237)
	movq %rbx, %rdi		# movq %r(236), %rdi
	movq %r12, %rsi		# movq %r(237), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(144)
	movq $1, %r12		# movq $1, %r(238)
	movq %r14, %r14		# movq %r(144), %r(239)
	xorq %r12, %r14		# xorq %r(238), %r(239)
	movq %r13, %rdi		# movq %r(143), %rdi
	movq %r14, %rsi		# movq %r(239), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L77(%rip), %rdi		# leaq .L77(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(146)
	movq $-1, %rbx		# movq $-1, %r(241)
	movq $0, %r12		# movq $0, %r(242)
	movq %rbx, %rdi		# movq %r(241), %rdi
	movq %r12, %rsi		# movq %r(242), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(147)
	movq $1, %r12		# movq $1, %r(243)
	movq %r14, %r14		# movq %r(147), %r(244)
	xorq %r12, %r14		# xorq %r(243), %r(244)
	movq %r13, %rdi		# movq %r(146), %rdi
	movq %r14, %rsi		# movq %r(244), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L78(%rip), %rdi		# leaq .L78(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(149)
	movq $-1, %rbx		# movq $-1, %r(246)
	movq $0, %r12		# movq $0, %r(247)
	movq %rbx, %rdi		# movq %r(246), %rdi
	movq %r12, %rsi		# movq %r(247), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(150)
	movq $1, %r12		# movq $1, %r(248)
	movq %r14, %r14		# movq %r(150), %r(249)
	xorq %r12, %r14		# xorq %r(248), %r(249)
	movq %r13, %rdi		# movq %r(149), %rdi
	movq %r14, %rsi		# movq %r(249), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L79(%rip), %rdi		# leaq .L79(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(152)
	movq $-5, %rbx		# movq $-5, %r(251)
	movq $-3, %r12		# movq $-3, %r(252)
	movq %rbx, %rdi		# movq %r(251), %rdi
	movq %r12, %rsi		# movq %r(252), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(153)
	movq $1, %r12		# movq $1, %r(253)
	movq %r14, %r14		# movq %r(153), %r(254)
	xorq %r12, %r14		# xorq %r(253), %r(254)
	movq %r13, %rdi		# movq %r(152), %rdi
	movq %r14, %rsi		# movq %r(254), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L80(%rip), %rdi		# leaq .L80(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(155)
	movq $-5, %rbx		# movq $-5, %r(256)
	movq $-3, %r12		# movq $-3, %r(257)
	movq %rbx, %rdi		# movq %r(256), %rdi
	movq %r12, %rsi		# movq %r(257), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(156)
	movq $1, %r12		# movq $1, %r(258)
	movq %r14, %r14		# movq %r(156), %r(259)
	xorq %r12, %r14		# xorq %r(258), %r(259)
	movq %r13, %rdi		# movq %r(155), %rdi
	movq %r14, %rsi		# movq %r(259), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L81(%rip), %rdi		# leaq .L81(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(158)
	movq $2, %rbx		# movq $2, %r(261)
	movq $40, %r12		# movq $40, %r(262)
	movq %rbx, %rdi		# movq %r(261), %rdi
	movq %r12, %rsi		# movq %r(262), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(159)
	movq $1, %r12		# movq $1, %r(263)
	movq %r14, %r14		# movq %r(159), %r(264)
	xorq %r12, %r14		# xorq %r(263), %r(264)
	movq %r13, %rdi		# movq %r(158), %rdi
	movq %r14, %rsi		# movq %r(264), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L82(%rip), %rdi		# leaq .L82(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(161)
	movq $2, %rbx		# movq $2, %r(266)
	movq $40, %r12		# movq $40, %r(267)
	movq %rbx, %rdi		# movq %r(266), %rdi
	movq %r12, %rsi		# movq %r(267), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(162)
	movq $1, %r12		# movq $1, %r(268)
	movq %r14, %r14		# movq %r(162), %r(269)
	xorq %r12, %r14		# xorq %r(268), %r(269)
	movq %r13, %rdi		# movq %r(161), %rdi
	movq %r14, %rsi		# movq %r(269), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L83(%rip), %rdi		# leaq .L83(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(164)
	movq $-1, %rbx		# movq $-1, %r(271)
	movq $0, %r12		# movq $0, %r(272)
	movq %rbx, %rdi		# movq %r(271), %rdi
	movq %r12, %rsi		# movq %r(272), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(165)
	movq $1, %r12		# movq $1, %r(273)
	movq %r14, %r14		# movq %r(165), %r(274)
	xorq %r12, %r14		# xorq %r(273), %r(274)
	movq %r13, %rdi		# movq %r(164), %rdi
	movq %r14, %rsi		# movq %r(274), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L84(%rip), %rdi		# leaq .L84(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(167)
	movq $-1, %rbx		# movq $-1, %r(276)
	movq $0, %r12		# movq $0, %r(277)
	movq %rbx, %rdi		# movq %r(276), %rdi
	movq %r12, %rsi		# movq %r(277), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(168)
	movq $1, %r12		# movq $1, %r(278)
	movq %r14, %r14		# movq %r(168), %r(279)
	xorq %r12, %r14		# xorq %r(278), %r(279)
	movq %r13, %rdi		# movq %r(167), %rdi
	movq %r14, %rsi		# movq %r(279), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L85(%rip), %rdi		# leaq .L85(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(170)
	movq $-5, %rbx		# movq $-5, %r(281)
	movq $-3, %r12		# movq $-3, %r(282)
	movq %rbx, %rdi		# movq %r(281), %rdi
	movq %r12, %rsi		# movq %r(282), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(171)
	movq $1, %r12		# movq $1, %r(283)
	movq %r14, %r14		# movq %r(171), %r(284)
	xorq %r12, %r14		# xorq %r(283), %r(284)
	movq %r13, %rdi		# movq %r(170), %rdi
	movq %r14, %rsi		# movq %r(284), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L86(%rip), %rdi		# leaq .L86(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(173)
	movq $-5, %rbx		# movq $-5, %r(286)
	movq $-3, %r12		# movq $-3, %r(287)
	movq %rbx, %rdi		# movq %r(286), %rdi
	movq %r12, %rsi		# movq %r(287), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(174)
	movq $1, %r12		# movq $1, %r(288)
	movq %r14, %r14		# movq %r(174), %r(289)
	xorq %r12, %r14		# xorq %r(288), %r(289)
	movq %r13, %rdi		# movq %r(173), %rdi
	movq %r14, %rsi		# movq %r(289), %rsi
	call _Itest_paib		# call _Itest_paib
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
	movq %rdi, %rbx		# movq %rdi, %r(305)
	movq %rbx, -24(%rbp)		# movq %r(305), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(306)
	movq (%rbx), %rbx		# movq (%r(306)), %r(290)
	movq %rbx, %rbx		# movq %r(290), %r(t10)
	movq %rbx, %r12		# movq %r(t10), %r(291)
	salq $3, %r12		# salq $3, %r(291)
	movq $8, %r13		# movq $8, %r(292)
	movq %r12, %r12		# movq %r(291), %r(293)
	addq %r13, %r12		# addq %r(292), %r(293)
	movq %r12, %rdi		# movq %r(293), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(176)
	movq %r13, %r13		# movq %r(176), %r(307)
	movq %r13, -32(%rbp)		# movq %r(307), -32(%rbp)
	.L16:		# .L16:
	movq %rbx, %r14		# movq %r(t10), %r(294)
	salq $3, %r14		# salq $3, %r(294)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(308)
	movq %r13, %r13		# movq %r(308), %r(309)
	movq %r13, -16(%rbp)		# movq %r(309), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(310)
	addq %r14, %r12		# addq %r(294), %r(310)
	movq %r12, -16(%rbp)		# movq %r(310), -16(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(296)
	salq $3, %r14		# salq $3, %r(296)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(311)
	movq %r13, %r13		# movq %r(311), %r(302)
	movq %r13, -8(%rbp)		# movq %r(302), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(303)
	addq %r14, %r12		# addq %r(296), %r(303)
	movq %r12, -8(%rbp)		# movq %r(303), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(304)
	movq (%r12), %r12		# movq (%r(304)), %r(298)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(312)
	movq %r12, (%r13)		# movq %r(298), (%r(312))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(299)
	cmpq %r12, %rbx		# cmpq %r(299), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(300)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(313)
	movq %r13, %r13		# movq %r(313), %r(301)
	addq %rbx, %r13		# addq %r(300), %r(301)
	movq %r13, %rax		# movq %r(301), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L86:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 98
	.text

.section .rodata
.align 8
.L66:
	.quad 3
	.quad 60
	.quad 49
	.quad 98
	.text

.section .rodata
.align 8
.L79:
	.quad 3
	.quad 62
	.quad 50
	.quad 97
	.text

.section .rodata
.align 8
.L74:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
	.quad 98
	.text

.section .rodata
.align 8
.L75:
	.quad 3
	.quad 62
	.quad 48
	.quad 97
	.text

.section .rodata
.align 8
.L76:
	.quad 3
	.quad 62
	.quad 48
	.quad 98
	.text

.section .rodata
.align 8
.L82:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
	.quad 98
	.text

.section .rodata
.align 8
.L83:
	.quad 4
	.quad 62
	.quad 61
	.quad 49
	.quad 97
	.text

.section .rodata
.align 8
.L73:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
	.quad 97
	.text

.section .rodata
.align 8
.L68:
	.quad 3
	.quad 60
	.quad 50
	.quad 98
	.text

.section .rodata
.align 8
.L85:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 97
	.text

.section .rodata
.align 8
.L71:
	.quad 4
	.quad 60
	.quad 61
	.quad 49
	.quad 97
	.text

.section .rodata
.align 8
.L69:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 97
	.text

.section .rodata
.align 8
.L61:
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

.section .rodata
.align 8
.L77:
	.quad 3
	.quad 62
	.quad 49
	.quad 97
	.text

.section .rodata
.align 8
.L70:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 98
	.text

.section .rodata
.align 8
.L64:
	.quad 3
	.quad 60
	.quad 48
	.quad 98
	.text

.section .rodata
.align 8
.L80:
	.quad 3
	.quad 62
	.quad 50
	.quad 98
	.text

.section .rodata
.align 8
.L84:
	.quad 4
	.quad 62
	.quad 61
	.quad 49
	.quad 98
	.text

.section .rodata
.align 8
.L63:
	.quad 3
	.quad 60
	.quad 48
	.quad 97
	.text

.section .rodata
.align 8
.L78:
	.quad 3
	.quad 62
	.quad 49
	.quad 98
	.text

.section .rodata
.align 8
.L72:
	.quad 4
	.quad 60
	.quad 61
	.quad 49
	.quad 98
	.text

.section .rodata
.align 8
.L67:
	.quad 3
	.quad 60
	.quad 50
	.quad 97
	.text

.section .rodata
.align 8
.L65:
	.quad 3
	.quad 60
	.quad 49
	.quad 97
	.text

.section .rodata
.align 8
.L81:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
	.quad 97
	.text

