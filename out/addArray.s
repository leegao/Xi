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
	movq $32, %rbx		# movq $32, %r(38)
	movq %rbx, %rdi		# movq %r(38), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(28)
	movq $3, %r12		# movq $3, %r(39)
	movq %r12, (%r14)		# movq %r(39), (%r(28))
	movq $8, %r12		# movq $8, %r(40)
	addq %r12, %r14		# addq %r(40), %r(41)
	movq $0, %r12		# movq $0, %r(42)
	movq %r14, %rbx		# movq %r(11), %r(43)
	addq %r12, %rbx		# addq %r(42), %r(43)
	movq $65, %r12		# movq $65, %r(44)
	movq %r12, (%rbx)		# movq %r(44), (%r(43))
	movq $8, %r12		# movq $8, %r(45)
	movq %r14, %rbx		# movq %r(11), %r(46)
	addq %r12, %rbx		# addq %r(45), %r(46)
	movq $66, %r12		# movq $66, %r(47)
	movq %r12, (%rbx)		# movq %r(47), (%r(46))
	movq $16, %r12		# movq $16, %r(48)
	movq %r14, %rbx		# movq %r(11), %r(49)
	addq %r12, %rbx		# addq %r(48), %r(49)
	movq $67, %r12		# movq $67, %r(50)
	movq %r12, (%rbx)		# movq %r(50), (%r(49))
	leaq .L13(%rip), %rdi		# leaq .L13(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(29)
	movq %r12, %rdi		# movq %r(29), %rdi
	movq %r14, %rsi		# movq %r(11), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(30)
	movq $32, %rbx		# movq $32, %r(52)
	movq %rbx, %rdi		# movq %r(52), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(31)
	movq $3, %rbx		# movq $3, %r(53)
	movq %rbx, (%r13)		# movq %r(53), (%r(31))
	movq $8, %rbx		# movq $8, %r(54)
	addq %rbx, %r13		# addq %r(54), %r(55)
	movq %r13, %r15		# movq %r(55), %r(14)
	movq $0, %rbx		# movq $0, %r(56)
	movq %r15, %r13		# movq %r(14), %r(57)
	addq %rbx, %r13		# addq %r(56), %r(57)
	movq $70, %rbx		# movq $70, %r(58)
	movq %rbx, (%r13)		# movq %r(58), (%r(57))
	movq $8, %rbx		# movq $8, %r(59)
	movq %r15, %r13		# movq %r(14), %r(60)
	addq %rbx, %r13		# addq %r(59), %r(60)
	movq $71, %rbx		# movq $71, %r(61)
	movq %rbx, (%r13)		# movq %r(61), (%r(60))
	movq $16, %rbx		# movq $16, %r(62)
	movq %r15, %r12		# movq %r(14), %r(63)
	addq %rbx, %r12		# addq %r(62), %r(63)
	movq $72, %rbx		# movq $72, %r(64)
	movq %rbx, (%r12)		# movq %r(64), (%r(63))
	movq %r14, %rdi		# movq %r(30), %rdi
	movq %r15, %rsi		# movq %r(14), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(32)
	movq $32, %rbx		# movq $32, %r(65)
	movq %rbx, %rdi		# movq %r(65), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(33)
	movq $3, %rbx		# movq $3, %r(66)
	movq %rbx, (%r13)		# movq %r(66), (%r(33))
	movq $8, %rbx		# movq $8, %r(67)
	addq %rbx, %r13		# addq %r(67), %r(68)
	movq %r13, %r15		# movq %r(68), %r(16)
	movq $0, %rbx		# movq $0, %r(69)
	movq %r15, %r13		# movq %r(16), %r(70)
	addq %rbx, %r13		# addq %r(69), %r(70)
	movq $73, %rbx		# movq $73, %r(71)
	movq %rbx, (%r13)		# movq %r(71), (%r(70))
	movq $8, %rbx		# movq $8, %r(72)
	movq %r15, %r13		# movq %r(16), %r(73)
	addq %rbx, %r13		# addq %r(72), %r(73)
	movq $74, %rbx		# movq $74, %r(74)
	movq %rbx, (%r13)		# movq %r(74), (%r(73))
	movq $16, %rbx		# movq $16, %r(75)
	movq %r15, %r12		# movq %r(16), %r(76)
	addq %rbx, %r12		# addq %r(75), %r(76)
	movq $75, %rbx		# movq $75, %r(77)
	movq %rbx, (%r12)		# movq %r(77), (%r(76))
	movq %r14, %rdi		# movq %r(32), %rdi
	movq %r15, %rsi		# movq %r(16), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(34)
	movq %rbx, %rdi		# movq %r(34), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L12		# jmp .L12
	.L12:		# .L12:
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
	movq %rdi, %rbx		# movq %rdi, %r(90)
	movq %rbx, -16(%rbp)		# movq %r(90), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(91)
	movq (%rbx), %r12		# movq (%r(91)), %r(78)
	movq %r12, -24(%rbp)		# movq %r(92), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(93)
	salq $3, %rbx		# salq $3, %r(79)
	movq $8, %r12		# movq $8, %r(80)
	addq %r12, %rbx		# addq %r(80), %r(81)
	movq %rbx, %rdi		# movq %r(81), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(36)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(94)
	salq $3, %r12		# salq $3, %r(82)
	movq %r14, %r13		# movq %r(36), %r(83)
	addq %r12, %r13		# addq %r(82), %r(83)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(95)
	movq %rbx, %r12		# movq %r(95), %r(84)
	salq $3, %r12		# salq $3, %r(84)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(96)
	movq %rbx, -8(%rbp)		# movq %r(97), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(98)
	addq %r12, %rbx		# addq %r(84), %r(98)
	movq %rbx, -8(%rbp)		# movq %r(98), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(99)
	movq (%rbx), %rbx		# movq (%r(99)), %r(86)
	movq %rbx, (%r13)		# movq %r(86), (%r(83))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(100)
	decq %rbx		# decq %r(100)
	movq %rbx, -24(%rbp)		# movq %r(100), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(87)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(101)
	cmpq %rbx, %r12		# cmpq %r(87), %r(101)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(88)
	movq %r14, %r12		# movq %r(36), %r(89)
	addq %rbx, %r12		# addq %r(88), %r(89)
	movq %r12, %rax		# movq %r(89), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
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
	movq %rdi, %rbx		# movq %rdi, %r(125)
	movq %rbx, -24(%rbp)		# movq %r(125), -24(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(126)
	movq %rbx, -48(%rbp)		# movq %r(126), -48(%rbp)
	movq $0, %r12		# movq $0, %r(102)
	movq %r12, -8(%rbp)		# movq %r(127), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(103)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(128)
	subq %rbx, %r13		# subq %r(103), %r(104)
	movq (%r13), %r12		# movq (%r(104)), %r(105)
	movq %r12, -40(%rbp)		# movq %r(129), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(106)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(130)
	subq %rbx, %r13		# subq %r(106), %r(107)
	movq (%r13), %rbx		# movq (%r(107)), %r(108)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(131)
	addq %rbx, %r12		# addq %r(108), %r(109)
	movq %r12, -64(%rbp)		# movq %r(132), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(110)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(133)
	addq %rbx, %r13		# addq %r(110), %r(111)
	movq %r13, %rdi		# movq %r(111), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(37)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(134)
	movq %r12, (%rbx)		# movq %r(134), (%r(37))
	movq $8, %r12		# movq $8, %r(112)
	addq %r12, %rbx		# addq %r(112), %r(113)
	movq %rbx, -16(%rbp)		# movq %r(135), -16(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(136)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(137)
	cmpq %r12, %rbx		# cmpq %r(137), %r(136)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(138)
	salq $3, %r13		# salq $3, %r(114)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(139)
	movq %rbx, -72(%rbp)		# movq %r(140), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(141)
	addq %r13, %r12		# addq %r(114), %r(141)
	movq %r12, -72(%rbp)		# movq %r(141), -72(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(142)
	salq $3, %r13		# salq $3, %r(116)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(143)
	movq %rbx, -32(%rbp)		# movq %r(144), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(145)
	addq %r13, %r12		# addq %r(116), %r(145)
	movq %r12, -32(%rbp)		# movq %r(145), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(146)
	movq (%rbx), %rbx		# movq (%r(146)), %r(118)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(147)
	movq %rbx, (%r12)		# movq %r(118), (%r(147))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(148)
	incq %rbx		# incq %r(148)
	movq %rbx, -8(%rbp)		# movq %r(148), -8(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(149)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(150)
	cmpq %r12, %rbx		# cmpq %r(150), %r(149)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(151)
	salq $3, %r13		# salq $3, %r(119)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(152)
	addq %r13, %r14		# addq %r(119), %r(120)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(153)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(154)
	subq %r13, %r15		# subq %r(154), %r(121)
	salq $3, %r15		# salq $3, %r(122)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(155)
	movq %rbx, -56(%rbp)		# movq %r(156), -56(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(157)
	addq %r15, %r13		# addq %r(122), %r(157)
	movq %r13, -56(%rbp)		# movq %r(157), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(158)
	movq (%rbx), %rbx		# movq (%r(158)), %r(124)
	movq %rbx, (%r14)		# movq %r(124), (%r(120))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(159)
	incq %rbx		# incq %r(159)
	movq %rbx, -8(%rbp)		# movq %r(159), -8(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(160)
	movq %rbx, %rax		# movq %r(160), %rax
	jmp .L23		# jmp .L23
	.L23:		# .L23:
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
.L13:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

