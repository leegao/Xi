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
	leaq .L119(%rip), %rdi		# leaq .L119(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(357)
	movq %rbx, %rdi		# movq %r(357), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L118:		# .L118:
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
	movq %rdi, %rbx		# movq %rdi, %r(376)
	movq %rbx, -24(%rbp)		# movq %r(376), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(377)
	movq (%rbx), %r12		# movq (%r(377)), %r(361)
	movq %r12, -16(%rbp)		# movq %r(378), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(379)
	salq $3, %rbx		# salq $3, %r(362)
	movq $8, %r12		# movq $8, %r(363)
	addq %r12, %rbx		# addq %r(363), %r(364)
	movq %rbx, %rdi		# movq %r(364), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(359)
	movq %r12, -40(%rbp)		# movq %r(380), -40(%rbp)
	.L16:		# .L16:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(381)
	salq $3, %r13		# salq $3, %r(365)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(382)
	movq %rbx, -32(%rbp)		# movq %r(383), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(384)
	addq %r13, %r12		# addq %r(365), %r(384)
	movq %r12, -32(%rbp)		# movq %r(384), -32(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(385)
	salq $3, %r13		# salq $3, %r(367)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(386)
	movq %rbx, -8(%rbp)		# movq %r(373), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(374)
	addq %r13, %r12		# addq %r(367), %r(374)
	movq %r12, -8(%rbp)		# movq %r(374), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(375)
	movq (%rbx), %rbx		# movq (%r(375)), %r(369)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(387)
	movq %rbx, (%r12)		# movq %r(369), (%r(387))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(388)
	decq %rbx		# decq %r(388)
	movq %rbx, -16(%rbp)		# movq %r(388), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(370)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(389)
	cmpq %rbx, %r12		# cmpq %r(370), %r(389)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(371)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(390)
	addq %rbx, %r13		# addq %r(371), %r(372)
	movq %r13, %rax		# movq %r(372), %rax
	.L18:		# .L18:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L119:
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

