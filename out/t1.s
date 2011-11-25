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
	movq $32, %rbx		# movq $32, %r(806)
	movq %rbx, %rdi		# movq %r(806), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(800)
	movq $3, %rbx		# movq $3, %r(807)
	movq %rbx, (%r14)		# movq %r(807), (%r(800))
	movq $8, %rbx		# movq $8, %r(808)
	movq %r14, %r13		# movq %r(800), %r(809)
	addq %rbx, %r13		# addq %r(808), %r(809)
	movq %r13, %r14		# movq %r(809), %r(798)
	movq $0, %rbx		# movq $0, %r(810)
	movq %r14, %r13		# movq %r(798), %r(811)
	addq %rbx, %r13		# addq %r(810), %r(811)
	movq $7, %rbx		# movq $7, %r(812)
	movq %rbx, (%r13)		# movq %r(812), (%r(811))
	movq $8, %rbx		# movq $8, %r(813)
	movq %r14, %r13		# movq %r(798), %r(814)
	addq %rbx, %r13		# addq %r(813), %r(814)
	movq $8, %rbx		# movq $8, %r(815)
	movq %rbx, (%r13)		# movq %r(815), (%r(814))
	movq $16, %rbx		# movq $16, %r(816)
	movq %r14, %r13		# movq %r(798), %r(817)
	addq %rbx, %r13		# addq %r(816), %r(817)
	movq $9, %rbx		# movq $9, %r(818)
	movq %rbx, (%r13)		# movq %r(818), (%r(817))
	movq %r14, %rdi		# movq %r(798), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L121		# jmp .L121
	.L121:		# .L121:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_i
