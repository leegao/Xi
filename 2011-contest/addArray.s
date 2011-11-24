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
	movq $32, %rbx		# movq $32, %r(486)
	movq %rbx, %rdi		# movq %r(486), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(476)
	movq $3, %r12		# movq $3, %r(487)
	movq %r12, (%rbx)		# movq %r(487), (%r(470))
	movq $8, %r12		# movq $8, %r(488)
	addq %r12, %rbx		# addq %r(488), %r(489)
	movq $0, %r12		# movq $0, %r(490)
	movq %rbx, %r14		# movq %r(469), %r(491)
	addq %r12, %r14		# addq %r(490), %r(491)
	movq $65, %r12		# movq $65, %r(492)
	movq %r12, (%r14)		# movq %r(492), (%r(491))
	movq $8, %r12		# movq $8, %r(493)
	movq %rbx, %r14		# movq %r(469), %r(494)
	addq %r12, %r14		# addq %r(493), %r(494)
	movq $66, %r12		# movq $66, %r(495)
	movq %r12, (%r14)		# movq %r(495), (%r(494))
	movq $16, %r12		# movq $16, %r(496)
	movq %rbx, %r14		# movq %r(469), %r(497)
	addq %r12, %r14		# addq %r(496), %r(497)
	movq $67, %r12		# movq $67, %r(498)
	movq %r12, (%r14)		# movq %r(498), (%r(497))
	leaq .L96(%rip), %rdi		# leaq .L96(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(477)
	movq %r12, %rdi		# movq %r(477), %rdi
	movq %rbx, %rsi		# movq %r(b), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(478)
	movq %rbx, %r14		# movq %r(478), %r(a)
	movq $32, %rbx		# movq $32, %r(500)
	movq %rbx, %rdi		# movq %r(500), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(479)
	movq $3, %r12		# movq $3, %r(501)
	movq %r12, (%r13)		# movq %r(501), (%r(473))
	movq $8, %r12		# movq $8, %r(502)
	addq %r12, %r13		# addq %r(502), %r(503)
	movq $0, %rbx		# movq $0, %r(504)
	movq %r13, %r12		# movq %r(472), %r(505)
	addq %rbx, %r12		# addq %r(504), %r(505)
	movq $70, %rbx		# movq $70, %r(506)
	movq %rbx, (%r12)		# movq %r(506), (%r(505))
	movq $8, %rbx		# movq $8, %r(507)
	movq %r13, %r12		# movq %r(472), %r(508)
	addq %rbx, %r12		# addq %r(507), %r(508)
	movq $71, %rbx		# movq $71, %r(509)
	movq %rbx, (%r12)		# movq %r(509), (%r(508))
	movq $16, %rbx		# movq $16, %r(510)
	movq %r13, %r12		# movq %r(472), %r(511)
	addq %rbx, %r12		# addq %r(510), %r(511)
	movq $72, %rbx		# movq $72, %r(512)
	movq %rbx, (%r12)		# movq %r(512), (%r(511))
	movq %r14, %rdi		# movq %r(a), %rdi
	movq %r13, %rsi		# movq %r(472), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(480)
	movq $32, %rbx		# movq $32, %r(513)
	movq %rbx, %rdi		# movq %r(513), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(481)
	movq $3, %r12		# movq $3, %r(514)
	movq %r12, (%r13)		# movq %r(514), (%r(475))
	movq $8, %r12		# movq $8, %r(515)
	addq %r12, %r13		# addq %r(515), %r(516)
	movq $0, %rbx		# movq $0, %r(517)
	movq %r13, %r12		# movq %r(474), %r(518)
	addq %rbx, %r12		# addq %r(517), %r(518)
	movq $73, %rbx		# movq $73, %r(519)
	movq %rbx, (%r12)		# movq %r(519), (%r(518))
	movq $8, %rbx		# movq $8, %r(520)
	movq %r13, %r12		# movq %r(474), %r(521)
	addq %rbx, %r12		# addq %r(520), %r(521)
	movq $74, %rbx		# movq $74, %r(522)
	movq %rbx, (%r12)		# movq %r(522), (%r(521))
	movq $16, %rbx		# movq $16, %r(523)
	movq %r13, %r12		# movq %r(474), %r(524)
	addq %rbx, %r12		# addq %r(523), %r(524)
	movq $75, %rbx		# movq $75, %r(525)
	movq %rbx, (%r12)		# movq %r(525), (%r(524))
	movq %r14, %rdi		# movq %r(480), %rdi
	movq %r13, %rsi		# movq %r(474), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(482)
	movq %rbx, %rdi		# movq %r(482), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L95:		# .L95:
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
	movq (%r14), %rbx		# movq (%r(p0)), %r(526)
	movq %rbx, %r13		# movq %r(526), %r(t10)
	movq %r13, %rbx		# movq %r(t10), %r(527)
	salq $3, %rbx		# salq $3, %r(527)
	movq $8, %r12		# movq $8, %r(528)
	addq %r12, %rbx		# addq %r(528), %r(529)
	movq %rbx, %rdi		# movq %r(529), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(484)
	movq %r12, -24(%rbp)		# movq %r(541), -24(%rbp)
	.L63:		# .L63:
	movq %r13, %r12		# movq %r(t10), %r(530)
	salq $3, %r12		# salq $3, %r(530)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(542)
	movq %rbx, -16(%rbp)		# movq %r(543), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(544)
	addq %r12, %rbx		# addq %r(530), %r(544)
	movq %rbx, -16(%rbp)		# movq %r(544), -16(%rbp)
	movq %r13, %r12		# movq %r(t10), %r(532)
	salq $3, %r12		# salq $3, %r(532)
	movq %r14, %rbx		# movq %r(p0), %r(538)
	movq %rbx, -8(%rbp)		# movq %r(538), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(539)
	addq %r12, %rbx		# addq %r(532), %r(539)
	movq %rbx, -8(%rbp)		# movq %r(539), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(540)
	movq (%rbx), %rbx		# movq (%r(540)), %r(534)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(545)
	movq %rbx, (%r12)		# movq %r(534), (%r(545))
	decq %r13		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(535)
	cmpq %rbx, %r13		# cmpq %r(535), %r(t10)
	jge .L63		# jge .L63
	.L64:		# .L64:
	movq $8, %rbx		# movq $8, %r(536)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(546)
	addq %rbx, %r13		# addq %r(536), %r(537)
	movq %r13, %rax		# movq %r(537), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(570)
	movq %rbx, -56(%rbp)		# movq %r(570), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(571)
	movq %rbx, -32(%rbp)		# movq %r(571), -32(%rbp)
	movq $0, %r12		# movq $0, %r(547)
	movq %r12, -16(%rbp)		# movq %r(572), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(548)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(573)
	subq %rbx, %r13		# subq %r(548), %r(549)
	movq (%r13), %r12		# movq (%r(549)), %r(550)
	movq %r12, -8(%rbp)		# movq %r(574), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(551)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(575)
	subq %rbx, %r13		# subq %r(551), %r(552)
	movq (%r13), %rbx		# movq (%r(552)), %r(553)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(576)
	addq %rbx, %r12		# addq %r(553), %r(554)
	movq %r12, -64(%rbp)		# movq %r(577), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(555)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(578)
	addq %rbx, %r13		# addq %r(555), %r(556)
	movq %r13, %rdi		# movq %r(556), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(485)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(579)
	movq %r12, (%r13)		# movq %r(579), (%r(181))
	movq $8, %r12		# movq $8, %r(557)
	addq %r12, %r13		# addq %r(557), %r(558)
	movq %r13, -40(%rbp)		# movq %r(580), -40(%rbp)
	.L65:		# .L65:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(581)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(582)
	cmpq %rbx, %r12		# cmpq %r(581), %r(582)
	jge .L67		# jge .L67
	.L66:		# .L66:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(583)
	salq $3, %r13		# salq $3, %r(559)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(584)
	movq %rbx, -48(%rbp)		# movq %r(585), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(586)
	addq %r13, %r12		# addq %r(559), %r(586)
	movq %r12, -48(%rbp)		# movq %r(586), -48(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(587)
	salq $3, %r13		# salq $3, %r(561)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(588)
	movq %rbx, -24(%rbp)		# movq %r(589), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(590)
	addq %r13, %r12		# addq %r(561), %r(590)
	movq %r12, -24(%rbp)		# movq %r(590), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(591)
	movq (%rbx), %rbx		# movq (%r(591)), %r(563)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(592)
	movq %rbx, (%r12)		# movq %r(563), (%r(592))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(593)
	incq %rbx		# incq %r(593)
	movq %rbx, -16(%rbp)		# movq %r(593), -16(%rbp)
	jmp .L65		# jmp .L65
	.L67:		# .L67:
	.L68:		# .L68:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(594)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(595)
	cmpq %r12, %rbx		# cmpq %r(595), %r(594)
	jge .L70		# jge .L70
	.L69:		# .L69:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(596)
	salq $3, %r13		# salq $3, %r(564)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(597)
	addq %r13, %r14		# addq %r(564), %r(565)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(598)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(599)
	subq %r13, %rbx		# subq %r(599), %r(566)
	salq $3, %rbx		# salq $3, %r(567)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(600)
	addq %rbx, %r12		# addq %r(567), %r(568)
	movq (%r12), %rbx		# movq (%r(568)), %r(569)
	movq %rbx, (%r14)		# movq %r(569), (%r(565))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(601)
	incq %rbx		# incq %r(601)
	movq %rbx, -16(%rbp)		# movq %r(601), -16(%rbp)
	jmp .L68		# jmp .L68
	.L70:		# .L70:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(602)
	movq %rbx, %rax		# movq %r(602), %rax
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
.L96:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

