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
	movq $45, %rbx		# movq $45, %r(369)
	movq %rbx, %r13		# movq %r(369), %r(x)
	.L78:		# .L78:
	movq $1, %r14		# movq $1, %r(370)
	movq $0, %rbx		# movq $0, %r(371)
	cmpq %rbx, %r13		# cmpq %r(371), %r(x)
	jg .L81		# jg .L81
	.L82:		# .L82:
	movq $0, %r14		# movq $0, %r(372)
	.L81:		# .L81:
	movq $0, %rbx		# movq $0, %r(373)
	cmpq %rbx, %r14		# cmpq %r(373), %r(360)
	je .L80		# je .L80
	.L79:		# .L79:
	movq $16, %rbx		# movq $16, %r(374)
	movq %rbx, %rdi		# movq %r(374), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(363)
	movq $1, %r12		# movq $1, %r(375)
	movq %r12, (%rbx)		# movq %r(375), (%r(362))
	movq $8, %r12		# movq $8, %r(376)
	addq %r12, %rbx		# addq %r(376), %r(377)
	movq $0, %r12		# movq $0, %r(378)
	movq %rbx, %r15		# movq %r(361), %r(379)
	addq %r12, %r15		# addq %r(378), %r(379)
	movq $55, %r12		# movq $55, %r(380)
	movq %r12, (%r15)		# movq %r(380), (%r(379))
	leaq .L83(%rip), %rdi		# leaq .L83(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(364)
	movq %rbx, %rdi		# movq %r(361), %rdi
	movq %r12, %rsi		# movq %r(364), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(365)
	movq %rbx, %rdi		# movq %r(365), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(x)
	jmp .L78		# jmp .L78
	.L80:		# .L80:
	.L77:		# .L77:
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %rbx		# movq (%r(p0)), %r(382)
	movq %rbx, %r13		# movq %r(382), %r(t10)
	movq %r13, %rbx		# movq %r(t10), %r(383)
	salq $3, %rbx		# salq $3, %r(383)
	movq $8, %r12		# movq $8, %r(384)
	addq %r12, %rbx		# addq %r(384), %r(385)
	movq %rbx, %rdi		# movq %r(385), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(367)
	movq %r12, -24(%rbp)		# movq %r(397), -24(%rbp)
	.L63:		# .L63:
	movq %r13, %r12		# movq %r(t10), %r(386)
	salq $3, %r12		# salq $3, %r(386)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(398)
	movq %rbx, %r15		# movq %r(398), %r(387)
	addq %r12, %r15		# addq %r(386), %r(387)
	movq %r13, %rbx		# movq %r(t10), %r(399)
	movq %rbx, -16(%rbp)		# movq %r(399), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(400)
	salq $3, %rbx		# salq $3, %r(400)
	movq %rbx, -16(%rbp)		# movq %r(400), -16(%rbp)
	movq %r14, %rbx		# movq %r(p0), %r(394)
	movq %rbx, -8(%rbp)		# movq %r(394), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(395)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(401)
	addq %r12, %rbx		# addq %r(401), %r(395)
	movq %rbx, -8(%rbp)		# movq %r(395), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(396)
	movq (%rbx), %rbx		# movq (%r(396)), %r(390)
	movq %rbx, (%r15)		# movq %r(390), (%r(387))
	decq %r13		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(391)
	cmpq %rbx, %r13		# cmpq %r(391), %r(t10)
	jge .L63		# jge .L63
	.L64:		# .L64:
	movq $8, %rbx		# movq $8, %r(392)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(402)
	addq %rbx, %r13		# addq %r(392), %r(393)
	movq %r13, %rax		# movq %r(393), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(426)
	movq %rbx, -56(%rbp)		# movq %r(426), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(427)
	movq %rbx, -24(%rbp)		# movq %r(427), -24(%rbp)
	movq $0, %r12		# movq $0, %r(403)
	movq %r12, -16(%rbp)		# movq %r(428), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(404)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(429)
	subq %rbx, %r13		# subq %r(404), %r(405)
	movq (%r13), %r12		# movq (%r(405)), %r(406)
	movq %r12, -8(%rbp)		# movq %r(430), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(407)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(431)
	subq %rbx, %r13		# subq %r(407), %r(408)
	movq (%r13), %rbx		# movq (%r(408)), %r(409)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(432)
	addq %rbx, %r12		# addq %r(409), %r(410)
	movq %r12, -64(%rbp)		# movq %r(433), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(411)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(434)
	addq %rbx, %r13		# addq %r(411), %r(412)
	movq %r13, %rdi		# movq %r(412), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(368)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(435)
	movq %r12, (%r13)		# movq %r(435), (%r(181))
	movq $8, %r12		# movq $8, %r(413)
	addq %r12, %r13		# addq %r(413), %r(414)
	movq %r13, -40(%rbp)		# movq %r(436), -40(%rbp)
	.L65:		# .L65:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(437)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(438)
	cmpq %rbx, %r12		# cmpq %r(437), %r(438)
	jge .L67		# jge .L67
	.L66:		# .L66:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(439)
	salq $3, %r13		# salq $3, %r(415)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(440)
	movq %rbx, -32(%rbp)		# movq %r(441), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(442)
	addq %r13, %r12		# addq %r(415), %r(442)
	movq %r12, -32(%rbp)		# movq %r(442), -32(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(443)
	salq $3, %r13		# salq $3, %r(417)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(444)
	movq %rbx, -48(%rbp)		# movq %r(445), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(446)
	addq %r13, %r12		# addq %r(417), %r(446)
	movq %r12, -48(%rbp)		# movq %r(446), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(447)
	movq (%rbx), %rbx		# movq (%r(447)), %r(419)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(448)
	movq %rbx, (%r12)		# movq %r(419), (%r(448))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(449)
	incq %rbx		# incq %r(449)
	movq %rbx, -16(%rbp)		# movq %r(449), -16(%rbp)
	jmp .L65		# jmp .L65
	.L67:		# .L67:
	.L68:		# .L68:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(450)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(451)
	cmpq %r12, %rbx		# cmpq %r(451), %r(450)
	jge .L70		# jge .L70
	.L69:		# .L69:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(452)
	salq $3, %r13		# salq $3, %r(420)
	movq -40(%rbp), %r15		# movq -40(%rbp), %r(453)
	addq %r13, %r15		# addq %r(420), %r(421)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(454)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(455)
	subq %r13, %rbx		# subq %r(455), %r(422)
	salq $3, %rbx		# salq $3, %r(423)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(456)
	addq %rbx, %r12		# addq %r(423), %r(424)
	movq (%r12), %rbx		# movq (%r(424)), %r(425)
	movq %rbx, (%r15)		# movq %r(425), (%r(421))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(457)
	incq %rbx		# incq %r(457)
	movq %rbx, -16(%rbp)		# movq %r(457), -16(%rbp)
	jmp .L68		# jmp .L68
	.L70:		# .L70:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(458)
	movq %rbx, %rax		# movq %r(458), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L83:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

