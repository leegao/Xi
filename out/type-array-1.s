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
	movq %rax, %r13		# movq %rax, %r(1277)
	movq %r13, %rdi		# movq %r(1277), %rdi
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
	movq $0, %r13		# movq $0, %r(1292)
	movq $8, %rbx		# movq $8, %r(1293)
	movq %r15, %r14		# movq %r(arr), %r(1294)
	subq %rbx, %r14		# subq %r(1293), %r(1294)
	movq (%r14), %rbx		# movq (%r(1294)), %r(1295)
	cmpq %rbx, %r13		# cmpq %r(1295), %r(1292)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1296)
	movq %r13, %rbx		# movq %r(1296), %r(1297)
	salq $3, %rbx		# salq $3, %r(1297)
	movq %r15, %r12		# movq %r(arr), %r(1298)
	addq %rbx, %r12		# addq %r(1297), %r(1298)
	movq $-42, %rbx		# movq $-42, %r(1299)
	movq %rbx, (%r12)		# movq %r(1299), (%r(1298))
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
	movq $88, %rbx		# movq $88, %r(1300)
	movq %rbx, %rdi		# movq %r(1300), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1281)
	movq $10, %rbx		# movq $10, %r(1301)
	movq %rbx, (%r14)		# movq %r(1301), (%r(1281))
	movq $8, %rbx		# movq $8, %r(1302)
	movq %r14, %r13		# movq %r(1281), %r(1303)
	addq %rbx, %r13		# addq %r(1302), %r(1303)
	movq %r13, %r12		# movq %r(1303), %r(1394)
	movq %r12, -40(%rbp)		# movq %r(1394), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(1304)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1395)
	movq %r14, %r12		# movq %r(1395), %r(1305)
	addq %rbx, %r12		# addq %r(1304), %r(1305)
	movq $0, %rbx		# movq $0, %r(1306)
	movq %rbx, (%r12)		# movq %r(1306), (%r(1305))
	movq $8, %rbx		# movq $8, %r(1307)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1396)
	movq %r14, %r12		# movq %r(1396), %r(1308)
	addq %rbx, %r12		# addq %r(1307), %r(1308)
	movq $0, %rbx		# movq $0, %r(1309)
	movq %rbx, (%r12)		# movq %r(1309), (%r(1308))
	movq $16, %rbx		# movq $16, %r(1310)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1397)
	movq %r14, %r12		# movq %r(1397), %r(1311)
	addq %rbx, %r12		# addq %r(1310), %r(1311)
	movq $0, %rbx		# movq $0, %r(1312)
	movq %rbx, (%r12)		# movq %r(1312), (%r(1311))
	movq $24, %rbx		# movq $24, %r(1313)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1398)
	movq %r14, %r12		# movq %r(1398), %r(1314)
	addq %rbx, %r12		# addq %r(1313), %r(1314)
	movq $0, %rbx		# movq $0, %r(1315)
	movq %rbx, (%r12)		# movq %r(1315), (%r(1314))
	movq $32, %rbx		# movq $32, %r(1316)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1399)
	movq %r14, %r12		# movq %r(1399), %r(1317)
	addq %rbx, %r12		# addq %r(1316), %r(1317)
	movq $0, %rbx		# movq $0, %r(1318)
	movq %rbx, (%r12)		# movq %r(1318), (%r(1317))
	movq $40, %rbx		# movq $40, %r(1319)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1400)
	movq %r14, %r12		# movq %r(1400), %r(1320)
	addq %rbx, %r12		# addq %r(1319), %r(1320)
	movq $0, %rbx		# movq $0, %r(1321)
	movq %rbx, (%r12)		# movq %r(1321), (%r(1320))
	movq $48, %rbx		# movq $48, %r(1322)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1401)
	movq %r14, %r12		# movq %r(1401), %r(1323)
	addq %rbx, %r12		# addq %r(1322), %r(1323)
	movq $0, %rbx		# movq $0, %r(1324)
	movq %rbx, (%r12)		# movq %r(1324), (%r(1323))
	movq $56, %rbx		# movq $56, %r(1325)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1402)
	movq %r14, %r12		# movq %r(1402), %r(1326)
	addq %rbx, %r12		# addq %r(1325), %r(1326)
	movq $0, %rbx		# movq $0, %r(1327)
	movq %rbx, (%r12)		# movq %r(1327), (%r(1326))
	movq $64, %rbx		# movq $64, %r(1328)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1403)
	movq %r14, %r12		# movq %r(1403), %r(1329)
	addq %rbx, %r12		# addq %r(1328), %r(1329)
	movq $0, %rbx		# movq $0, %r(1330)
	movq %rbx, (%r12)		# movq %r(1330), (%r(1329))
	movq $72, %rbx		# movq $72, %r(1331)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1404)
	movq %r14, %r12		# movq %r(1404), %r(1332)
	addq %rbx, %r12		# addq %r(1331), %r(1332)
	movq $0, %rbx		# movq $0, %r(1333)
	movq %rbx, (%r12)		# movq %r(1333), (%r(1332))
	movq $0, %r13		# movq $0, %r(1334)
	movq $8, %rbx		# movq $8, %r(1335)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1405)
	movq %r12, %r14		# movq %r(1405), %r(1336)
	subq %rbx, %r14		# subq %r(1335), %r(1336)
	movq (%r14), %rbx		# movq (%r(1336)), %r(1337)
	cmpq %rbx, %r13		# cmpq %r(1337), %r(1334)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1338)
	movq %r13, %r14		# movq %r(1338), %r(1339)
	salq $3, %r14		# salq $3, %r(1339)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1406)
	movq %r12, %r15		# movq %r(1406), %r(1340)
	addq %r14, %r15		# addq %r(1339), %r(1340)
	movq $42, %rbx		# movq $42, %r(1341)
	movq %rbx, (%r15)		# movq %r(1341), (%r(1340))
	movq $1, %r13		# movq $1, %r(1342)
	movq $8, %rbx		# movq $8, %r(1343)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1407)
	movq %r12, %r14		# movq %r(1407), %r(1344)
	subq %rbx, %r14		# subq %r(1343), %r(1344)
	movq (%r14), %rbx		# movq (%r(1344)), %r(1345)
	cmpq %rbx, %r13		# cmpq %r(1345), %r(1342)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1346)
	movq %r13, %r14		# movq %r(1346), %r(1347)
	salq $3, %r14		# salq $3, %r(1347)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1408)
	movq %r12, %r15		# movq %r(1408), %r(1348)
	addq %r14, %r15		# addq %r(1347), %r(1348)
	movq $52, %rbx		# movq $52, %r(1349)
	movq %rbx, (%r15)		# movq %r(1349), (%r(1348))
	movq $2, %r13		# movq $2, %r(1350)
	movq $8, %rbx		# movq $8, %r(1351)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1409)
	movq %r12, %r14		# movq %r(1409), %r(1352)
	subq %rbx, %r14		# subq %r(1351), %r(1352)
	movq (%r14), %rbx		# movq (%r(1352)), %r(1353)
	cmpq %rbx, %r13		# cmpq %r(1353), %r(1350)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1354)
	movq %r13, %r14		# movq %r(1354), %r(1355)
	salq $3, %r14		# salq $3, %r(1355)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1410)
	movq %r12, %r15		# movq %r(1410), %r(1356)
	addq %r14, %r15		# addq %r(1355), %r(1356)
	movq $62, %rbx		# movq $62, %r(1357)
	movq %rbx, (%r15)		# movq %r(1357), (%r(1356))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1411)
	movq %rbx, %rdi		# movq %r(1411), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L236(%rip), %rdi		# leaq .L236(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1412)
	movq %rbx, -48(%rbp)		# movq %r(1412), -48(%rbp)
	movq $1, %r13		# movq $1, %r(1359)
	movq %r13, %rbx		# movq %r(1359), %r(1413)
	movq %rbx, -24(%rbp)		# movq %r(1413), -24(%rbp)
	movq $0, %r14		# movq $0, %r(1360)
	movq $8, %r12		# movq $8, %r(1361)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1414)
	movq %rbx, %r13		# movq %r(1414), %r(1415)
	movq %r13, -32(%rbp)		# movq %r(1415), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1416)
	subq %r12, %rbx		# subq %r(1361), %r(1416)
	movq %rbx, -32(%rbp)		# movq %r(1416), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1417)
	movq (%rbx), %r12		# movq (%r(1417)), %r(1363)
	cmpq %r12, %r14		# cmpq %r(1363), %r(1360)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1364)
	movq %r13, %r14		# movq %r(1364), %r(1365)
	salq $3, %r14		# salq $3, %r(1365)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1418)
	movq %r12, %r15		# movq %r(1418), %r(1366)
	addq %r14, %r15		# addq %r(1365), %r(1366)
	movq (%r15), %rbx		# movq (%r(1366)), %r(1367)
	movq $-42, %r12		# movq $-42, %r(1368)
	cmpq %r12, %rbx		# cmpq %r(1368), %r(1367)
	je .L239		# je .L239
	.L240:		# .L240:
	movq $0, %r13		# movq $0, %r(1369)
	movq %r13, %rbx		# movq %r(1369), %r(1419)
	movq %rbx, -24(%rbp)		# movq %r(1419), -24(%rbp)
	jmp .L239		# jmp .L239
	.L239:		# .L239:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1420)
	movq %rbx, %rdi		# movq %r(1420), %rdi
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1421)
	movq %rbx, %rsi		# movq %r(1421), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L241(%rip), %rdi		# leaq .L241(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1422)
	movq %rbx, -16(%rbp)		# movq %r(1422), -16(%rbp)
	movq $1, %r12		# movq $1, %r(1371)
	movq %r12, %r13		# movq %r(1371), %r(1273)
	movq $1, %r15		# movq $1, %r(1372)
	movq $8, %r12		# movq $8, %r(1373)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1423)
	movq %rbx, %r14		# movq %r(1423), %r(1424)
	movq %r14, -64(%rbp)		# movq %r(1424), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1425)
	subq %r12, %rbx		# subq %r(1373), %r(1425)
	movq %rbx, -64(%rbp)		# movq %r(1425), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1426)
	movq (%rbx), %r12		# movq (%r(1426)), %r(1375)
	cmpq %r12, %r15		# cmpq %r(1375), %r(1372)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r12		# movq $1, %r(1376)
	movq %r12, %rbx		# movq %r(1376), %r(1377)
	salq $3, %rbx		# salq $3, %r(1377)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1427)
	movq %r14, %r15		# movq %r(1427), %r(1378)
	addq %rbx, %r15		# addq %r(1377), %r(1378)
	movq (%r15), %r12		# movq (%r(1378)), %r(1379)
	movq $52, %rbx		# movq $52, %r(1380)
	cmpq %rbx, %r12		# cmpq %r(1380), %r(1379)
	je .L244		# je .L244
	.L245:		# .L245:
	movq $0, %r12		# movq $0, %r(1381)
	movq %r12, %r13		# movq %r(1381), %r(1273)
	jmp .L244		# jmp .L244
	.L244:		# .L244:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1428)
	movq %rbx, %rdi		# movq %r(1428), %rdi
	movq %r13, %rsi		# movq %r(1273), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L246(%rip), %rdi		# leaq .L246(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1429)
	movq %rbx, -56(%rbp)		# movq %r(1429), -56(%rbp)
	movq $1, %r13		# movq $1, %r(1383)
	movq %r13, %rbx		# movq %r(1383), %r(1430)
	movq %rbx, -8(%rbp)		# movq %r(1430), -8(%rbp)
	movq $2, %r13		# movq $2, %r(1384)
	movq $8, %rbx		# movq $8, %r(1385)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1431)
	movq %r12, %r14		# movq %r(1431), %r(1386)
	subq %rbx, %r14		# subq %r(1385), %r(1386)
	movq (%r14), %rbx		# movq (%r(1386)), %r(1387)
	cmpq %rbx, %r13		# cmpq %r(1387), %r(1384)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1388)
	movq %r13, %r14		# movq %r(1388), %r(1389)
	salq $3, %r14		# salq $3, %r(1389)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1432)
	movq %r12, %r15		# movq %r(1432), %r(1390)
	addq %r14, %r15		# addq %r(1389), %r(1390)
	movq (%r15), %rbx		# movq (%r(1390)), %r(1391)
	movq $62, %r12		# movq $62, %r(1392)
	cmpq %r12, %rbx		# cmpq %r(1392), %r(1391)
	je .L249		# je .L249
	.L250:		# .L250:
	movq $0, %r13		# movq $0, %r(1393)
	movq %r13, %rbx		# movq %r(1393), %r(1433)
	movq %rbx, -8(%rbp)		# movq %r(1433), -8(%rbp)
	jmp .L249		# jmp .L249
	.L249:		# .L249:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1434)
	movq %rbx, %rdi		# movq %r(1434), %rdi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1435)
	movq %rbx, %rsi		# movq %r(1435), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1448)
	movq %rbx, -24(%rbp)		# movq %r(1448), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1449)
	movq (%rbx), %r13		# movq (%r(1449)), %r(1436)
	movq %r13, %r12		# movq %r(1436), %r(1450)
	movq %r12, -8(%rbp)		# movq %r(1450), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1451)
	movq %r12, %r13		# movq %r(1451), %r(1437)
	salq $3, %r13		# salq $3, %r(1437)
	movq $8, %rbx		# movq $8, %r(1438)
	movq %r13, %r14		# movq %r(1437), %r(1439)
	addq %rbx, %r14		# addq %r(1438), %r(1439)
	movq %r14, %rdi		# movq %r(1439), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1289)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1452)
	movq %r13, %rbx		# movq %r(1452), %r(1440)
	salq $3, %rbx		# salq $3, %r(1440)
	movq %r15, %r13		# movq %r(1289), %r(1441)
	addq %rbx, %r13		# addq %r(1440), %r(1441)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1453)
	movq %rbx, %r12		# movq %r(1453), %r(1442)
	salq $3, %r12		# salq $3, %r(1442)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1454)
	movq %rbx, %r14		# movq %r(1454), %r(1455)
	movq %r14, -16(%rbp)		# movq %r(1455), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1456)
	addq %r12, %rbx		# addq %r(1442), %r(1456)
	movq %rbx, -16(%rbp)		# movq %r(1456), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1457)
	movq (%rbx), %r12		# movq (%r(1457)), %r(1444)
	movq %r12, (%r13)		# movq %r(1444), (%r(1441))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1458)
	decq %rbx		# decq %r(1458)
	movq %rbx, -8(%rbp)		# movq %r(1458), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1445)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1459)
	cmpq %rbx, %r12		# cmpq %r(1445), %r(1459)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1446)
	movq %r15, %r13		# movq %r(1289), %r(1447)
	addq %rbx, %r13		# addq %r(1446), %r(1447)
	movq %r13, %rax		# movq %r(1447), %rax
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
.L241:
	.quad 2
	.quad 35
	.quad 50
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

error_outofbounds:
call _I_outOfBounds_p
