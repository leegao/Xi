.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $0, %rbx		# movq $0, %r(813)
	movq %rbx, -24(%rbp)		# movq %r(813), -24(%rbp)
	movq $88, %rbx		# movq $88, %r(773)
	movq %rbx, %rdi		# movq %r(773), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(760)
	movq (%r12), %rbx		# movq (%r(750)), %r(774)
	movq $10, %rbx		# movq $10, %r(774)
	addq $8, %r12		# addq $8, %r(775)
	movq %r12, %r13		# movq %r(749), %r(776)
	addq $0, %r13		# addq $0, %r(776)
	movq (%r13), %rbx		# movq (%r(776)), %r(777)
	movq $0, %rbx		# movq $0, %r(777)
	movq %r12, %r13		# movq %r(749), %r(778)
	addq $8, %r13		# addq $8, %r(778)
	movq (%r13), %rbx		# movq (%r(778)), %r(779)
	movq $0, %rbx		# movq $0, %r(779)
	movq %r12, %r13		# movq %r(749), %r(780)
	addq $16, %r13		# addq $16, %r(780)
	movq (%r13), %rbx		# movq (%r(780)), %r(781)
	movq $0, %rbx		# movq $0, %r(781)
	movq %r12, %r13		# movq %r(749), %r(782)
	addq $24, %r13		# addq $24, %r(782)
	movq (%r13), %rbx		# movq (%r(782)), %r(783)
	movq $0, %rbx		# movq $0, %r(783)
	movq %r12, %r13		# movq %r(749), %r(784)
	addq $32, %r13		# addq $32, %r(784)
	movq (%r13), %rbx		# movq (%r(784)), %r(785)
	movq $0, %rbx		# movq $0, %r(785)
	movq %r12, %r13		# movq %r(749), %r(786)
	addq $40, %r13		# addq $40, %r(786)
	movq (%r13), %rbx		# movq (%r(786)), %r(787)
	movq $0, %rbx		# movq $0, %r(787)
	movq %r12, %r13		# movq %r(749), %r(788)
	addq $48, %r13		# addq $48, %r(788)
	movq (%r13), %rbx		# movq (%r(788)), %r(789)
	movq $0, %rbx		# movq $0, %r(789)
	movq %r12, %r13		# movq %r(749), %r(790)
	addq $56, %r13		# addq $56, %r(790)
	movq (%r13), %rbx		# movq (%r(790)), %r(791)
	movq $0, %rbx		# movq $0, %r(791)
	movq %r12, %r13		# movq %r(749), %r(792)
	addq $64, %r13		# addq $64, %r(792)
	movq (%r13), %rbx		# movq (%r(792)), %r(793)
	movq $0, %rbx		# movq $0, %r(793)
	movq %r12, %rbx		# movq %r(749), %r(794)
	addq $72, %rbx		# addq $72, %r(794)
	movq (%rbx), %rbx		# movq (%r(794)), %r(795)
	movq $0, %rbx		# movq $0, %r(795)
	movq %r12, -8(%rbp)		# movq %r(814), -8(%rbp)
	.L187:		# .L187:
	movq $1, %r13		# movq $1, %r(751)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(761)
	testq $1, %rbx		# testq $1, %r(761)
	jne .L190		# jne .L190
	.L192:		# .L192:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(762)
	testq $1, %rbx		# testq $1, %r(762)
	jne .L190		# jne .L190
	.L191:		# .L191:
	movq $0, %r13		# movq $0, %r(751)
	.L190:		# .L190:
	movq $1, %rbx		# movq $1, %r(796)
	xorq %rbx, %r13		# xorq %r(796), %r(797)
	testq $1, %r13		# testq $1, %r(797)
	jne .L189		# jne .L189
	.L195:		# .L195:
	movq $1, %r14		# movq $1, %r(752)
	movq $20, %rbx		# movq $20, %r(798)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(815)
	cmpq %rbx, %r12		# cmpq %r(798), %r(815)
	jl .L193		# jl .L193
	.L194:		# .L194:
	movq $0, %r14		# movq $0, %r(752)
	.L193:		# .L193:
	movq $1, %rbx		# movq $1, %r(799)
	xorq %rbx, %r14		# xorq %r(799), %r(800)
	testq $1, %r14		# testq $1, %r(800)
	jne .L189		# jne .L189
	.L188:		# .L188:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(816)
	subq $8, %r12		# subq $8, %r(801)
	movq (%r12), %rbx		# movq (%r(801)), %r(802)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(817)
	cmpq %rbx, %r12		# cmpq %r(802), %r(817)
	jge .L197		# jge .L197
	.L196:		# .L196:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(818)
	movq %r12, -40(%rbp)		# movq %r(819), -40(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(820)
	movq %r12, -16(%rbp)		# movq %r(821), -16(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(822)
	movq %r12, -48(%rbp)		# movq %r(823), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(824)
	subq $8, %rbx		# subq $8, %r(824)
	movq %rbx, -48(%rbp)		# movq %r(824), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(825)
	movq (%rbx), %rbx		# movq (%r(825)), %r(804)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(826)
	cmpq %rbx, %r12		# cmpq %r(804), %r(826)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(827)
	movq %r12, -56(%rbp)		# movq %r(828), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(829)
	salq $3, %rbx		# salq $3, %r(829)
	movq %rbx, -56(%rbp)		# movq %r(829), -56(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(830)
	movq %r12, -32(%rbp)		# movq %r(831), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(832)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(833)
	addq %r12, %rbx		# addq %r(833), %r(832)
	movq %rbx, -32(%rbp)		# movq %r(832), -32(%rbp)
	movq $10, %rbx		# movq $10, %r(807)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(834)
	imulq %r12, %rbx		# imulq %r(834), %r(808)
	addq $-8, %rbx		# addq $-8, %r(809)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(835)
	movq %rbx, (%r12)		# movq %r(809), (%r(835))
	.L197:		# .L197:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(836)
	incq %rbx		# incq %r(836)
	movq %rbx, -24(%rbp)		# movq %r(836), -24(%rbp)
	jmp .L187		# jmp .L187
	.L189:		# .L189:
	movq $50, %rbx		# movq $50, %r(810)
	movq %rbx, %rdi		# movq %r(810), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L200(%rip), %rdi		# leaq .L200(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(764)
	leaq .L201(%rip), %rdi		# leaq .L201(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(765)
	movq %r13, %rdi		# movq %r(g), %rdi
	movq %rbx, %rsi		# movq %r(h), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(766)
	movq %r13, %rdi		# movq %r(g), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L186:		# .L186:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $64, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ifoo_pi
