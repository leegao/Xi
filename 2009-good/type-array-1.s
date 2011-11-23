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
	movq %rax, %r13		# movq %rax, %r(1140)
	movq %r13, %rdi		# movq %r(1140), %rdi
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
	movq %r15, %r15		# movq %r(arr), %r(1119)
	movq $0, %r12		# movq $0, %r(1155)
	movq %r12, %r14		# movq %r(1155), %r(1120)
	movq $8, %r12		# movq $8, %r(1156)
	movq %r15, %r13		# movq %r(1119), %r(1157)
	subq %r12, %r13		# subq %r(1156), %r(1157)
	movq (%r13), %r12		# movq (%r(1157)), %r(1158)
	cmpq %r12, %r14		# cmpq %r(1158), %r(1120)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1120), %r(1159)
	salq $3, %r12		# salq $3, %r(1159)
	movq %r15, %rbx		# movq %r(1119), %r(1160)
	addq %r12, %rbx		# addq %r(1159), %r(1160)
	movq $-42, %r12		# movq $-42, %r(1161)
	movq %r12, (%rbx)		# movq %r(1161), (%r(1160))
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
	movq $88, %rbx		# movq $88, %r(1162)
	movq %rbx, %rdi		# movq %r(1162), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1144)
	movq %rbx, %rbx		# movq %r(1144), %r(1124)
	movq $10, %r12		# movq $10, %r(1163)
	movq %r12, (%rbx)		# movq %r(1163), (%r(1124))
	movq $8, %r12		# movq $8, %r(1164)
	movq %rbx, %rbx		# movq %r(1124), %r(1165)
	addq %r12, %rbx		# addq %r(1164), %r(1165)
	movq %rbx, %rbx		# movq %r(1165), %r(1123)
	movq $0, %r12		# movq $0, %r(1166)
	movq %rbx, %r14		# movq %r(1123), %r(1167)
	addq %r12, %r14		# addq %r(1166), %r(1167)
	movq $0, %r12		# movq $0, %r(1168)
	movq %r12, (%r14)		# movq %r(1168), (%r(1167))
	movq $8, %r12		# movq $8, %r(1169)
	movq %rbx, %r14		# movq %r(1123), %r(1170)
	addq %r12, %r14		# addq %r(1169), %r(1170)
	movq $0, %r12		# movq $0, %r(1171)
	movq %r12, (%r14)		# movq %r(1171), (%r(1170))
	movq $16, %r12		# movq $16, %r(1172)
	movq %rbx, %r14		# movq %r(1123), %r(1173)
	addq %r12, %r14		# addq %r(1172), %r(1173)
	movq $0, %r12		# movq $0, %r(1174)
	movq %r12, (%r14)		# movq %r(1174), (%r(1173))
	movq $24, %r12		# movq $24, %r(1175)
	movq %rbx, %r14		# movq %r(1123), %r(1176)
	addq %r12, %r14		# addq %r(1175), %r(1176)
	movq $0, %r12		# movq $0, %r(1177)
	movq %r12, (%r14)		# movq %r(1177), (%r(1176))
	movq $32, %r12		# movq $32, %r(1178)
	movq %rbx, %r14		# movq %r(1123), %r(1179)
	addq %r12, %r14		# addq %r(1178), %r(1179)
	movq $0, %r12		# movq $0, %r(1180)
	movq %r12, (%r14)		# movq %r(1180), (%r(1179))
	movq $40, %r12		# movq $40, %r(1181)
	movq %rbx, %r14		# movq %r(1123), %r(1182)
	addq %r12, %r14		# addq %r(1181), %r(1182)
	movq $0, %r12		# movq $0, %r(1183)
	movq %r12, (%r14)		# movq %r(1183), (%r(1182))
	movq $48, %r12		# movq $48, %r(1184)
	movq %rbx, %r14		# movq %r(1123), %r(1185)
	addq %r12, %r14		# addq %r(1184), %r(1185)
	movq $0, %r12		# movq $0, %r(1186)
	movq %r12, (%r14)		# movq %r(1186), (%r(1185))
	movq $56, %r12		# movq $56, %r(1187)
	movq %rbx, %r14		# movq %r(1123), %r(1188)
	addq %r12, %r14		# addq %r(1187), %r(1188)
	movq $0, %r12		# movq $0, %r(1189)
	movq %r12, (%r14)		# movq %r(1189), (%r(1188))
	movq $64, %r12		# movq $64, %r(1190)
	movq %rbx, %r14		# movq %r(1123), %r(1191)
	addq %r12, %r14		# addq %r(1190), %r(1191)
	movq $0, %r12		# movq $0, %r(1192)
	movq %r12, (%r14)		# movq %r(1192), (%r(1191))
	movq $72, %r12		# movq $72, %r(1193)
	movq %rbx, %r14		# movq %r(1123), %r(1194)
	addq %r12, %r14		# addq %r(1193), %r(1194)
	movq $0, %r12		# movq $0, %r(1195)
	movq %r12, (%r14)		# movq %r(1195), (%r(1194))
	movq %rbx, %rbx		# movq %r(1123), %r(1250)
	movq %rbx, -48(%rbp)		# movq %r(1250), -48(%rbp)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1251)
	movq %r15, %r15		# movq %r(1251), %r(1125)
	movq $0, %r12		# movq $0, %r(1196)
	movq %r12, %r14		# movq %r(1196), %r(1126)
	movq $8, %r12		# movq $8, %r(1197)
	movq %r15, %r13		# movq %r(1125), %r(1198)
	subq %r12, %r13		# subq %r(1197), %r(1198)
	movq (%r13), %r12		# movq (%r(1198)), %r(1199)
	cmpq %r12, %r14		# cmpq %r(1199), %r(1126)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1126), %r(1200)
	salq $3, %r12		# salq $3, %r(1200)
	movq %r15, %rbx		# movq %r(1125), %r(1201)
	addq %r12, %rbx		# addq %r(1200), %r(1201)
	movq $42, %r12		# movq $42, %r(1202)
	movq %r12, (%rbx)		# movq %r(1202), (%r(1201))
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1252)
	movq %r15, %r15		# movq %r(1252), %r(1127)
	movq $1, %r12		# movq $1, %r(1203)
	movq %r12, %r14		# movq %r(1203), %r(1128)
	movq $8, %r12		# movq $8, %r(1204)
	movq %r15, %r13		# movq %r(1127), %r(1205)
	subq %r12, %r13		# subq %r(1204), %r(1205)
	movq (%r13), %r12		# movq (%r(1205)), %r(1206)
	cmpq %r12, %r14		# cmpq %r(1206), %r(1128)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1128), %r(1207)
	salq $3, %r12		# salq $3, %r(1207)
	movq %r15, %rbx		# movq %r(1127), %r(1208)
	addq %r12, %rbx		# addq %r(1207), %r(1208)
	movq $52, %r12		# movq $52, %r(1209)
	movq %r12, (%rbx)		# movq %r(1209), (%r(1208))
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1253)
	movq %r15, %r15		# movq %r(1253), %r(1129)
	movq $2, %r12		# movq $2, %r(1210)
	movq %r12, %r14		# movq %r(1210), %r(1130)
	movq $8, %r12		# movq $8, %r(1211)
	movq %r15, %r13		# movq %r(1129), %r(1212)
	subq %r12, %r13		# subq %r(1211), %r(1212)
	movq (%r13), %r12		# movq (%r(1212)), %r(1213)
	cmpq %r12, %r14		# cmpq %r(1213), %r(1130)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1130), %r(1214)
	salq $3, %r12		# salq $3, %r(1214)
	movq %r15, %rbx		# movq %r(1129), %r(1215)
	addq %r12, %rbx		# addq %r(1214), %r(1215)
	movq $62, %r12		# movq $62, %r(1216)
	movq %r12, (%rbx)		# movq %r(1216), (%r(1215))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1254)
	movq %rbx, %rdi		# movq %r(1254), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L329(%rip), %rdi		# leaq .L329(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1255)
	movq %rbx, -16(%rbp)		# movq %r(1255), -16(%rbp)
	movq $1, %r12		# movq $1, %r(1218)
	movq %r12, %r12		# movq %r(1218), %r(1256)
	movq %r12, -8(%rbp)		# movq %r(1256), -8(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1257)
	movq %r12, %r12		# movq %r(1257), %r(1258)
	movq %r12, -56(%rbp)		# movq %r(1258), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(1219)
	movq %rbx, %rbx		# movq %r(1219), %r(1132)
	movq $8, %r13		# movq $8, %r(1220)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(1259)
	movq %r14, %r14		# movq %r(1259), %r(1260)
	movq %r14, -40(%rbp)		# movq %r(1260), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1261)
	subq %r13, %r12		# subq %r(1220), %r(1261)
	movq %r12, -40(%rbp)		# movq %r(1261), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1262)
	movq (%r12), %r12		# movq (%r(1262)), %r(1222)
	cmpq %r12, %rbx		# cmpq %r(1222), %r(1132)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1132), %r(1223)
	salq $3, %rbx		# salq $3, %r(1223)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1263)
	movq %r13, %r13		# movq %r(1263), %r(1224)
	addq %rbx, %r13		# addq %r(1223), %r(1224)
	movq (%r13), %rbx		# movq (%r(1224)), %r(1225)
	movq $-42, %r12		# movq $-42, %r(1226)
	cmpq %r12, %rbx		# cmpq %r(1226), %r(1225)
	je .L332		# je .L332
	.L333:		# .L333:
	movq $0, %r12		# movq $0, %r(1227)
	movq %r12, %r12		# movq %r(1227), %r(1264)
	movq %r12, -8(%rbp)		# movq %r(1264), -8(%rbp)
	.L332:		# .L332:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1265)
	movq %rbx, %rdi		# movq %r(1265), %rdi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1266)
	movq %rbx, %rsi		# movq %r(1266), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L334(%rip), %rdi		# leaq .L334(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1267)
	movq %rbx, -32(%rbp)		# movq %r(1267), -32(%rbp)
	movq $1, %r12		# movq $1, %r(1229)
	movq %r12, %r12		# movq %r(1229), %r(1268)
	movq %r12, -72(%rbp)		# movq %r(1268), -72(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1269)
	movq %r12, %r12		# movq %r(1269), %r(1270)
	movq %r12, -80(%rbp)		# movq %r(1270), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(1230)
	movq %rbx, %rbx		# movq %r(1230), %r(1135)
	movq $8, %r13		# movq $8, %r(1231)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1271)
	movq %r14, %r14		# movq %r(1271), %r(1272)
	movq %r14, -24(%rbp)		# movq %r(1272), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1273)
	subq %r13, %r12		# subq %r(1231), %r(1273)
	movq %r12, -24(%rbp)		# movq %r(1273), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1274)
	movq (%r12), %r12		# movq (%r(1274)), %r(1233)
	cmpq %r12, %rbx		# cmpq %r(1233), %r(1135)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1135), %r(1234)
	salq $3, %rbx		# salq $3, %r(1234)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1275)
	movq %r13, %r13		# movq %r(1275), %r(1235)
	addq %rbx, %r13		# addq %r(1234), %r(1235)
	movq (%r13), %rbx		# movq (%r(1235)), %r(1236)
	movq $52, %r12		# movq $52, %r(1237)
	cmpq %r12, %rbx		# cmpq %r(1237), %r(1236)
	je .L337		# je .L337
	.L338:		# .L338:
	movq $0, %r12		# movq $0, %r(1238)
	movq %r12, %r12		# movq %r(1238), %r(1276)
	movq %r12, -72(%rbp)		# movq %r(1276), -72(%rbp)
	.L337:		# .L337:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1277)
	movq %rbx, %rdi		# movq %r(1277), %rdi
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1278)
	movq %rbx, %rsi		# movq %r(1278), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L339(%rip), %rdi		# leaq .L339(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1283)
	movq %rbx, -104(%rbp)		# movq %r(1283), -104(%rbp)
	movq $1, %r12		# movq $1, %r(1240)
	movq %r12, %r12		# movq %r(1240), %r(1284)
	movq %r12, -88(%rbp)		# movq %r(1284), -88(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1279)
	movq %r12, %r12		# movq %r(1279), %r(1285)
	movq %r12, -112(%rbp)		# movq %r(1285), -112(%rbp)
	movq $2, %rbx		# movq $2, %r(1241)
	movq %rbx, %rbx		# movq %r(1241), %r(1138)
	movq $8, %r12		# movq $8, %r(1286)
	movq %r12, -96(%rbp)		# movq %r(1286), -96(%rbp)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(1287)
	movq %r13, %r13		# movq %r(1287), %r(1280)
	movq %r13, -64(%rbp)		# movq %r(1280), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1281)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(1288)
	subq %r13, %r12		# subq %r(1288), %r(1281)
	movq %r12, -64(%rbp)		# movq %r(1281), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1282)
	movq (%r12), %r12		# movq (%r(1282)), %r(1244)
	cmpq %r12, %rbx		# cmpq %r(1244), %r(1138)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1138), %r(1245)
	salq $3, %rbx		# salq $3, %r(1245)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(1289)
	movq %r13, %r13		# movq %r(1289), %r(1246)
	addq %rbx, %r13		# addq %r(1245), %r(1246)
	movq (%r13), %rbx		# movq (%r(1246)), %r(1247)
	movq $62, %r12		# movq $62, %r(1248)
	cmpq %r12, %rbx		# cmpq %r(1248), %r(1247)
	je .L342		# je .L342
	.L343:		# .L343:
	movq $0, %r12		# movq $0, %r(1249)
	movq %r12, %r12		# movq %r(1249), %r(1290)
	movq %r12, -88(%rbp)		# movq %r(1290), -88(%rbp)
	.L342:		# .L342:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1291)
	movq %rbx, %rdi		# movq %r(1291), %rdi
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1292)
	movq %rbx, %rsi		# movq %r(1292), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1305)
	movq %rbx, -16(%rbp)		# movq %r(1305), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1306)
	movq (%rbx), %r12		# movq (%r(1306)), %r(1293)
	movq %r12, %r12		# movq %r(1293), %r(1307)
	movq %r12, -8(%rbp)		# movq %r(1307), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1308)
	movq %rbx, %rbx		# movq %r(1308), %r(1294)
	salq $3, %rbx		# salq $3, %r(1294)
	movq $8, %r12		# movq $8, %r(1295)
	movq %rbx, %rbx		# movq %r(1294), %r(1296)
	addq %r12, %rbx		# addq %r(1295), %r(1296)
	movq %rbx, %rdi		# movq %r(1296), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1152)
	movq %rbx, %r14		# movq %r(1152), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1309)
	movq %r12, %r12		# movq %r(1309), %r(1297)
	salq $3, %r12		# salq $3, %r(1297)
	movq %r14, %r13		# movq %r(t27), %r(1298)
	addq %r12, %r13		# addq %r(1297), %r(1298)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1310)
	movq %rbx, %r12		# movq %r(1310), %r(1299)
	salq $3, %r12		# salq $3, %r(1299)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1311)
	movq %rbx, %rbx		# movq %r(1311), %r(1312)
	movq %rbx, -24(%rbp)		# movq %r(1312), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1313)
	addq %r12, %rbx		# addq %r(1299), %r(1313)
	movq %rbx, -24(%rbp)		# movq %r(1313), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1314)
	movq (%rbx), %rbx		# movq (%r(1314)), %r(1301)
	movq %rbx, (%r13)		# movq %r(1301), (%r(1298))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1315)
	decq %rbx		# decq %r(1315)
	movq %rbx, -8(%rbp)		# movq %r(1315), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1302)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1316)
	cmpq %rbx, %r12		# cmpq %r(1302), %r(1316)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1303)
	movq %r14, %r12		# movq %r(t27), %r(1304)
	addq %rbx, %r12		# addq %r(1303), %r(1304)
	movq %r12, %rax		# movq %r(1304), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L339:
	.quad 2
	.quad 35
	.quad 51
	.text

.section .rodata
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

.section .rodata
.align 8
.L334:
	.quad 2
	.quad 35
	.quad 50
	.text

.section .rodata
.align 8
.L329:
	.quad 2
	.quad 35
	.quad 49
	.text

error_outofbounds:
call _I_outOfBounds_p
