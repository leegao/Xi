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
	movq $40, %rbx		# movq $40, %r(172)
	movq %rbx, %rdi		# movq %r(172), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(167)
	movq $4, %r12		# movq $4, %r(173)
	movq %r12, (%r14)		# movq %r(173), (%r(167))
	movq $8, %r12		# movq $8, %r(174)
	addq %r12, %r14		# addq %r(174), %r(175)
	movq $0, %r12		# movq $0, %r(176)
	movq %r14, %rbx		# movq %r(163), %r(177)
	addq %r12, %rbx		# addq %r(176), %r(177)
	movq $0, %r12		# movq $0, %r(178)
	movq %r12, (%rbx)		# movq %r(178), (%r(177))
	movq $8, %r12		# movq $8, %r(179)
	movq %r14, %rbx		# movq %r(163), %r(180)
	addq %r12, %rbx		# addq %r(179), %r(180)
	movq $0, %r12		# movq $0, %r(181)
	movq %r12, (%rbx)		# movq %r(181), (%r(180))
	movq $16, %r12		# movq $16, %r(182)
	movq %r14, %rbx		# movq %r(163), %r(183)
	addq %r12, %rbx		# addq %r(182), %r(183)
	movq $0, %r12		# movq $0, %r(184)
	movq %r12, (%rbx)		# movq %r(184), (%r(183))
	movq $24, %r12		# movq $24, %r(185)
	movq %r14, %rbx		# movq %r(163), %r(186)
	addq %r12, %rbx		# addq %r(185), %r(186)
	movq $0, %r12		# movq $0, %r(187)
	movq %r12, (%rbx)		# movq %r(187), (%r(186))
	movq $0, %rbx		# movq $0, %r(188)
	movq $8, %r12		# movq $8, %r(189)
	movq %r14, %r15		# movq %r(163), %r(190)
	subq %r12, %r15		# subq %r(189), %r(190)
	movq (%r15), %r12		# movq (%r(190)), %r(191)
	cmpq %r12, %rbx		# cmpq %r(191), %r(188)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %rbx		# movq $0, %r(192)
	salq $3, %rbx		# salq $3, %r(193)
	addq %rbx, %r14		# addq %r(193), %r(194)
	movq $42, %r12		# movq $42, %r(195)
	movq %r12, (%r14)		# movq %r(195), (%r(194))
	leaq .L33(%rip), %rdi		# leaq .L33(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(168)
	movq %rbx, %rdi		# movq %r(168), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L30		# jmp .L30
	.L30:		# .L30:
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
	movq %rdi, %rbx		# movq %rdi, %r(209)
	movq %rbx, -16(%rbp)		# movq %r(209), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(210)
	movq (%rbx), %r12		# movq (%r(210)), %r(197)
	movq %r12, -24(%rbp)		# movq %r(211), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(212)
	salq $3, %rbx		# salq $3, %r(198)
	movq $8, %r12		# movq $8, %r(199)
	addq %r12, %rbx		# addq %r(199), %r(200)
	movq %rbx, %rdi		# movq %r(200), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(170)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(213)
	salq $3, %r12		# salq $3, %r(201)
	movq %r14, %r13		# movq %r(170), %r(202)
	addq %r12, %r13		# addq %r(201), %r(202)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(214)
	movq %rbx, %r12		# movq %r(214), %r(203)
	salq $3, %r12		# salq $3, %r(203)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(215)
	movq %rbx, -8(%rbp)		# movq %r(216), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(217)
	addq %r12, %rbx		# addq %r(203), %r(217)
	movq %rbx, -8(%rbp)		# movq %r(217), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(218)
	movq (%rbx), %rbx		# movq (%r(218)), %r(205)
	movq %rbx, (%r13)		# movq %r(205), (%r(202))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(219)
	decq %rbx		# decq %r(219)
	movq %rbx, -24(%rbp)		# movq %r(219), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(206)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(220)
	cmpq %rbx, %r12		# cmpq %r(206), %r(220)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(207)
	movq %r14, %r12		# movq %r(170), %r(208)
	addq %rbx, %r12		# addq %r(207), %r(208)
	movq %r12, %rax		# movq %r(208), %rax
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
	
#.section .rodata
.align 8
.L33:
	.quad 8
	.quad 78
	.quad 111
	.quad 32
	.quad 99
	.quad 114
	.quad 97
	.quad 115
	.quad 104
	.text

error_outofbounds:
call _I_outOfBounds_p
