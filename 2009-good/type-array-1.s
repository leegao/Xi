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
	leaq .L319(%rip), %rdi		# leaq .L319(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1173)
	movq %r13, %rdi		# movq %r(1173), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L318:		# .L318:
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
	movq $0, %r12		# movq $0, %r(1188)
	movq %r12, %r14		# movq %r(1188), %r(1153)
	movq $8, %r12		# movq $8, %r(1189)
	movq %r15, %r13		# movq %r(1152), %r(1190)
	subq %r12, %r13		# subq %r(1189), %r(1190)
	movq (%r13), %r12		# movq (%r(1190)), %r(1191)
	cmpq %r12, %r14		# cmpq %r(1191), %r(1153)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1153), %r(1192)
	salq $3, %r12		# salq $3, %r(1192)
	movq %r15, %rbx		# movq %r(1152), %r(1193)
	addq %r12, %rbx		# addq %r(1192), %r(1193)
	movq $-42, %r12		# movq $-42, %r(1194)
	movq %r12, (%rbx)		# movq %r(1194), (%r(1193))
	.L320:		# .L320:
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
	movq $88, %rbx		# movq $88, %r(1195)
	movq %rbx, %rdi		# movq %r(1195), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1177)
	movq $10, %r12		# movq $10, %r(1196)
	movq %r12, (%rbx)		# movq %r(1196), (%r(1157))
	movq $8, %r12		# movq $8, %r(1197)
	addq %r12, %rbx		# addq %r(1197), %r(1198)
	movq $0, %r12		# movq $0, %r(1199)
	movq %rbx, %r14		# movq %r(1156), %r(1200)
	addq %r12, %r14		# addq %r(1199), %r(1200)
	movq $0, %r12		# movq $0, %r(1201)
	movq %r12, (%r14)		# movq %r(1201), (%r(1200))
	movq $8, %r12		# movq $8, %r(1202)
	movq %rbx, %r14		# movq %r(1156), %r(1203)
	addq %r12, %r14		# addq %r(1202), %r(1203)
	movq $0, %r12		# movq $0, %r(1204)
	movq %r12, (%r14)		# movq %r(1204), (%r(1203))
	movq $16, %r12		# movq $16, %r(1205)
	movq %rbx, %r14		# movq %r(1156), %r(1206)
	addq %r12, %r14		# addq %r(1205), %r(1206)
	movq $0, %r12		# movq $0, %r(1207)
	movq %r12, (%r14)		# movq %r(1207), (%r(1206))
	movq $24, %r12		# movq $24, %r(1208)
	movq %rbx, %r14		# movq %r(1156), %r(1209)
	addq %r12, %r14		# addq %r(1208), %r(1209)
	movq $0, %r12		# movq $0, %r(1210)
	movq %r12, (%r14)		# movq %r(1210), (%r(1209))
	movq $32, %r12		# movq $32, %r(1211)
	movq %rbx, %r14		# movq %r(1156), %r(1212)
	addq %r12, %r14		# addq %r(1211), %r(1212)
	movq $0, %r12		# movq $0, %r(1213)
	movq %r12, (%r14)		# movq %r(1213), (%r(1212))
	movq $40, %r12		# movq $40, %r(1214)
	movq %rbx, %r14		# movq %r(1156), %r(1215)
	addq %r12, %r14		# addq %r(1214), %r(1215)
	movq $0, %r12		# movq $0, %r(1216)
	movq %r12, (%r14)		# movq %r(1216), (%r(1215))
	movq $48, %r12		# movq $48, %r(1217)
	movq %rbx, %r14		# movq %r(1156), %r(1218)
	addq %r12, %r14		# addq %r(1217), %r(1218)
	movq $0, %r12		# movq $0, %r(1219)
	movq %r12, (%r14)		# movq %r(1219), (%r(1218))
	movq $56, %r12		# movq $56, %r(1220)
	movq %rbx, %r14		# movq %r(1156), %r(1221)
	addq %r12, %r14		# addq %r(1220), %r(1221)
	movq $0, %r12		# movq $0, %r(1222)
	movq %r12, (%r14)		# movq %r(1222), (%r(1221))
	movq $64, %r12		# movq $64, %r(1223)
	movq %rbx, %r14		# movq %r(1156), %r(1224)
	addq %r12, %r14		# addq %r(1223), %r(1224)
	movq $0, %r12		# movq $0, %r(1225)
	movq %r12, (%r14)		# movq %r(1225), (%r(1224))
	movq $72, %r12		# movq $72, %r(1226)
	movq %rbx, %r14		# movq %r(1156), %r(1227)
	addq %r12, %r14		# addq %r(1226), %r(1227)
	movq $0, %r12		# movq $0, %r(1228)
	movq %r12, (%r14)		# movq %r(1228), (%r(1227))
	movq %rbx, -16(%rbp)		# movq %r(1283), -16(%rbp)
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(1284)
	movq $0, %r12		# movq $0, %r(1229)
	movq %r12, %r14		# movq %r(1229), %r(1159)
	movq $8, %r12		# movq $8, %r(1230)
	movq %r15, %r13		# movq %r(1158), %r(1231)
	subq %r12, %r13		# subq %r(1230), %r(1231)
	movq (%r13), %r12		# movq (%r(1231)), %r(1232)
	cmpq %r12, %r14		# cmpq %r(1232), %r(1159)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1159), %r(1233)
	salq $3, %r12		# salq $3, %r(1233)
	movq %r15, %rbx		# movq %r(1158), %r(1234)
	addq %r12, %rbx		# addq %r(1233), %r(1234)
	movq $42, %r12		# movq $42, %r(1235)
	movq %r12, (%rbx)		# movq %r(1235), (%r(1234))
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(1285)
	movq $1, %r12		# movq $1, %r(1236)
	movq %r12, %r14		# movq %r(1236), %r(1161)
	movq $8, %r12		# movq $8, %r(1237)
	movq %r15, %r13		# movq %r(1160), %r(1238)
	subq %r12, %r13		# subq %r(1237), %r(1238)
	movq (%r13), %r12		# movq (%r(1238)), %r(1239)
	cmpq %r12, %r14		# cmpq %r(1239), %r(1161)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1161), %r(1240)
	salq $3, %r12		# salq $3, %r(1240)
	movq %r15, %rbx		# movq %r(1160), %r(1241)
	addq %r12, %rbx		# addq %r(1240), %r(1241)
	movq $52, %r12		# movq $52, %r(1242)
	movq %r12, (%rbx)		# movq %r(1242), (%r(1241))
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(1286)
	movq $2, %r12		# movq $2, %r(1243)
	movq %r12, %r14		# movq %r(1243), %r(1163)
	movq $8, %r12		# movq $8, %r(1244)
	movq %r15, %r13		# movq %r(1162), %r(1245)
	subq %r12, %r13		# subq %r(1244), %r(1245)
	movq (%r13), %r12		# movq (%r(1245)), %r(1246)
	cmpq %r12, %r14		# cmpq %r(1246), %r(1163)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1163), %r(1247)
	salq $3, %r12		# salq $3, %r(1247)
	movq %r15, %rbx		# movq %r(1162), %r(1248)
	addq %r12, %rbx		# addq %r(1247), %r(1248)
	movq $62, %r12		# movq $62, %r(1249)
	movq %r12, (%rbx)		# movq %r(1249), (%r(1248))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1287)
	movq %rbx, %rdi		# movq %r(1287), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L330(%rip), %rdi		# leaq .L330(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1288)
	movq %rbx, -24(%rbp)		# movq %r(1288), -24(%rbp)
	movq $1, %r12		# movq $1, %r(1251)
	movq %r12, -56(%rbp)		# movq %r(1289), -56(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1290)
	movq %r12, -72(%rbp)		# movq %r(1291), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(1252)
	movq $8, %r13		# movq $8, %r(1253)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(1292)
	movq %r14, -40(%rbp)		# movq %r(1293), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1294)
	subq %r13, %r12		# subq %r(1253), %r(1294)
	movq %r12, -40(%rbp)		# movq %r(1294), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1295)
	movq (%r12), %r12		# movq (%r(1295)), %r(1255)
	cmpq %r12, %rbx		# cmpq %r(1255), %r(1165)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1256)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1296)
	addq %rbx, %r13		# addq %r(1256), %r(1257)
	movq (%r13), %rbx		# movq (%r(1257)), %r(1258)
	movq $-42, %r12		# movq $-42, %r(1259)
	cmpq %r12, %rbx		# cmpq %r(1259), %r(1258)
	je .L333		# je .L333
	.L334:		# .L334:
	movq $0, %r12		# movq $0, %r(1260)
	movq %r12, -56(%rbp)		# movq %r(1297), -56(%rbp)
	.L333:		# .L333:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1298)
	movq %rbx, %rdi		# movq %r(1298), %rdi
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1299)
	movq %rbx, %rsi		# movq %r(1299), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L335(%rip), %rdi		# leaq .L335(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1300)
	movq %rbx, -32(%rbp)		# movq %r(1300), -32(%rbp)
	movq $1, %r12		# movq $1, %r(1262)
	movq %r12, -8(%rbp)		# movq %r(1301), -8(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1302)
	movq %r12, -80(%rbp)		# movq %r(1303), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(1263)
	movq $8, %r13		# movq $8, %r(1264)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1304)
	movq %r14, -48(%rbp)		# movq %r(1305), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1306)
	subq %r13, %r12		# subq %r(1264), %r(1306)
	movq %r12, -48(%rbp)		# movq %r(1306), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1307)
	movq (%r12), %r12		# movq (%r(1307)), %r(1266)
	cmpq %r12, %rbx		# cmpq %r(1266), %r(1168)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1267)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1308)
	addq %rbx, %r13		# addq %r(1267), %r(1268)
	movq (%r13), %rbx		# movq (%r(1268)), %r(1269)
	movq $52, %r12		# movq $52, %r(1270)
	cmpq %r12, %rbx		# cmpq %r(1270), %r(1269)
	je .L338		# je .L338
	.L339:		# .L339:
	movq $0, %r12		# movq $0, %r(1271)
	movq %r12, -8(%rbp)		# movq %r(1309), -8(%rbp)
	.L338:		# .L338:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1310)
	movq %rbx, %rdi		# movq %r(1310), %rdi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1311)
	movq %rbx, %rsi		# movq %r(1311), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L340(%rip), %rdi		# leaq .L340(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1316)
	movq %rbx, -96(%rbp)		# movq %r(1316), -96(%rbp)
	movq $1, %r12		# movq $1, %r(1273)
	movq %r12, -104(%rbp)		# movq %r(1317), -104(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1312)
	movq %r12, -88(%rbp)		# movq %r(1318), -88(%rbp)
	movq $2, %rbx		# movq $2, %r(1274)
	movq $8, %r12		# movq $8, %r(1319)
	movq %r12, -112(%rbp)		# movq %r(1319), -112(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1320)
	movq %r13, -64(%rbp)		# movq %r(1313), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1314)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(1321)
	subq %r13, %r12		# subq %r(1321), %r(1314)
	movq %r12, -64(%rbp)		# movq %r(1314), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1315)
	movq (%r12), %r12		# movq (%r(1315)), %r(1277)
	cmpq %r12, %rbx		# cmpq %r(1277), %r(1171)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1278)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1322)
	addq %rbx, %r13		# addq %r(1278), %r(1279)
	movq (%r13), %rbx		# movq (%r(1279)), %r(1280)
	movq $62, %r12		# movq $62, %r(1281)
	cmpq %r12, %rbx		# cmpq %r(1281), %r(1280)
	je .L343		# je .L343
	.L344:		# .L344:
	movq $0, %r12		# movq $0, %r(1282)
	movq %r12, -104(%rbp)		# movq %r(1323), -104(%rbp)
	.L343:		# .L343:
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1324)
	movq %rbx, %rdi		# movq %r(1324), %rdi
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1325)
	movq %rbx, %rsi		# movq %r(1325), %rsi
	call _Itest_paib		# call _Itest_paib
	.L323:		# .L323:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1341)
	movq %rbx, -24(%rbp)		# movq %r(1341), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1342)
	movq (%rbx), %r12		# movq (%r(1342)), %r(1326)
	movq %r12, -16(%rbp)		# movq %r(1343), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1344)
	salq $3, %rbx		# salq $3, %r(1327)
	movq $8, %r12		# movq $8, %r(1328)
	addq %r12, %rbx		# addq %r(1328), %r(1329)
	movq %rbx, %rdi		# movq %r(1329), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1185)
	movq %r12, -40(%rbp)		# movq %r(1345), -40(%rbp)
	.L16:		# .L16:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1346)
	salq $3, %r13		# salq $3, %r(1330)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1347)
	addq %r13, %r12		# addq %r(1330), %r(1331)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1348)
	movq %r13, -32(%rbp)		# movq %r(1349), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1350)
	salq $3, %rbx		# salq $3, %r(1350)
	movq %rbx, -32(%rbp)		# movq %r(1350), -32(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1351)
	movq %r13, -8(%rbp)		# movq %r(1338), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1339)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1352)
	addq %r13, %rbx		# addq %r(1352), %r(1339)
	movq %rbx, -8(%rbp)		# movq %r(1339), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1340)
	movq (%rbx), %rbx		# movq (%r(1340)), %r(1334)
	movq %rbx, (%r12)		# movq %r(1334), (%r(1331))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1353)
	decq %rbx		# decq %r(1353)
	movq %rbx, -16(%rbp)		# movq %r(1353), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1335)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1354)
	cmpq %rbx, %r12		# cmpq %r(1335), %r(1354)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1336)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1355)
	addq %rbx, %r13		# addq %r(1336), %r(1337)
	movq %r13, %rax		# movq %r(1337), %rax
	.L18:		# .L18:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L340:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L330:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L319:
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

#.section .rodata
.align 8
.L335:
	.quad 2
	.quad 35
	.quad 50
	.text

error_outofbounds:
call _I_outOfBounds_p
