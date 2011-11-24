.att_syntax prefix
.text
.globl _IprintNum_pi
_IprintNum_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(x)
	movq $24, %rbx		# movq $24, %r(856)
	movq %rbx, %rdi		# movq %r(856), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(847)
	movq $2, %rbx		# movq $2, %r(857)
	movq %rbx, (%r15)		# movq %r(857), (%r(847))
	movq $8, %rbx		# movq $8, %r(858)
	addq %rbx, %r15		# addq %r(858), %r(859)
	movq $0, %rbx		# movq $0, %r(860)
	movq %r15, %r13		# movq %r(808), %r(861)
	addq %rbx, %r13		# addq %r(860), %r(861)
	movq $48, %rbx		# movq $48, %r(862)
	addq %rbx, %r12		# addq %r(862), %r(863)
	movq %r12, (%r13)		# movq %r(863), (%r(861))
	movq $8, %rbx		# movq $8, %r(864)
	movq %r15, %r12		# movq %r(808), %r(865)
	addq %rbx, %r12		# addq %r(864), %r(865)
	movq $46, %rbx		# movq $46, %r(866)
	movq %rbx, (%r12)		# movq %r(866), (%r(865))
	movq %r15, %rdi		# movq %r(808), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L97		# jmp .L97
	.L97:		# .L97:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IbubbleSort_aiai
