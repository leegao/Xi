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
	movq %rax, %rbx		# movq %rax, %r(28)
	movq $3, %r12		# movq $3, %r(39)
	movq %r12, (%rbx)		# movq %r(39), (%r(12))
	movq $8, %r12		# movq $8, %r(40)
	addq %r12, %rbx		# addq %r(40), %r(41)
	movq $0, %r12		# movq $0, %r(42)
	movq %rbx, %r14		# movq %r(11), %r(43)
	addq %r12, %r14		# addq %r(42), %r(43)
	movq $65, %r12		# movq $65, %r(44)
	movq %r12, (%r14)		# movq %r(44), (%r(43))
	movq $8, %r12		# movq $8, %r(45)
	movq %rbx, %r14		# movq %r(11), %r(46)
	addq %r12, %r14		# addq %r(45), %r(46)
	movq $66, %r12		# movq $66, %r(47)
	movq %r12, (%r14)		# movq %r(47), (%r(46))
	movq $16, %r12		# movq $16, %r(48)
	movq %rbx, %r14		# movq %r(11), %r(49)
	addq %r12, %r14		# addq %r(48), %r(49)
	movq $67, %r12		# movq $67, %r(50)
	movq %r12, (%r14)		# movq %r(50), (%r(49))
	leaq .L13(%rip), %rdi		# leaq .L13(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(29)
	movq %r12, %rdi		# movq %r(29), %rdi
	movq %rbx, %rsi		# movq %r(b), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(30)
	movq %rbx, %r14		# movq %r(30), %r(a)
	movq $32, %rbx		# movq $32, %r(52)
	movq %rbx, %rdi		# movq %r(52), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(31)
	movq $3, %r12		# movq $3, %r(53)
	movq %r12, (%r13)		# movq %r(53), (%r(15))
	movq $8, %r12		# movq $8, %r(54)
	addq %r12, %r13		# addq %r(54), %r(55)
	movq $0, %rbx		# movq $0, %r(56)
	movq %r13, %r12		# movq %r(14), %r(57)
	addq %rbx, %r12		# addq %r(56), %r(57)
	movq $70, %rbx		# movq $70, %r(58)
	movq %rbx, (%r12)		# movq %r(58), (%r(57))
	movq $8, %rbx		# movq $8, %r(59)
	movq %r13, %r12		# movq %r(14), %r(60)
	addq %rbx, %r12		# addq %r(59), %r(60)
	movq $71, %rbx		# movq $71, %r(61)
	movq %rbx, (%r12)		# movq %r(61), (%r(60))
	movq $16, %rbx		# movq $16, %r(62)
	movq %r13, %r12		# movq %r(14), %r(63)
	addq %rbx, %r12		# addq %r(62), %r(63)
	movq $72, %rbx		# movq $72, %r(64)
	movq %rbx, (%r12)		# movq %r(64), (%r(63))
	movq %r14, %rdi		# movq %r(a), %rdi
	movq %r13, %rsi		# movq %r(14), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(32)
	movq $32, %rbx		# movq $32, %r(65)
	movq %rbx, %rdi		# movq %r(65), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(33)
	movq $3, %r12		# movq $3, %r(66)
	movq %r12, (%r13)		# movq %r(66), (%r(17))
	movq $8, %r12		# movq $8, %r(67)
	addq %r12, %r13		# addq %r(67), %r(68)
	movq $0, %rbx		# movq $0, %r(69)
	movq %r13, %r12		# movq %r(16), %r(70)
	addq %rbx, %r12		# addq %r(69), %r(70)
	movq $73, %rbx		# movq $73, %r(71)
	movq %rbx, (%r12)		# movq %r(71), (%r(70))
	movq $8, %rbx		# movq $8, %r(72)
	movq %r13, %r12		# movq %r(16), %r(73)
	addq %rbx, %r12		# addq %r(72), %r(73)
	movq $74, %rbx		# movq $74, %r(74)
	movq %rbx, (%r12)		# movq %r(74), (%r(73))
	movq $16, %rbx		# movq $16, %r(75)
	movq %r13, %r12		# movq %r(16), %r(76)
	addq %rbx, %r12		# addq %r(75), %r(76)
	movq $75, %rbx		# movq $75, %r(77)
	movq %rbx, (%r12)		# movq %r(77), (%r(76))
	movq %r14, %rdi		# movq %r(32), %rdi
	movq %r13, %rsi		# movq %r(16), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(34)
	movq %rbx, %rdi		# movq %r(34), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %r12		# movq (%r(p0)), %r(78)
	movq %r12, -24(%rbp)		# movq %r(93), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(94)
	salq $3, %rbx		# salq $3, %r(79)
	movq $8, %r12		# movq $8, %r(80)
	addq %r12, %rbx		# addq %r(80), %r(81)
	movq %rbx, %rdi		# movq %r(81), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(36)
	movq %r12, -32(%rbp)		# movq %r(95), -32(%rbp)
	.L14:		# .L14:
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(96)
	salq $3, %r14		# salq $3, %r(82)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(97)
	movq %rbx, -16(%rbp)		# movq %r(98), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(99)
	addq %r14, %r12		# addq %r(82), %r(99)
	movq %r12, -16(%rbp)		# movq %r(99), -16(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(100)
	salq $3, %r14		# salq $3, %r(84)
	movq %r15, %rbx		# movq %r(p0), %r(90)
	movq %rbx, -8(%rbp)		# movq %r(90), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(91)
	addq %r14, %r12		# addq %r(84), %r(91)
	movq %r12, -8(%rbp)		# movq %r(91), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(92)
	movq (%rbx), %rbx		# movq (%r(92)), %r(86)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(101)
	movq %rbx, (%r12)		# movq %r(86), (%r(101))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(102)
	decq %rbx		# decq %r(102)
	movq %rbx, -24(%rbp)		# movq %r(102), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(87)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(103)
	cmpq %rbx, %r12		# cmpq %r(87), %r(103)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(88)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(104)
	addq %rbx, %r13		# addq %r(88), %r(89)
	movq %r13, %rax		# movq %r(89), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(128)
	movq %rbx, -32(%rbp)		# movq %r(128), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(129)
	movq %rbx, -8(%rbp)		# movq %r(129), -8(%rbp)
	movq $0, %r12		# movq $0, %r(105)
	movq %r12, -64(%rbp)		# movq %r(130), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(106)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(131)
	subq %rbx, %r13		# subq %r(106), %r(107)
	movq (%r13), %r12		# movq (%r(107)), %r(108)
	movq %r12, -24(%rbp)		# movq %r(132), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(109)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(133)
	subq %rbx, %r13		# subq %r(109), %r(110)
	movq (%r13), %rbx		# movq (%r(110)), %r(111)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(134)
	addq %rbx, %r12		# addq %r(111), %r(112)
	movq %r12, -16(%rbp)		# movq %r(135), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(113)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(136)
	addq %rbx, %r13		# addq %r(113), %r(114)
	movq %r13, %rdi		# movq %r(114), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(37)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(137)
	movq %r12, (%r13)		# movq %r(137), (%r(25))
	movq $8, %r12		# movq $8, %r(115)
	addq %r12, %r13		# addq %r(115), %r(116)
	movq %r13, -56(%rbp)		# movq %r(138), -56(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(139)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(140)
	cmpq %rbx, %r12		# cmpq %r(139), %r(140)
	jge .L18		# jge .L18
	.L17:		# .L17:
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(141)
	salq $3, %r13		# salq $3, %r(117)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(142)
	movq %rbx, -40(%rbp)		# movq %r(143), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(144)
	addq %r13, %r12		# addq %r(117), %r(144)
	movq %r12, -40(%rbp)		# movq %r(144), -40(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(145)
	salq $3, %r13		# salq $3, %r(119)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(146)
	movq %rbx, -48(%rbp)		# movq %r(147), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(148)
	addq %r13, %r12		# addq %r(119), %r(148)
	movq %r12, -48(%rbp)		# movq %r(148), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(149)
	movq (%rbx), %rbx		# movq (%r(149)), %r(121)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(150)
	movq %rbx, (%r12)		# movq %r(121), (%r(150))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(151)
	incq %rbx		# incq %r(151)
	movq %rbx, -64(%rbp)		# movq %r(151), -64(%rbp)
	jmp .L16		# jmp .L16
	.L18:		# .L18:
	.L19:		# .L19:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(152)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(153)
	cmpq %rbx, %r12		# cmpq %r(152), %r(153)
	jge .L21		# jge .L21
	.L20:		# .L20:
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(154)
	salq $3, %r13		# salq $3, %r(122)
	movq -56(%rbp), %r15		# movq -56(%rbp), %r(155)
	addq %r13, %r15		# addq %r(122), %r(123)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(156)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(157)
	subq %r13, %rbx		# subq %r(157), %r(124)
	salq $3, %rbx		# salq $3, %r(125)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(158)
	addq %rbx, %r12		# addq %r(125), %r(126)
	movq (%r12), %rbx		# movq (%r(126)), %r(127)
	movq %rbx, (%r15)		# movq %r(127), (%r(123))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(159)
	incq %rbx		# incq %r(159)
	movq %rbx, -64(%rbp)		# movq %r(159), -64(%rbp)
	jmp .L19		# jmp .L19
	.L21:		# .L21:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(160)
	movq %rbx, %rax		# movq %r(160), %rax
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

