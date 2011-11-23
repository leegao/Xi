.att_syntax prefix
.text
.globl _Isqr_ii
_Isqr_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %r13, %rbx		# movq %r(a), %r(384)
	imulq %r13, %rbx		# imulq %r(a), %r(384)
	movq %rbx, %rax		# movq %r(384), %rax
	jmp .L131		# jmp .L131
	.L131:		# .L131:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ihypo_iii
_Ihypo_iii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq %rbx, %rdi		# movq %r(a), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r14		# movq %rax, %r(369)
	movq %r12, %rdi		# movq %r(b), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r12		# movq %rax, %r(370)
	addq %r12, %r14		# addq %r(370), %r(385)
	movq $0, %r12		# movq $0, %r(386)
	.L133:		# .L133:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(371)
	cmpq %r14, %r13		# cmpq %r(goal), %r(371)
	jge .L135		# jge .L135
	.L134:		# .L134:
	incq %r12		# incq %r(h)
	jmp .L133		# jmp .L133
	.L135:		# .L135:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(372)
	cmpq %r14, %r13		# cmpq %r(goal), %r(372)
	jne .L137		# jne .L137
	.L136:		# .L136:
	movq %r12, %rax		# movq %r(h), %rax
	jmp .L132		# jmp .L132
	jmp .L138		# jmp .L138
	.L137:		# .L137:
	movq $1, %rbx		# movq $1, %r(387)
	subq %rbx, %r12		# subq %r(387), %r(388)
	movq %r12, %rax		# movq %r(388), %rax
	jmp .L132		# jmp .L132
	.L138:		# .L138:
	.L132:		# .L132:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L140(%rip), %rdi		# leaq .L140(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(373)
	movq %r13, %rdi		# movq %r(373), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L139:		# .L139:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	leaq .L142(%rip), %rdi		# leaq .L142(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(377)
	movq $1, %rbx		# movq $1, %r(391)
	movq %rbx, %r14		# movq %r(391), %r(367)
	movq $3, %rbx		# movq $3, %r(392)
	movq $4, %r13		# movq $4, %r(393)
	movq %rbx, %rdi		# movq %r(392), %rdi
	movq %r13, %rsi		# movq %r(393), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(378)
	movq $5, %r13		# movq $5, %r(394)
	cmpq %r13, %rbx		# cmpq %r(394), %r(378)
	je .L143		# je .L143
	.L144:		# .L144:
	movq $0, %rbx		# movq $0, %r(395)
	movq %rbx, %r14		# movq %r(395), %r(367)
	.L143:		# .L143:
	movq %r15, %rdi		# movq %r(377), %rdi
	movq %r14, %rsi		# movq %r(367), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L145(%rip), %rdi		# leaq .L145(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(380)
	movq $1, %rbx		# movq $1, %r(397)
	movq %rbx, %r14		# movq %r(397), %r(368)
	movq $21, %rbx		# movq $21, %r(398)
	movq $15, %r13		# movq $15, %r(399)
	movq %rbx, %rdi		# movq %r(398), %rdi
	movq %r13, %rsi		# movq %r(399), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(381)
	movq $25, %r13		# movq $25, %r(400)
	cmpq %r13, %rbx		# cmpq %r(400), %r(381)
	je .L146		# je .L146
	.L147:		# .L147:
	movq $0, %rbx		# movq $0, %r(401)
	movq %rbx, %r14		# movq %r(401), %r(368)
	.L146:		# .L146:
	movq %r15, %rdi		# movq %r(380), %rdi
	movq %r14, %rsi		# movq %r(368), %rsi
	call _Itest_paib		# call _Itest_paib
	.L141:		# .L141:
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
	movq %rdi, %rbx		# movq %rdi, %r(414)
	movq %rbx, -16(%rbp)		# movq %r(414), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(415)
	movq (%rbx), %rbx		# movq (%r(415)), %r(402)
	movq %rbx, %r14		# movq %r(402), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(403)
	salq $3, %rbx		# salq $3, %r(403)
	movq $8, %r12		# movq $8, %r(404)
	addq %r12, %rbx		# addq %r(404), %r(405)
	movq %rbx, %rdi		# movq %r(405), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(383)
	movq %rbx, %r15		# movq %r(383), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(406)
	salq $3, %rbx		# salq $3, %r(406)
	movq %r15, %r12		# movq %r(t27), %r(407)
	addq %rbx, %r12		# addq %r(406), %r(407)
	movq %r14, %r13		# movq %r(t10), %r(408)
	salq $3, %r13		# salq $3, %r(408)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(416)
	movq %rbx, -8(%rbp)		# movq %r(417), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(418)
	addq %r13, %rbx		# addq %r(408), %r(418)
	movq %rbx, -8(%rbp)		# movq %r(418), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(419)
	movq (%rbx), %rbx		# movq (%r(419)), %r(410)
	movq %rbx, (%r12)		# movq %r(410), (%r(407))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(411)
	cmpq %rbx, %r14		# cmpq %r(411), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(412)
	movq %r15, %r12		# movq %r(t27), %r(413)
	addq %rbx, %r12		# addq %r(412), %r(413)
	movq %r12, %rax		# movq %r(413), %rax
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
.L140:
	.quad 8
	.quad 84
	.quad 101
	.quad 115
	.quad 116
	.quad 105
	.quad 110
	.quad 103
	.quad 58
	.text

#.section .rodata
.align 8
.L145:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L142:
	.quad 2
	.quad 35
	.quad 49
	.text

