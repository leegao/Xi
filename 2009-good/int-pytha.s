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
	movq %r13, %rbx		# movq %r(a), %r(407)
	imulq %r13, %rbx		# imulq %r(a), %r(407)
	movq %rbx, %rax		# movq %r(407), %rax
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
	movq %rax, %r14		# movq %rax, %r(392)
	movq %r12, %rdi		# movq %r(b), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r12		# movq %rax, %r(393)
	movq %r14, %r14		# movq %r(392), %r(408)
	addq %r12, %r14		# addq %r(393), %r(408)
	movq %r14, %r14		# movq %r(408), %r(goal)
	movq $0, %r12		# movq $0, %r(409)
	movq %r12, %r12		# movq %r(409), %r(h)
	.L133:		# .L133:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(394)
	cmpq %r14, %r13		# cmpq %r(goal), %r(394)
	jge .L135		# jge .L135
	.L134:		# .L134:
	incq %r12		# incq %r(h)
	jmp .L133		# jmp .L133
	.L135:		# .L135:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(395)
	cmpq %r14, %r13		# cmpq %r(goal), %r(395)
	jne .L137		# jne .L137
	.L136:		# .L136:
	movq %r12, %rax		# movq %r(h), %rax
	jmp .L132		# jmp .L132
	jmp .L138		# jmp .L138
	.L137:		# .L137:
	movq $1, %rbx		# movq $1, %r(410)
	movq %r12, %r12		# movq %r(h), %r(411)
	subq %rbx, %r12		# subq %r(410), %r(411)
	movq %r12, %rax		# movq %r(411), %rax
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
	movq %rax, %r13		# movq %rax, %r(396)
	movq %r13, %rdi		# movq %r(396), %rdi
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
	movq %rax, %r15		# movq %rax, %r(400)
	movq $1, %rbx		# movq $1, %r(414)
	movq %rbx, %r14		# movq %r(414), %r(390)
	movq $3, %rbx		# movq $3, %r(415)
	movq $4, %r13		# movq $4, %r(416)
	movq %rbx, %rdi		# movq %r(415), %rdi
	movq %r13, %rsi		# movq %r(416), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(401)
	movq $5, %r13		# movq $5, %r(417)
	cmpq %r13, %rbx		# cmpq %r(417), %r(401)
	je .L143		# je .L143
	.L144:		# .L144:
	movq $0, %rbx		# movq $0, %r(418)
	movq %rbx, %r14		# movq %r(418), %r(390)
	.L143:		# .L143:
	movq %r15, %rdi		# movq %r(400), %rdi
	movq %r14, %rsi		# movq %r(390), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L145(%rip), %rdi		# leaq .L145(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(403)
	movq $1, %rbx		# movq $1, %r(420)
	movq %rbx, %r14		# movq %r(420), %r(391)
	movq $21, %rbx		# movq $21, %r(421)
	movq $15, %r13		# movq $15, %r(422)
	movq %rbx, %rdi		# movq %r(421), %rdi
	movq %r13, %rsi		# movq %r(422), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(404)
	movq $25, %r13		# movq $25, %r(423)
	cmpq %r13, %rbx		# cmpq %r(423), %r(404)
	je .L146		# je .L146
	.L147:		# .L147:
	movq $0, %rbx		# movq $0, %r(424)
	movq %rbx, %r14		# movq %r(424), %r(391)
	.L146:		# .L146:
	movq %r15, %rdi		# movq %r(403), %rdi
	movq %r14, %rsi		# movq %r(391), %rsi
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(440)
	movq %rbx, -24(%rbp)		# movq %r(440), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(441)
	movq (%rbx), %rbx		# movq (%r(441)), %r(425)
	movq %rbx, %rbx		# movq %r(425), %r(t10)
	movq %rbx, %r12		# movq %r(t10), %r(426)
	salq $3, %r12		# salq $3, %r(426)
	movq $8, %r13		# movq $8, %r(427)
	movq %r12, %r12		# movq %r(426), %r(428)
	addq %r13, %r12		# addq %r(427), %r(428)
	movq %r12, %rdi		# movq %r(428), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(406)
	movq %r13, %r13		# movq %r(406), %r(442)
	movq %r13, -32(%rbp)		# movq %r(442), -32(%rbp)
	.L16:		# .L16:
	movq %rbx, %r14		# movq %r(t10), %r(429)
	salq $3, %r14		# salq $3, %r(429)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(443)
	movq %r12, %r12		# movq %r(443), %r(430)
	addq %r14, %r12		# addq %r(429), %r(430)
	movq %rbx, %r14		# movq %r(t10), %r(444)
	movq %r14, -16(%rbp)		# movq %r(444), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(445)
	salq $3, %r13		# salq $3, %r(445)
	movq %r13, -16(%rbp)		# movq %r(445), -16(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(446)
	movq %r14, %r14		# movq %r(446), %r(437)
	movq %r14, -8(%rbp)		# movq %r(437), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(438)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(447)
	addq %r14, %r13		# addq %r(447), %r(438)
	movq %r13, -8(%rbp)		# movq %r(438), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(439)
	movq (%r13), %r13		# movq (%r(439)), %r(433)
	movq %r13, (%r12)		# movq %r(433), (%r(430))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(434)
	cmpq %r12, %rbx		# cmpq %r(434), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(435)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(448)
	movq %r13, %r13		# movq %r(448), %r(436)
	addq %rbx, %r13		# addq %r(435), %r(436)
	movq %r13, %rax		# movq %r(436), %rax
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
.L145:
	.quad 2
	.quad 35
	.quad 50
	.text

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

