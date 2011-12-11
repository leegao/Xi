.att_syntax prefix
.text
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
	movq %rdi, %rbx		# movq %rdi, %r(9)
	movq $32, %rbx		# movq $32, %r(38)
	movq %rbx, %rdi		# movq %r(38), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(28)
	movq $3, %rbx		# movq $3, %r(39)
	movq %rbx, (%r14)		# movq %r(39), (%r(28))
	movq $8, %rbx		# movq $8, %r(40)
	movq %r14, %r13		# movq %r(28), %r(41)
	addq %rbx, %r13		# addq %r(40), %r(41)
	movq %r13, %r14		# movq %r(41), %r(11)
	movq $0, %rbx		# movq $0, %r(42)
	movq %r14, %r13		# movq %r(11), %r(43)
	addq %rbx, %r13		# addq %r(42), %r(43)
	movq $65, %rbx		# movq $65, %r(44)
	movq %rbx, (%r13)		# movq %r(44), (%r(43))
	movq $8, %rbx		# movq $8, %r(45)
	movq %r14, %r13		# movq %r(11), %r(46)
	addq %rbx, %r13		# addq %r(45), %r(46)
	movq $66, %rbx		# movq $66, %r(47)
	movq %rbx, (%r13)		# movq %r(47), (%r(46))
	movq $16, %rbx		# movq $16, %r(48)
	movq %r14, %r13		# movq %r(11), %r(49)
	addq %rbx, %r13		# addq %r(48), %r(49)
	movq $67, %rbx		# movq $67, %r(50)
	movq %rbx, (%r13)		# movq %r(50), (%r(49))
	leaq .L13(%rip), %rdi		# leaq .L13(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(29)
	movq %rbx, %rdi		# movq %r(29), %rdi
	movq %r14, %rsi		# movq %r(11), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(78)
	movq %rbx, -8(%rbp)		# movq %r(78), -8(%rbp)
	movq $32, %rbx		# movq $32, %r(52)
	movq %rbx, %rdi		# movq %r(52), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(31)
	movq $3, %rbx		# movq $3, %r(53)
	movq %rbx, (%r14)		# movq %r(53), (%r(31))
	movq $8, %rbx		# movq $8, %r(54)
	movq %r14, %r13		# movq %r(31), %r(55)
	addq %rbx, %r13		# addq %r(54), %r(55)
	movq %r13, %r14		# movq %r(55), %r(14)
	movq $0, %rbx		# movq $0, %r(56)
	movq %r14, %r13		# movq %r(14), %r(57)
	addq %rbx, %r13		# addq %r(56), %r(57)
	movq $70, %rbx		# movq $70, %r(58)
	movq %rbx, (%r13)		# movq %r(58), (%r(57))
	movq $8, %rbx		# movq $8, %r(59)
	movq %r14, %r13		# movq %r(14), %r(60)
	addq %rbx, %r13		# addq %r(59), %r(60)
	movq $71, %rbx		# movq $71, %r(61)
	movq %rbx, (%r13)		# movq %r(61), (%r(60))
	movq $16, %rbx		# movq $16, %r(62)
	movq %r14, %r13		# movq %r(14), %r(63)
	addq %rbx, %r13		# addq %r(62), %r(63)
	movq $72, %rbx		# movq $72, %r(64)
	movq %rbx, (%r13)		# movq %r(64), (%r(63))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(79)
	movq %rbx, %rdi		# movq %r(79), %rdi
	movq %r14, %rsi		# movq %r(14), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(80)
	movq %rbx, -16(%rbp)		# movq %r(80), -16(%rbp)
	movq $32, %rbx		# movq $32, %r(65)
	movq %rbx, %rdi		# movq %r(65), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(33)
	movq $3, %rbx		# movq $3, %r(66)
	movq %rbx, (%r14)		# movq %r(66), (%r(33))
	movq $8, %rbx		# movq $8, %r(67)
	movq %r14, %r13		# movq %r(33), %r(68)
	addq %rbx, %r13		# addq %r(67), %r(68)
	movq %r13, %r14		# movq %r(68), %r(16)
	movq $0, %rbx		# movq $0, %r(69)
	movq %r14, %r13		# movq %r(16), %r(70)
	addq %rbx, %r13		# addq %r(69), %r(70)
	movq $73, %rbx		# movq $73, %r(71)
	movq %rbx, (%r13)		# movq %r(71), (%r(70))
	movq $8, %rbx		# movq $8, %r(72)
	movq %r14, %r13		# movq %r(16), %r(73)
	addq %rbx, %r13		# addq %r(72), %r(73)
	movq $74, %rbx		# movq $74, %r(74)
	movq %rbx, (%r13)		# movq %r(74), (%r(73))
	movq $16, %rbx		# movq $16, %r(75)
	movq %r14, %r13		# movq %r(16), %r(76)
	addq %rbx, %r13		# addq %r(75), %r(76)
	movq $75, %rbx		# movq $75, %r(77)
	movq %rbx, (%r13)		# movq %r(77), (%r(76))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(81)
	movq %rbx, %rdi		# movq %r(81), %rdi
	movq %r14, %rsi		# movq %r(16), %rsi
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
	addq $32, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(94)
	movq %rbx, -16(%rbp)		# movq %r(94), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(95)
	movq (%rbx), %r13		# movq (%r(95)), %r(82)
	movq %r13, %r12		# movq %r(82), %r(96)
	movq %r12, -24(%rbp)		# movq %r(96), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(97)
	movq %r12, %r13		# movq %r(97), %r(83)
	salq $3, %r13		# salq $3, %r(83)
	movq $8, %rbx		# movq $8, %r(84)
	movq %r13, %r14		# movq %r(83), %r(85)
	addq %rbx, %r14		# addq %r(84), %r(85)
	movq %r14, %rdi		# movq %r(85), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(36)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(98)
	movq %r13, %rbx		# movq %r(98), %r(86)
	salq $3, %rbx		# salq $3, %r(86)
	movq %r15, %r13		# movq %r(36), %r(87)
	addq %rbx, %r13		# addq %r(86), %r(87)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(99)
	movq %rbx, %r12		# movq %r(99), %r(88)
	salq $3, %r12		# salq $3, %r(88)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(100)
	movq %rbx, %r14		# movq %r(100), %r(101)
	movq %r14, -8(%rbp)		# movq %r(101), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(102)
	addq %r12, %rbx		# addq %r(88), %r(102)
	movq %rbx, -8(%rbp)		# movq %r(102), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(103)
	movq (%rbx), %r12		# movq (%r(103)), %r(90)
	movq %r12, (%r13)		# movq %r(90), (%r(87))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(104)
	decq %rbx		# decq %r(104)
	movq %rbx, -24(%rbp)		# movq %r(104), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(91)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(105)
	cmpq %rbx, %r12		# cmpq %r(91), %r(105)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(92)
	movq %r15, %r13		# movq %r(36), %r(93)
	addq %rbx, %r13		# addq %r(92), %r(93)
	movq %r13, %rax		# movq %r(93), %rax
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
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(129)
	movq %rbx, -32(%rbp)		# movq %r(129), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(130)
	movq %rbx, -40(%rbp)		# movq %r(130), -40(%rbp)
	movq $0, %r13		# movq $0, %r(106)
	movq %r13, %rbx		# movq %r(106), %r(131)
	movq %rbx, -48(%rbp)		# movq %r(131), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(107)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(132)
	movq %r14, %r12		# movq %r(132), %r(108)
	subq %rbx, %r12		# subq %r(107), %r(108)
	movq (%r12), %r13		# movq (%r(108)), %r(109)
	movq %r13, %rbx		# movq %r(109), %r(133)
	movq %rbx, -8(%rbp)		# movq %r(133), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(110)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(134)
	movq %r14, %r15		# movq %r(134), %r(111)
	subq %rbx, %r15		# subq %r(110), %r(111)
	movq (%r15), %r12		# movq (%r(111)), %r(112)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(135)
	movq %r14, %r13		# movq %r(135), %r(113)
	addq %r12, %r13		# addq %r(112), %r(113)
	movq %r13, %r12		# movq %r(113), %r(136)
	movq %r12, -56(%rbp)		# movq %r(136), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(114)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(137)
	movq %r14, %r12		# movq %r(137), %r(115)
	addq %rbx, %r12		# addq %r(114), %r(115)
	movq %r12, %rdi		# movq %r(115), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(37)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(138)
	movq %rbx, (%r14)		# movq %r(138), (%r(37))
	movq $8, %r13		# movq $8, %r(116)
	movq %r14, %r12		# movq %r(37), %r(139)
	movq %r12, -16(%rbp)		# movq %r(139), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(140)
	addq %r13, %rbx		# addq %r(116), %r(140)
	movq %rbx, -16(%rbp)		# movq %r(140), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(141)
	movq %r13, %rbx		# movq %r(141), %r(142)
	movq %rbx, -64(%rbp)		# movq %r(142), -64(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(143)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(144)
	cmpq %rbx, %r12		# cmpq %r(143), %r(144)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(145)
	movq %r12, %r14		# movq %r(145), %r(118)
	salq $3, %r14		# salq $3, %r(118)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(146)
	movq %r13, %rbx		# movq %r(146), %r(147)
	movq %rbx, -72(%rbp)		# movq %r(147), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(148)
	addq %r14, %rbx		# addq %r(118), %r(148)
	movq %rbx, -72(%rbp)		# movq %r(148), -72(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(149)
	movq %r12, %r14		# movq %r(149), %r(120)
	salq $3, %r14		# salq $3, %r(120)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(150)
	movq %r13, %rbx		# movq %r(150), %r(151)
	movq %rbx, -24(%rbp)		# movq %r(151), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(152)
	addq %r14, %rbx		# addq %r(120), %r(152)
	movq %rbx, -24(%rbp)		# movq %r(152), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(153)
	movq (%rbx), %r12		# movq (%r(153)), %r(122)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(154)
	movq %r12, (%rbx)		# movq %r(122), (%r(154))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(155)
	incq %rbx		# incq %r(155)
	movq %rbx, -48(%rbp)		# movq %r(155), -48(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(156)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(157)
	cmpq %r12, %rbx		# cmpq %r(157), %r(156)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(158)
	movq %r12, %r14		# movq %r(158), %r(123)
	salq $3, %r14		# salq $3, %r(123)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(159)
	movq %r13, %rbx		# movq %r(159), %r(160)
	movq %rbx, -88(%rbp)		# movq %r(160), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(161)
	addq %r14, %rbx		# addq %r(123), %r(161)
	movq %rbx, -88(%rbp)		# movq %r(161), -88(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(162)
	movq %r13, %r12		# movq %r(162), %r(125)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(163)
	subq %rbx, %r12		# subq %r(163), %r(125)
	movq %r12, %r14		# movq %r(125), %r(126)
	salq $3, %r14		# salq $3, %r(126)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(164)
	movq %r13, %rbx		# movq %r(164), %r(165)
	movq %rbx, -80(%rbp)		# movq %r(165), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(166)
	addq %r14, %rbx		# addq %r(126), %r(166)
	movq %rbx, -80(%rbp)		# movq %r(166), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(167)
	movq (%rbx), %r12		# movq (%r(167)), %r(128)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(168)
	movq %r12, (%rbx)		# movq %r(128), (%r(168))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(169)
	incq %rbx		# incq %r(169)
	movq %rbx, -48(%rbp)		# movq %r(169), -48(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(170)
	movq %rbx, %rax		# movq %r(170), %rax
	jmp .L23		# jmp .L23
	.L23:		# .L23:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
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

