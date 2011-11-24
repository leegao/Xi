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
	movq $32, %rbx		# movq $32, %r(40)
	movq %rbx, %rdi		# movq %r(40), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(34)
	movq $3, %r12		# movq $3, %r(41)
	movq %r12, (%rbx)		# movq %r(41), (%r(14))
	movq $8, %r12		# movq $8, %r(42)
	addq %r12, %rbx		# addq %r(42), %r(43)
	movq $0, %r12		# movq $0, %r(44)
	movq %rbx, %r14		# movq %r(13), %r(45)
	addq %r12, %r14		# addq %r(44), %r(45)
	movq $7, %r12		# movq $7, %r(46)
	movq %r12, (%r14)		# movq %r(46), (%r(45))
	movq $8, %r12		# movq $8, %r(47)
	movq %rbx, %r14		# movq %r(13), %r(48)
	addq %r12, %r14		# addq %r(47), %r(48)
	movq $8, %r12		# movq $8, %r(49)
	movq %r12, (%r14)		# movq %r(49), (%r(48))
	movq $16, %r12		# movq $16, %r(50)
	movq %rbx, %r14		# movq %r(13), %r(51)
	addq %r12, %r14		# addq %r(50), %r(51)
	movq $9, %r12		# movq $9, %r(52)
	movq %r12, (%r14)		# movq %r(52), (%r(51))
	movq %rbx, %rdi		# movq %r(a), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L13:		# .L13:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_i
