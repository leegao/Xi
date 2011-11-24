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
	movq %r13, %rbx		# movq %r(a), %r(416)
	imulq %r13, %rbx		# imulq %r(a), %r(416)
	movq %rbx, %rax		# movq %r(416), %rax
	jmp .L132		# jmp .L132
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
	movq %rax, %r14		# movq %rax, %r(401)
	movq %r12, %rdi		# movq %r(b), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r12		# movq %rax, %r(402)
	addq %r12, %r14		# addq %r(402), %r(417)
	movq $0, %r12		# movq $0, %r(418)
	.L134:		# .L134:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(403)
	cmpq %r14, %r13		# cmpq %r(goal), %r(403)
	jge .L136		# jge .L136
	.L135:		# .L135:
	incq %r12		# incq %r(h)
	jmp .L134		# jmp .L134
	.L136:		# .L136:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(404)
	cmpq %r14, %r13		# cmpq %r(goal), %r(404)
	jne .L138		# jne .L138
	.L137:		# .L137:
	movq %r12, %rax		# movq %r(h), %rax
	jmp .L133		# jmp .L133
	.L133:		# .L133:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L138:		# .L138:
	movq $1, %rbx		# movq $1, %r(419)
	movq %r12, %r14		# movq %r(h), %r(420)
	subq %rbx, %r14		# subq %r(419), %r(420)
	movq %r14, %rax		# movq %r(420), %rax
	jmp .L133		# jmp .L133
	
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
	leaq .L141(%rip), %rdi		# leaq .L141(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(405)
	movq %r13, %rdi		# movq %r(405), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L140:		# .L140:
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
	leaq .L143(%rip), %rdi		# leaq .L143(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(409)
	movq $1, %rbx		# movq $1, %r(423)
	movq %rbx, %r12		# movq %r(423), %r(399)
	movq $3, %rbx		# movq $3, %r(424)
	movq $4, %r13		# movq $4, %r(425)
	movq %rbx, %rdi		# movq %r(424), %rdi
	movq %r13, %rsi		# movq %r(425), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(410)
	movq $5, %r13		# movq $5, %r(426)
	cmpq %r13, %rbx		# cmpq %r(426), %r(410)
	je .L144		# je .L144
	.L145:		# .L145:
	movq $0, %rbx		# movq $0, %r(427)
	movq %rbx, %r12		# movq %r(427), %r(399)
	.L144:		# .L144:
	movq %r14, %rdi		# movq %r(409), %rdi
	movq %r12, %rsi		# movq %r(399), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L146(%rip), %rdi		# leaq .L146(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(412)
	movq $1, %rbx		# movq $1, %r(429)
	movq %rbx, %r12		# movq %r(429), %r(400)
	movq $21, %rbx		# movq $21, %r(430)
	movq $15, %r13		# movq $15, %r(431)
	movq %rbx, %rdi		# movq %r(430), %rdi
	movq %r13, %rsi		# movq %r(431), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(413)
	movq $25, %r13		# movq $25, %r(432)
	cmpq %r13, %rbx		# cmpq %r(432), %r(413)
	je .L147		# je .L147
	.L148:		# .L148:
	movq $0, %rbx		# movq $0, %r(433)
	movq %rbx, %r12		# movq %r(433), %r(400)
	.L147:		# .L147:
	movq %r14, %rdi		# movq %r(412), %rdi
	movq %r12, %rsi		# movq %r(400), %rsi
	call _Itest_paib		# call _Itest_paib
	.L142:		# .L142:
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
	movq %rdi, %rbx		# movq %rdi, %r(449)
	movq %rbx, -32(%rbp)		# movq %r(449), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(450)
	movq (%rbx), %r12		# movq (%r(450)), %r(434)
	movq %r12, -16(%rbp)		# movq %r(451), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(452)
	salq $3, %rbx		# salq $3, %r(435)
	movq $8, %r12		# movq $8, %r(436)
	addq %r12, %rbx		# addq %r(436), %r(437)
	movq %rbx, %rdi		# movq %r(437), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(415)
	movq %r12, -40(%rbp)		# movq %r(453), -40(%rbp)
	.L16:		# .L16:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(454)
	salq $3, %r13		# salq $3, %r(438)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(455)
	addq %r13, %r12		# addq %r(438), %r(439)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(456)
	movq %r13, -24(%rbp)		# movq %r(457), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(458)
	salq $3, %rbx		# salq $3, %r(458)
	movq %rbx, -24(%rbp)		# movq %r(458), -24(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(459)
	movq %r13, -8(%rbp)		# movq %r(446), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(447)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(460)
	addq %r13, %rbx		# addq %r(460), %r(447)
	movq %rbx, -8(%rbp)		# movq %r(447), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(448)
	movq (%rbx), %rbx		# movq (%r(448)), %r(442)
	movq %rbx, (%r12)		# movq %r(442), (%r(439))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(461)
	decq %rbx		# decq %r(461)
	movq %rbx, -16(%rbp)		# movq %r(461), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(443)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(462)
	cmpq %rbx, %r12		# cmpq %r(443), %r(462)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(444)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(463)
	addq %rbx, %r13		# addq %r(444), %r(445)
	movq %r13, %rax		# movq %r(445), %rax
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
.L143:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L146:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L141:
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

