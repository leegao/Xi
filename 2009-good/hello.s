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
	movq %rax, %rbx		# movq %rax, %r(348)
	movq %rbx, %rdi		# movq %r(348), %rdi
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(367)
	movq %rbx, -32(%rbp)		# movq %r(367), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(368)
	movq (%rbx), %r12		# movq (%r(368)), %r(352)
	movq %r12, %r12		# movq %r(352), %r(369)
	movq %r12, -16(%rbp)		# movq %r(369), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(370)
	movq %rbx, %rbx		# movq %r(370), %r(353)
	salq $3, %rbx		# salq $3, %r(353)
	movq $8, %r12		# movq $8, %r(354)
	movq %rbx, %rbx		# movq %r(353), %r(355)
	addq %r12, %rbx		# addq %r(354), %r(355)
	movq %rbx, %rdi		# movq %r(355), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(350)
	movq %r12, %r12		# movq %r(350), %r(371)
	movq %r12, -40(%rbp)		# movq %r(371), -40(%rbp)
	.L16:		# .L16:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(372)
	movq %r13, %r13		# movq %r(372), %r(356)
	salq $3, %r13		# salq $3, %r(356)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(373)
	movq %r12, %r12		# movq %r(373), %r(357)
	addq %r13, %r12		# addq %r(356), %r(357)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(374)
	movq %r13, %r13		# movq %r(374), %r(375)
	movq %r13, -24(%rbp)		# movq %r(375), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(376)
	salq $3, %rbx		# salq $3, %r(376)
	movq %rbx, -24(%rbp)		# movq %r(376), -24(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(377)
	movq %r13, %r13		# movq %r(377), %r(364)
	movq %r13, -8(%rbp)		# movq %r(364), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(365)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(378)
	addq %r13, %rbx		# addq %r(378), %r(365)
	movq %rbx, -8(%rbp)		# movq %r(365), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(366)
	movq (%rbx), %rbx		# movq (%r(366)), %r(360)
	movq %rbx, (%r12)		# movq %r(360), (%r(357))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(379)
	decq %rbx		# decq %r(379)
	movq %rbx, -16(%rbp)		# movq %r(379), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(361)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(380)
	cmpq %rbx, %r12		# cmpq %r(361), %r(380)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(362)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(381)
	movq %r13, %r13		# movq %r(381), %r(363)
	addq %rbx, %r13		# addq %r(362), %r(363)
	movq %r13, %rax		# movq %r(363), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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

