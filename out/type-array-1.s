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
	leaq .L225(%rip), %rdi		# leaq .L225(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1186)
	movq %r13, %rdi		# movq %r(1186), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L224		# jmp .L224
	.L224:		# .L224:
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
	movq $0, %r13		# movq $0, %r(1201)
	movq $8, %rbx		# movq $8, %r(1202)
	movq %r15, %r14		# movq %r(arr), %r(1203)
	subq %rbx, %r14		# subq %r(1202), %r(1203)
	movq (%r14), %rbx		# movq (%r(1203)), %r(1204)
	cmpq %rbx, %r13		# cmpq %r(1204), %r(1201)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1205)
	salq $3, %r13		# salq $3, %r(1206)
	addq %r13, %r15		# addq %r(1206), %r(1207)
	movq $-42, %rbx		# movq $-42, %r(1208)
	movq %rbx, (%r15)		# movq %r(1208), (%r(1207))
	jmp .L226		# jmp .L226
	.L226:		# .L226:
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
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $88, %rbx		# movq $88, %r(1209)
	movq %rbx, %rdi		# movq %r(1209), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1190)
	movq $10, %r12		# movq $10, %r(1210)
	movq %r12, (%rbx)		# movq %r(1210), (%r(1190))
	movq $8, %r12		# movq $8, %r(1211)
	addq %r12, %rbx		# addq %r(1211), %r(1212)
	movq %rbx, -40(%rbp)		# movq %r(1314), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(1213)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1315)
	addq %rbx, %r13		# addq %r(1213), %r(1214)
	movq $0, %rbx		# movq $0, %r(1215)
	movq %rbx, (%r13)		# movq %r(1215), (%r(1214))
	movq $8, %rbx		# movq $8, %r(1216)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1316)
	addq %rbx, %r13		# addq %r(1216), %r(1217)
	movq $0, %rbx		# movq $0, %r(1218)
	movq %rbx, (%r13)		# movq %r(1218), (%r(1217))
	movq $16, %rbx		# movq $16, %r(1219)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1317)
	addq %rbx, %r13		# addq %r(1219), %r(1220)
	movq $0, %rbx		# movq $0, %r(1221)
	movq %rbx, (%r13)		# movq %r(1221), (%r(1220))
	movq $24, %rbx		# movq $24, %r(1222)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1318)
	addq %rbx, %r13		# addq %r(1222), %r(1223)
	movq $0, %rbx		# movq $0, %r(1224)
	movq %rbx, (%r13)		# movq %r(1224), (%r(1223))
	movq $32, %rbx		# movq $32, %r(1225)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1319)
	addq %rbx, %r13		# addq %r(1225), %r(1226)
	movq $0, %rbx		# movq $0, %r(1227)
	movq %rbx, (%r13)		# movq %r(1227), (%r(1226))
	movq $40, %rbx		# movq $40, %r(1228)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1320)
	addq %rbx, %r13		# addq %r(1228), %r(1229)
	movq $0, %rbx		# movq $0, %r(1230)
	movq %rbx, (%r13)		# movq %r(1230), (%r(1229))
	movq $48, %rbx		# movq $48, %r(1231)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1321)
	addq %rbx, %r13		# addq %r(1231), %r(1232)
	movq $0, %rbx		# movq $0, %r(1233)
	movq %rbx, (%r13)		# movq %r(1233), (%r(1232))
	movq $56, %rbx		# movq $56, %r(1234)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1322)
	addq %rbx, %r13		# addq %r(1234), %r(1235)
	movq $0, %rbx		# movq $0, %r(1236)
	movq %rbx, (%r13)		# movq %r(1236), (%r(1235))
	movq $64, %rbx		# movq $64, %r(1237)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1323)
	addq %rbx, %r13		# addq %r(1237), %r(1238)
	movq $0, %rbx		# movq $0, %r(1239)
	movq %rbx, (%r13)		# movq %r(1239), (%r(1238))
	movq $72, %rbx		# movq $72, %r(1240)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1324)
	addq %rbx, %r13		# addq %r(1240), %r(1241)
	movq $0, %rbx		# movq $0, %r(1242)
	movq %rbx, (%r13)		# movq %r(1242), (%r(1241))
	movq $0, %r13		# movq $0, %r(1243)
	movq $8, %r12		# movq $8, %r(1244)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1325)
	subq %r12, %r14		# subq %r(1244), %r(1245)
	movq (%r14), %rbx		# movq (%r(1245)), %r(1246)
	cmpq %rbx, %r13		# cmpq %r(1246), %r(1243)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1247)
	salq $3, %r13		# salq $3, %r(1248)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1326)
	addq %r13, %r14		# addq %r(1248), %r(1249)
	movq $42, %rbx		# movq $42, %r(1250)
	movq %rbx, (%r14)		# movq %r(1250), (%r(1249))
	movq $1, %r13		# movq $1, %r(1251)
	movq $8, %r12		# movq $8, %r(1252)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1327)
	subq %r12, %r14		# subq %r(1252), %r(1253)
	movq (%r14), %rbx		# movq (%r(1253)), %r(1254)
	cmpq %rbx, %r13		# cmpq %r(1254), %r(1251)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1255)
	salq $3, %r13		# salq $3, %r(1256)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1328)
	addq %r13, %r14		# addq %r(1256), %r(1257)
	movq $52, %rbx		# movq $52, %r(1258)
	movq %rbx, (%r14)		# movq %r(1258), (%r(1257))
	movq $2, %r13		# movq $2, %r(1259)
	movq $8, %r12		# movq $8, %r(1260)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1329)
	subq %r12, %r14		# subq %r(1260), %r(1261)
	movq (%r14), %rbx		# movq (%r(1261)), %r(1262)
	cmpq %rbx, %r13		# cmpq %r(1262), %r(1259)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1263)
	salq $3, %r13		# salq $3, %r(1264)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1330)
	addq %r13, %r14		# addq %r(1264), %r(1265)
	movq $62, %rbx		# movq $62, %r(1266)
	movq %rbx, (%r14)		# movq %r(1266), (%r(1265))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1331)
	movq %rbx, %rdi		# movq %r(1331), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L236(%rip), %rdi		# leaq .L236(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1332)
	movq %rbx, -56(%rbp)		# movq %r(1332), -56(%rbp)
	movq $1, %r13		# movq $1, %r(1268)
	movq $0, %r12		# movq $0, %r(1269)
	movq $8, %rbx		# movq $8, %r(1333)
	movq %rbx, -64(%rbp)		# movq %r(1333), -64(%rbp)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1334)
	movq %r14, -8(%rbp)		# movq %r(1303), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1304)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(1335)
	subq %r14, %rbx		# subq %r(1335), %r(1304)
	movq %rbx, -8(%rbp)		# movq %r(1304), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1305)
	movq (%rbx), %rbx		# movq (%r(1305)), %r(1272)
	cmpq %rbx, %r12		# cmpq %r(1272), %r(1269)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(1273)
	salq $3, %r14		# salq $3, %r(1274)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1336)
	addq %r14, %rbx		# addq %r(1274), %r(1275)
	movq (%rbx), %rbx		# movq (%r(1275)), %r(1276)
	movq $-42, %r12		# movq $-42, %r(1277)
	cmpq %r12, %rbx		# cmpq %r(1277), %r(1276)
	je .L239		# je .L239
	.L240:		# .L240:
	movq $0, %r13		# movq $0, %r(1278)
	jmp .L239		# jmp .L239
	.L239:		# .L239:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1337)
	movq %rbx, %rdi		# movq %r(1337), %rdi
	movq %r13, %rsi		# movq %r(1179), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L241(%rip), %rdi		# leaq .L241(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1338)
	movq %rbx, -72(%rbp)		# movq %r(1338), -72(%rbp)
	movq $1, %r13		# movq $1, %r(1280)
	movq $1, %r12		# movq $1, %r(1281)
	movq $8, %rbx		# movq $8, %r(1339)
	movq %rbx, -48(%rbp)		# movq %r(1339), -48(%rbp)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1340)
	movq %r14, -24(%rbp)		# movq %r(1306), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1307)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1341)
	subq %r14, %rbx		# subq %r(1341), %r(1307)
	movq %rbx, -24(%rbp)		# movq %r(1307), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1308)
	movq (%rbx), %rbx		# movq (%r(1308)), %r(1284)
	cmpq %rbx, %r12		# cmpq %r(1284), %r(1281)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(1285)
	salq $3, %r14		# salq $3, %r(1286)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1342)
	addq %r14, %rbx		# addq %r(1286), %r(1287)
	movq (%rbx), %rbx		# movq (%r(1287)), %r(1288)
	movq $52, %r12		# movq $52, %r(1289)
	cmpq %r12, %rbx		# cmpq %r(1289), %r(1288)
	je .L244		# je .L244
	.L245:		# .L245:
	movq $0, %r13		# movq $0, %r(1290)
	jmp .L244		# jmp .L244
	.L244:		# .L244:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1343)
	movq %rbx, %rdi		# movq %r(1343), %rdi
	movq %r13, %rsi		# movq %r(1182), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L246(%rip), %rdi		# leaq .L246(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1309)
	movq %rbx, -16(%rbp)		# movq %r(1309), -16(%rbp)
	movq $1, %r12		# movq $1, %r(1292)
	movq %r12, -32(%rbp)		# movq %r(1310), -32(%rbp)
	movq $2, %r13		# movq $2, %r(1293)
	movq $8, %r12		# movq $8, %r(1294)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1344)
	subq %r12, %r14		# subq %r(1294), %r(1295)
	movq (%r14), %rbx		# movq (%r(1295)), %r(1296)
	cmpq %rbx, %r13		# cmpq %r(1296), %r(1293)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1297)
	salq $3, %r13		# salq $3, %r(1298)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1345)
	addq %r13, %rbx		# addq %r(1298), %r(1299)
	movq (%rbx), %rbx		# movq (%r(1299)), %r(1300)
	movq $62, %r12		# movq $62, %r(1301)
	cmpq %r12, %rbx		# cmpq %r(1301), %r(1300)
	je .L249		# je .L249
	.L250:		# .L250:
	movq $0, %r12		# movq $0, %r(1302)
	movq %r12, -32(%rbp)		# movq %r(1311), -32(%rbp)
	jmp .L249		# jmp .L249
	.L249:		# .L249:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1312)
	movq %rbx, %rdi		# movq %r(1312), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1313)
	movq %rbx, %rsi		# movq %r(1313), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L229		# jmp .L229
	.L229:		# .L229:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1358)
	movq %rbx, -16(%rbp)		# movq %r(1358), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1359)
	movq (%rbx), %rbx		# movq (%r(1359)), %r(1346)
	movq %rbx, %r14		# movq %r(1346), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1347)
	salq $3, %rbx		# salq $3, %r(1347)
	movq $8, %r12		# movq $8, %r(1348)
	addq %r12, %rbx		# addq %r(1348), %r(1349)
	movq %rbx, %rdi		# movq %r(1349), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1198)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(1350)
	salq $3, %rbx		# salq $3, %r(1350)
	movq %r12, %r13		# movq %r(1198), %r(1351)
	addq %rbx, %r13		# addq %r(1350), %r(1351)
	movq %r14, %r15		# movq %r(t10), %r(1352)
	salq $3, %r15		# salq $3, %r(1352)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1360)
	movq %rbx, -8(%rbp)		# movq %r(1361), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1362)
	addq %r15, %rbx		# addq %r(1352), %r(1362)
	movq %rbx, -8(%rbp)		# movq %r(1362), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1363)
	movq (%rbx), %rbx		# movq (%r(1363)), %r(1354)
	movq %rbx, (%r13)		# movq %r(1354), (%r(1351))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1355)
	cmpq %rbx, %r14		# cmpq %r(1355), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1356)
	addq %rbx, %r12		# addq %r(1356), %r(1357)
	movq %r12, %rax		# movq %r(1357), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
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
.L246:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L236:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L225:
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
.L241:
	.quad 2
	.quad 35
	.quad 50
	.text

error_outofbounds:
call _I_outOfBounds_p