_Ig_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $60, %rbx		# movq $60, %r(53)
	movq %rbx, %rax		# movq %r(53), %rax
	jmp .L15		# jmp .L15
	.L15:		# .L15:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $160, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(96)
	movq %rbx, -80(%rbp)		# movq %r(96), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(54)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(97)
	subq %rbx, %r13		# subq %r(54), %r(55)
	movq (%r13), %r12		# movq (%r(55)), %r(56)
	movq %r12, -136(%rbp)		# movq %r(98), -136(%rbp)
	movq $1, %r12		# movq $1, %r(57)
	movq %r12, -144(%rbp)		# movq %r(99), -144(%rbp)
	movq $0, %rbx		# movq $0, %r(58)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(100)
	cmpq %rbx, %r12		# cmpq %r(58), %r(100)
	jne .L16		# jne .L16
	.L17:		# .L17:
	movq $0, %rbx		# movq $0, %r(59)
	movq %rbx, %rax		# movq %r(59), %rax
	jmp .L18		# jmp .L18
	.L16:		# .L16:
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(101)
	salq $3, %r12		# salq $3, %r(60)
	movq %r12, %rdi		# movq %r(60), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(36)
	movq $1, %r13		# movq $1, %r(61)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(102)
	movq %rbx, -96(%rbp)		# movq %r(103), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(104)
	subq %r13, %r12		# subq %r(61), %r(104)
	movq %r12, -96(%rbp)		# movq %r(104), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(105)
	movq %r12, (%r14)		# movq %r(105), (%r(19))
	movq $8, %r12		# movq $8, %r(63)
	addq %r12, %r14		# addq %r(63), %r(64)
	movq %r14, -32(%rbp)		# movq %r(106), -32(%rbp)
	.L19:		# .L19:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(107)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(108)
	cmpq %r12, %rbx		# cmpq %r(108), %r(107)
	jge .L20		# jge .L20
	.L21:		# .L21:
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(109)
	movq %r12, -24(%rbp)		# movq %r(110), -24(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(111)
	movq %r12, -64(%rbp)		# movq %r(112), -64(%rbp)
	movq $8, %r12		# movq $8, %r(65)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(113)
	movq %r13, -112(%rbp)		# movq %r(114), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(115)
	subq %r12, %rbx		# subq %r(65), %r(115)
	movq %rbx, -112(%rbp)		# movq %r(115), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(116)
	movq (%rbx), %rbx		# movq (%r(116)), %r(67)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(117)
	cmpq %rbx, %r12		# cmpq %r(67), %r(117)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(118)
	movq %r12, -16(%rbp)		# movq %r(119), -16(%rbp)
	movq $1, %r12		# movq $1, %r(68)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(120)
	movq %r13, -40(%rbp)		# movq %r(121), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(122)
	subq %r12, %rbx		# subq %r(68), %r(122)
	movq %rbx, -40(%rbp)		# movq %r(122), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(123)
	movq %r12, -48(%rbp)		# movq %r(124), -48(%rbp)
	movq $8, %r12		# movq $8, %r(70)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(125)
	movq %r13, -72(%rbp)		# movq %r(126), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(127)
	subq %r12, %rbx		# subq %r(70), %r(127)
	movq %rbx, -72(%rbp)		# movq %r(127), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(128)
	movq (%rbx), %rbx		# movq (%r(128)), %r(72)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(129)
	cmpq %rbx, %r12		# cmpq %r(72), %r(129)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(130)
	salq $3, %r13		# salq $3, %r(73)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(131)
	movq %rbx, -8(%rbp)		# movq %r(132), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(133)
	addq %r13, %r12		# addq %r(73), %r(133)
	movq %r12, -8(%rbp)		# movq %r(133), -8(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(134)
	movq %r12, -128(%rbp)		# movq %r(135), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(136)
	salq $3, %rbx		# salq $3, %r(136)
	movq %rbx, -128(%rbp)		# movq %r(136), -128(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(137)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(138)
	addq %r12, %r13		# addq %r(138), %r(76)
	movq (%r13), %rbx		# movq (%r(76)), %r(77)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(139)
	movq %rbx, (%r12)		# movq %r(77), (%r(139))
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(140)
	incq %rbx		# incq %r(140)
	movq %rbx, -144(%rbp)		# movq %r(140), -144(%rbp)
	jmp .L19		# jmp .L19
	.L20:		# .L20:
	movq -80(%rbp), %r15		# movq -80(%rbp), %r(141)
	movq $0, %r12		# movq $0, %r(78)
	movq %r12, %r14		# movq %r(78), %r(26)
	movq $8, %r12		# movq $8, %r(79)
	movq %r15, %r13		# movq %r(25), %r(80)
	subq %r12, %r13		# subq %r(79), %r(80)
	movq (%r13), %r12		# movq (%r(80)), %r(81)
	cmpq %r12, %r14		# cmpq %r(81), %r(26)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(26), %r(82)
	salq $3, %r12		# salq $3, %r(82)
	movq %r15, %rbx		# movq %r(25), %r(83)
	addq %r12, %rbx		# addq %r(82), %r(83)
	movq (%rbx), %r12		# movq (%r(83)), %r(84)
	movq %r12, -144(%rbp)		# movq %r(142), -144(%rbp)
	movq $1, %rbx		# movq $1, %r(85)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(143)
	addq %rbx, %r12		# addq %r(85), %r(86)
	salq $3, %r12		# salq $3, %r(87)
	movq %r12, %rdi		# movq %r(87), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(37)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(144)
	movq %r12, (%rbx)		# movq %r(144), (%r(28))
	movq $8, %r12		# movq $8, %r(88)
	addq %r12, %rbx		# addq %r(88), %r(89)
	movq %rbx, -88(%rbp)		# movq %r(145), -88(%rbp)
	.L25:		# .L25:
	movq $0, %rbx		# movq $0, %r(90)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(146)
	cmpq %rbx, %r12		# cmpq %r(90), %r(146)
	jle .L26		# jle .L26
	.L27:		# .L27:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(147)
	decq %rbx		# decq %r(147)
	movq %rbx, -144(%rbp)		# movq %r(147), -144(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(148)
	movq %rbx, %rdi		# movq %r(148), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(38)
	movq %rbx, -104(%rbp)		# movq %r(149), -104(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(150)
	movq %r12, -56(%rbp)		# movq %r(151), -56(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(152)
	movq $8, %r13		# movq $8, %r(91)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(153)
	movq %r14, -120(%rbp)		# movq %r(154), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(155)
	subq %r13, %r12		# subq %r(91), %r(155)
	movq %r12, -120(%rbp)		# movq %r(155), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(156)
	movq (%r12), %r12		# movq (%r(156)), %r(93)
	cmpq %r12, %rbx		# cmpq %r(93), %r(33)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(94)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(157)
	addq %rbx, %r13		# addq %r(94), %r(95)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(158)
	movq %rbx, (%r13)		# movq %r(158), (%r(95))
	jmp .L25		# jmp .L25
	.L26:		# .L26:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(159)
	movq %rbx, %rax		# movq %r(159), %rax
	jmp .L18		# jmp .L18
	.L18:		# .L18:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $160, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
