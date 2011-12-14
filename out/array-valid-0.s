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
	movq %rdi, %rbx		# movq %rdi, %r(171)
	movq $40, %rbx		# movq $40, %r(182)
	movq %rbx, %rdi		# movq %r(182), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(177)
	movq $4, %rbx		# movq $4, %r(183)
	movq %rbx, (%r14)		# movq %r(183), (%r(177))
	movq $8, %rbx		# movq $8, %r(184)
	movq %r14, %r13		# movq %r(177), %r(185)
	addq %rbx, %r13		# addq %r(184), %r(185)
	movq %r13, %r12		# movq %r(185), %r(207)
	movq %r12, -8(%rbp)		# movq %r(207), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(186)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(208)
	movq %r14, %r12		# movq %r(208), %r(187)
	addq %rbx, %r12		# addq %r(186), %r(187)
	movq $0, %rbx		# movq $0, %r(188)
	movq %rbx, (%r12)		# movq %r(188), (%r(187))
	movq $8, %rbx		# movq $8, %r(189)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(209)
	movq %r14, %r12		# movq %r(209), %r(190)
	addq %rbx, %r12		# addq %r(189), %r(190)
	movq $0, %rbx		# movq $0, %r(191)
	movq %rbx, (%r12)		# movq %r(191), (%r(190))
	movq $16, %rbx		# movq $16, %r(192)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(210)
	movq %r14, %r12		# movq %r(210), %r(193)
	addq %rbx, %r12		# addq %r(192), %r(193)
	movq $0, %rbx		# movq $0, %r(194)
	movq %rbx, (%r12)		# movq %r(194), (%r(193))
	movq $24, %rbx		# movq $24, %r(195)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(211)
	movq %r14, %r12		# movq %r(211), %r(196)
	addq %rbx, %r12		# addq %r(195), %r(196)
	movq $0, %rbx		# movq $0, %r(197)
	movq %rbx, (%r12)		# movq %r(197), (%r(196))
	movq $0, %r13		# movq $0, %r(198)
	movq $8, %rbx		# movq $8, %r(199)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(212)
	movq %r12, %r14		# movq %r(212), %r(200)
	subq %rbx, %r14		# subq %r(199), %r(200)
	movq (%r14), %rbx		# movq (%r(200)), %r(201)
	cmpq %rbx, %r13		# cmpq %r(201), %r(198)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(202)
	movq %r13, %r14		# movq %r(202), %r(203)
	salq $3, %r14		# salq $3, %r(203)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(213)
	movq %r12, %r15		# movq %r(213), %r(204)
	addq %r14, %r15		# addq %r(203), %r(204)
	movq $42, %rbx		# movq $42, %r(205)
	movq %rbx, (%r15)		# movq %r(205), (%r(204))
	leaq .L33(%rip), %rdi		# leaq .L33(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(178)
	movq %rbx, %rdi		# movq %r(178), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(226)
	movq %rbx, -24(%rbp)		# movq %r(226), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(227)
	movq (%rbx), %r13		# movq (%r(227)), %r(214)
	movq %r13, %r12		# movq %r(214), %r(228)
	movq %r12, -16(%rbp)		# movq %r(228), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(229)
	movq %r12, %r13		# movq %r(229), %r(215)
	salq $3, %r13		# salq $3, %r(215)
	movq $8, %rbx		# movq $8, %r(216)
	movq %r13, %r14		# movq %r(215), %r(217)
	addq %rbx, %r14		# addq %r(216), %r(217)
	movq %r14, %rdi		# movq %r(217), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(180)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(230)
	movq %r13, %rbx		# movq %r(230), %r(218)
	salq $3, %rbx		# salq $3, %r(218)
	movq %r15, %r13		# movq %r(180), %r(219)
	addq %rbx, %r13		# addq %r(218), %r(219)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(231)
	movq %rbx, %r12		# movq %r(231), %r(220)
	salq $3, %r12		# salq $3, %r(220)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(232)
	movq %rbx, %r14		# movq %r(232), %r(233)
	movq %r14, -8(%rbp)		# movq %r(233), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(234)
	addq %r12, %rbx		# addq %r(220), %r(234)
	movq %rbx, -8(%rbp)		# movq %r(234), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(235)
	movq (%rbx), %r12		# movq (%r(235)), %r(222)
	movq %r12, (%r13)		# movq %r(222), (%r(219))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(236)
	decq %rbx		# decq %r(236)
	movq %rbx, -16(%rbp)		# movq %r(236), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(223)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(237)
	cmpq %rbx, %r12		# cmpq %r(223), %r(237)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(224)
	movq %r15, %r13		# movq %r(180), %r(225)
	addq %rbx, %r13		# addq %r(224), %r(225)
	movq %r13, %rax		# movq %r(225), %rax
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