_IbubbleSort_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(916)
	movq %rbx, -24(%rbp)		# movq %r(916), -24(%rbp)
	movq $0, %r12		# movq $0, %r(867)
	movq %r12, -64(%rbp)		# movq %r(917), -64(%rbp)
	jmp .L99		# jmp .L99
	.L99:		# .L99:
	movq $8, %rbx		# movq $8, %r(868)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(918)
	subq %rbx, %r13		# subq %r(868), %r(869)
	movq (%r13), %r13		# movq (%r(869)), %r(870)
	movq $1, %r12		# movq $1, %r(871)
	subq %r12, %r13		# subq %r(871), %r(872)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(919)
	cmpq %r13, %r12		# cmpq %r(872), %r(919)
	jge .L101		# jge .L101
	.L100:		# .L100:
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(920)
	movq %r12, -8(%rbp)		# movq %r(921), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(873)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(922)
	subq %rbx, %r13		# subq %r(873), %r(874)
	movq (%r13), %rbx		# movq (%r(874)), %r(875)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(923)
	cmpq %rbx, %r12		# cmpq %r(875), %r(923)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(924)
	salq $3, %r13		# salq $3, %r(876)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(925)
	addq %r13, %rbx		# addq %r(876), %r(877)
	movq (%rbx), %r12		# movq (%r(877)), %r(878)
	movq %r12, -32(%rbp)		# movq %r(926), -32(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(927)
	movq %r12, -48(%rbp)		# movq %r(928), -48(%rbp)
	jmp .L104		# jmp .L104
	.L104:		# .L104:
	movq $8, %r12		# movq $8, %r(879)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(929)
	movq %r13, -56(%rbp)		# movq %r(930), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(931)
	subq %r12, %rbx		# subq %r(879), %r(931)
	movq %rbx, -56(%rbp)		# movq %r(931), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(932)
	movq (%rbx), %rbx		# movq (%r(932)), %r(881)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(933)
	cmpq %rbx, %r12		# cmpq %r(881), %r(933)
	jge .L106		# jge .L106
	.L105:		# .L105:
	movq $8, %r12		# movq $8, %r(882)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(934)
	movq %r13, -16(%rbp)		# movq %r(935), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(936)
	subq %r12, %rbx		# subq %r(882), %r(936)
	movq %rbx, -16(%rbp)		# movq %r(936), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(937)
	movq (%rbx), %rbx		# movq (%r(937)), %r(884)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(938)
	cmpq %rbx, %r12		# cmpq %r(884), %r(938)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(939)
	salq $3, %r13		# salq $3, %r(885)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(940)
	movq %rbx, -72(%rbp)		# movq %r(941), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(942)
	addq %r13, %r12		# addq %r(885), %r(942)
	movq %r12, -72(%rbp)		# movq %r(942), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(943)
	movq (%rbx), %rbx		# movq (%r(943)), %r(887)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(944)
	cmpq %r12, %rbx		# cmpq %r(944), %r(887)
	jge .L110		# jge .L110
	.L109:		# .L109:
	movq $8, %rbx		# movq $8, %r(888)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(945)
	subq %rbx, %r13		# subq %r(888), %r(889)
	movq (%r13), %rbx		# movq (%r(889)), %r(890)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(946)
	cmpq %rbx, %r12		# cmpq %r(890), %r(946)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(947)
	salq $3, %r13		# salq $3, %r(891)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(948)
	addq %r13, %rbx		# addq %r(891), %r(892)
	movq (%rbx), %r12		# movq (%r(892)), %r(893)
	movq %r12, -32(%rbp)		# movq %r(949), -32(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(950)
	movq %r12, -48(%rbp)		# movq %r(951), -48(%rbp)
	jmp .L110		# jmp .L110
	.L110:		# .L110:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(952)
	incq %rbx		# incq %r(952)
	movq %rbx, -8(%rbp)		# movq %r(952), -8(%rbp)
	jmp .L104		# jmp .L104
	.L106:		# .L106:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(953)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(954)
	cmpq %r12, %rbx		# cmpq %r(954), %r(953)
	je .L114		# je .L114
	.L113:		# .L113:
	movq $8, %rbx		# movq $8, %r(894)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(955)
	subq %rbx, %r13		# subq %r(894), %r(895)
	movq (%r13), %rbx		# movq (%r(895)), %r(896)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(956)
	cmpq %rbx, %r12		# cmpq %r(896), %r(956)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(957)
	salq $3, %r13		# salq $3, %r(897)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(958)
	addq %r13, %rbx		# addq %r(897), %r(898)
	movq (%rbx), %rbx		# movq (%r(898)), %r(899)
	movq $8, %r13		# movq $8, %r(900)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(959)
	subq %r13, %r14		# subq %r(900), %r(901)
	movq (%r14), %r12		# movq (%r(901)), %r(902)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(960)
	cmpq %r12, %r13		# cmpq %r(902), %r(960)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r13		# movq $8, %r(903)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(961)
	subq %r13, %r14		# subq %r(903), %r(904)
	movq (%r14), %r12		# movq (%r(904)), %r(905)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(962)
	cmpq %r12, %r13		# cmpq %r(905), %r(962)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r15		# movq -64(%rbp), %r(963)
	salq $3, %r15		# salq $3, %r(906)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(976)
	movq %r13, -88(%rbp)		# movq %r(976), -88(%rbp)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(977)
	movq %r14, -80(%rbp)		# movq %r(978), -80(%rbp)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(979)
	addq %r15, %r13		# addq %r(906), %r(979)
	movq %r13, -80(%rbp)		# movq %r(979), -80(%rbp)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(965)
	salq $3, %r14		# salq $3, %r(908)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(966)
	movq %r12, -40(%rbp)		# movq %r(967), -40(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(968)
	addq %r14, %r13		# addq %r(908), %r(968)
	movq %r13, -40(%rbp)		# movq %r(968), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(969)
	movq (%r12), %r12		# movq (%r(969)), %r(910)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(980)
	movq %r12, (%r13)		# movq %r(910), (%r(980))
	movq $8, %r13		# movq $8, %r(911)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(970)
	subq %r13, %r14		# subq %r(911), %r(912)
	movq (%r14), %r12		# movq (%r(912)), %r(913)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(971)
	cmpq %r12, %r13		# cmpq %r(913), %r(971)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(972)
	salq $3, %r14		# salq $3, %r(914)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(973)
	addq %r14, %r12		# addq %r(914), %r(915)
	movq %rbx, (%r12)		# movq %r(tmp), (%r(915))
	jmp .L114		# jmp .L114
	.L114:		# .L114:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(974)
	incq %rbx		# incq %r(974)
	movq %rbx, -64(%rbp)		# movq %r(974), -64(%rbp)
	jmp .L99		# jmp .L99
	.L101:		# .L101:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(975)
	movq %rbx, %rax		# movq %r(975), %rax
	jmp .L98		# jmp .L98
	.L98:		# .L98:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
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
	movq $40, %rbx		# movq $40, %r(981)
	movq %rbx, %rdi		# movq %r(981), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(849)
	movq $4, %r12		# movq $4, %r(982)
	movq %r12, (%r14)		# movq %r(982), (%r(849))
	movq $8, %r12		# movq $8, %r(983)
	addq %r12, %r14		# addq %r(983), %r(984)
	movq $0, %r12		# movq $0, %r(985)
	movq %r14, %rbx		# movq %r(832), %r(986)
	addq %r12, %rbx		# addq %r(985), %r(986)
	movq $6, %r12		# movq $6, %r(987)
	movq %r12, (%rbx)		# movq %r(987), (%r(986))
	movq $8, %r12		# movq $8, %r(988)
	movq %r14, %rbx		# movq %r(832), %r(989)
	addq %r12, %rbx		# addq %r(988), %r(989)
	movq $3, %r12		# movq $3, %r(990)
	movq %r12, (%rbx)		# movq %r(990), (%r(989))
	movq $16, %r12		# movq $16, %r(991)
	movq %r14, %rbx		# movq %r(832), %r(992)
	addq %r12, %rbx		# addq %r(991), %r(992)
	movq $4, %r12		# movq $4, %r(993)
	movq %r12, (%rbx)		# movq %r(993), (%r(992))
	movq $24, %r12		# movq $24, %r(994)
	movq %r14, %rbx		# movq %r(832), %r(995)
	addq %r12, %rbx		# addq %r(994), %r(995)
	movq $7, %r12		# movq $7, %r(996)
	movq %r12, (%rbx)		# movq %r(996), (%r(995))
	movq %r14, %rdi		# movq %r(832), %rdi
	call _IbubbleSort_aiai		# call _IbubbleSort_aiai
	movq %rax, %rbx		# movq %rax, %r(1041)
	movq %rbx, -8(%rbp)		# movq %r(1041), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(997)
	movq %rbx, %r13		# movq %r(997), %r(837)
	movq $0, %r12		# movq $0, %r(998)
	movq $8, %r14		# movq $8, %r(999)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1042)
	subq %r14, %rbx		# subq %r(999), %r(1000)
	movq (%rbx), %rbx		# movq (%r(1000)), %r(1001)
	cmpq %rbx, %r12		# cmpq %r(1001), %r(998)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(1002)
	salq $3, %r14		# salq $3, %r(1003)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1043)
	addq %r14, %rbx		# addq %r(1003), %r(1004)
	movq (%rbx), %rbx		# movq (%r(1004)), %r(1005)
	movq $3, %r12		# movq $3, %r(1006)
	cmpq %r12, %rbx		# cmpq %r(1006), %r(1005)
	je .L126		# je .L126
	.L127:		# .L127:
	movq $0, %r13		# movq $0, %r(1007)
	jmp .L126		# jmp .L126
	.L126:		# .L126:
	movq %r13, %rdi		# movq %r(837), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1008)
	movq %rbx, %r13		# movq %r(1008), %r(840)
	movq $1, %r14		# movq $1, %r(1009)
	movq $8, %r12		# movq $8, %r(1010)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1044)
	subq %r12, %rbx		# subq %r(1010), %r(1011)
	movq (%rbx), %rbx		# movq (%r(1011)), %r(1012)
	cmpq %rbx, %r14		# cmpq %r(1012), %r(1009)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(1013)
	salq $3, %r14		# salq $3, %r(1014)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1045)
	addq %r14, %rbx		# addq %r(1014), %r(1015)
	movq (%rbx), %rbx		# movq (%r(1015)), %r(1016)
	movq $4, %r12		# movq $4, %r(1017)
	cmpq %r12, %rbx		# cmpq %r(1017), %r(1016)
	je .L130		# je .L130
	.L131:		# .L131:
	movq $0, %r13		# movq $0, %r(1018)
	jmp .L130		# jmp .L130
	.L130:		# .L130:
	movq %r13, %rdi		# movq %r(840), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1019)
	movq %rbx, %r13		# movq %r(1019), %r(843)
	movq $2, %r12		# movq $2, %r(1020)
	movq $8, %r14		# movq $8, %r(1021)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1046)
	subq %r14, %rbx		# subq %r(1021), %r(1022)
	movq (%rbx), %rbx		# movq (%r(1022)), %r(1023)
	cmpq %rbx, %r12		# cmpq %r(1023), %r(1020)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r14		# movq $2, %r(1024)
	salq $3, %r14		# salq $3, %r(1025)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1047)
	addq %r14, %rbx		# addq %r(1025), %r(1026)
	movq (%rbx), %rbx		# movq (%r(1026)), %r(1027)
	movq $6, %r12		# movq $6, %r(1028)
	cmpq %r12, %rbx		# cmpq %r(1028), %r(1027)
	je .L134		# je .L134
	.L135:		# .L135:
	movq $0, %r13		# movq $0, %r(1029)
	jmp .L134		# jmp .L134
	.L134:		# .L134:
	movq %r13, %rdi		# movq %r(843), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1030)
	movq %rbx, %r13		# movq %r(1030), %r(846)
	movq $3, %r12		# movq $3, %r(1031)
	movq $8, %r14		# movq $8, %r(1032)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1048)
	subq %r14, %rbx		# subq %r(1032), %r(1033)
	movq (%rbx), %rbx		# movq (%r(1033)), %r(1034)
	cmpq %rbx, %r12		# cmpq %r(1034), %r(1031)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r14		# movq $3, %r(1035)
	salq $3, %r14		# salq $3, %r(1036)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1049)
	addq %r14, %rbx		# addq %r(1036), %r(1037)
	movq (%rbx), %rbx		# movq (%r(1037)), %r(1038)
	movq $7, %r12		# movq $7, %r(1039)
	cmpq %r12, %rbx		# cmpq %r(1039), %r(1038)
	je .L138		# je .L138
	.L139:		# .L139:
	movq $0, %r13		# movq $0, %r(1040)
	jmp .L138		# jmp .L138
	.L138:		# .L138:
	movq %r13, %rdi		# movq %r(846), %rdi
	call _Iassert_pb		# call _Iassert_pb
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
	
error_outofbounds:
call _I_outOfBounds_p
