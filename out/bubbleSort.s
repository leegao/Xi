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
	movq $24, %rbx		# movq $24, %r(862)
	movq %rbx, %rdi		# movq %r(862), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(853)
	movq $2, %rbx		# movq $2, %r(863)
	movq %rbx, (%r15)		# movq %r(863), (%r(853))
	movq $8, %rbx		# movq $8, %r(864)
	addq %rbx, %r15		# addq %r(864), %r(865)
	movq $0, %rbx		# movq $0, %r(866)
	movq %r15, %r13		# movq %r(814), %r(867)
	addq %rbx, %r13		# addq %r(866), %r(867)
	movq $48, %rbx		# movq $48, %r(868)
	addq %rbx, %r12		# addq %r(868), %r(869)
	movq %r12, (%r13)		# movq %r(869), (%r(867))
	movq $8, %rbx		# movq $8, %r(870)
	movq %r15, %r12		# movq %r(814), %r(871)
	addq %rbx, %r12		# addq %r(870), %r(871)
	movq $46, %rbx		# movq $46, %r(872)
	movq %rbx, (%r12)		# movq %r(872), (%r(871))
	movq %r15, %rdi		# movq %r(814), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(922)
	movq %rbx, -64(%rbp)		# movq %r(922), -64(%rbp)
	movq $0, %r12		# movq $0, %r(873)
	movq %r12, -48(%rbp)		# movq %r(923), -48(%rbp)
	jmp .L99		# jmp .L99
	.L99:		# .L99:
	movq $8, %rbx		# movq $8, %r(874)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(924)
	subq %rbx, %r13		# subq %r(874), %r(875)
	movq (%r13), %r13		# movq (%r(875)), %r(876)
	movq $1, %r12		# movq $1, %r(877)
	subq %r12, %r13		# subq %r(877), %r(878)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(925)
	cmpq %r13, %r12		# cmpq %r(878), %r(925)
	jge .L101		# jge .L101
	.L100:		# .L100:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(926)
	movq %r12, -16(%rbp)		# movq %r(927), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(879)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(928)
	subq %rbx, %r13		# subq %r(879), %r(880)
	movq (%r13), %rbx		# movq (%r(880)), %r(881)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(929)
	cmpq %rbx, %r12		# cmpq %r(881), %r(929)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(930)
	salq $3, %r13		# salq $3, %r(882)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(931)
	addq %r13, %rbx		# addq %r(882), %r(883)
	movq (%rbx), %r12		# movq (%r(883)), %r(884)
	movq %r12, -24(%rbp)		# movq %r(932), -24(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(933)
	movq %r12, -56(%rbp)		# movq %r(934), -56(%rbp)
	jmp .L104		# jmp .L104
	.L104:		# .L104:
	movq $8, %r12		# movq $8, %r(885)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(935)
	movq %r13, -40(%rbp)		# movq %r(936), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(937)
	subq %r12, %rbx		# subq %r(885), %r(937)
	movq %rbx, -40(%rbp)		# movq %r(937), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(938)
	movq (%rbx), %rbx		# movq (%r(938)), %r(887)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(939)
	cmpq %rbx, %r12		# cmpq %r(887), %r(939)
	jge .L106		# jge .L106
	.L105:		# .L105:
	movq $8, %r12		# movq $8, %r(888)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(940)
	movq %r13, -32(%rbp)		# movq %r(941), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(942)
	subq %r12, %rbx		# subq %r(888), %r(942)
	movq %rbx, -32(%rbp)		# movq %r(942), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(943)
	movq (%rbx), %rbx		# movq (%r(943)), %r(890)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(944)
	cmpq %rbx, %r12		# cmpq %r(890), %r(944)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(945)
	salq $3, %r13		# salq $3, %r(891)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(946)
	movq %rbx, -8(%rbp)		# movq %r(947), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(948)
	addq %r13, %r12		# addq %r(891), %r(948)
	movq %r12, -8(%rbp)		# movq %r(948), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(949)
	movq (%rbx), %rbx		# movq (%r(949)), %r(893)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(950)
	cmpq %r12, %rbx		# cmpq %r(950), %r(893)
	jge .L110		# jge .L110
	.L109:		# .L109:
	movq $8, %rbx		# movq $8, %r(894)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(951)
	subq %rbx, %r13		# subq %r(894), %r(895)
	movq (%r13), %rbx		# movq (%r(895)), %r(896)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(952)
	cmpq %rbx, %r12		# cmpq %r(896), %r(952)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(953)
	salq $3, %r13		# salq $3, %r(897)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(954)
	addq %r13, %rbx		# addq %r(897), %r(898)
	movq (%rbx), %r12		# movq (%r(898)), %r(899)
	movq %r12, -24(%rbp)		# movq %r(955), -24(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(956)
	movq %r12, -56(%rbp)		# movq %r(957), -56(%rbp)
	jmp .L110		# jmp .L110
	.L110:		# .L110:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(958)
	incq %rbx		# incq %r(958)
	movq %rbx, -16(%rbp)		# movq %r(958), -16(%rbp)
	jmp .L104		# jmp .L104
	.L106:		# .L106:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(959)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(960)
	cmpq %rbx, %r12		# cmpq %r(959), %r(960)
	je .L114		# je .L114
	.L113:		# .L113:
	movq $8, %rbx		# movq $8, %r(900)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(961)
	subq %rbx, %r13		# subq %r(900), %r(901)
	movq (%r13), %rbx		# movq (%r(901)), %r(902)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(962)
	cmpq %rbx, %r12		# cmpq %r(902), %r(962)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(963)
	salq $3, %r13		# salq $3, %r(903)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(964)
	addq %r13, %rbx		# addq %r(903), %r(904)
	movq (%rbx), %rbx		# movq (%r(904)), %r(905)
	movq $8, %r13		# movq $8, %r(906)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(965)
	subq %r13, %r14		# subq %r(906), %r(907)
	movq (%r14), %r12		# movq (%r(907)), %r(908)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(966)
	cmpq %r12, %r13		# cmpq %r(908), %r(966)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r13		# movq $8, %r(909)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(967)
	subq %r13, %r14		# subq %r(909), %r(910)
	movq (%r14), %r12		# movq (%r(910)), %r(911)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(968)
	cmpq %r12, %r13		# cmpq %r(911), %r(968)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(969)
	salq $3, %r15		# salq $3, %r(912)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(982)
	movq %r13, -88(%rbp)		# movq %r(982), -88(%rbp)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(983)
	movq %r14, -80(%rbp)		# movq %r(984), -80(%rbp)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(985)
	addq %r15, %r13		# addq %r(912), %r(985)
	movq %r13, -80(%rbp)		# movq %r(985), -80(%rbp)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(971)
	salq $3, %r14		# salq $3, %r(914)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(972)
	movq %r12, -72(%rbp)		# movq %r(973), -72(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(974)
	addq %r14, %r13		# addq %r(914), %r(974)
	movq %r13, -72(%rbp)		# movq %r(974), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(975)
	movq (%r12), %r12		# movq (%r(975)), %r(916)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(986)
	movq %r12, (%r13)		# movq %r(916), (%r(986))
	movq $8, %r13		# movq $8, %r(917)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(976)
	subq %r13, %r14		# subq %r(917), %r(918)
	movq (%r14), %r12		# movq (%r(918)), %r(919)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(977)
	cmpq %r12, %r13		# cmpq %r(919), %r(977)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(978)
	salq $3, %r14		# salq $3, %r(920)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(979)
	addq %r14, %r12		# addq %r(920), %r(921)
	movq %rbx, (%r12)		# movq %r(tmp), (%r(921))
	jmp .L114		# jmp .L114
	.L114:		# .L114:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(980)
	incq %rbx		# incq %r(980)
	movq %rbx, -48(%rbp)		# movq %r(980), -48(%rbp)
	jmp .L99		# jmp .L99
	.L101:		# .L101:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(981)
	movq %rbx, %rax		# movq %r(981), %rax
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
	movq $40, %rbx		# movq $40, %r(987)
	movq %rbx, %rdi		# movq %r(987), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(855)
	movq $4, %r12		# movq $4, %r(988)
	movq %r12, (%r14)		# movq %r(988), (%r(855))
	movq $8, %r12		# movq $8, %r(989)
	addq %r12, %r14		# addq %r(989), %r(990)
	movq $0, %r12		# movq $0, %r(991)
	movq %r14, %rbx		# movq %r(838), %r(992)
	addq %r12, %rbx		# addq %r(991), %r(992)
	movq $6, %r12		# movq $6, %r(993)
	movq %r12, (%rbx)		# movq %r(993), (%r(992))
	movq $8, %r12		# movq $8, %r(994)
	movq %r14, %rbx		# movq %r(838), %r(995)
	addq %r12, %rbx		# addq %r(994), %r(995)
	movq $3, %r12		# movq $3, %r(996)
	movq %r12, (%rbx)		# movq %r(996), (%r(995))
	movq $16, %r12		# movq $16, %r(997)
	movq %r14, %rbx		# movq %r(838), %r(998)
	addq %r12, %rbx		# addq %r(997), %r(998)
	movq $4, %r12		# movq $4, %r(999)
	movq %r12, (%rbx)		# movq %r(999), (%r(998))
	movq $24, %r12		# movq $24, %r(1000)
	movq %r14, %rbx		# movq %r(838), %r(1001)
	addq %r12, %rbx		# addq %r(1000), %r(1001)
	movq $7, %r12		# movq $7, %r(1002)
	movq %r12, (%rbx)		# movq %r(1002), (%r(1001))
	movq %r14, %rdi		# movq %r(838), %rdi
	call _IbubbleSort_aiai		# call _IbubbleSort_aiai
	movq %rax, %rbx		# movq %rax, %r(1047)
	movq %rbx, -8(%rbp)		# movq %r(1047), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(1003)
	movq %rbx, %r13		# movq %r(1003), %r(843)
	movq $0, %r12		# movq $0, %r(1004)
	movq $8, %r14		# movq $8, %r(1005)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1048)
	subq %r14, %rbx		# subq %r(1005), %r(1006)
	movq (%rbx), %rbx		# movq (%r(1006)), %r(1007)
	cmpq %rbx, %r12		# cmpq %r(1007), %r(1004)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(1008)
	salq $3, %r14		# salq $3, %r(1009)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1049)
	addq %r14, %rbx		# addq %r(1009), %r(1010)
	movq (%rbx), %rbx		# movq (%r(1010)), %r(1011)
	movq $3, %r12		# movq $3, %r(1012)
	cmpq %r12, %rbx		# cmpq %r(1012), %r(1011)
	je .L126		# je .L126
	.L127:		# .L127:
	movq $0, %r13		# movq $0, %r(1013)
	jmp .L126		# jmp .L126
	.L126:		# .L126:
	movq %r13, %rdi		# movq %r(843), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1014)
	movq %rbx, %r13		# movq %r(1014), %r(846)
	movq $1, %r14		# movq $1, %r(1015)
	movq $8, %r12		# movq $8, %r(1016)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1050)
	subq %r12, %rbx		# subq %r(1016), %r(1017)
	movq (%rbx), %rbx		# movq (%r(1017)), %r(1018)
	cmpq %rbx, %r14		# cmpq %r(1018), %r(1015)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(1019)
	salq $3, %r14		# salq $3, %r(1020)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1051)
	addq %r14, %rbx		# addq %r(1020), %r(1021)
	movq (%rbx), %rbx		# movq (%r(1021)), %r(1022)
	movq $4, %r12		# movq $4, %r(1023)
	cmpq %r12, %rbx		# cmpq %r(1023), %r(1022)
	je .L130		# je .L130
	.L131:		# .L131:
	movq $0, %r13		# movq $0, %r(1024)
	jmp .L130		# jmp .L130
	.L130:		# .L130:
	movq %r13, %rdi		# movq %r(846), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1025)
	movq %rbx, %r13		# movq %r(1025), %r(849)
	movq $2, %r12		# movq $2, %r(1026)
	movq $8, %r14		# movq $8, %r(1027)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1052)
	subq %r14, %rbx		# subq %r(1027), %r(1028)
	movq (%rbx), %rbx		# movq (%r(1028)), %r(1029)
	cmpq %rbx, %r12		# cmpq %r(1029), %r(1026)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r14		# movq $2, %r(1030)
	salq $3, %r14		# salq $3, %r(1031)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1053)
	addq %r14, %rbx		# addq %r(1031), %r(1032)
	movq (%rbx), %rbx		# movq (%r(1032)), %r(1033)
	movq $6, %r12		# movq $6, %r(1034)
	cmpq %r12, %rbx		# cmpq %r(1034), %r(1033)
	je .L134		# je .L134
	.L135:		# .L135:
	movq $0, %r13		# movq $0, %r(1035)
	jmp .L134		# jmp .L134
	.L134:		# .L134:
	movq %r13, %rdi		# movq %r(849), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1036)
	movq %rbx, %r13		# movq %r(1036), %r(852)
	movq $3, %r14		# movq $3, %r(1037)
	movq $8, %r12		# movq $8, %r(1038)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1054)
	subq %r12, %rbx		# subq %r(1038), %r(1039)
	movq (%rbx), %rbx		# movq (%r(1039)), %r(1040)
	cmpq %rbx, %r14		# cmpq %r(1040), %r(1037)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r14		# movq $3, %r(1041)
	salq $3, %r14		# salq $3, %r(1042)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1055)
	addq %r14, %rbx		# addq %r(1042), %r(1043)
	movq (%rbx), %rbx		# movq (%r(1043)), %r(1044)
	movq $7, %r12		# movq $7, %r(1045)
	cmpq %r12, %rbx		# cmpq %r(1045), %r(1044)
	je .L138		# je .L138
	.L139:		# .L139:
	movq $0, %r13		# movq $0, %r(1046)
	jmp .L138		# jmp .L138
	.L138:		# .L138:
	movq %r13, %rdi		# movq %r(852), %rdi
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
