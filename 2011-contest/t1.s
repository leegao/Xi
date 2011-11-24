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
	movq %rax, %r14		# movq %rax, %r(34)
	movq $3, %r12		# movq $3, %r(41)
	movq %r12, (%r14)		# movq %r(41), (%r(34))
	movq $8, %r12		# movq $8, %r(42)
	addq %r12, %r14		# addq %r(42), %r(43)
	movq $0, %r12		# movq $0, %r(44)
	movq %r14, %rbx		# movq %r(13), %r(45)
	addq %r12, %rbx		# addq %r(44), %r(45)
	movq $7, %r12		# movq $7, %r(46)
	movq %r12, (%rbx)		# movq %r(46), (%r(45))
	movq $8, %r12		# movq $8, %r(47)
	movq %r14, %rbx		# movq %r(13), %r(48)
	addq %r12, %rbx		# addq %r(47), %r(48)
	movq $8, %r12		# movq $8, %r(49)
	movq %r12, (%rbx)		# movq %r(49), (%r(48))
	movq $16, %r12		# movq $16, %r(50)
	movq %r14, %rbx		# movq %r(13), %r(51)
	addq %r12, %rbx		# addq %r(50), %r(51)
	movq $9, %r12		# movq $9, %r(52)
	movq %r12, (%rbx)		# movq %r(52), (%r(51))
	movq %r14, %rdi		# movq %r(13), %rdi
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
	jmp .L29		# jmp .L29
	.L29:		# .L29:
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
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(97)
	movq %rbx, -40(%rbp)		# movq %r(97), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(54)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(98)
	subq %rbx, %r13		# subq %r(54), %r(55)
	movq (%r13), %r12		# movq (%r(55)), %r(56)
	movq %r12, -64(%rbp)		# movq %r(99), -64(%rbp)
	movq $1, %r12		# movq $1, %r(57)
	movq %r12, -24(%rbp)		# movq %r(100), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(58)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(101)
	cmpq %rbx, %r12		# cmpq %r(58), %r(101)
	jne .L31		# jne .L31
	movq $0, %rbx		# movq $0, %r(59)
	movq %rbx, %rax		# movq %r(59), %rax
	jmp .L30		# jmp .L30
	.L30:		# .L30:
	.L18:		# .L18:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L31:		# .L31:
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(102)
	salq $3, %r12		# salq $3, %r(60)
	movq %r12, %rdi		# movq %r(60), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(36)
	movq $1, %r12		# movq $1, %r(61)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(103)
	movq %r14, -88(%rbp)		# movq %r(104), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(105)
	subq %r12, %rbx		# subq %r(61), %r(105)
	movq %rbx, -88(%rbp)		# movq %r(105), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(106)
	movq %rbx, (%r13)		# movq %r(106), (%r(36))
	movq $8, %rbx		# movq $8, %r(63)
	addq %rbx, %r13		# addq %r(63), %r(64)
	movq %r13, -16(%rbp)		# movq %r(107), -16(%rbp)
	.L32:		# .L32:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(108)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(109)
	cmpq %r12, %rbx		# cmpq %r(109), %r(108)
	jge .L33		# jge .L33
	movq $8, %rbx		# movq $8, %r(65)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(110)
	subq %rbx, %r13		# subq %r(65), %r(66)
	movq (%r13), %rbx		# movq (%r(66)), %r(67)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(111)
	cmpq %rbx, %r12		# cmpq %r(67), %r(111)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(68)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(112)
	subq %rbx, %r14		# subq %r(68), %r(69)
	movq $8, %r13		# movq $8, %r(70)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(113)
	movq %r12, -48(%rbp)		# movq %r(114), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(115)
	subq %r13, %rbx		# subq %r(70), %r(115)
	movq %rbx, -48(%rbp)		# movq %r(115), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(116)
	movq (%rbx), %rbx		# movq (%r(116)), %r(72)
	cmpq %rbx, %r14		# cmpq %r(72), %r(24)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(73)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(117)
	addq %r14, %rbx		# addq %r(73), %r(74)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(118)
	salq $3, %r14		# salq $3, %r(75)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(119)
	movq %r12, -32(%rbp)		# movq %r(120), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(121)
	addq %r14, %r13		# addq %r(75), %r(121)
	movq %r13, -32(%rbp)		# movq %r(121), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(122)
	movq (%r12), %r12		# movq (%r(122)), %r(77)
	movq %r12, (%rbx)		# movq %r(77), (%r(74))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(123)
	incq %rbx		# incq %r(123)
	movq %rbx, -24(%rbp)		# movq %r(123), -24(%rbp)
	jmp .L32		# jmp .L32
	.L33:		# .L33:
	movq $0, %r13		# movq $0, %r(78)
	movq $8, %r12		# movq $8, %r(79)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(124)
	subq %r12, %r14		# subq %r(79), %r(80)
	movq (%r14), %rbx		# movq (%r(80)), %r(81)
	cmpq %rbx, %r13		# cmpq %r(81), %r(78)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(82)
	salq $3, %r13		# salq $3, %r(83)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(125)
	addq %r13, %rbx		# addq %r(83), %r(84)
	movq (%rbx), %r12		# movq (%r(84)), %r(85)
	movq %r12, -24(%rbp)		# movq %r(126), -24(%rbp)
	movq $1, %rbx		# movq $1, %r(86)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(127)
	addq %rbx, %r12		# addq %r(86), %r(87)
	salq $3, %r12		# salq $3, %r(88)
	movq %r12, %rdi		# movq %r(88), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(37)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(128)
	movq %r12, (%rbx)		# movq %r(128), (%r(37))
	movq $8, %r12		# movq $8, %r(89)
	addq %r12, %rbx		# addq %r(89), %r(90)
	movq %rbx, -72(%rbp)		# movq %r(129), -72(%rbp)
	.L34:		# .L34:
	movq $0, %rbx		# movq $0, %r(91)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(130)
	cmpq %rbx, %r12		# cmpq %r(91), %r(130)
	jle .L35		# jle .L35
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(131)
	decq %rbx		# decq %r(131)
	movq %rbx, -24(%rbp)		# movq %r(131), -24(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(132)
	movq %rbx, %rdi		# movq %r(132), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(133)
	movq %rbx, -8(%rbp)		# movq %r(133), -8(%rbp)
	movq $8, %r12		# movq $8, %r(92)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(134)
	movq %r13, -80(%rbp)		# movq %r(135), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(136)
	subq %r12, %rbx		# subq %r(92), %r(136)
	movq %rbx, -80(%rbp)		# movq %r(136), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(137)
	movq (%rbx), %rbx		# movq (%r(137)), %r(94)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(138)
	cmpq %rbx, %r12		# cmpq %r(94), %r(138)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(139)
	salq $3, %r13		# salq $3, %r(95)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(140)
	movq %rbx, -56(%rbp)		# movq %r(141), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(142)
	addq %r13, %r12		# addq %r(95), %r(142)
	movq %r12, -56(%rbp)		# movq %r(142), -56(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(143)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(144)
	movq %rbx, (%r12)		# movq %r(143), (%r(144))
	jmp .L34		# jmp .L34
	.L35:		# .L35:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(145)
	movq %rbx, %rax		# movq %r(145), %rax
	jmp .L30		# jmp .L30
	
error_outofbounds:
call _I_outOfBounds_p
