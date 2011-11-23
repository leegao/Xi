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
	movq %rax, %rbx		# movq %rax, %r(337)
	movq %rbx, %rdi		# movq %r(337), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(353)
	movq %rbx, -16(%rbp)		# movq %r(353), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(354)
	movq (%rbx), %rbx		# movq (%r(354)), %r(341)
	movq %rbx, %r14		# movq %r(341), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(342)
	salq $3, %rbx		# salq $3, %r(342)
	movq $8, %r12		# movq $8, %r(343)
	addq %r12, %rbx		# addq %r(343), %r(344)
	movq %rbx, %rdi		# movq %r(344), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(339)
	movq %rbx, %r13		# movq %r(339), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(345)
	salq $3, %rbx		# salq $3, %r(345)
	movq %r13, %r12		# movq %r(t27), %r(346)
	addq %rbx, %r12		# addq %r(345), %r(346)
	movq %r14, %r15		# movq %r(t10), %r(347)
	salq $3, %r15		# salq $3, %r(347)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(355)
	movq %rbx, -8(%rbp)		# movq %r(356), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(357)
	addq %r15, %rbx		# addq %r(347), %r(357)
	movq %rbx, -8(%rbp)		# movq %r(357), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(358)
	movq (%rbx), %rbx		# movq (%r(358)), %r(349)
	movq %rbx, (%r12)		# movq %r(349), (%r(346))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(350)
	cmpq %rbx, %r14		# cmpq %r(350), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(351)
	movq %r13, %r12		# movq %r(t27), %r(352)
	addq %rbx, %r12		# addq %r(351), %r(352)
	movq %r12, %rax		# movq %r(352), %rax
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

