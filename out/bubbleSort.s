.att_syntax prefix
.text
.globl _IprintNum_pi
_IprintNum_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(974)
	movq %rbx, -8(%rbp)		# movq %r(974), -8(%rbp)
	movq $24, %rbx		# movq $24, %r(963)
	movq %rbx, %rdi		# movq %r(963), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(954)
	movq $2, %rbx		# movq $2, %r(964)
	movq %rbx, (%r14)		# movq %r(964), (%r(954))
	movq $8, %rbx		# movq $8, %r(965)
	movq %r14, %r13		# movq %r(954), %r(966)
	addq %rbx, %r13		# addq %r(965), %r(966)
	movq %r13, %r12		# movq %r(966), %r(976)
	movq %r12, -32(%rbp)		# movq %r(976), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(967)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(977)
	movq %r13, %r12		# movq %r(977), %r(968)
	addq %rbx, %r12		# addq %r(967), %r(968)
	movq $48, %r13		# movq $48, %r(969)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(978)
	movq %rbx, -16(%rbp)		# movq %r(978), -16(%rbp)
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(979)
	movq %r15, %rbx		# movq %r(979), %r(980)
	movq %rbx, -24(%rbp)		# movq %r(980), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(981)
	addq %r13, %rbx		# addq %r(969), %r(981)
	movq %rbx, -24(%rbp)		# movq %r(981), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(982)
	movq %rbx, (%r12)		# movq %r(982), (%r(968))
	movq $8, %rbx		# movq $8, %r(971)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(983)
	movq %r14, %r12		# movq %r(983), %r(972)
	addq %rbx, %r12		# addq %r(971), %r(972)
	movq $46, %rbx		# movq $46, %r(973)
	movq %rbx, (%r12)		# movq %r(973), (%r(972))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(984)
	movq %rbx, %rdi		# movq %r(984), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L97		# jmp .L97
	.L97:		# .L97:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1034)
	movq %rbx, -48(%rbp)		# movq %r(1034), -48(%rbp)
	movq $0, %r13		# movq $0, %r(985)
	movq %r13, %rbx		# movq %r(985), %r(1035)
	movq %rbx, -40(%rbp)		# movq %r(1035), -40(%rbp)
	jmp .L99		# jmp .L99
	.L99:		# .L99:
	movq $8, %rbx		# movq $8, %r(986)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1036)
	movq %r14, %r15		# movq %r(1036), %r(987)
	subq %rbx, %r15		# subq %r(986), %r(987)
	movq (%r15), %r14		# movq (%r(987)), %r(988)
	movq $1, %rbx		# movq $1, %r(989)
	movq %r14, %r12		# movq %r(988), %r(990)
	subq %rbx, %r12		# subq %r(989), %r(990)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1037)
	cmpq %r12, %rbx		# cmpq %r(990), %r(1037)
	jge .L101		# jge .L101
	.L100:		# .L100:
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1038)
	movq %r13, %rbx		# movq %r(1038), %r(1039)
	movq %rbx, -56(%rbp)		# movq %r(1039), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(991)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1040)
	movq %r14, %r12		# movq %r(1040), %r(992)
	subq %rbx, %r12		# subq %r(991), %r(992)
	movq (%r12), %rbx		# movq (%r(992)), %r(993)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1041)
	cmpq %rbx, %r12		# cmpq %r(993), %r(1041)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1042)
	movq %r13, %r14		# movq %r(1042), %r(994)
	salq $3, %r14		# salq $3, %r(994)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1043)
	movq %r12, %r15		# movq %r(1043), %r(995)
	addq %r14, %r15		# addq %r(994), %r(995)
	movq (%r15), %r13		# movq (%r(995)), %r(996)
	movq %r13, %rbx		# movq %r(996), %r(1044)
	movq %rbx, -24(%rbp)		# movq %r(1044), -24(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1045)
	movq %r13, %rbx		# movq %r(1045), %r(1046)
	movq %rbx, -64(%rbp)		# movq %r(1046), -64(%rbp)
	jmp .L104		# jmp .L104
	.L104:		# .L104:
	movq $8, %r13		# movq $8, %r(997)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1047)
	movq %r14, %rbx		# movq %r(1047), %r(1048)
	movq %rbx, -16(%rbp)		# movq %r(1048), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1049)
	subq %r13, %rbx		# subq %r(997), %r(1049)
	movq %rbx, -16(%rbp)		# movq %r(1049), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1050)
	movq (%rbx), %r12		# movq (%r(1050)), %r(999)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1051)
	cmpq %r12, %rbx		# cmpq %r(999), %r(1051)
	jge .L106		# jge .L106
	.L105:		# .L105:
	movq $8, %r13		# movq $8, %r(1000)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1052)
	movq %r14, %rbx		# movq %r(1052), %r(1053)
	movq %rbx, -72(%rbp)		# movq %r(1053), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1054)
	subq %r13, %rbx		# subq %r(1000), %r(1054)
	movq %rbx, -72(%rbp)		# movq %r(1054), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1055)
	movq (%rbx), %r12		# movq (%r(1055)), %r(1002)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1056)
	cmpq %r12, %rbx		# cmpq %r(1002), %r(1056)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1057)
	movq %r12, %r14		# movq %r(1057), %r(1003)
	salq $3, %r14		# salq $3, %r(1003)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1058)
	movq %r13, %rbx		# movq %r(1058), %r(1059)
	movq %rbx, -32(%rbp)		# movq %r(1059), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1060)
	addq %r14, %rbx		# addq %r(1003), %r(1060)
	movq %rbx, -32(%rbp)		# movq %r(1060), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1061)
	movq (%rbx), %r12		# movq (%r(1061)), %r(1005)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1062)
	cmpq %rbx, %r12		# cmpq %r(1062), %r(1005)
	jge .L110		# jge .L110
	.L109:		# .L109:
	movq $8, %rbx		# movq $8, %r(1006)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1063)
	movq %r14, %r12		# movq %r(1063), %r(1007)
	subq %rbx, %r12		# subq %r(1006), %r(1007)
	movq (%r12), %rbx		# movq (%r(1007)), %r(1008)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1064)
	cmpq %rbx, %r12		# cmpq %r(1008), %r(1064)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1065)
	movq %r13, %r14		# movq %r(1065), %r(1009)
	salq $3, %r14		# salq $3, %r(1009)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1066)
	movq %r12, %r15		# movq %r(1066), %r(1010)
	addq %r14, %r15		# addq %r(1009), %r(1010)
	movq (%r15), %r13		# movq (%r(1010)), %r(1011)
	movq %r13, %rbx		# movq %r(1011), %r(1067)
	movq %rbx, -24(%rbp)		# movq %r(1067), -24(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1068)
	movq %r13, %rbx		# movq %r(1068), %r(1069)
	movq %rbx, -64(%rbp)		# movq %r(1069), -64(%rbp)
	jmp .L110		# jmp .L110
	.L110:		# .L110:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1070)
	incq %rbx		# incq %r(1070)
	movq %rbx, -56(%rbp)		# movq %r(1070), -56(%rbp)
	jmp .L104		# jmp .L104
	.L106:		# .L106:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1071)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1072)
	cmpq %rbx, %r12		# cmpq %r(1071), %r(1072)
	je .L114		# je .L114
	.L113:		# .L113:
	movq $8, %rbx		# movq $8, %r(1012)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1073)
	movq %r14, %r12		# movq %r(1073), %r(1013)
	subq %rbx, %r12		# subq %r(1012), %r(1013)
	movq (%r12), %rbx		# movq (%r(1013)), %r(1014)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1074)
	cmpq %rbx, %r12		# cmpq %r(1014), %r(1074)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1075)
	movq %r13, %r14		# movq %r(1075), %r(1015)
	salq $3, %r14		# salq $3, %r(1015)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1076)
	movq %r12, %r15		# movq %r(1076), %r(1016)
	addq %r14, %r15		# addq %r(1015), %r(1016)
	movq (%r15), %r13		# movq (%r(1016)), %r(1017)
	movq %r13, %rbx		# movq %r(1017), %r(1094)
	movq %rbx, -80(%rbp)		# movq %r(1094), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(1018)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1077)
	movq %r14, %r12		# movq %r(1077), %r(1019)
	subq %rbx, %r12		# subq %r(1018), %r(1019)
	movq (%r12), %rbx		# movq (%r(1019)), %r(1020)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1078)
	cmpq %rbx, %r12		# cmpq %r(1020), %r(1078)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(1021)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1079)
	movq %r14, %r12		# movq %r(1079), %r(1022)
	subq %rbx, %r12		# subq %r(1021), %r(1022)
	movq (%r12), %rbx		# movq (%r(1022)), %r(1023)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1080)
	cmpq %rbx, %r12		# cmpq %r(1023), %r(1080)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1081)
	movq %r13, %r14		# movq %r(1081), %r(1024)
	salq $3, %r14		# salq $3, %r(1024)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1082)
	movq %r12, %r15		# movq %r(1082), %r(1025)
	addq %r14, %r15		# addq %r(1024), %r(1025)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1083)
	movq %r13, %rbx		# movq %r(1083), %r(1096)
	movq %rbx, -88(%rbp)		# movq %r(1096), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1097)
	salq $3, %rbx		# salq $3, %r(1097)
	movq %rbx, -88(%rbp)		# movq %r(1097), -88(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1084)
	movq %r13, %rbx		# movq %r(1084), %r(1085)
	movq %rbx, -8(%rbp)		# movq %r(1085), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1086)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1098)
	addq %r12, %rbx		# addq %r(1098), %r(1086)
	movq %rbx, -8(%rbp)		# movq %r(1086), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1087)
	movq (%rbx), %r12		# movq (%r(1087)), %r(1028)
	movq %r12, (%r15)		# movq %r(1028), (%r(1025))
	movq $8, %rbx		# movq $8, %r(1029)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1088)
	movq %r14, %r12		# movq %r(1088), %r(1030)
	subq %rbx, %r12		# subq %r(1029), %r(1030)
	movq (%r12), %rbx		# movq (%r(1030)), %r(1031)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1089)
	cmpq %rbx, %r12		# cmpq %r(1031), %r(1089)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1090)
	movq %r13, %r14		# movq %r(1090), %r(1032)
	salq $3, %r14		# salq $3, %r(1032)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1091)
	movq %r12, %r15		# movq %r(1091), %r(1033)
	addq %r14, %r15		# addq %r(1032), %r(1033)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1095)
	movq %rbx, (%r15)		# movq %r(1095), (%r(1033))
	jmp .L114		# jmp .L114
	.L114:		# .L114:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1092)
	incq %rbx		# incq %r(1092)
	movq %rbx, -40(%rbp)		# movq %r(1092), -40(%rbp)
	jmp .L99		# jmp .L99
	.L101:		# .L101:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1093)
	movq %rbx, %rax		# movq %r(1093), %rax
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(937)
	movq $40, %rbx		# movq $40, %r(1099)
	movq %rbx, %rdi		# movq %r(1099), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(956)
	movq $4, %rbx		# movq $4, %r(1100)
	movq %rbx, (%r14)		# movq %r(1100), (%r(956))
	movq $8, %rbx		# movq $8, %r(1101)
	movq %r14, %r13		# movq %r(956), %r(1102)
	addq %rbx, %r13		# addq %r(1101), %r(1102)
	movq %r13, %r15		# movq %r(1102), %r(939)
	movq $0, %rbx		# movq $0, %r(1103)
	movq %r15, %r13		# movq %r(939), %r(1104)
	addq %rbx, %r13		# addq %r(1103), %r(1104)
	movq $6, %rbx		# movq $6, %r(1105)
	movq %rbx, (%r13)		# movq %r(1105), (%r(1104))
	movq $8, %rbx		# movq $8, %r(1106)
	movq %r15, %r13		# movq %r(939), %r(1107)
	addq %rbx, %r13		# addq %r(1106), %r(1107)
	movq $3, %rbx		# movq $3, %r(1108)
	movq %rbx, (%r13)		# movq %r(1108), (%r(1107))
	movq $16, %rbx		# movq $16, %r(1109)
	movq %r15, %r13		# movq %r(939), %r(1110)
	addq %rbx, %r13		# addq %r(1109), %r(1110)
	movq $4, %rbx		# movq $4, %r(1111)
	movq %rbx, (%r13)		# movq %r(1111), (%r(1110))
	movq $24, %rbx		# movq $24, %r(1112)
	movq %r15, %r13		# movq %r(939), %r(1113)
	addq %rbx, %r13		# addq %r(1112), %r(1113)
	movq $7, %rbx		# movq $7, %r(1114)
	movq %rbx, (%r13)		# movq %r(1114), (%r(1113))
	movq %r15, %rdi		# movq %r(939), %rdi
	call _IbubbleSort_aiai		# call _IbubbleSort_aiai
	movq %rax, %rbx		# movq %rax, %r(1159)
	movq %rbx, -8(%rbp)		# movq %r(1159), -8(%rbp)
	movq $1, %r13		# movq $1, %r(1115)
	movq %r13, %rbx		# movq %r(1115), %r(1168)
	movq %rbx, -40(%rbp)		# movq %r(1168), -40(%rbp)
	movq $0, %r13		# movq $0, %r(1116)
	movq $8, %rbx		# movq $8, %r(1117)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1160)
	movq %r12, %r14		# movq %r(1160), %r(1118)
	subq %rbx, %r14		# subq %r(1117), %r(1118)
	movq (%r14), %rbx		# movq (%r(1118)), %r(1119)
	cmpq %rbx, %r13		# cmpq %r(1119), %r(1116)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1120)
	movq %r13, %r14		# movq %r(1120), %r(1121)
	salq $3, %r14		# salq $3, %r(1121)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1161)
	movq %r12, %r15		# movq %r(1161), %r(1122)
	addq %r14, %r15		# addq %r(1121), %r(1122)
	movq (%r15), %rbx		# movq (%r(1122)), %r(1123)
	movq $3, %r12		# movq $3, %r(1124)
	cmpq %r12, %rbx		# cmpq %r(1124), %r(1123)
	je .L126		# je .L126
	.L127:		# .L127:
	movq $0, %r13		# movq $0, %r(1125)
	movq %r13, %rbx		# movq %r(1125), %r(1169)
	movq %rbx, -40(%rbp)		# movq %r(1169), -40(%rbp)
	jmp .L126		# jmp .L126
	.L126:		# .L126:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1170)
	movq %rbx, %rdi		# movq %r(1170), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1126)
	movq %r13, %rbx		# movq %r(1126), %r(1171)
	movq %rbx, -32(%rbp)		# movq %r(1171), -32(%rbp)
	movq $1, %r13		# movq $1, %r(1127)
	movq $8, %rbx		# movq $8, %r(1128)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1162)
	movq %r12, %r14		# movq %r(1162), %r(1129)
	subq %rbx, %r14		# subq %r(1128), %r(1129)
	movq (%r14), %rbx		# movq (%r(1129)), %r(1130)
	cmpq %rbx, %r13		# cmpq %r(1130), %r(1127)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1131)
	movq %r13, %r14		# movq %r(1131), %r(1132)
	salq $3, %r14		# salq $3, %r(1132)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1163)
	movq %r12, %r15		# movq %r(1163), %r(1133)
	addq %r14, %r15		# addq %r(1132), %r(1133)
	movq (%r15), %rbx		# movq (%r(1133)), %r(1134)
	movq $4, %r12		# movq $4, %r(1135)
	cmpq %r12, %rbx		# cmpq %r(1135), %r(1134)
	je .L130		# je .L130
	.L131:		# .L131:
	movq $0, %r13		# movq $0, %r(1136)
	movq %r13, %rbx		# movq %r(1136), %r(1172)
	movq %rbx, -32(%rbp)		# movq %r(1172), -32(%rbp)
	jmp .L130		# jmp .L130
	.L130:		# .L130:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1173)
	movq %rbx, %rdi		# movq %r(1173), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1137)
	movq %r13, %rbx		# movq %r(1137), %r(1174)
	movq %rbx, -24(%rbp)		# movq %r(1174), -24(%rbp)
	movq $2, %r13		# movq $2, %r(1138)
	movq $8, %rbx		# movq $8, %r(1139)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1164)
	movq %r12, %r14		# movq %r(1164), %r(1140)
	subq %rbx, %r14		# subq %r(1139), %r(1140)
	movq (%r14), %rbx		# movq (%r(1140)), %r(1141)
	cmpq %rbx, %r13		# cmpq %r(1141), %r(1138)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1142)
	movq %r13, %r14		# movq %r(1142), %r(1143)
	salq $3, %r14		# salq $3, %r(1143)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1165)
	movq %r12, %r15		# movq %r(1165), %r(1144)
	addq %r14, %r15		# addq %r(1143), %r(1144)
	movq (%r15), %rbx		# movq (%r(1144)), %r(1145)
	movq $6, %r12		# movq $6, %r(1146)
	cmpq %r12, %rbx		# cmpq %r(1146), %r(1145)
	je .L134		# je .L134
	.L135:		# .L135:
	movq $0, %r13		# movq $0, %r(1147)
	movq %r13, %rbx		# movq %r(1147), %r(1175)
	movq %rbx, -24(%rbp)		# movq %r(1175), -24(%rbp)
	jmp .L134		# jmp .L134
	.L134:		# .L134:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1176)
	movq %rbx, %rdi		# movq %r(1176), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1148)
	movq %r13, %rbx		# movq %r(1148), %r(1177)
	movq %rbx, -16(%rbp)		# movq %r(1177), -16(%rbp)
	movq $3, %r13		# movq $3, %r(1149)
	movq $8, %rbx		# movq $8, %r(1150)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1166)
	movq %r12, %r14		# movq %r(1166), %r(1151)
	subq %rbx, %r14		# subq %r(1150), %r(1151)
	movq (%r14), %rbx		# movq (%r(1151)), %r(1152)
	cmpq %rbx, %r13		# cmpq %r(1152), %r(1149)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(1153)
	movq %r13, %r14		# movq %r(1153), %r(1154)
	salq $3, %r14		# salq $3, %r(1154)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1167)
	movq %r12, %r15		# movq %r(1167), %r(1155)
	addq %r14, %r15		# addq %r(1154), %r(1155)
	movq (%r15), %rbx		# movq (%r(1155)), %r(1156)
	movq $7, %r12		# movq $7, %r(1157)
	cmpq %r12, %rbx		# cmpq %r(1157), %r(1156)
	je .L138		# je .L138
	.L139:		# .L139:
	movq $0, %r13		# movq $0, %r(1158)
	movq %r13, %rbx		# movq %r(1158), %r(1178)
	movq %rbx, -16(%rbp)		# movq %r(1178), -16(%rbp)
	jmp .L138		# jmp .L138
	.L138:		# .L138:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1179)
	movq %rbx, %rdi		# movq %r(1179), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L123		# jmp .L123
	.L123:		# .L123:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
