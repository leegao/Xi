.att_syntax prefix
.text
.globl _IIam____t2baiibbiiiai
_IIam____t2baiibbiiiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $320, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1488)
	movq %rbx, -40(%rbp)		# movq %r(1488), -40(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1489)
	movq %rbx, -240(%rbp)		# movq %r(1489), -240(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(1490)
	movq %rbx, -64(%rbp)		# movq %r(1490), -64(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(1491)
	movq %rbx, -16(%rbp)		# movq %r(1491), -16(%rbp)
	movq %r8, %rbx		# movq %r8, %r(1492)
	movq %rbx, -48(%rbp)		# movq %r(1492), -48(%rbp)
	movq %r9, %rbx		# movq %r9, %r(1493)
	movq %rbx, -24(%rbp)		# movq %r(1493), -24(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(1494)
	movq %rbx, -280(%rbp)		# movq %r(1494), -280(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(1495)
	movq %rbx, -144(%rbp)		# movq %r(1495), -144(%rbp)
	movq $24, %rbx		# movq $24, %r(1496)
	movq %rbx, -136(%rbp)		# movq %r(1496), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(1497)
	movq %rbx, %rdi		# movq %r(1497), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1498)
	movq %rbx, -56(%rbp)		# movq %r(1498), -56(%rbp)
	movq $2, %rbx		# movq $2, %r(1499)
	movq %rbx, -152(%rbp)		# movq %r(1499), -152(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1500)
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(1501)
	movq %r12, (%rbx)		# movq %r(1501), (%r(1500))
	movq $8, %rbx		# movq $8, %r(1502)
	movq %rbx, -192(%rbp)		# movq %r(1502), -192(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1503)
	movq %r12, -248(%rbp)		# movq %r(1504), -248(%rbp)
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(1505)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(1506)
	addq %r12, %rbx		# addq %r(1506), %r(1505)
	movq %rbx, -248(%rbp)		# movq %r(1505), -248(%rbp)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(1507)
	movq %r12, -232(%rbp)		# movq %r(1508), -232(%rbp)
	movq $24, %rbx		# movq $24, %r(1509)
	movq %rbx, -272(%rbp)		# movq %r(1509), -272(%rbp)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(1510)
	movq %rbx, %rdi		# movq %r(1510), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1511)
	movq %rbx, -224(%rbp)		# movq %r(1511), -224(%rbp)
	movq $2, %rbx		# movq $2, %r(1512)
	movq %rbx, -120(%rbp)		# movq %r(1512), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(1513)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(1514)
	movq %rbx, (%r12)		# movq %r(1513), (%r(1514))
	movq $8, %rbx		# movq $8, %r(1515)
	movq %rbx, -72(%rbp)		# movq %r(1515), -72(%rbp)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(1516)
	movq %r12, -296(%rbp)		# movq %r(1517), -296(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1518)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(1519)
	addq %rbx, %r12		# addq %r(1518), %r(1519)
	movq %r12, -296(%rbp)		# movq %r(1519), -296(%rbp)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(1520)
	movq %r12, -80(%rbp)		# movq %r(1521), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(1522)
	movq %rbx, -184(%rbp)		# movq %r(1522), -184(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1523)
	movq %r12, -160(%rbp)		# movq %r(1524), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(1525)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(1526)
	addq %r12, %rbx		# addq %r(1526), %r(1525)
	movq %rbx, -160(%rbp)		# movq %r(1525), -160(%rbp)
	movq $1, %rbx		# movq $1, %r(1527)
	movq %rbx, -304(%rbp)		# movq %r(1527), -304(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1528)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(1529)
	xorq %r12, %r13		# xorq %r(1529), %r(1355)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(1530)
	movq %r13, (%r12)		# movq %r(1355), (%r(1530))
	movq $1, %r13		# movq $1, %r(1356)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(1531)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1532)
	cmpq %r12, %rbx		# cmpq %r(1532), %r(1531)
	jl .L220		# jl .L220
	.L221:		# .L221:
	movq $0, %r13		# movq $0, %r(1357)
	jmp .L220		# jmp .L220
	.L220:		# .L220:
	movq $8, %rbx		# movq $8, %r(1533)
	movq %rbx, -256(%rbp)		# movq %r(1533), -256(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1534)
	movq %r12, -128(%rbp)		# movq %r(1535), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1536)
	movq -256(%rbp), %r12		# movq -256(%rbp), %r(1537)
	addq %r12, %rbx		# addq %r(1537), %r(1536)
	movq %rbx, -128(%rbp)		# movq %r(1536), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1538)
	movq %r13, (%rbx)		# movq %r(1294), (%r(1538))
	movq $0, %r12		# movq $0, %r(1360)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(1539)
	movq %r13, -88(%rbp)		# movq %r(1540), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1541)
	addq %r12, %rbx		# addq %r(1360), %r(1541)
	movq %rbx, -88(%rbp)		# movq %r(1541), -88(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1542)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1543)
	movq %rbx, (%r12)		# movq %r(1542), (%r(1543))
	movq $24, %rbx		# movq $24, %r(1362)
	movq %rbx, %rdi		# movq %r(1362), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1544)
	movq %rbx, -8(%rbp)		# movq %r(1544), -8(%rbp)
	movq $2, %rbx		# movq $2, %r(1363)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1545)
	movq %rbx, (%r12)		# movq %r(1363), (%r(1545))
	movq $8, %rbx		# movq $8, %r(1546)
	movq %rbx, -200(%rbp)		# movq %r(1546), -200(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1547)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(1548)
	addq %r12, %rbx		# addq %r(1548), %r(1365)
	movq %rbx, -168(%rbp)		# movq %r(1549), -168(%rbp)
	movq $0, %r12		# movq $0, %r(1366)
	movq -168(%rbp), %r13		# movq -168(%rbp), %r(1550)
	movq %r13, -104(%rbp)		# movq %r(1551), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1552)
	addq %r12, %rbx		# addq %r(1366), %r(1552)
	movq %rbx, -104(%rbp)		# movq %r(1552), -104(%rbp)
	movq $1, %rbx		# movq $1, %r(1368)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1553)
	xorq %rbx, %r13		# xorq %r(1368), %r(1369)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1554)
	movq %r13, (%rbx)		# movq %r(1369), (%r(1554))
	movq $1, %r13		# movq $1, %r(1370)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(1555)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1556)
	cmpq %r12, %rbx		# cmpq %r(1556), %r(1555)
	jge .L222		# jge .L222
	.L223:		# .L223:
	movq $0, %r13		# movq $0, %r(1371)
	jmp .L222		# jmp .L222
	.L222:		# .L222:
	movq $8, %r12		# movq $8, %r(1372)
	movq -168(%rbp), %r14		# movq -168(%rbp), %r(1557)
	addq %r12, %r14		# addq %r(1372), %r(1373)
	movq %r13, (%r14)		# movq %r(1297), (%r(1373))
	movq $8, %rbx		# movq $8, %r(1374)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(1558)
	addq %rbx, %r13		# addq %r(1374), %r(1375)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(1559)
	movq %rbx, (%r13)		# movq %r(1559), (%r(1375))
	movq $0, %r13		# movq $0, %r(1376)
	movq $8, %r12		# movq $8, %r(1377)
	movq -144(%rbp), %r14		# movq -144(%rbp), %r(1560)
	subq %r12, %r14		# subq %r(1377), %r(1378)
	movq (%r14), %rbx		# movq (%r(1378)), %r(1379)
	cmpq %rbx, %r13		# cmpq %r(1379), %r(1376)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1380)
	salq $3, %r13		# salq $3, %r(1381)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1561)
	movq %rbx, -264(%rbp)		# movq %r(1562), -264(%rbp)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(1563)
	addq %r13, %r12		# addq %r(1381), %r(1563)
	movq %r12, -264(%rbp)		# movq %r(1563), -264(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1564)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1565)
	imulq %r12, %r13		# imulq %r(1565), %r(1383)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(1566)
	imulq %r12, %r13		# imulq %r(1566), %r(1384)
	movq $17179869184, %r12		# movq $17179869184, %r(1385)
	imulq %r12, %r13		# imulq %r(1385), %r(1386)
	movq $72, %r12		# movq $72, %r(1387)
	addq %r12, %r13		# addq %r(1387), %r(1388)
	movq $128, %r12		# movq $128, %r(1389)
	movq %r13, %rax		# movq %r(1388), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(1389)
	movq %rdx, %rbx		# movq %rdx, %r(1390)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(1567)
	movq %rbx, (%r12)		# movq %r(1390), (%r(1567))
	movq $1, %r12		# movq $1, %r(1391)
	movq %r12, -216(%rbp)		# movq %r(1568), -216(%rbp)
	movq $0, %r13		# movq $0, %r(1392)
	movq $8, %r12		# movq $8, %r(1393)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(1569)
	subq %r12, %r14		# subq %r(1393), %r(1394)
	movq (%r14), %rbx		# movq (%r(1394)), %r(1395)
	cmpq %rbx, %r13		# cmpq %r(1395), %r(1392)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1396)
	salq $3, %r13		# salq $3, %r(1397)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(1570)
	addq %r13, %rbx		# addq %r(1397), %r(1398)
	movq (%rbx), %r12		# movq (%r(1398)), %r(1399)
	movq %r12, -112(%rbp)		# movq %r(1571), -112(%rbp)
	movq $0, %r13		# movq $0, %r(1400)
	movq $8, %r12		# movq $8, %r(1401)
	movq -112(%rbp), %r14		# movq -112(%rbp), %r(1572)
	movq %r14, -208(%rbp)		# movq %r(1573), -208(%rbp)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(1574)
	subq %r12, %rbx		# subq %r(1401), %r(1574)
	movq %rbx, -208(%rbp)		# movq %r(1574), -208(%rbp)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(1575)
	movq (%rbx), %rbx		# movq (%r(1575)), %r(1403)
	cmpq %rbx, %r13		# cmpq %r(1403), %r(1400)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1404)
	salq $3, %r13		# salq $3, %r(1405)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1576)
	addq %r13, %rbx		# addq %r(1405), %r(1406)
	movq (%rbx), %rbx		# movq (%r(1406)), %r(1407)
	testq $1, %rbx		# testq $1, %r(1407)
	jne .L238		# jne .L238
	.L240:		# .L240:
	movq $1, %r13		# movq $1, %r(1408)
	movq $8, %r12		# movq $8, %r(1409)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(1577)
	subq %r12, %r14		# subq %r(1409), %r(1410)
	movq (%r14), %rbx		# movq (%r(1410)), %r(1411)
	cmpq %rbx, %r13		# cmpq %r(1411), %r(1408)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1412)
	salq $3, %r13		# salq $3, %r(1413)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(1578)
	addq %r13, %rbx		# addq %r(1413), %r(1414)
	movq (%rbx), %r12		# movq (%r(1414)), %r(1415)
	movq %r12, -32(%rbp)		# movq %r(1579), -32(%rbp)
	movq $1, %r13		# movq $1, %r(1416)
	movq $8, %r12		# movq $8, %r(1417)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(1580)
	movq %r14, -96(%rbp)		# movq %r(1581), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1582)
	subq %r12, %rbx		# subq %r(1417), %r(1582)
	movq %rbx, -96(%rbp)		# movq %r(1582), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1583)
	movq (%rbx), %rbx		# movq (%r(1583)), %r(1419)
	cmpq %rbx, %r13		# cmpq %r(1419), %r(1416)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1420)
	salq $3, %r13		# salq $3, %r(1421)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1584)
	addq %r13, %rbx		# addq %r(1421), %r(1422)
	movq (%rbx), %rbx		# movq (%r(1422)), %r(1423)
	testq $1, %rbx		# testq $1, %r(1423)
	jne .L238		# jne .L238
	.L239:		# .L239:
	movq $0, %r12		# movq $0, %r(1424)
	movq %r12, -216(%rbp)		# movq %r(1585), -216(%rbp)
	jmp .L238		# jmp .L238
	.L238:		# .L238:
	movq $0, %r13		# movq $0, %r(1425)
	movq $8, %r12		# movq $8, %r(1426)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(1586)
	subq %r12, %r14		# subq %r(1426), %r(1427)
	movq (%r14), %rbx		# movq (%r(1427)), %r(1428)
	cmpq %rbx, %r13		# cmpq %r(1428), %r(1425)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1429)
	salq $3, %r13		# salq $3, %r(1430)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(1587)
	addq %r13, %rbx		# addq %r(1430), %r(1431)
	movq (%rbx), %rbx		# movq (%r(1431)), %r(1432)
	movq %rbx, %r15		# movq %r(1432), %r(1302)
	movq $0, %r12		# movq $0, %r(1433)
	movq $8, %r14		# movq $8, %r(1434)
	movq %r15, %rbx		# movq %r(1302), %r(1588)
	movq %rbx, -176(%rbp)		# movq %r(1588), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(1589)
	subq %r14, %rbx		# subq %r(1434), %r(1589)
	movq %rbx, -176(%rbp)		# movq %r(1589), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(1590)
	movq (%rbx), %rbx		# movq (%r(1590)), %r(1436)
	cmpq %rbx, %r12		# cmpq %r(1436), %r(1433)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(1437)
	salq $3, %r12		# salq $3, %r(1438)
	addq %r12, %r15		# addq %r(1438), %r(1439)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(1591)
	movq %rbx, (%r15)		# movq %r(1591), (%r(1439))
	movq $0, %r13		# movq $0, %r(1440)
	movq $8, %r12		# movq $8, %r(1441)
	movq -144(%rbp), %r14		# movq -144(%rbp), %r(1592)
	subq %r12, %r14		# subq %r(1441), %r(1442)
	movq (%r14), %rbx		# movq (%r(1442)), %r(1443)
	cmpq %rbx, %r13		# cmpq %r(1443), %r(1440)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1444)
	salq $3, %r13		# salq $3, %r(1445)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1593)
	addq %r13, %rbx		# addq %r(1445), %r(1446)
	movq (%rbx), %rbx		# movq (%r(1446)), %r(1447)
	movq %rbx, %rdi		# movq %r(1447), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1335)
	movq %rbx, %rdi		# movq %r(1335), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(1448)
	movq %r12, -288(%rbp)		# movq %r(1594), -288(%rbp)
	movq $0, %r13		# movq $0, %r(1449)
	movq $8, %r12		# movq $8, %r(1450)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(1595)
	subq %r12, %r14		# subq %r(1450), %r(1451)
	movq (%r14), %rbx		# movq (%r(1451)), %r(1452)
	cmpq %rbx, %r13		# cmpq %r(1452), %r(1449)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1453)
	salq $3, %r13		# salq $3, %r(1454)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(1596)
	addq %r13, %rbx		# addq %r(1454), %r(1455)
	movq (%rbx), %rbx		# movq (%r(1455)), %r(1456)
	movq $0, %r13		# movq $0, %r(1457)
	movq $8, %r12		# movq $8, %r(1458)
	movq %rbx, %r14		# movq %r(1317), %r(1459)
	subq %r12, %r14		# subq %r(1458), %r(1459)
	movq (%r14), %r12		# movq (%r(1459)), %r(1460)
	cmpq %r12, %r13		# cmpq %r(1460), %r(1457)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1461)
	salq $3, %r13		# salq $3, %r(1462)
	addq %r13, %rbx		# addq %r(1462), %r(1463)
	movq (%rbx), %r13		# movq (%r(1463)), %r(1464)
	movq $1, %r12		# movq $1, %r(1465)
	xorq %r12, %r13		# xorq %r(1465), %r(1466)
	testq $1, %r13		# testq $1, %r(1466)
	jne .L252		# jne .L252
	.L253:		# .L253:
	movq $1, %r13		# movq $1, %r(1467)
	movq $8, %r12		# movq $8, %r(1468)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(1597)
	subq %r12, %r14		# subq %r(1468), %r(1469)
	movq (%r14), %rbx		# movq (%r(1469)), %r(1470)
	cmpq %rbx, %r13		# cmpq %r(1470), %r(1467)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1471)
	salq $3, %r13		# salq $3, %r(1472)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(1598)
	addq %r13, %rbx		# addq %r(1472), %r(1473)
	movq (%rbx), %rbx		# movq (%r(1473)), %r(1474)
	movq $1, %r13		# movq $1, %r(1475)
	movq $8, %r12		# movq $8, %r(1476)
	movq %rbx, %r14		# movq %r(1321), %r(1477)
	subq %r12, %r14		# subq %r(1476), %r(1477)
	movq (%r14), %r12		# movq (%r(1477)), %r(1478)
	cmpq %r12, %r13		# cmpq %r(1478), %r(1475)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1479)
	salq $3, %r13		# salq $3, %r(1480)
	addq %r13, %rbx		# addq %r(1480), %r(1481)
	movq (%rbx), %rbx		# movq (%r(1481)), %r(1482)
	testq $1, %rbx		# testq $1, %r(1482)
	jne .L251		# jne .L251
	.L252:		# .L252:
	movq $0, %r12		# movq $0, %r(1483)
	movq %r12, -288(%rbp)		# movq %r(1599), -288(%rbp)
	jmp .L251		# jmp .L251
	.L251:		# .L251:
	movq $0, %rbx		# movq $0, %r(1484)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1600)
	addq %rbx, %r13		# addq %r(1484), %r(1485)
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(1601)
	movq %rbx, (%r13)		# movq %r(1601), (%r(1485))
	movq $8, %rbx		# movq $8, %r(1486)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1602)
	addq %rbx, %r13		# addq %r(1486), %r(1487)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1603)
	movq %rbx, (%r13)		# movq %r(1603), (%r(1487))
	jmp .L219		# jmp .L219
	.L219:		# .L219:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $320, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $16, %rbx		# movq $16, %r(1604)
	movq %rbx, %rdi		# movq %r(1604), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1627)
	movq %rbx, -24(%rbp)		# movq %r(1627), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1628)
	movq %r12, -56(%rbp)		# movq %r(1629), -56(%rbp)
	leaq .L255(%rip), %rdi		# leaq .L255(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1630)
	movq %rbx, -16(%rbp)		# movq %r(1630), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(1631)
	movq %rbx, -8(%rbp)		# movq %r(1631), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1632)
	movq %rbx, -40(%rbp)		# movq %r(1632), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(1633)
	movq %rbx, -88(%rbp)		# movq %r(1633), -88(%rbp)
	movq $2, %rbx		# movq $2, %r(1634)
	movq %rbx, -72(%rbp)		# movq %r(1634), -72(%rbp)
	movq $3, %rbx		# movq $3, %r(1635)
	movq %rbx, -80(%rbp)		# movq %r(1635), -80(%rbp)
	movq $4, %rbx		# movq $4, %r(1636)
	movq %rbx, -32(%rbp)		# movq %r(1636), -32(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1637)
	movq %rbx, %rdi		# movq %r(1637), %rdi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1638)
	movq %rbx, %rsi		# movq %r(1638), %rsi
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1639)
	movq %rbx, %rdx		# movq %r(1639), %rdx
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1640)
	movq %rbx, %rcx		# movq %r(1640), %rcx
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1641)
	movq %rbx, %r8		# movq %r(1641), %r8
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1642)
	movq %rbx, %r9		# movq %r(1642), %r9
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1643)
	pushq %rbx		# pushq %r(1643)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1644)
	pushq %rbx		# pushq %r(1644)
	call _IIam____t2baiibbiiiai		# call _IIam____t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1645)
	movq 0(%rbx), %r12		# movq 0(%r(1645)), %r(toB)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1646)
	movq 8(%rbx), %rbx		# movq 8(%r(1646)), %r(1647)
	movq %rbx, -64(%rbp)		# movq %r(1647), -64(%rbp)
	testq $1, %r12		# testq $1, %r(toB)
	jne .L256		# jne .L256
	.L258:		# .L258:
	movq $1, %rbx		# movq $1, %r(1612)
	xorq %rbx, %r12		# xorq %r(1612), %r(1613)
	movq $1, %rbx		# movq $1, %r(1614)
	xorq %rbx, %r12		# xorq %r(1614), %r(1615)
	testq $1, %r12		# testq $1, %r(1615)
	jne .L257		# jne .L257
	.L256:		# .L256:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1648)
	movq %rbx, %rdi		# movq %r(1648), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L257		# jmp .L257
	.L257:		# .L257:
	movq $1, %rbx		# movq $1, %r(1616)
	movq %rbx, %r13		# movq %r(1616), %r(1331)
	movq $0, %r14		# movq $0, %r(1617)
	movq $8, %r12		# movq $8, %r(1618)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1649)
	subq %r12, %rbx		# subq %r(1618), %r(1619)
	movq (%rbx), %rbx		# movq (%r(1619)), %r(1620)
	cmpq %rbx, %r14		# cmpq %r(1620), %r(1617)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r15		# movq $0, %r(1621)
	salq $3, %r15		# salq $3, %r(1622)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(1650)
	movq %r14, -48(%rbp)		# movq %r(1651), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1652)
	addq %r15, %r12		# addq %r(1622), %r(1652)
	movq %r12, -48(%rbp)		# movq %r(1652), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1653)
	movq (%rbx), %rbx		# movq (%r(1653)), %r(1624)
	movq $72, %r12		# movq $72, %r(1625)
	cmpq %r12, %rbx		# cmpq %r(1625), %r(1624)
	je .L261		# je .L261
	.L262:		# .L262:
	movq $0, %r13		# movq $0, %r(1626)
	jmp .L261		# jmp .L261
	.L261:		# .L261:
	movq %r13, %rdi		# movq %r(1331), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L254		# jmp .L254
	.L254:		# .L254:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1666)
	movq %rbx, -16(%rbp)		# movq %r(1666), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1667)
	movq (%rbx), %rbx		# movq (%r(1667)), %r(1654)
	movq %rbx, %r14		# movq %r(1654), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1655)
	salq $3, %rbx		# salq $3, %r(1655)
	movq $8, %r12		# movq $8, %r(1656)
	addq %r12, %rbx		# addq %r(1656), %r(1657)
	movq %rbx, %rdi		# movq %r(1657), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1342)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(1658)
	salq $3, %rbx		# salq $3, %r(1658)
	movq %r13, %r12		# movq %r(1342), %r(1659)
	addq %rbx, %r12		# addq %r(1658), %r(1659)
	movq %r14, %r15		# movq %r(t10), %r(1660)
	salq $3, %r15		# salq $3, %r(1660)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1668)
	movq %rbx, -8(%rbp)		# movq %r(1669), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1670)
	addq %r15, %rbx		# addq %r(1660), %r(1670)
	movq %rbx, -8(%rbp)		# movq %r(1670), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1671)
	movq (%rbx), %rbx		# movq (%r(1671)), %r(1662)
	movq %rbx, (%r12)		# movq %r(1662), (%r(1659))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1663)
	cmpq %rbx, %r14		# cmpq %r(1663), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1664)
	movq %r13, %r12		# movq %r(1342), %r(1665)
	addq %rbx, %r12		# addq %r(1664), %r(1665)
	movq %r12, %rax		# movq %r(1665), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
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
.L255:
	.quad 10
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
