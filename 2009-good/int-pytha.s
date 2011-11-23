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
	movq %r13, %rbx		# movq %r(a), %r(402)
	imulq %r13, %rbx		# imulq %r(a), %r(402)
	movq %rbx, %rax		# movq %r(402), %rax
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
	movq %rax, %r14		# movq %rax, %r(387)
	movq %r12, %rdi		# movq %r(b), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r12		# movq %rax, %r(388)
	movq %r14, %r14		# movq %r(387), %r(403)
	addq %r12, %r14		# addq %r(388), %r(403)
	movq %r14, %r14		# movq %r(403), %r(goal)
	movq $0, %r12		# movq $0, %r(404)
	movq %r12, %r12		# movq %r(404), %r(h)
	.L133:		# .L133:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(389)
	cmpq %r14, %r13		# cmpq %r(goal), %r(389)
	jge .L135		# jge .L135
	.L134:		# .L134:
	incq %r12		# incq %r(h)
	jmp .L133		# jmp .L133
	.L135:		# .L135:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(390)
	cmpq %r14, %r13		# cmpq %r(goal), %r(390)
	jne .L137		# jne .L137
	.L136:		# .L136:
	movq %r12, %rax		# movq %r(h), %rax
	jmp .L132		# jmp .L132
	jmp .L138		# jmp .L138
	.L137:		# .L137:
	movq $1, %rbx		# movq $1, %r(405)
	movq %r12, %r12		# movq %r(h), %r(406)
	subq %rbx, %r12		# subq %r(405), %r(406)
	movq %r12, %rax		# movq %r(406), %rax
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
	movq %rax, %r13		# movq %rax, %r(391)
	movq %r13, %rdi		# movq %r(391), %rdi
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
	movq %rax, %r14		# movq %rax, %r(395)
	movq $1, %rbx		# movq $1, %r(409)
	movq %rbx, %r12		# movq %r(409), %r(385)
	movq $3, %rbx		# movq $3, %r(410)
	movq $4, %r13		# movq $4, %r(411)
	movq %rbx, %rdi		# movq %r(410), %rdi
	movq %r13, %rsi		# movq %r(411), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(396)
	movq $5, %r13		# movq $5, %r(412)
	cmpq %r13, %rbx		# cmpq %r(412), %r(396)
	je .L143		# je .L143
	.L144:		# .L144:
	movq $0, %rbx		# movq $0, %r(413)
	movq %rbx, %r12		# movq %r(413), %r(385)
	.L143:		# .L143:
	movq %r14, %rdi		# movq %r(395), %rdi
	movq %r12, %rsi		# movq %r(385), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L145(%rip), %rdi		# leaq .L145(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(398)
	movq $1, %rbx		# movq $1, %r(415)
	movq %rbx, %r12		# movq %r(415), %r(386)
	movq $21, %rbx		# movq $21, %r(416)
	movq $15, %r13		# movq $15, %r(417)
	movq %rbx, %rdi		# movq %r(416), %rdi
	movq %r13, %rsi		# movq %r(417), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(399)
	movq $25, %r13		# movq $25, %r(418)
	cmpq %r13, %rbx		# cmpq %r(418), %r(399)
	je .L146		# je .L146
	.L147:		# .L147:
	movq $0, %rbx		# movq $0, %r(419)
	movq %rbx, %r12		# movq %r(419), %r(386)
	.L146:		# .L146:
	movq %r14, %rdi		# movq %r(398), %rdi
	movq %r12, %rsi		# movq %r(386), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(432)
	movq %rbx, -16(%rbp)		# movq %r(432), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(433)
	movq (%rbx), %r12		# movq (%r(433)), %r(420)
	movq %r12, %r12		# movq %r(420), %r(434)
	movq %r12, -8(%rbp)		# movq %r(434), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(435)
	movq %rbx, %rbx		# movq %r(435), %r(421)
	salq $3, %rbx		# salq $3, %r(421)
	movq $8, %r12		# movq $8, %r(422)
	movq %rbx, %rbx		# movq %r(421), %r(423)
	addq %r12, %rbx		# addq %r(422), %r(423)
	movq %rbx, %rdi		# movq %r(423), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(401)
	movq %rbx, %r14		# movq %r(401), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(436)
	movq %r12, %r12		# movq %r(436), %r(424)
	salq $3, %r12		# salq $3, %r(424)
	movq %r14, %r13		# movq %r(t27), %r(425)
	addq %r12, %r13		# addq %r(424), %r(425)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(437)
	movq %rbx, %r12		# movq %r(437), %r(426)
	salq $3, %r12		# salq $3, %r(426)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(438)
	movq %rbx, %rbx		# movq %r(438), %r(439)
	movq %rbx, -24(%rbp)		# movq %r(439), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(440)
	addq %r12, %rbx		# addq %r(426), %r(440)
	movq %rbx, -24(%rbp)		# movq %r(440), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(441)
	movq (%rbx), %rbx		# movq (%r(441)), %r(428)
	movq %rbx, (%r13)		# movq %r(428), (%r(425))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(442)
	decq %rbx		# decq %r(442)
	movq %rbx, -8(%rbp)		# movq %r(442), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(429)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(443)
	cmpq %rbx, %r12		# cmpq %r(429), %r(443)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(430)
	movq %r14, %r12		# movq %r(t27), %r(431)
	addq %rbx, %r12		# addq %r(430), %r(431)
	movq %r12, %rax		# movq %r(431), %rax
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
.L142:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
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

.section .rodata
.align 8
.L145:
	.quad 2
	.quad 35
	.quad 50
	.text

