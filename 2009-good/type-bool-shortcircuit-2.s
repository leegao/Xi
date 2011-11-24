.att_syntax prefix
.text
.globl _Iunreachable_b
_Iunreachable_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq .L20(%rip), %rdi		# leaq .L20(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(18)
	movq %rbx, %rdi		# movq %r(18), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(44)
	movq %rbx, %rdi		# movq %r(44), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(45)
	movq %rbx, %rax		# movq %r(45), %rax
	jmp .L19		# jmp .L19
	.L19:		# .L19:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstFalse_b
_IconstFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %rbx		# movq $0, %r(46)
	movq %rbx, %rax		# movq %r(46), %rax
	jmp .L21		# jmp .L21
	.L21:		# .L21:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstTrue_b
_IconstTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(47)
	movq %rbx, %rax		# movq %r(47), %rax
	jmp .L22		# jmp .L22
	.L22:		# .L22:
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
	leaq .L24(%rip), %rdi		# leaq .L24(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(21)
	movq %r13, %rdi		# movq %r(21), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L23:		# .L23:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %rbx		# movq %rax, %r(25)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r12		# movq %rax, %r(75)
	movq %r12, -16(%rbp)		# movq %r(75), -16(%rbp)
	testq $1, %rbx		# testq $1, %r(25)
	jne .L26		# jne .L26
	.L28:		# .L28:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(27)
	movq $1, %r12		# movq $1, %r(49)
	xorq %r12, %r13		# xorq %r(49), %r(50)
	testq $1, %r13		# testq $1, %r(50)
	jne .L27		# jne .L27
	.L26:		# .L26:
	leaq .L29(%rip), %rdi		# leaq .L29(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(28)
	movq $1, %r12		# movq $1, %r(52)
	movq %rbx, %rdi		# movq %r(28), %rdi
	movq %r12, %rsi		# movq %r(52), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L30		# jmp .L30
	.L30:		# .L30:
	movq $1, %rbx		# movq $1, %r(53)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(76)
	xorq %rbx, %r13		# xorq %r(53), %r(54)
	testq $1, %r13		# testq $1, %r(54)
	jne .L33		# jne .L33
	.L34:		# .L34:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(32)
	movq $1, %r12		# movq $1, %r(55)
	xorq %r12, %r13		# xorq %r(55), %r(56)
	testq $1, %r13		# testq $1, %r(56)
	jne .L33		# jne .L33
	.L32:		# .L32:
	leaq .L35(%rip), %rdi		# leaq .L35(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(33)
	movq $0, %r12		# movq $0, %r(58)
	movq %rbx, %rdi		# movq %r(33), %rdi
	movq %r12, %rsi		# movq %r(58), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L36		# jmp .L36
	.L36:		# .L36:
	movq $1, %r12		# movq $1, %r(59)
	movq $1, %r13		# movq $1, %r(60)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(77)
	movq %r14, -8(%rbp)		# movq %r(78), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(79)
	xorq %r13, %rbx		# xorq %r(60), %r(79)
	movq %rbx, -8(%rbp)		# movq %r(79), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(80)
	testq $1, %rbx		# testq $1, %r(80)
	jne .L39		# jne .L39
	.L40:		# .L40:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(37)
	testq $1, %rbx		# testq $1, %r(37)
	jne .L38		# jne .L38
	.L39:		# .L39:
	movq $0, %r12		# movq $0, %r(62)
	.L38:		# .L38:
	movq $1, %rbx		# movq $1, %r(63)
	xorq %rbx, %r12		# xorq %r(63), %r(64)
	movq $1, %rbx		# movq $1, %r(65)
	xorq %rbx, %r12		# xorq %r(65), %r(66)
	testq $1, %r12		# testq $1, %r(66)
	jne .L42		# jne .L42
	.L41:		# .L41:
	leaq .L43(%rip), %rdi		# leaq .L43(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(38)
	movq $1, %r12		# movq $1, %r(68)
	movq %rbx, %rdi		# movq %r(38), %rdi
	movq %r12, %rsi		# movq %r(68), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L44		# jmp .L44
	.L44:		# .L44:
	.L25:		# .L25:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L42:		# .L42:
	leaq .L45(%rip), %rdi		# leaq .L45(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(40)
	movq $0, %r12		# movq $0, %r(70)
	movq %rbx, %rdi		# movq %r(40), %rdi
	movq %r12, %rsi		# movq %r(70), %rsi
	call _Itest_paib		# call _Itest_paib
	.L33:		# .L33:
	leaq .L37(%rip), %rdi		# leaq .L37(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(35)
	movq $1, %r12		# movq $1, %r(72)
	movq %rbx, %rdi		# movq %r(35), %rdi
	movq %r12, %rsi		# movq %r(72), %rsi
	call _Itest_paib		# call _Itest_paib
	.L27:		# .L27:
	leaq .L31(%rip), %rdi		# leaq .L31(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(30)
	movq $0, %r12		# movq $0, %r(74)
	movq %rbx, %rdi		# movq %r(30), %rdi
	movq %r12, %rsi		# movq %r(74), %rsi
	call _Itest_paib		# call _Itest_paib
	
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
	movq (%r14), %r12		# movq (%r(p0)), %r(81)
	movq %r12, -16(%rbp)		# movq %r(93), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(94)
	salq $3, %rbx		# salq $3, %r(82)
	movq $8, %r12		# movq $8, %r(83)
	addq %r12, %rbx		# addq %r(83), %r(84)
	movq %rbx, %rdi		# movq %r(84), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(42)
	.L46:		# .L46:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(95)
	salq $3, %r12		# salq $3, %r(85)
	movq %r13, %r15		# movq %r(42), %r(86)
	addq %r12, %r15		# addq %r(85), %r(86)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(96)
	movq %rbx, %r12		# movq %r(96), %r(87)
	salq $3, %r12		# salq $3, %r(87)
	movq %r14, %rbx		# movq %r(p0), %r(97)
	movq %rbx, -8(%rbp)		# movq %r(97), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(98)
	addq %r12, %rbx		# addq %r(87), %r(98)
	movq %rbx, -8(%rbp)		# movq %r(98), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(99)
	movq (%rbx), %rbx		# movq (%r(99)), %r(89)
	movq %rbx, (%r15)		# movq %r(89), (%r(86))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(100)
	decq %rbx		# decq %r(100)
	movq %rbx, -16(%rbp)		# movq %r(100), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(90)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(101)
	cmpq %rbx, %r12		# cmpq %r(90), %r(101)
	jge .L46		# jge .L46
	.L47:		# .L47:
	movq $8, %rbx		# movq $8, %r(91)
	movq %r13, %r12		# movq %r(42), %r(92)
	addq %rbx, %r12		# addq %r(91), %r(92)
	movq %r12, %rax		# movq %r(92), %rax
	.L48:		# .L48:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L31:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L45:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L29:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L20:
	.quad 28
	.quad 85
	.quad 110
	.quad 114
	.quad 101
	.quad 97
	.quad 99
	.quad 104
	.quad 97
	.quad 98
	.quad 108
	.quad 101
	.quad 32
	.quad 102
	.quad 117
	.quad 110
	.quad 99
	.quad 116
	.quad 105
	.quad 111
	.quad 110
	.quad 32
	.quad 99
	.quad 97
	.quad 108
	.quad 108
	.quad 101
	.quad 100
	.quad 33
	.text

#.section .rodata
.align 8
.L35:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L37:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L43:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L24:
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

