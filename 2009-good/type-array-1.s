.att_syntax prefix
.text
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
	leaq .L318(%rip), %rdi		# leaq .L318(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1098)
	movq %r13, %rdi		# movq %r(1098), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L317:		# .L317:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imodify_pai
_Imodify_pai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(arr)
	movq $0, %r12		# movq $0, %r(1113)
	movq %r12, %r14		# movq %r(1113), %r(1078)
	movq $8, %r12		# movq $8, %r(1114)
	movq %r15, %r13		# movq %r(1077), %r(1115)
	subq %r12, %r13		# subq %r(1114), %r(1115)
	movq (%r13), %r12		# movq (%r(1115)), %r(1116)
	cmpq %r12, %r14		# cmpq %r(1116), %r(1078)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1078), %r(1117)
	salq $3, %r12		# salq $3, %r(1117)
	movq %r15, %rbx		# movq %r(1077), %r(1118)
	addq %r12, %rbx		# addq %r(1117), %r(1118)
	movq $-42, %r12		# movq $-42, %r(1119)
	movq %r12, (%rbx)		# movq %r(1119), (%r(1118))
	.L319:		# .L319:
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
	subq $128, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $88, %rbx		# movq $88, %r(1120)
	movq %rbx, %rdi		# movq %r(1120), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1102)
	movq $10, %r12		# movq $10, %r(1121)
	movq %r12, (%rbx)		# movq %r(1121), (%r(1082))
	movq $8, %r12		# movq $8, %r(1122)
	addq %r12, %rbx		# addq %r(1122), %r(1123)
	movq $0, %r12		# movq $0, %r(1124)
	movq %rbx, %r14		# movq %r(1081), %r(1125)
	addq %r12, %r14		# addq %r(1124), %r(1125)
	movq $0, %r12		# movq $0, %r(1126)
	movq %r12, (%r14)		# movq %r(1126), (%r(1125))
	movq $8, %r12		# movq $8, %r(1127)
	movq %rbx, %r14		# movq %r(1081), %r(1128)
	addq %r12, %r14		# addq %r(1127), %r(1128)
	movq $0, %r12		# movq $0, %r(1129)
	movq %r12, (%r14)		# movq %r(1129), (%r(1128))
	movq $16, %r12		# movq $16, %r(1130)
	movq %rbx, %r14		# movq %r(1081), %r(1131)
	addq %r12, %r14		# addq %r(1130), %r(1131)
	movq $0, %r12		# movq $0, %r(1132)
	movq %r12, (%r14)		# movq %r(1132), (%r(1131))
	movq $24, %r12		# movq $24, %r(1133)
	movq %rbx, %r14		# movq %r(1081), %r(1134)
	addq %r12, %r14		# addq %r(1133), %r(1134)
	movq $0, %r12		# movq $0, %r(1135)
	movq %r12, (%r14)		# movq %r(1135), (%r(1134))
	movq $32, %r12		# movq $32, %r(1136)
	movq %rbx, %r14		# movq %r(1081), %r(1137)
	addq %r12, %r14		# addq %r(1136), %r(1137)
	movq $0, %r12		# movq $0, %r(1138)
	movq %r12, (%r14)		# movq %r(1138), (%r(1137))
	movq $40, %r12		# movq $40, %r(1139)
	movq %rbx, %r14		# movq %r(1081), %r(1140)
	addq %r12, %r14		# addq %r(1139), %r(1140)
	movq $0, %r12		# movq $0, %r(1141)
	movq %r12, (%r14)		# movq %r(1141), (%r(1140))
	movq $48, %r12		# movq $48, %r(1142)
	movq %rbx, %r14		# movq %r(1081), %r(1143)
	addq %r12, %r14		# addq %r(1142), %r(1143)
	movq $0, %r12		# movq $0, %r(1144)
	movq %r12, (%r14)		# movq %r(1144), (%r(1143))
	movq $56, %r12		# movq $56, %r(1145)
	movq %rbx, %r14		# movq %r(1081), %r(1146)
	addq %r12, %r14		# addq %r(1145), %r(1146)
	movq $0, %r12		# movq $0, %r(1147)
	movq %r12, (%r14)		# movq %r(1147), (%r(1146))
	movq $64, %r12		# movq $64, %r(1148)
	movq %rbx, %r14		# movq %r(1081), %r(1149)
	addq %r12, %r14		# addq %r(1148), %r(1149)
	movq $0, %r12		# movq $0, %r(1150)
	movq %r12, (%r14)		# movq %r(1150), (%r(1149))
	movq $72, %r12		# movq $72, %r(1151)
	movq %rbx, %r14		# movq %r(1081), %r(1152)
	addq %r12, %r14		# addq %r(1151), %r(1152)
	movq $0, %r12		# movq $0, %r(1153)
	movq %r12, (%r14)		# movq %r(1153), (%r(1152))
	movq %rbx, -16(%rbp)		# movq %r(1208), -16(%rbp)
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(1209)
	movq $0, %r12		# movq $0, %r(1154)
	movq %r12, %r14		# movq %r(1154), %r(1084)
	movq $8, %r12		# movq $8, %r(1155)
	movq %r15, %r13		# movq %r(1083), %r(1156)
	subq %r12, %r13		# subq %r(1155), %r(1156)
	movq (%r13), %r12		# movq (%r(1156)), %r(1157)
	cmpq %r12, %r14		# cmpq %r(1157), %r(1084)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1084), %r(1158)
	salq $3, %r12		# salq $3, %r(1158)
	movq %r15, %rbx		# movq %r(1083), %r(1159)
	addq %r12, %rbx		# addq %r(1158), %r(1159)
	movq $42, %r12		# movq $42, %r(1160)
	movq %r12, (%rbx)		# movq %r(1160), (%r(1159))
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(1210)
	movq $1, %r12		# movq $1, %r(1161)
	movq %r12, %r14		# movq %r(1161), %r(1086)
	movq $8, %r12		# movq $8, %r(1162)
	movq %r15, %r13		# movq %r(1085), %r(1163)
	subq %r12, %r13		# subq %r(1162), %r(1163)
	movq (%r13), %r12		# movq (%r(1163)), %r(1164)
	cmpq %r12, %r14		# cmpq %r(1164), %r(1086)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1086), %r(1165)
	salq $3, %r12		# salq $3, %r(1165)
	movq %r15, %rbx		# movq %r(1085), %r(1166)
	addq %r12, %rbx		# addq %r(1165), %r(1166)
	movq $52, %r12		# movq $52, %r(1167)
	movq %r12, (%rbx)		# movq %r(1167), (%r(1166))
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(1211)
	movq $2, %r12		# movq $2, %r(1168)
	movq %r12, %r14		# movq %r(1168), %r(1088)
	movq $8, %r12		# movq $8, %r(1169)
	movq %r15, %r13		# movq %r(1087), %r(1170)
	subq %r12, %r13		# subq %r(1169), %r(1170)
	movq (%r13), %r12		# movq (%r(1170)), %r(1171)
	cmpq %r12, %r14		# cmpq %r(1171), %r(1088)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1088), %r(1172)
	salq $3, %r12		# salq $3, %r(1172)
	movq %r15, %rbx		# movq %r(1087), %r(1173)
	addq %r12, %rbx		# addq %r(1172), %r(1173)
	movq $62, %r12		# movq $62, %r(1174)
	movq %r12, (%rbx)		# movq %r(1174), (%r(1173))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1212)
	movq %rbx, %rdi		# movq %r(1212), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L329(%rip), %rdi		# leaq .L329(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1213)
	movq %rbx, -56(%rbp)		# movq %r(1213), -56(%rbp)
	movq $1, %r12		# movq $1, %r(1176)
	movq %r12, -32(%rbp)		# movq %r(1214), -32(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1215)
	movq %r12, -8(%rbp)		# movq %r(1216), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1177)
	movq $8, %r13		# movq $8, %r(1178)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1217)
	movq %r14, -64(%rbp)		# movq %r(1218), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1219)
	subq %r13, %r12		# subq %r(1178), %r(1219)
	movq %r12, -64(%rbp)		# movq %r(1219), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1220)
	movq (%r12), %r12		# movq (%r(1220)), %r(1180)
	cmpq %r12, %rbx		# cmpq %r(1180), %r(1090)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1181)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1221)
	addq %rbx, %r13		# addq %r(1181), %r(1182)
	movq (%r13), %rbx		# movq (%r(1182)), %r(1183)
	movq $-42, %r12		# movq $-42, %r(1184)
	cmpq %r12, %rbx		# cmpq %r(1184), %r(1183)
	je .L332		# je .L332
	.L333:		# .L333:
	movq $0, %r12		# movq $0, %r(1185)
	movq %r12, -32(%rbp)		# movq %r(1222), -32(%rbp)
	.L332:		# .L332:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1223)
	movq %rbx, %rdi		# movq %r(1223), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1224)
	movq %rbx, %rsi		# movq %r(1224), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L334(%rip), %rdi		# leaq .L334(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1225)
	movq %rbx, -72(%rbp)		# movq %r(1225), -72(%rbp)
	movq $1, %r12		# movq $1, %r(1187)
	movq %r12, -40(%rbp)		# movq %r(1226), -40(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1227)
	movq %r12, -48(%rbp)		# movq %r(1228), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(1188)
	movq $8, %r13		# movq $8, %r(1189)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1229)
	movq %r14, -24(%rbp)		# movq %r(1230), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1231)
	subq %r13, %r12		# subq %r(1189), %r(1231)
	movq %r12, -24(%rbp)		# movq %r(1231), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1232)
	movq (%r12), %r12		# movq (%r(1232)), %r(1191)
	cmpq %r12, %rbx		# cmpq %r(1191), %r(1093)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1192)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1233)
	addq %rbx, %r13		# addq %r(1192), %r(1193)
	movq (%r13), %rbx		# movq (%r(1193)), %r(1194)
	movq $52, %r12		# movq $52, %r(1195)
	cmpq %r12, %rbx		# cmpq %r(1195), %r(1194)
	je .L337		# je .L337
	.L338:		# .L338:
	movq $0, %r12		# movq $0, %r(1196)
	movq %r12, -40(%rbp)		# movq %r(1234), -40(%rbp)
	.L337:		# .L337:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1235)
	movq %rbx, %rdi		# movq %r(1235), %rdi
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1236)
	movq %rbx, %rsi		# movq %r(1236), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L339(%rip), %rdi		# leaq .L339(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1241)
	movq %rbx, -88(%rbp)		# movq %r(1241), -88(%rbp)
	movq $1, %r12		# movq $1, %r(1198)
	movq %r12, -96(%rbp)		# movq %r(1242), -96(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1237)
	movq %r12, -104(%rbp)		# movq %r(1243), -104(%rbp)
	movq $2, %rbx		# movq $2, %r(1199)
	movq $8, %r12		# movq $8, %r(1244)
	movq %r12, -112(%rbp)		# movq %r(1244), -112(%rbp)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1245)
	movq %r13, -80(%rbp)		# movq %r(1238), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1239)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(1246)
	subq %r13, %r12		# subq %r(1246), %r(1239)
	movq %r12, -80(%rbp)		# movq %r(1239), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1240)
	movq (%r12), %r12		# movq (%r(1240)), %r(1202)
	cmpq %r12, %rbx		# cmpq %r(1202), %r(1096)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1203)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1247)
	addq %rbx, %r13		# addq %r(1203), %r(1204)
	movq (%r13), %rbx		# movq (%r(1204)), %r(1205)
	movq $62, %r12		# movq $62, %r(1206)
	cmpq %r12, %rbx		# cmpq %r(1206), %r(1205)
	je .L342		# je .L342
	.L343:		# .L343:
	movq $0, %r12		# movq $0, %r(1207)
	movq %r12, -96(%rbp)		# movq %r(1248), -96(%rbp)
	.L342:		# .L342:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1249)
	movq %rbx, %rdi		# movq %r(1249), %rdi
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1250)
	movq %rbx, %rsi		# movq %r(1250), %rsi
	call _Itest_paib		# call _Itest_paib
	.L322:		# .L322:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $128, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1263)
	movq %rbx, -16(%rbp)		# movq %r(1263), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1264)
	movq (%rbx), %rbx		# movq (%r(1264)), %r(1251)
	movq %rbx, %r14		# movq %r(1251), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1252)
	salq $3, %rbx		# salq $3, %r(1252)
	movq $8, %r12		# movq $8, %r(1253)
	addq %r12, %rbx		# addq %r(1253), %r(1254)
	movq %rbx, %rdi		# movq %r(1254), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1110)
	movq %rbx, %r13		# movq %r(1110), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(1255)
	salq $3, %rbx		# salq $3, %r(1255)
	movq %r13, %r15		# movq %r(t27), %r(1256)
	addq %rbx, %r15		# addq %r(1255), %r(1256)
	movq %r14, %r12		# movq %r(t10), %r(1257)
	salq $3, %r12		# salq $3, %r(1257)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1265)
	movq %rbx, -8(%rbp)		# movq %r(1266), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1267)
	addq %r12, %rbx		# addq %r(1257), %r(1267)
	movq %rbx, -8(%rbp)		# movq %r(1267), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1268)
	movq (%rbx), %rbx		# movq (%r(1268)), %r(1259)
	movq %rbx, (%r15)		# movq %r(1259), (%r(1256))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1260)
	cmpq %rbx, %r14		# cmpq %r(1260), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1261)
	movq %r13, %r12		# movq %r(t27), %r(1262)
	addq %rbx, %r12		# addq %r(1261), %r(1262)
	movq %r12, %rax		# movq %r(1262), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L334:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L339:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L329:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L318:
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

error_outofbounds:
call _I_outOfBounds_p