_Ig_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $60, %rbx		# movq $60, %r(819)
	movq %rbx, %rax		# movq %r(819), %rax
	jmp .L123		# jmp .L123
	.L123:		# .L123:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(863)
	movq %rbx, -64(%rbp)		# movq %r(863), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(820)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(864)
	movq %r14, %r12		# movq %r(864), %r(821)
	subq %rbx, %r12		# subq %r(820), %r(821)
	movq (%r12), %r13		# movq (%r(821)), %r(822)
	movq %r13, %rbx		# movq %r(822), %r(865)
	movq %rbx, -72(%rbp)		# movq %r(865), -72(%rbp)
	movq $1, %r13		# movq $1, %r(823)
	movq %r13, %rbx		# movq %r(823), %r(866)
	movq %rbx, -48(%rbp)		# movq %r(866), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(824)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(867)
	cmpq %rbx, %r12		# cmpq %r(824), %r(867)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(825)
	movq %rbx, %rax		# movq %r(825), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L69:		# .L69:
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(868)
	movq %r13, %rbx		# movq %r(868), %r(826)
	salq $3, %rbx		# salq $3, %r(826)
	movq %rbx, %rdi		# movq %r(826), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(869)
	movq %rbx, -16(%rbp)		# movq %r(869), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(827)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(870)
	movq %r14, %r12		# movq %r(870), %r(828)
	subq %rbx, %r12		# subq %r(827), %r(828)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(871)
	movq %r12, (%rbx)		# movq %r(828), (%r(871))
	movq $8, %rbx		# movq $8, %r(829)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(872)
	movq %r14, %r13		# movq %r(872), %r(830)
	addq %rbx, %r13		# addq %r(829), %r(830)
	movq %r13, %r12		# movq %r(830), %r(873)
	movq %r12, -24(%rbp)		# movq %r(873), -24(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(874)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(875)
	cmpq %r12, %rbx		# cmpq %r(875), %r(874)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(831)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(876)
	movq %r14, %r12		# movq %r(876), %r(832)
	subq %rbx, %r12		# subq %r(831), %r(832)
	movq (%r12), %rbx		# movq (%r(832)), %r(833)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(877)
	cmpq %rbx, %r12		# cmpq %r(833), %r(877)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(834)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(878)
	movq %r14, %r13		# movq %r(878), %r(835)
	subq %rbx, %r13		# subq %r(834), %r(835)
	movq %r13, %r12		# movq %r(835), %r(879)
	movq %r12, -80(%rbp)		# movq %r(879), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(836)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(880)
	movq %r14, %r12		# movq %r(880), %r(837)
	subq %rbx, %r12		# subq %r(836), %r(837)
	movq (%r12), %rbx		# movq (%r(837)), %r(838)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(881)
	cmpq %rbx, %r12		# cmpq %r(838), %r(881)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(882)
	movq %r13, %r14		# movq %r(882), %r(839)
	salq $3, %r14		# salq $3, %r(839)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(883)
	movq %r12, %r15		# movq %r(883), %r(840)
	addq %r14, %r15		# addq %r(839), %r(840)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(884)
	movq %r13, %rbx		# movq %r(884), %r(915)
	movq %rbx, -104(%rbp)		# movq %r(915), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(916)
	salq $3, %rbx		# salq $3, %r(916)
	movq %rbx, -104(%rbp)		# movq %r(916), -104(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(885)
	movq %r13, %rbx		# movq %r(885), %r(886)
	movq %rbx, -40(%rbp)		# movq %r(886), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(887)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(917)
	addq %r12, %rbx		# addq %r(917), %r(887)
	movq %rbx, -40(%rbp)		# movq %r(887), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(888)
	movq (%rbx), %r12		# movq (%r(888)), %r(843)
	movq %r12, (%r15)		# movq %r(843), (%r(840))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(889)
	incq %rbx		# incq %r(889)
	movq %rbx, -48(%rbp)		# movq %r(889), -48(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(844)
	movq $8, %rbx		# movq $8, %r(845)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(890)
	movq %r12, %r14		# movq %r(890), %r(846)
	subq %rbx, %r14		# subq %r(845), %r(846)
	movq (%r14), %rbx		# movq (%r(846)), %r(847)
	cmpq %rbx, %r13		# cmpq %r(847), %r(844)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(848)
	movq %r13, %r14		# movq %r(848), %r(849)
	salq $3, %r14		# salq $3, %r(849)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(891)
	movq %r12, %r15		# movq %r(891), %r(850)
	addq %r14, %r15		# addq %r(849), %r(850)
	movq (%r15), %r13		# movq (%r(850)), %r(851)
	movq %r13, %rbx		# movq %r(851), %r(892)
	movq %rbx, -48(%rbp)		# movq %r(892), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(852)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(893)
	movq %r14, %r13		# movq %r(893), %r(853)
	addq %rbx, %r13		# addq %r(852), %r(853)
	movq %r13, %r12		# movq %r(853), %r(854)
	salq $3, %r12		# salq $3, %r(854)
	movq %r12, %rdi		# movq %r(854), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(803)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(894)
	movq %rbx, (%r14)		# movq %r(894), (%r(803))
	movq $8, %r13		# movq $8, %r(855)
	movq %r14, %r12		# movq %r(803), %r(895)
	movq %r12, -56(%rbp)		# movq %r(895), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(896)
	addq %r13, %rbx		# addq %r(855), %r(896)
	movq %rbx, -56(%rbp)		# movq %r(896), -56(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(897)
	movq %r13, %rbx		# movq %r(897), %r(898)
	movq %rbx, -88(%rbp)		# movq %r(898), -88(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(857)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(899)
	cmpq %rbx, %r12		# cmpq %r(857), %r(899)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(900)
	decq %rbx		# decq %r(900)
	movq %rbx, -48(%rbp)		# movq %r(900), -48(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(901)
	movq %rbx, %rdi		# movq %r(901), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(902)
	movq %rbx, -96(%rbp)		# movq %r(902), -96(%rbp)
	movq $8, %r13		# movq $8, %r(858)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(903)
	movq %r14, %rbx		# movq %r(903), %r(904)
	movq %rbx, -8(%rbp)		# movq %r(904), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(905)
	subq %r13, %rbx		# subq %r(858), %r(905)
	movq %rbx, -8(%rbp)		# movq %r(905), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(906)
	movq (%rbx), %r12		# movq (%r(906)), %r(860)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(907)
	cmpq %r12, %rbx		# cmpq %r(860), %r(907)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(908)
	movq %r12, %r14		# movq %r(908), %r(861)
	salq $3, %r14		# salq $3, %r(861)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(909)
	movq %r13, %rbx		# movq %r(909), %r(910)
	movq %rbx, -32(%rbp)		# movq %r(910), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(911)
	addq %r14, %rbx		# addq %r(861), %r(911)
	movq %rbx, -32(%rbp)		# movq %r(911), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(912)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(913)
	movq %r12, (%rbx)		# movq %r(913), (%r(912))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(914)
	movq %rbx, %rax		# movq %r(914), %rax
	jmp .L71		# jmp .L71
	
error_outofbounds:
call _I_outOfBounds_p
