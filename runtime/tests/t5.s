.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $144, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $0, %rbx		# movq $0, %r(1356)
	movq %rbx, -112(%rbp)		# movq %r(1356), -112(%rbp)
	leaq .L273(%rip), %rdi		# leaq .L273(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1245)
	leaq .L274(%rip), %rdi		# leaq .L274(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1246)
	movq %rbx, %rdi		# movq %r(1245), %rdi
	movq %r12, %rsi		# movq %r(1246), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r13		# movq %rax, %r(1247)
	movq $24, %rbx		# movq $24, %r(1277)
	movq %rbx, %rdi		# movq %r(1277), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1248)
	movq (%r15), %rbx		# movq (%r(1188)), %r(1278)
	movq $2, %rbx		# movq $2, %r(1278)
	addq $8, %r15		# addq $8, %r(1279)
	movq %r15, %r14		# movq %r(1187), %r(1280)
	addq $0, %r14		# addq $0, %r(1280)
	movq (%r14), %rbx		# movq (%r(1280)), %r(1281)
	movq $100, %rbx		# movq $100, %r(1281)
	movq %r15, %rbx		# movq %r(1187), %r(1282)
	addq $8, %rbx		# addq $8, %r(1282)
	movq (%rbx), %rbx		# movq (%r(1282)), %r(1283)
	movq $101, %rbx		# movq $101, %r(1283)
	movq %r13, %rdi		# movq %r(1247), %rdi
	movq %r15, %rsi		# movq %r(1187), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r12		# movq %rax, %r(1249)
	movq %r12, -24(%rbp)		# movq %r(1357), -24(%rbp)
	movq $32, %rbx		# movq $32, %r(1284)
	movq %rbx, %rdi		# movq %r(1284), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1250)
	movq (%r12), %rbx		# movq (%r(1191)), %r(1285)
	movq $3, %rbx		# movq $3, %r(1285)
	addq $8, %r12		# addq $8, %r(1286)
	movq %r12, %r13		# movq %r(1190), %r(1287)
	addq $0, %r13		# addq $0, %r(1287)
	movq (%r13), %rbx		# movq (%r(1287)), %r(1288)
	movq $1, %rbx		# movq $1, %r(1288)
	movq %r12, %r13		# movq %r(1190), %r(1289)
	addq $8, %r13		# addq $8, %r(1289)
	movq (%r13), %rbx		# movq (%r(1289)), %r(1290)
	movq $1, %rbx		# movq $1, %r(1290)
	movq %r12, %rbx		# movq %r(1190), %r(1291)
	addq $16, %rbx		# addq $16, %r(1291)
	movq (%rbx), %rbx		# movq (%r(1291)), %r(1292)
	movq $1, %rbx		# movq $1, %r(1292)
	movq %r12, -32(%rbp)		# movq %r(1358), -32(%rbp)
	movq $32, %rbx		# movq $32, %r(1293)
	movq %rbx, %rdi		# movq %r(1293), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1251)
	movq (%r12), %rbx		# movq (%r(1196)), %r(1294)
	movq $3, %rbx		# movq $3, %r(1294)
	addq $8, %r12		# addq $8, %r(1295)
	movq %r12, -80(%rbp)		# movq %r(1359), -80(%rbp)
	movq $24, %rbx		# movq $24, %r(1296)
	movq %rbx, %rdi		# movq %r(1296), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1252)
	movq (%r14), %rbx		# movq (%r(1198)), %r(1297)
	movq $2, %rbx		# movq $2, %r(1297)
	addq $8, %r14		# addq $8, %r(1298)
	movq %r14, %r13		# movq %r(1197), %r(1299)
	addq $0, %r13		# addq $0, %r(1299)
	movq (%r13), %rbx		# movq (%r(1299)), %r(1300)
	movq $1, %rbx		# movq $1, %r(1300)
	movq %r14, %r13		# movq %r(1197), %r(1301)
	addq $8, %r13		# addq $8, %r(1301)
	movq (%r13), %rbx		# movq (%r(1301)), %r(1302)
	movq $2, %rbx		# movq $2, %r(1302)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1360)
	addq $0, %rbx		# addq $0, %r(1303)
	movq %r14, (%rbx)		# movq %r(1197), (%r(1303))
	movq $24, %rbx		# movq $24, %r(1304)
	movq %rbx, %rdi		# movq %r(1304), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1253)
	movq (%r14), %rbx		# movq (%r(1200)), %r(1305)
	movq $2, %rbx		# movq $2, %r(1305)
	addq $8, %r14		# addq $8, %r(1306)
	movq %r14, %r13		# movq %r(1199), %r(1307)
	addq $0, %r13		# addq $0, %r(1307)
	movq (%r13), %rbx		# movq (%r(1307)), %r(1308)
	movq $3, %rbx		# movq $3, %r(1308)
	movq %r14, %r13		# movq %r(1199), %r(1309)
	addq $8, %r13		# addq $8, %r(1309)
	movq (%r13), %rbx		# movq (%r(1309)), %r(1310)
	movq $4, %rbx		# movq $4, %r(1310)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1361)
	addq $8, %rbx		# addq $8, %r(1311)
	movq %r14, (%rbx)		# movq %r(1199), (%r(1311))
	movq $24, %rbx		# movq $24, %r(1312)
	movq %rbx, %rdi		# movq %r(1312), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1254)
	movq (%r14), %rbx		# movq (%r(1202)), %r(1313)
	movq $2, %rbx		# movq $2, %r(1313)
	addq $8, %r14		# addq $8, %r(1314)
	movq %r14, %r13		# movq %r(1201), %r(1315)
	addq $0, %r13		# addq $0, %r(1315)
	movq (%r13), %rbx		# movq (%r(1315)), %r(1316)
	movq $5, %rbx		# movq $5, %r(1316)
	movq %r14, %r13		# movq %r(1201), %r(1317)
	addq $8, %r13		# addq $8, %r(1317)
	movq (%r13), %rbx		# movq (%r(1317)), %r(1318)
	movq $6, %rbx		# movq $6, %r(1318)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1362)
	addq $16, %rbx		# addq $16, %r(1319)
	movq %r14, (%rbx)		# movq %r(1201), (%r(1319))
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1363)
	movq %r12, -40(%rbp)		# movq %r(1364), -40(%rbp)
	movq $195, %rbx		# movq $195, %r(1365)
	movq %rbx, -64(%rbp)		# movq %r(1365), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(1366)
	movq %rbx, -16(%rbp)		# movq %r(1366), -16(%rbp)
	movq $32, %rbx		# movq $32, %r(1320)
	movq %rbx, %rdi		# movq %r(1320), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1255)
	movq (%r12), %rbx		# movq (%r(1207)), %r(1321)
	movq $3, %rbx		# movq $3, %r(1321)
	addq $8, %r12		# addq $8, %r(1322)
	movq %r12, -96(%rbp)		# movq %r(1367), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1368)
	addq $0, %r12		# addq $0, %r(1323)
	movq (%r12), %rbx		# movq (%r(1323)), %r(1324)
	movq $1, %rbx		# movq $1, %r(1324)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1369)
	addq $8, %r12		# addq $8, %r(1325)
	movq (%r12), %rbx		# movq (%r(1325)), %r(1326)
	movq $2, %rbx		# movq $2, %r(1326)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1370)
	addq $16, %r12		# addq $16, %r(1327)
	movq (%r12), %rbx		# movq (%r(1327)), %r(1328)
	movq $3, %rbx		# movq $3, %r(1328)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1371)
	movq %r12, -88(%rbp)		# movq %r(1372), -88(%rbp)
	leaq .L275(%rip), %rdi		# leaq .L275(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1256)
	movq %r12, -48(%rbp)		# movq %r(1373), -48(%rbp)
	movq $16, %rbx		# movq $16, %r(1330)
	movq %rbx, %rdi		# movq %r(1330), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1257)
	movq (%r12), %rbx		# movq (%r(1213)), %r(1331)
	movq $1, %rbx		# movq $1, %r(1331)
	addq $8, %r12		# addq $8, %r(1332)
	movq %r12, -56(%rbp)		# movq %r(1374), -56(%rbp)
	movq $32, %rbx		# movq $32, %r(1333)
	movq %rbx, %rdi		# movq %r(1333), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1258)
	movq (%r12), %rbx		# movq (%r(1215)), %r(1334)
	movq $3, %rbx		# movq $3, %r(1334)
	addq $8, %r12		# addq $8, %r(1335)
	movq %r12, -8(%rbp)		# movq %r(1375), -8(%rbp)
	movq $16, %rbx		# movq $16, %r(1336)
	movq %rbx, %rdi		# movq %r(1336), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1259)
	movq (%r12), %rbx		# movq (%r(1217)), %r(1337)
	movq $1, %rbx		# movq $1, %r(1337)
	addq $8, %r12		# addq $8, %r(1338)
	movq %r12, -120(%rbp)		# movq %r(1376), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1377)
	addq $0, %r12		# addq $0, %r(1339)
	movq (%r12), %rbx		# movq (%r(1339)), %r(1340)
	movq $1, %rbx		# movq $1, %r(1340)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1378)
	addq $0, %r13		# addq $0, %r(1341)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1379)
	movq %r12, (%r13)		# movq %r(1379), (%r(1341))
	movq $16, %rbx		# movq $16, %r(1342)
	movq %rbx, %rdi		# movq %r(1342), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1260)
	movq (%r12), %rbx		# movq (%r(1219)), %r(1343)
	movq $1, %rbx		# movq $1, %r(1343)
	addq $8, %r12		# addq $8, %r(1344)
	movq %r12, -104(%rbp)		# movq %r(1380), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1381)
	addq $0, %r12		# addq $0, %r(1345)
	movq (%r12), %rbx		# movq (%r(1345)), %r(1346)
	movq $1, %rbx		# movq $1, %r(1346)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1382)
	addq $8, %r13		# addq $8, %r(1347)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1383)
	movq %r12, (%r13)		# movq %r(1383), (%r(1347))
	movq $16, %rbx		# movq $16, %r(1348)
	movq %rbx, %rdi		# movq %r(1348), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1261)
	movq (%r12), %rbx		# movq (%r(1221)), %r(1349)
	movq $1, %rbx		# movq $1, %r(1349)
	addq $8, %r12		# addq $8, %r(1350)
	movq %r12, -128(%rbp)		# movq %r(1384), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1385)
	addq $0, %r12		# addq $0, %r(1351)
	movq (%r12), %rbx		# movq (%r(1351)), %r(1352)
	movq $1, %rbx		# movq $1, %r(1352)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1386)
	addq $16, %r13		# addq $16, %r(1353)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1387)
	movq %r12, (%r13)		# movq %r(1387), (%r(1353))
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1388)
	addq $0, %r13		# addq $0, %r(1354)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1389)
	movq %r12, (%r13)		# movq %r(1389), (%r(1354))
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1390)
	movq %r12, -72(%rbp)		# movq %r(1391), -72(%rbp)
	movq $32, %rbx		# movq $32, %r(1355)
	movq %rbx, %rdi		# movq %r(1355), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1262)
	movq %rbx, %rdi		# movq %r(1223), %rdi
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1392)
	movq %r12, %rsi		# movq %r(1392), %rsi
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1393)
	movq %r12, %rdx		# movq %r(1393), %rdx
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1394)
	movq %r12, %rcx		# movq %r(1394), %rcx
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1395)
	movq %r12, %r8		# movq %r(1395), %r8
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1396)
	movq %r12, %r9		# movq %r(1396), %r9
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1397)
	pushq %r12		# pushq %r(1397)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1398)
	pushq %r12		# pushq %r(1398)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1399)
	pushq %r12		# pushq %r(1399)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1400)
	pushq %r12		# pushq %r(1400)
	call _If_t4iaiaabaibaiabaaiibaiaiaaai		# call _If_t4iaiaabaibaiabaaiibaiaiaaai
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	movq 0(%rbx), %rbx		# movq 0(%r(1223)), %r(a)
	movq 8(%rbx), %rbx		# movq 8(%r(1223)), %r(b)
	movq 16(%rbx), %rbx		# movq 16(%r(1223)), %r(c)
	.L272:		# .L272:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $144, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_t4iaiaabaibaiabaaiibaiaiaaai
