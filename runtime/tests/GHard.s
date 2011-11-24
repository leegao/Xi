.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $0, %r12		# movq $0, %r(1076)
	movq %r12, -8(%rbp)		# movq %r(1135), -8(%rbp)
	movq $88, %rbx		# movq $88, %r(1077)
	movq %rbx, %rdi		# movq %r(1077), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1063)
	movq $10, %r12		# movq $10, %r(1078)
	movq %r12, (%rbx)		# movq %r(1078), (%r(1053))
	movq $8, %r12		# movq $8, %r(1079)
	addq %r12, %rbx		# addq %r(1079), %r(1080)
	movq $0, %r12		# movq $0, %r(1081)
	movq %rbx, %r14		# movq %r(1052), %r(1082)
	addq %r12, %r14		# addq %r(1081), %r(1082)
	movq $0, %r12		# movq $0, %r(1083)
	movq %r12, (%r14)		# movq %r(1083), (%r(1082))
	movq $8, %r12		# movq $8, %r(1084)
	movq %rbx, %r14		# movq %r(1052), %r(1085)
	addq %r12, %r14		# addq %r(1084), %r(1085)
	movq $0, %r12		# movq $0, %r(1086)
	movq %r12, (%r14)		# movq %r(1086), (%r(1085))
	movq $16, %r12		# movq $16, %r(1087)
	movq %rbx, %r14		# movq %r(1052), %r(1088)
	addq %r12, %r14		# addq %r(1087), %r(1088)
	movq $0, %r12		# movq $0, %r(1089)
	movq %r12, (%r14)		# movq %r(1089), (%r(1088))
	movq $24, %r12		# movq $24, %r(1090)
	movq %rbx, %r14		# movq %r(1052), %r(1091)
	addq %r12, %r14		# addq %r(1090), %r(1091)
	movq $0, %r12		# movq $0, %r(1092)
	movq %r12, (%r14)		# movq %r(1092), (%r(1091))
	movq $32, %r12		# movq $32, %r(1093)
	movq %rbx, %r14		# movq %r(1052), %r(1094)
	addq %r12, %r14		# addq %r(1093), %r(1094)
	movq $0, %r12		# movq $0, %r(1095)
	movq %r12, (%r14)		# movq %r(1095), (%r(1094))
	movq $40, %r12		# movq $40, %r(1096)
	movq %rbx, %r14		# movq %r(1052), %r(1097)
	addq %r12, %r14		# addq %r(1096), %r(1097)
	movq $0, %r12		# movq $0, %r(1098)
	movq %r12, (%r14)		# movq %r(1098), (%r(1097))
	movq $48, %r12		# movq $48, %r(1099)
	movq %rbx, %r14		# movq %r(1052), %r(1100)
	addq %r12, %r14		# addq %r(1099), %r(1100)
	movq $0, %r12		# movq $0, %r(1101)
	movq %r12, (%r14)		# movq %r(1101), (%r(1100))
	movq $56, %r12		# movq $56, %r(1102)
	movq %rbx, %r14		# movq %r(1052), %r(1103)
	addq %r12, %r14		# addq %r(1102), %r(1103)
	movq $0, %r12		# movq $0, %r(1104)
	movq %r12, (%r14)		# movq %r(1104), (%r(1103))
	movq $64, %r12		# movq $64, %r(1105)
	movq %rbx, %r14		# movq %r(1052), %r(1106)
	addq %r12, %r14		# addq %r(1105), %r(1106)
	movq $0, %r12		# movq $0, %r(1107)
	movq %r12, (%r14)		# movq %r(1107), (%r(1106))
	movq $72, %r12		# movq $72, %r(1108)
	movq %rbx, %r14		# movq %r(1052), %r(1109)
	addq %r12, %r14		# addq %r(1108), %r(1109)
	movq $0, %r12		# movq $0, %r(1110)
	movq %r12, (%r14)		# movq %r(1110), (%r(1109))
	movq %rbx, -16(%rbp)		# movq %r(1136), -16(%rbp)
	.L189:		# .L189:
	movq $1, %r12		# movq $1, %r(1111)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(1064)
	testq $1, %rbx		# testq $1, %r(1064)
	jne .L192		# jne .L192
	.L194:		# .L194:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(1065)
	testq $1, %rbx		# testq $1, %r(1065)
	jne .L192		# jne .L192
	.L193:		# .L193:
	movq $0, %r12		# movq $0, %r(1112)
	.L192:		# .L192:
	movq $1, %rbx		# movq $1, %r(1113)
	xorq %rbx, %r12		# xorq %r(1113), %r(1114)
	testq $1, %r12		# testq $1, %r(1114)
	jne .L191		# jne .L191
	.L197:		# .L197:
	movq $1, %r13		# movq $1, %r(1115)
	movq $20, %rbx		# movq $20, %r(1116)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1137)
	cmpq %rbx, %r12		# cmpq %r(1116), %r(1137)
	jl .L195		# jl .L195
	.L196:		# .L196:
	movq $0, %r13		# movq $0, %r(1117)
	.L195:		# .L195:
	movq $1, %rbx		# movq $1, %r(1118)
	xorq %rbx, %r13		# xorq %r(1118), %r(1119)
	testq $1, %r13		# testq $1, %r(1119)
	jne .L191		# jne .L191
	.L190:		# .L190:
	movq $8, %rbx		# movq $8, %r(1120)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1138)
	subq %rbx, %r13		# subq %r(1120), %r(1121)
	movq (%r13), %rbx		# movq (%r(1121)), %r(1122)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1139)
	cmpq %rbx, %r12		# cmpq %r(1122), %r(1139)
	jge .L199		# jge .L199
	.L198:		# .L198:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1140)
	movq %rbx, %r15		# movq %r(1140), %r(1056)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1141)
	movq %rbx, %r13		# movq %r(1141), %r(1057)
	movq $8, %r14		# movq $8, %r(1123)
	movq %r15, %rbx		# movq %r(1056), %r(1142)
	movq %rbx, -24(%rbp)		# movq %r(1142), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1143)
	subq %r14, %rbx		# subq %r(1123), %r(1143)
	movq %rbx, -24(%rbp)		# movq %r(1143), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1144)
	movq (%rbx), %rbx		# movq (%r(1144)), %r(1125)
	cmpq %rbx, %r13		# cmpq %r(1125), %r(1057)
	jae error_outofbounds		# jae error_outofbounds
	movq %r13, %rbx		# movq %r(1057), %r(1126)
	salq $3, %rbx		# salq $3, %r(1126)
	movq %r15, %r13		# movq %r(1056), %r(1127)
	addq %rbx, %r13		# addq %r(1126), %r(1127)
	movq $10, %rbx		# movq $10, %r(1128)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1145)
	imulq %r12, %rbx		# imulq %r(1145), %r(1129)
	movq $-8, %r12		# movq $-8, %r(1130)
	addq %r12, %rbx		# addq %r(1130), %r(1131)
	movq %rbx, (%r13)		# movq %r(1131), (%r(1127))
	.L199:		# .L199:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1146)
	incq %rbx		# incq %r(1146)
	movq %rbx, -8(%rbp)		# movq %r(1146), -8(%rbp)
	jmp .L189		# jmp .L189
	.L191:		# .L191:
	movq $50, %rbx		# movq $50, %r(1132)
	movq %rbx, %rdi		# movq %r(1132), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L202(%rip), %rdi		# leaq .L202(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1067)
	leaq .L203(%rip), %rdi		# leaq .L203(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1068)
	movq %r13, %rdi		# movq %r(g), %rdi
	movq %rbx, %rsi		# movq %r(h), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(1069)
	movq %r13, %rdi		# movq %r(g), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L188:		# .L188:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq $0, %r12		# movq $0, %r(1147)
	cmpq %r12, %r13		# cmpq %r(1147), %r(x)
	jge .L206		# jge .L206
	.L205:		# .L205:
	movq $1, %r12		# movq $1, %r(1148)
	subq %r12, %r13		# subq %r(1148), %r(1149)
	movq %r13, %rdi		# movq %r(1149), %rdi
	call _Ibar_pi		# call _Ibar_pi
	.L206:		# .L206:
	.L204:		# .L204:
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
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $1, %r12		# movq $1, %r(1150)
	subq %r12, %r13		# subq %r(1150), %r(1151)
	movq %r13, %rdi		# movq %r(1151), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
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
	movq $1, %rbx		# movq $1, %r(1152)
	movq %rbx, %rax		# movq %r(1152), %rax
	jmp .L208		# jmp .L208
	.L208:		# .L208:
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
	movq $0, %rbx		# movq $0, %r(1153)
	movq %rbx, %rax		# movq %r(1153), %rax
	jmp .L209		# jmp .L209
	.L209:		# .L209:
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
	movq %rdi, %rbx		# movq %rdi, %r(1166)
	movq %rbx, -16(%rbp)		# movq %r(1166), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1167)
	movq (%rbx), %r12		# movq (%r(1167)), %r(1154)
	movq %r12, -24(%rbp)		# movq %r(1168), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1169)
	salq $3, %rbx		# salq $3, %r(1155)
	movq $8, %r12		# movq $8, %r(1156)
	addq %r12, %rbx		# addq %r(1156), %r(1157)
	movq %rbx, %rdi		# movq %r(1157), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1073)
	movq %rbx, %r14		# movq %r(1073), %r(t27)
	.L24:		# .L24:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1170)
	salq $3, %r12		# salq $3, %r(1158)
	movq %r14, %r13		# movq %r(t27), %r(1159)
	addq %r12, %r13		# addq %r(1158), %r(1159)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1171)
	movq %rbx, %r12		# movq %r(1171), %r(1160)
	salq $3, %r12		# salq $3, %r(1160)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1172)
	movq %rbx, -8(%rbp)		# movq %r(1173), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1174)
	addq %r12, %rbx		# addq %r(1160), %r(1174)
	movq %rbx, -8(%rbp)		# movq %r(1174), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1175)
	movq (%rbx), %rbx		# movq (%r(1175)), %r(1162)
	movq %rbx, (%r13)		# movq %r(1162), (%r(1159))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1176)
	decq %rbx		# decq %r(1176)
	movq %rbx, -24(%rbp)		# movq %r(1176), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1163)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1177)
	cmpq %rbx, %r12		# cmpq %r(1163), %r(1177)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(1164)
	movq %r14, %r12		# movq %r(t27), %r(1165)
	addq %rbx, %r12		# addq %r(1164), %r(1165)
	movq %r12, %rax		# movq %r(1165), %rax
	.L26:		# .L26:
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
	movq %rdi, %rbx		# movq %rdi, %r(1201)
	movq %rbx, -48(%rbp)		# movq %r(1201), -48(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1202)
	movq %rbx, -56(%rbp)		# movq %r(1202), -56(%rbp)
	movq $0, %r12		# movq $0, %r(1178)
	movq %r12, -16(%rbp)		# movq %r(1203), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1179)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1204)
	subq %rbx, %r13		# subq %r(1179), %r(1180)
	movq (%r13), %r12		# movq (%r(1180)), %r(1181)
	movq %r12, -40(%rbp)		# movq %r(1205), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(1182)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1206)
	subq %rbx, %r13		# subq %r(1182), %r(1183)
	movq (%r13), %rbx		# movq (%r(1183)), %r(1184)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1207)
	addq %rbx, %r12		# addq %r(1184), %r(1185)
	movq %r12, -32(%rbp)		# movq %r(1208), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(1186)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1209)
	addq %rbx, %r13		# addq %r(1186), %r(1187)
	movq %r13, %rdi		# movq %r(1187), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1074)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1210)
	movq %r12, (%r13)		# movq %r(1210), (%r(111))
	movq $8, %r12		# movq $8, %r(1188)
	addq %r12, %r13		# addq %r(1188), %r(1189)
	movq %r13, -8(%rbp)		# movq %r(1211), -8(%rbp)
	.L47:		# .L47:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1212)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1213)
	cmpq %r12, %rbx		# cmpq %r(1213), %r(1212)
	jge .L49		# jge .L49
	.L48:		# .L48:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1214)
	salq $3, %r13		# salq $3, %r(1190)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1215)
	movq %rbx, -64(%rbp)		# movq %r(1216), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1217)
	addq %r13, %r12		# addq %r(1190), %r(1217)
	movq %r12, -64(%rbp)		# movq %r(1217), -64(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1218)
	salq $3, %r13		# salq $3, %r(1192)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1219)
	movq %rbx, -24(%rbp)		# movq %r(1220), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1221)
	addq %r13, %r12		# addq %r(1192), %r(1221)
	movq %r12, -24(%rbp)		# movq %r(1221), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1222)
	movq (%rbx), %rbx		# movq (%r(1222)), %r(1194)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1223)
	movq %rbx, (%r12)		# movq %r(1194), (%r(1223))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1224)
	incq %rbx		# incq %r(1224)
	movq %rbx, -16(%rbp)		# movq %r(1224), -16(%rbp)
	jmp .L47		# jmp .L47
	.L49:		# .L49:
	.L50:		# .L50:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1225)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1226)
	cmpq %r12, %rbx		# cmpq %r(1226), %r(1225)
	jge .L52		# jge .L52
	.L51:		# .L51:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1227)
	salq $3, %r13		# salq $3, %r(1195)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(1228)
	addq %r13, %r15		# addq %r(1195), %r(1196)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1229)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1230)
	subq %r13, %rbx		# subq %r(1230), %r(1197)
	salq $3, %rbx		# salq $3, %r(1198)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1231)
	addq %rbx, %r12		# addq %r(1198), %r(1199)
	movq (%r12), %rbx		# movq (%r(1199)), %r(1200)
	movq %rbx, (%r15)		# movq %r(1200), (%r(1196))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1232)
	incq %rbx		# incq %r(1232)
	movq %rbx, -16(%rbp)		# movq %r(1232), -16(%rbp)
	jmp .L50		# jmp .L50
	.L52:		# .L52:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1233)
	movq %rbx, %rax		# movq %r(1233), %rax
	.L53:		# .L53:
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
.L203:
	.quad 5
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L202:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

error_outofbounds:
call _I_outOfBounds_p