_Ifoo_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $0, %r12		# movq $0, %r(837)
	cmpq %r12, %r13		# cmpq %r(837), %r(x)
	jge .L204		# jge .L204
	.L203:		# .L203:
	subq $1, %r13		# subq $1, %r(838)
	movq %r13, %rdi		# movq %r(838), %rdi
	call _Ibar_pi		# call _Ibar_pi
	.L204:		# .L204:
	.L202:		# .L202:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ibar_pi
_Ibar_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(x)
	subq $1, %r12		# subq $1, %r(839)
	movq %r12, %rdi		# movq %r(839), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	.L205:		# .L205:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IretTrue_b
_IretTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rax		# movq $1, %rax
	jmp .L206		# jmp .L206
	.L206:		# .L206:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IretFalse_b
_IretFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %rax		# movq $0, %rax
	jmp .L207		# jmp .L207
	.L207:		# .L207:
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %rbx		# movq (%r(p0)), %r(840)
	movq %rbx, %r12		# movq %r(840), %r(t10)
	movq %r12, %rbx		# movq %r(t10), %r(841)
	salq $3, %rbx		# salq $3, %r(841)
	addq $8, %rbx		# addq $8, %r(842)
	movq %rbx, %rdi		# movq %r(842), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(770)
	movq %rbx, %r13		# movq %r(770), %r(t27)
	.L24:		# .L24:
	movq %r12, %r14		# movq %r(t10), %r(843)
	salq $3, %r14		# salq $3, %r(843)
	movq %r13, %rbx		# movq %r(t27), %r(850)
	movq %rbx, -8(%rbp)		# movq %r(850), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(851)
	addq %r14, %rbx		# addq %r(843), %r(851)
	movq %rbx, -8(%rbp)		# movq %r(851), -8(%rbp)
	movq %r12, %rbx		# movq %r(t10), %r(845)
	salq $3, %rbx		# salq $3, %r(845)
	movq %r15, %r14		# movq %r(p0), %r(846)
	addq %rbx, %r14		# addq %r(845), %r(846)
	movq (%r14), %rbx		# movq (%r(846)), %r(847)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(852)
	movq %rbx, (%r14)		# movq %r(847), (%r(852))
	decq %r12		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(848)
	cmpq %rbx, %r12		# cmpq %r(848), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq %r13, %rbx		# movq %r(t27), %r(849)
	addq $8, %rbx		# addq $8, %r(849)
	movq %rbx, %rax		# movq %r(849), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(871)
	movq %rbx, -48(%rbp)		# movq %r(871), -48(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(872)
	movq %rbx, -32(%rbp)		# movq %r(872), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(873)
	movq %rbx, -56(%rbp)		# movq %r(873), -56(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(874)
	subq $8, %r12		# subq $8, %r(853)
	movq (%r12), %r12		# movq (%r(853)), %r(854)
	movq %r12, -16(%rbp)		# movq %r(875), -16(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(876)
	subq $8, %r12		# subq $8, %r(855)
	movq (%r12), %rbx		# movq (%r(855)), %r(856)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(877)
	addq %rbx, %r12		# addq %r(856), %r(857)
	movq %r12, -64(%rbp)		# movq %r(878), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(879)
	addq $1, %r12		# addq $1, %r(858)
	movq %r12, %rdi		# movq %r(858), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(771)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(880)
	movq %r12, (%r13)		# movq %r(880), (%r(82))
	addq $8, %r13		# addq $8, %r(859)
	movq %r13, -8(%rbp)		# movq %r(881), -8(%rbp)
	.L46:		# .L46:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(882)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(883)
	cmpq %rbx, %r12		# cmpq %r(882), %r(883)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(884)
	salq $3, %r13		# salq $3, %r(860)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(885)
	movq %rbx, -40(%rbp)		# movq %r(886), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(887)
	addq %r13, %r12		# addq %r(860), %r(887)
	movq %r12, -40(%rbp)		# movq %r(887), -40(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(888)
	salq $3, %r13		# salq $3, %r(862)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(889)
	movq %rbx, -24(%rbp)		# movq %r(890), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(891)
	addq %r13, %r12		# addq %r(862), %r(891)
	movq %r12, -24(%rbp)		# movq %r(891), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(892)
	movq (%rbx), %rbx		# movq (%r(892)), %r(864)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(893)
	movq %rbx, (%r12)		# movq %r(864), (%r(893))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(894)
	incq %rbx		# incq %r(894)
	movq %rbx, -56(%rbp)		# movq %r(894), -56(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(895)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(896)
	cmpq %r12, %rbx		# cmpq %r(896), %r(895)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(897)
	salq $3, %r13		# salq $3, %r(865)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(898)
	addq %r13, %r15		# addq %r(865), %r(866)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(899)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(900)
	subq %r13, %rbx		# subq %r(900), %r(867)
	salq $3, %rbx		# salq $3, %r(868)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(901)
	addq %rbx, %r12		# addq %r(868), %r(869)
	movq (%r12), %rbx		# movq (%r(869)), %r(870)
	movq %rbx, (%r15)		# movq %r(870), (%r(866))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(902)
	incq %rbx		# incq %r(902)
	movq %rbx, -56(%rbp)		# movq %r(902), -56(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(903)
	movq %rbx, %rax		# movq %r(903), %rax
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
.L200:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

#.section .rodata
.align 8
.L201:
	.quad 5
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