_If_t4iaiaabaibaiabaaiibaiaiaaai:
	pushq %rbp
	movq %rsp, %rbp
	subq $128, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1435)
	movq %rbx, -72(%rbp)		# movq %r(1435), -72(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(a)
	movq %rdx, %rbx		# movq %rdx, %r(b)
	movq %rcx, %rbx		# movq %rcx, %r(c)
	movq %r8, %rbx		# movq %r8, %r(d)
	movq %r9, %rbx		# movq %r9, %r(e)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(f_)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(g)
	movq 32(%rbp), %rbx		# movq 32(%rbp), %r(h)
	movq 40(%rbp), %rbx		# movq 40(%rbp), %r(i)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1436)
	addq $0, %r12		# addq $0, %r(1401)
	movq (%r12), %rbx		# movq (%r(1401)), %r(1402)
	movq $1, %rbx		# movq $1, %r(1402)
	movq $32, %rbx		# movq $32, %r(1403)
	movq %rbx, %rdi		# movq %r(1403), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1264)
	movq (%r14), %rbx		# movq (%r(1238)), %r(1404)
	movq $3, %rbx		# movq $3, %r(1404)
	addq $8, %r14		# addq $8, %r(1405)
	movq %r14, %r13		# movq %r(1237), %r(1406)
	addq $0, %r13		# addq $0, %r(1406)
	movq (%r13), %rbx		# movq (%r(1406)), %r(1407)
	movq $100, %rbx		# movq $100, %r(1407)
	movq %r14, %r13		# movq %r(1237), %r(1408)
	addq $8, %r13		# addq $8, %r(1408)
	movq (%r13), %rbx		# movq (%r(1408)), %r(1409)
	movq $3, %rbx		# movq $3, %r(1409)
	movq %r14, %r13		# movq %r(1237), %r(1410)
	addq $16, %r13		# addq $16, %r(1410)
	movq (%r13), %rbx		# movq (%r(1410)), %r(1411)
	movq $2, %rbx		# movq $2, %r(1411)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1437)
	addq $8, %rbx		# addq $8, %r(1412)
	movq %r14, (%rbx)		# movq %r(1237), (%r(1412))
	movq $24, %rbx		# movq $24, %r(1413)
	movq %rbx, %rdi		# movq %r(1413), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1438)
	movq %rbx, -48(%rbp)		# movq %r(1438), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1439)
	movq %r12, -104(%rbp)		# movq %r(1440), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1441)
	movq (%rbx), %rbx		# movq (%r(1441)), %r(1414)
	movq $2, %rbx		# movq $2, %r(1414)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1442)
	movq %r12, -112(%rbp)		# movq %r(1443), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1444)
	addq $8, %rbx		# addq $8, %r(1444)
	movq %rbx, -112(%rbp)		# movq %r(1444), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1445)
	movq %r12, -40(%rbp)		# movq %r(1446), -40(%rbp)
	movq $24, %rbx		# movq $24, %r(1416)
	movq %rbx, %rdi		# movq %r(1416), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1447)
	movq %rbx, -8(%rbp)		# movq %r(1447), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1448)
	movq %r12, -96(%rbp)		# movq %r(1449), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1450)
	movq (%rbx), %rbx		# movq (%r(1450)), %r(1417)
	movq $2, %rbx		# movq $2, %r(1417)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1451)
	movq %r12, -80(%rbp)		# movq %r(1452), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1453)
	addq $8, %rbx		# addq $8, %r(1453)
	movq %rbx, -80(%rbp)		# movq %r(1453), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1454)
	movq %r12, -88(%rbp)		# movq %r(1455), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1456)
	addq $0, %r12		# addq $0, %r(1419)
	movq (%r12), %rbx		# movq (%r(1419)), %r(1420)
	movq $1, %rbx		# movq $1, %r(1420)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1457)
	addq $8, %r12		# addq $8, %r(1421)
	movq (%r12), %rbx		# movq (%r(1421)), %r(1422)
	movq $0, %rbx		# movq $0, %r(1422)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1458)
	addq $0, %r13		# addq $0, %r(1423)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1459)
	movq %r12, (%r13)		# movq %r(1459), (%r(1423))
	movq $24, %rbx		# movq $24, %r(1424)
	movq %rbx, %rdi		# movq %r(1424), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1460)
	movq %rbx, -16(%rbp)		# movq %r(1460), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1461)
	movq %r12, -24(%rbp)		# movq %r(1462), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1463)
	movq (%rbx), %rbx		# movq (%r(1463)), %r(1425)
	movq $2, %rbx		# movq $2, %r(1425)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1464)
	movq %r12, -56(%rbp)		# movq %r(1465), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1466)
	addq $8, %rbx		# addq $8, %r(1466)
	movq %rbx, -56(%rbp)		# movq %r(1466), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1467)
	movq %r12, -64(%rbp)		# movq %r(1468), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1469)
	addq $0, %r12		# addq $0, %r(1427)
	movq (%r12), %rbx		# movq (%r(1427)), %r(1428)
	movq $0, %rbx		# movq $0, %r(1428)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1470)
	addq $8, %r12		# addq $8, %r(1429)
	movq (%r12), %rbx		# movq (%r(1429)), %r(1430)
	movq $1, %rbx		# movq $1, %r(1430)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1471)
	addq $8, %r13		# addq $8, %r(1431)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1472)
	movq %r12, (%r13)		# movq %r(1472), (%r(1431))
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1473)
	addq $16, %r13		# addq $16, %r(1432)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1474)
	movq %r12, (%r13)		# movq %r(1474), (%r(1432))
	leaq .L278(%rip), %rdi		# leaq .L278(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1268)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1475)
	movq %r13, -32(%rbp)		# movq %r(1476), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1477)
	addq $24, %rbx		# addq $24, %r(1477)
	movq %rbx, -32(%rbp)		# movq %r(1477), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1478)
	movq %r12, (%rbx)		# movq %r(1268), (%r(1478))
	jmp .L277		# jmp .L277
	.L277:		# .L277:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $128, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1508)
	movq %rbx, -48(%rbp)		# movq %r(1508), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1509)
	subq $8, %r12		# subq $8, %r(1479)
	movq (%r12), %r12		# movq (%r(1479)), %r(1480)
	movq %r12, -64(%rbp)		# movq %r(1510), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(1511)
	movq %rbx, -56(%rbp)		# movq %r(1511), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(1481)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1512)
	cmpq %rbx, %r12		# cmpq %r(1481), %r(1512)
	jne .L161		# jne .L161
	.L162:		# .L162:
	movq $0, %rax		# movq $0, %rax
	jmp .L163		# jmp .L163
	.L161:		# .L161:
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1513)
	salq $3, %r12		# salq $3, %r(1482)
	movq %r12, %rdi		# movq %r(1482), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1269)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1514)
	subq $1, %r13		# subq $1, %r(1483)
	movq %r13, (%rbx)		# movq %r(1483), (%r(521))
	addq $8, %rbx		# addq $8, %r(1484)
	movq %rbx, -24(%rbp)		# movq %r(1515), -24(%rbp)
	.L164:		# .L164:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1516)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1517)
	cmpq %r12, %rbx		# cmpq %r(1517), %r(1516)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1518)
	movq %r12, -72(%rbp)		# movq %r(1519), -72(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1520)
	movq %r12, -88(%rbp)		# movq %r(1521), -88(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1522)
	subq $8, %r12		# subq $8, %r(1485)
	movq (%r12), %rbx		# movq (%r(1485)), %r(1486)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1523)
	cmpq %rbx, %r12		# cmpq %r(1486), %r(1523)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1524)
	movq %r12, -16(%rbp)		# movq %r(1525), -16(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1526)
	subq $1, %rbx		# subq $1, %r(1487)
	movq %rbx, -40(%rbp)		# movq %r(1527), -40(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1528)
	subq $8, %r12		# subq $8, %r(1488)
	movq (%r12), %rbx		# movq (%r(1488)), %r(1489)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1529)
	cmpq %rbx, %r12		# cmpq %r(1489), %r(1529)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1530)
	salq $3, %r13		# salq $3, %r(1490)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1531)
	movq %rbx, -96(%rbp)		# movq %r(1532), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1533)
	addq %r13, %r12		# addq %r(1490), %r(1533)
	movq %r12, -96(%rbp)		# movq %r(1533), -96(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1534)
	movq %r12, -32(%rbp)		# movq %r(1535), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1536)
	salq $3, %rbx		# salq $3, %r(1536)
	movq %rbx, -32(%rbp)		# movq %r(1536), -32(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1537)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1538)
	addq %r12, %r13		# addq %r(1538), %r(1493)
	movq (%r13), %rbx		# movq (%r(1493)), %r(1494)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1539)
	movq %rbx, (%r12)		# movq %r(1494), (%r(1539))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1540)
	incq %rbx		# incq %r(1540)
	movq %rbx, -56(%rbp)		# movq %r(1540), -56(%rbp)
	jmp .L164		# jmp .L164
	.L165:		# .L165:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1541)
	movq $0, %rbx		# movq $0, %r(528)
	movq %r13, %r14		# movq %r(527), %r(1495)
	subq $8, %r14		# subq $8, %r(1495)
	movq (%r14), %r12		# movq (%r(1495)), %r(1496)
	cmpq %r12, %rbx		# cmpq %r(1496), %r(528)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1497)
	addq %rbx, %r13		# addq %r(1497), %r(1498)
	movq (%r13), %r12		# movq (%r(1498)), %r(1499)
	movq %r12, -56(%rbp)		# movq %r(1542), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1543)
	addq $1, %rbx		# addq $1, %r(1500)
	salq $3, %rbx		# salq $3, %r(1501)
	movq %rbx, %rdi		# movq %r(1501), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1270)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1544)
	movq %r12, (%r14)		# movq %r(1544), (%r(530))
	addq $8, %r14		# addq $8, %r(1502)
	.L170:		# .L170:
	movq $0, %r12		# movq $0, %r(1503)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1545)
	cmpq %r12, %r13		# cmpq %r(1503), %r(1545)
	jle .L171		# jle .L171
	.L172:		# .L172:
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1546)
	decq %r12		# decq %r(1546)
	movq %r12, -56(%rbp)		# movq %r(1546), -56(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1547)
	movq %r12, %rdi		# movq %r(1547), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(1271)
	movq %r12, -80(%rbp)		# movq %r(1548), -80(%rbp)
	movq %r14, %rbx		# movq %r(list), %r(1549)
	movq %rbx, -8(%rbp)		# movq %r(1549), -8(%rbp)
	movq -56(%rbp), %r15		# movq -56(%rbp), %r(1550)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1551)
	subq $8, %r12		# subq $8, %r(1504)
	movq (%r12), %r13		# movq (%r(1504)), %r(1505)
	cmpq %r13, %r15		# cmpq %r(1505), %r(535)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r15		# salq $3, %r(1506)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1552)
	addq %r15, %rbx		# addq %r(1506), %r(1507)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1553)
	movq %r12, (%rbx)		# movq %r(1553), (%r(1507))
	jmp .L170		# jmp .L170
	.L171:		# .L171:
	movq %r14, %rax		# movq %r(list), %rax
	jmp .L163		# jmp .L163
	.L163:		# .L163:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strdup_aii
