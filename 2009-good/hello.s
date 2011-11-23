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
	leaq .L118(%rip), %rdi		# leaq .L118(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(349)
	movq %rbx, %rdi		# movq %r(349), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L117:		# .L117:
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
	movq %rdi, %rbx		# movq %rdi, %r(365)
	movq %rbx, -16(%rbp)		# movq %r(365), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(366)
	movq (%rbx), %r12		# movq (%r(366)), %r(353)
	movq %r12, %r12		# movq %r(353), %r(367)
	movq %r12, -8(%rbp)		# movq %r(367), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(368)
	movq %rbx, %rbx		# movq %r(368), %r(354)
	salq $3, %rbx		# salq $3, %r(354)
	movq $8, %r12		# movq $8, %r(355)
	movq %rbx, %rbx		# movq %r(354), %r(356)
	addq %r12, %rbx		# addq %r(355), %r(356)
	movq %rbx, %rdi		# movq %r(356), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(351)
	movq %rbx, %r14		# movq %r(351), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(369)
	movq %r12, %r12		# movq %r(369), %r(357)
	salq $3, %r12		# salq $3, %r(357)
	movq %r14, %r13		# movq %r(t27), %r(358)
	addq %r12, %r13		# addq %r(357), %r(358)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(370)
	movq %rbx, %r12		# movq %r(370), %r(359)
	salq $3, %r12		# salq $3, %r(359)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(371)
	movq %rbx, %rbx		# movq %r(371), %r(372)
	movq %rbx, -24(%rbp)		# movq %r(372), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(373)
	addq %r12, %rbx		# addq %r(359), %r(373)
	movq %rbx, -24(%rbp)		# movq %r(373), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(374)
	movq (%rbx), %rbx		# movq (%r(374)), %r(361)
	movq %rbx, (%r13)		# movq %r(361), (%r(358))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(375)
	decq %rbx		# decq %r(375)
	movq %rbx, -8(%rbp)		# movq %r(375), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(362)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(376)
	cmpq %rbx, %r12		# cmpq %r(362), %r(376)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(363)
	movq %r14, %r12		# movq %r(t27), %r(364)
	addq %rbx, %r12		# addq %r(363), %r(364)
	movq %r12, %rax		# movq %r(364), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L118:
	.quad 13
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 44
	.quad 32
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.quad 33
	.text