_I_c_internal_strdup_aii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %rbx		# movq (%r(p0)), %r(1554)
	movq %rbx, %r12		# movq %r(1554), %r(t10)
	movq %r12, %rbx		# movq %r(t10), %r(1555)
	salq $3, %rbx		# salq $3, %r(1555)
	addq $8, %rbx		# addq $8, %r(1556)
	movq %rbx, %rdi		# movq %r(1556), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1272)
	movq %rbx, %r13		# movq %r(1272), %r(t27)
	.L24:		# .L24:
	movq %r12, %r14		# movq %r(t10), %r(1557)
	salq $3, %r14		# salq $3, %r(1557)
	movq %r13, %rbx		# movq %r(t27), %r(1564)
	movq %rbx, -8(%rbp)		# movq %r(1564), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1565)
	addq %r14, %rbx		# addq %r(1557), %r(1565)
	movq %rbx, -8(%rbp)		# movq %r(1565), -8(%rbp)
	movq %r12, %rbx		# movq %r(t10), %r(1559)
	salq $3, %rbx		# salq $3, %r(1559)
	movq %r15, %r14		# movq %r(p0), %r(1560)
	addq %rbx, %r14		# addq %r(1559), %r(1560)
	movq (%r14), %rbx		# movq (%r(1560)), %r(1561)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1566)
	movq %rbx, (%r14)		# movq %r(1561), (%r(1566))
	decq %r12		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1562)
	cmpq %rbx, %r12		# cmpq %r(1562), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq %r13, %rbx		# movq %r(t27), %r(1563)
	addq $8, %rbx		# addq $8, %r(1563)
	movq %rbx, %rax		# movq %r(1563), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1585)
	movq %rbx, -32(%rbp)		# movq %r(1585), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1586)
	movq %rbx, -24(%rbp)		# movq %r(1586), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1587)
	movq %rbx, -48(%rbp)		# movq %r(1587), -48(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1588)
	subq $8, %r12		# subq $8, %r(1567)
	movq (%r12), %r12		# movq (%r(1567)), %r(1568)
	movq %r12, -16(%rbp)		# movq %r(1589), -16(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1590)
	subq $8, %r12		# subq $8, %r(1569)
	movq (%r12), %rbx		# movq (%r(1569)), %r(1570)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1591)
	addq %rbx, %r12		# addq %r(1570), %r(1571)
	movq %r12, -64(%rbp)		# movq %r(1592), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1593)
	addq $1, %r12		# addq $1, %r(1572)
	movq %r12, %rdi		# movq %r(1572), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1273)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1594)
	movq %r12, (%r13)		# movq %r(1594), (%r(82))
	addq $8, %r13		# addq $8, %r(1573)
	movq %r13, -8(%rbp)		# movq %r(1595), -8(%rbp)
	.L46:		# .L46:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1596)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1597)
	cmpq %rbx, %r12		# cmpq %r(1596), %r(1597)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1598)
	salq $3, %r13		# salq $3, %r(1574)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1599)
	movq %rbx, -40(%rbp)		# movq %r(1600), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1601)
	addq %r13, %r12		# addq %r(1574), %r(1601)
	movq %r12, -40(%rbp)		# movq %r(1601), -40(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1602)
	salq $3, %r13		# salq $3, %r(1576)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1603)
	movq %rbx, -56(%rbp)		# movq %r(1604), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1605)
	addq %r13, %r12		# addq %r(1576), %r(1605)
	movq %r12, -56(%rbp)		# movq %r(1605), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1606)
	movq (%rbx), %rbx		# movq (%r(1606)), %r(1578)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1607)
	movq %rbx, (%r12)		# movq %r(1578), (%r(1607))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1608)
	incq %rbx		# incq %r(1608)
	movq %rbx, -48(%rbp)		# movq %r(1608), -48(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1609)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1610)
	cmpq %r12, %rbx		# cmpq %r(1610), %r(1609)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1611)
	salq $3, %r13		# salq $3, %r(1579)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1612)
	addq %r13, %r14		# addq %r(1579), %r(1580)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1613)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1614)
	subq %r13, %rbx		# subq %r(1614), %r(1581)
	salq $3, %rbx		# salq $3, %r(1582)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1615)
	addq %rbx, %r12		# addq %r(1582), %r(1583)
	movq (%r12), %rbx		# movq (%r(1583)), %r(1584)
	movq %rbx, (%r14)		# movq %r(1584), (%r(1580))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1616)
	incq %rbx		# incq %r(1616)
	movq %rbx, -48(%rbp)		# movq %r(1616), -48(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1617)
	movq %rbx, %rax		# movq %r(1617), %rax
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
.L274:
	.quad 5
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L278:
	.quad 7
	.quad 78
	.quad 111
	.quad 116
	.quad 104
	.quad 105
	.quad 110
	.quad 103
	.text

#.section .rodata
.align 8
.L275:
	.quad 9
	.quad 71
	.quad 111
	.quad 111
	.quad 100
	.quad 32
	.quad 76
	.quad 117
	.quad 99
	.quad 107
	.text

#.section .rodata
.align 8
.L273:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

error_outofbounds:
call _I_outOfBounds_p
