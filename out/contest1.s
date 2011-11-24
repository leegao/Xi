.att_syntax prefix
.text
.globl _IIam____t2baiibbiiiai
_IIam____t2baiibbiiiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $304, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1497)
	movq %rbx, -104(%rbp)		# movq %r(1497), -104(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1498)
	movq %rbx, -208(%rbp)		# movq %r(1498), -208(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(1499)
	movq %rbx, -272(%rbp)		# movq %r(1499), -272(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(1500)
	movq %rbx, -288(%rbp)		# movq %r(1500), -288(%rbp)
	movq %r8, %rbx		# movq %r8, %r(1501)
	movq %rbx, -240(%rbp)		# movq %r(1501), -240(%rbp)
	movq %r9, %rbx		# movq %r9, %r(1502)
	movq %rbx, -280(%rbp)		# movq %r(1502), -280(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(1503)
	movq %rbx, -184(%rbp)		# movq %r(1503), -184(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(1504)
	movq %rbx, -112(%rbp)		# movq %r(1504), -112(%rbp)
	movq $24, %rbx		# movq $24, %r(1505)
	movq %rbx, -296(%rbp)		# movq %r(1505), -296(%rbp)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(1506)
	movq %rbx, %rdi		# movq %r(1506), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1507)
	movq %rbx, -120(%rbp)		# movq %r(1507), -120(%rbp)
	movq $2, %rbx		# movq $2, %r(1508)
	movq %rbx, -56(%rbp)		# movq %r(1508), -56(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(1509)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1510)
	movq %r12, (%rbx)		# movq %r(1510), (%r(1509))
	movq $8, %rbx		# movq $8, %r(1511)
	movq %rbx, -72(%rbp)		# movq %r(1511), -72(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1512)
	movq %r12, -168(%rbp)		# movq %r(1513), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(1514)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1515)
	addq %r12, %rbx		# addq %r(1515), %r(1514)
	movq %rbx, -168(%rbp)		# movq %r(1514), -168(%rbp)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(1516)
	movq %r12, -80(%rbp)		# movq %r(1517), -80(%rbp)
	movq $24, %rbx		# movq $24, %r(1518)
	movq %rbx, -136(%rbp)		# movq %r(1518), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(1519)
	movq %rbx, %rdi		# movq %r(1519), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1520)
	movq %rbx, -192(%rbp)		# movq %r(1520), -192(%rbp)
	movq $2, %rbx		# movq $2, %r(1521)
	movq %rbx, -8(%rbp)		# movq %r(1521), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1522)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(1523)
	movq %rbx, (%r12)		# movq %r(1522), (%r(1523))
	movq $8, %rbx		# movq $8, %r(1524)
	movq %rbx, -256(%rbp)		# movq %r(1524), -256(%rbp)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(1525)
	movq %r12, -216(%rbp)		# movq %r(1526), -216(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(1527)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(1528)
	addq %rbx, %r12		# addq %r(1527), %r(1528)
	movq %r12, -216(%rbp)		# movq %r(1528), -216(%rbp)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(1529)
	movq %r12, -48(%rbp)		# movq %r(1530), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(1531)
	movq %rbx, -88(%rbp)		# movq %r(1531), -88(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1532)
	movq %r12, -16(%rbp)		# movq %r(1533), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1534)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1535)
	addq %r12, %rbx		# addq %r(1535), %r(1534)
	movq %rbx, -16(%rbp)		# movq %r(1534), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(1536)
	movq %rbx, -248(%rbp)		# movq %r(1536), -248(%rbp)
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(1537)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(1538)
	xorq %r12, %r13		# xorq %r(1538), %r(1364)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1539)
	movq %r13, (%r12)		# movq %r(1364), (%r(1539))
	movq $1, %r13		# movq $1, %r(1365)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(1540)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(1541)
	cmpq %rbx, %r12		# cmpq %r(1540), %r(1541)
	jl .L220		# jl .L220
	.L221:		# .L221:
	movq $0, %r13		# movq $0, %r(1366)
	jmp .L220		# jmp .L220
	.L220:		# .L220:
	movq $8, %rbx		# movq $8, %r(1542)
	movq %rbx, -24(%rbp)		# movq %r(1542), -24(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1543)
	movq %r12, -144(%rbp)		# movq %r(1544), -144(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1545)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1546)
	addq %rbx, %r12		# addq %r(1545), %r(1546)
	movq %r12, -144(%rbp)		# movq %r(1546), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1547)
	movq %r13, (%rbx)		# movq %r(1303), (%r(1547))
	movq $0, %r12		# movq $0, %r(1369)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1548)
	movq %r13, -176(%rbp)		# movq %r(1549), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(1550)
	addq %r12, %rbx		# addq %r(1369), %r(1550)
	movq %rbx, -176(%rbp)		# movq %r(1550), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(1551)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1552)
	movq %r12, (%rbx)		# movq %r(1552), (%r(1551))
	movq $24, %rbx		# movq $24, %r(1371)
	movq %rbx, %rdi		# movq %r(1371), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1553)
	movq %rbx, -264(%rbp)		# movq %r(1553), -264(%rbp)
	movq $2, %rbx		# movq $2, %r(1372)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(1554)
	movq %rbx, (%r12)		# movq %r(1372), (%r(1554))
	movq $8, %rbx		# movq $8, %r(1555)
	movq %rbx, -128(%rbp)		# movq %r(1555), -128(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(1556)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1557)
	addq %r12, %rbx		# addq %r(1557), %r(1374)
	movq %rbx, -232(%rbp)		# movq %r(1558), -232(%rbp)
	movq $0, %r12		# movq $0, %r(1375)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(1559)
	movq %r13, -96(%rbp)		# movq %r(1560), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1561)
	addq %r12, %rbx		# addq %r(1375), %r(1561)
	movq %rbx, -96(%rbp)		# movq %r(1561), -96(%rbp)
	movq $1, %rbx		# movq $1, %r(1377)
	movq -288(%rbp), %r13		# movq -288(%rbp), %r(1562)
	xorq %rbx, %r13		# xorq %r(1377), %r(1378)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1563)
	movq %r13, (%rbx)		# movq %r(1378), (%r(1563))
	movq $1, %r13		# movq $1, %r(1379)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(1564)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(1565)
	cmpq %r12, %rbx		# cmpq %r(1565), %r(1564)
	jge .L222		# jge .L222
	.L223:		# .L223:
	movq $0, %r13		# movq $0, %r(1380)
	jmp .L222		# jmp .L222
	.L222:		# .L222:
	movq $8, %r12		# movq $8, %r(1381)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(1566)
	addq %r12, %r14		# addq %r(1381), %r(1382)
	movq %r13, (%r14)		# movq %r(1306), (%r(1382))
	movq $8, %rbx		# movq $8, %r(1383)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1567)
	addq %rbx, %r13		# addq %r(1383), %r(1384)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(1568)
	movq %rbx, (%r13)		# movq %r(1568), (%r(1384))
	movq $0, %r13		# movq $0, %r(1385)
	movq $8, %r12		# movq $8, %r(1386)
	movq -112(%rbp), %r14		# movq -112(%rbp), %r(1569)
	subq %r12, %r14		# subq %r(1386), %r(1387)
	movq (%r14), %rbx		# movq (%r(1387)), %r(1388)
	cmpq %rbx, %r13		# cmpq %r(1388), %r(1385)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1389)
	salq $3, %r13		# salq $3, %r(1390)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1570)
	addq %r13, %r12		# addq %r(1390), %r(1391)
	movq -240(%rbp), %r14		# movq -240(%rbp), %r(1571)
	movq -280(%rbp), %r13		# movq -280(%rbp), %r(1572)
	imulq %r13, %r14		# imulq %r(1572), %r(1392)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(1573)
	imulq %r13, %r14		# imulq %r(1573), %r(1393)
	movq $17179869184, %r13		# movq $17179869184, %r(1394)
	imulq %r13, %r14		# imulq %r(1394), %r(1395)
	movq $72, %r13		# movq $72, %r(1396)
	addq %r13, %r14		# addq %r(1396), %r(1397)
	movq $128, %r13		# movq $128, %r(1398)
	movq %r14, %rax		# movq %r(1397), %rax
	cqto		# cqto
	idivq %r13		# idivq %r(1398)
	movq %rdx, %rbx		# movq %rdx, %r(1399)
	movq %rbx, (%r12)		# movq %r(1399), (%r(1391))
	movq $1, %r12		# movq $1, %r(1400)
	movq %r12, -32(%rbp)		# movq %r(1574), -32(%rbp)
	movq $0, %r13		# movq $0, %r(1401)
	movq $8, %r12		# movq $8, %r(1402)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1575)
	subq %r12, %r14		# subq %r(1402), %r(1403)
	movq (%r14), %rbx		# movq (%r(1403)), %r(1404)
	cmpq %rbx, %r13		# cmpq %r(1404), %r(1401)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1405)
	salq $3, %r13		# salq $3, %r(1406)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1576)
	addq %r13, %rbx		# addq %r(1406), %r(1407)
	movq (%rbx), %r12		# movq (%r(1407)), %r(1408)
	movq %r12, -224(%rbp)		# movq %r(1577), -224(%rbp)
	movq $0, %r13		# movq $0, %r(1409)
	movq $8, %r12		# movq $8, %r(1410)
	movq -224(%rbp), %r14		# movq -224(%rbp), %r(1578)
	movq %r14, -40(%rbp)		# movq %r(1579), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1580)
	subq %r12, %rbx		# subq %r(1410), %r(1580)
	movq %rbx, -40(%rbp)		# movq %r(1580), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1581)
	movq (%rbx), %rbx		# movq (%r(1581)), %r(1412)
	cmpq %rbx, %r13		# cmpq %r(1412), %r(1409)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1413)
	salq $3, %r13		# salq $3, %r(1414)
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(1582)
	addq %r13, %rbx		# addq %r(1414), %r(1415)
	movq (%rbx), %rbx		# movq (%r(1415)), %r(1416)
	testq $1, %rbx		# testq $1, %r(1416)
	jne .L238		# jne .L238
	.L240:		# .L240:
	movq $1, %r13		# movq $1, %r(1417)
	movq $8, %r12		# movq $8, %r(1418)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1583)
	subq %r12, %r14		# subq %r(1418), %r(1419)
	movq (%r14), %rbx		# movq (%r(1419)), %r(1420)
	cmpq %rbx, %r13		# cmpq %r(1420), %r(1417)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1421)
	salq $3, %r13		# salq $3, %r(1422)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1584)
	addq %r13, %rbx		# addq %r(1422), %r(1423)
	movq (%rbx), %r12		# movq (%r(1423)), %r(1424)
	movq %r12, -200(%rbp)		# movq %r(1585), -200(%rbp)
	movq $1, %r13		# movq $1, %r(1425)
	movq $8, %r12		# movq $8, %r(1426)
	movq -200(%rbp), %r14		# movq -200(%rbp), %r(1586)
	movq %r14, -152(%rbp)		# movq %r(1587), -152(%rbp)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(1588)
	subq %r12, %rbx		# subq %r(1426), %r(1588)
	movq %rbx, -152(%rbp)		# movq %r(1588), -152(%rbp)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(1589)
	movq (%rbx), %rbx		# movq (%r(1589)), %r(1428)
	cmpq %rbx, %r13		# cmpq %r(1428), %r(1425)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1429)
	salq $3, %r13		# salq $3, %r(1430)
	movq -200(%rbp), %rbx		# movq -200(%rbp), %r(1590)
	addq %r13, %rbx		# addq %r(1430), %r(1431)
	movq (%rbx), %rbx		# movq (%r(1431)), %r(1432)
	testq $1, %rbx		# testq $1, %r(1432)
	jne .L238		# jne .L238
	.L239:		# .L239:
	movq $0, %r12		# movq $0, %r(1433)
	movq %r12, -32(%rbp)		# movq %r(1591), -32(%rbp)
	jmp .L238		# jmp .L238
	.L238:		# .L238:
	movq $0, %r13		# movq $0, %r(1434)
	movq $8, %r12		# movq $8, %r(1435)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1592)
	subq %r12, %r14		# subq %r(1435), %r(1436)
	movq (%r14), %rbx		# movq (%r(1436)), %r(1437)
	cmpq %rbx, %r13		# cmpq %r(1437), %r(1434)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1438)
	salq $3, %r13		# salq $3, %r(1439)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1593)
	addq %r13, %rbx		# addq %r(1439), %r(1440)
	movq (%rbx), %rbx		# movq (%r(1440)), %r(1441)
	movq %rbx, %r15		# movq %r(1441), %r(1311)
	movq $0, %r12		# movq $0, %r(1442)
	movq $8, %r14		# movq $8, %r(1443)
	movq %r15, %rbx		# movq %r(1311), %r(1594)
	movq %rbx, -64(%rbp)		# movq %r(1594), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1595)
	subq %r14, %rbx		# subq %r(1443), %r(1595)
	movq %rbx, -64(%rbp)		# movq %r(1595), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1596)
	movq (%rbx), %rbx		# movq (%r(1596)), %r(1445)
	cmpq %rbx, %r12		# cmpq %r(1445), %r(1442)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(1446)
	salq $3, %r12		# salq $3, %r(1447)
	addq %r12, %r15		# addq %r(1447), %r(1448)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1597)
	movq %rbx, (%r15)		# movq %r(1597), (%r(1448))
	movq $0, %r13		# movq $0, %r(1449)
	movq $8, %r12		# movq $8, %r(1450)
	movq -112(%rbp), %r14		# movq -112(%rbp), %r(1598)
	subq %r12, %r14		# subq %r(1450), %r(1451)
	movq (%r14), %rbx		# movq (%r(1451)), %r(1452)
	cmpq %rbx, %r13		# cmpq %r(1452), %r(1449)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1453)
	salq $3, %r13		# salq $3, %r(1454)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1599)
	addq %r13, %rbx		# addq %r(1454), %r(1455)
	movq (%rbx), %rbx		# movq (%r(1455)), %r(1456)
	movq %rbx, %rdi		# movq %r(1456), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1344)
	movq %rbx, %rdi		# movq %r(1344), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(1457)
	movq %r12, -160(%rbp)		# movq %r(1600), -160(%rbp)
	movq $0, %r13		# movq $0, %r(1458)
	movq $8, %r12		# movq $8, %r(1459)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1601)
	subq %r12, %r14		# subq %r(1459), %r(1460)
	movq (%r14), %rbx		# movq (%r(1460)), %r(1461)
	cmpq %rbx, %r13		# cmpq %r(1461), %r(1458)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1462)
	salq $3, %r13		# salq $3, %r(1463)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1602)
	addq %r13, %rbx		# addq %r(1463), %r(1464)
	movq (%rbx), %rbx		# movq (%r(1464)), %r(1465)
	movq $0, %r13		# movq $0, %r(1466)
	movq $8, %r12		# movq $8, %r(1467)
	movq %rbx, %r14		# movq %r(1326), %r(1468)
	subq %r12, %r14		# subq %r(1467), %r(1468)
	movq (%r14), %r12		# movq (%r(1468)), %r(1469)
	cmpq %r12, %r13		# cmpq %r(1469), %r(1466)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1470)
	salq $3, %r13		# salq $3, %r(1471)
	addq %r13, %rbx		# addq %r(1471), %r(1472)
	movq (%rbx), %r13		# movq (%r(1472)), %r(1473)
	movq $1, %r12		# movq $1, %r(1474)
	xorq %r12, %r13		# xorq %r(1474), %r(1475)
	testq $1, %r13		# testq $1, %r(1475)
	jne .L252		# jne .L252
	.L253:		# .L253:
	movq $1, %r13		# movq $1, %r(1476)
	movq $8, %r12		# movq $8, %r(1477)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1603)
	subq %r12, %r14		# subq %r(1477), %r(1478)
	movq (%r14), %rbx		# movq (%r(1478)), %r(1479)
	cmpq %rbx, %r13		# cmpq %r(1479), %r(1476)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1480)
	salq $3, %r13		# salq $3, %r(1481)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1604)
	addq %r13, %rbx		# addq %r(1481), %r(1482)
	movq (%rbx), %rbx		# movq (%r(1482)), %r(1483)
	movq $1, %r13		# movq $1, %r(1484)
	movq $8, %r12		# movq $8, %r(1485)
	movq %rbx, %r14		# movq %r(1330), %r(1486)
	subq %r12, %r14		# subq %r(1485), %r(1486)
	movq (%r14), %r12		# movq (%r(1486)), %r(1487)
	cmpq %r12, %r13		# cmpq %r(1487), %r(1484)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1488)
	salq $3, %r13		# salq $3, %r(1489)
	addq %r13, %rbx		# addq %r(1489), %r(1490)
	movq (%rbx), %rbx		# movq (%r(1490)), %r(1491)
	testq $1, %rbx		# testq $1, %r(1491)
	jne .L251		# jne .L251
	.L252:		# .L252:
	movq $0, %r12		# movq $0, %r(1492)
	movq %r12, -160(%rbp)		# movq %r(1605), -160(%rbp)
	jmp .L251		# jmp .L251
	.L251:		# .L251:
	movq $0, %rbx		# movq $0, %r(1493)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1606)
	addq %rbx, %r13		# addq %r(1493), %r(1494)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(1607)
	movq %rbx, (%r13)		# movq %r(1607), (%r(1494))
	movq $8, %rbx		# movq $8, %r(1495)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1608)
	addq %rbx, %r13		# addq %r(1495), %r(1496)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1609)
	movq %rbx, (%r13)		# movq %r(1609), (%r(1496))
	jmp .L219		# jmp .L219
	.L219:		# .L219:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $304, %rsp
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
	movq $16, %rbx		# movq $16, %r(1610)
	movq %rbx, %rdi		# movq %r(1610), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1633)
	movq %rbx, -48(%rbp)		# movq %r(1633), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1634)
	movq %r12, -24(%rbp)		# movq %r(1635), -24(%rbp)
	leaq .L255(%rip), %rdi		# leaq .L255(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1636)
	movq %rbx, -40(%rbp)		# movq %r(1636), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(1637)
	movq %rbx, -16(%rbp)		# movq %r(1637), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1638)
	movq %rbx, -88(%rbp)		# movq %r(1638), -88(%rbp)
	movq $1, %rbx		# movq $1, %r(1639)
	movq %rbx, -32(%rbp)		# movq %r(1639), -32(%rbp)
	movq $2, %rbx		# movq $2, %r(1640)
	movq %rbx, -80(%rbp)		# movq %r(1640), -80(%rbp)
	movq $3, %rbx		# movq $3, %r(1641)
	movq %rbx, -72(%rbp)		# movq %r(1641), -72(%rbp)
	movq $4, %rbx		# movq $4, %r(1642)
	movq %rbx, -64(%rbp)		# movq %r(1642), -64(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1643)
	movq %rbx, %rdi		# movq %r(1643), %rdi
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1644)
	movq %rbx, %rsi		# movq %r(1644), %rsi
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1645)
	movq %rbx, %rdx		# movq %r(1645), %rdx
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1646)
	movq %rbx, %rcx		# movq %r(1646), %rcx
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1647)
	movq %rbx, %r8		# movq %r(1647), %r8
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1648)
	movq %rbx, %r9		# movq %r(1648), %r9
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1649)
	pushq %rbx		# pushq %r(1649)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1650)
	pushq %rbx		# pushq %r(1650)
	call _IIam____t2baiibbiiiai		# call _IIam____t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1651)
	movq 0(%rbx), %r12		# movq 0(%r(1651)), %r(toB)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1652)
	movq 8(%rbx), %rbx		# movq 8(%r(1652)), %r(1653)
	movq %rbx, -56(%rbp)		# movq %r(1653), -56(%rbp)
	testq $1, %r12		# testq $1, %r(toB)
	jne .L256		# jne .L256
	.L258:		# .L258:
	movq $1, %rbx		# movq $1, %r(1618)
	xorq %rbx, %r12		# xorq %r(1618), %r(1619)
	movq $1, %rbx		# movq $1, %r(1620)
	xorq %rbx, %r12		# xorq %r(1620), %r(1621)
	testq $1, %r12		# testq $1, %r(1621)
	jne .L257		# jne .L257
	.L256:		# .L256:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1654)
	movq %rbx, %rdi		# movq %r(1654), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L257		# jmp .L257
	.L257:		# .L257:
	movq $1, %rbx		# movq $1, %r(1622)
	movq %rbx, %r13		# movq %r(1622), %r(1340)
	movq $0, %r12		# movq $0, %r(1623)
	movq $8, %r14		# movq $8, %r(1624)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1655)
	subq %r14, %rbx		# subq %r(1624), %r(1625)
	movq (%rbx), %rbx		# movq (%r(1625)), %r(1626)
	cmpq %rbx, %r12		# cmpq %r(1626), %r(1623)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r15		# movq $0, %r(1627)
	salq $3, %r15		# salq $3, %r(1628)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(1656)
	movq %r14, -8(%rbp)		# movq %r(1657), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1658)
	addq %r15, %r12		# addq %r(1628), %r(1658)
	movq %r12, -8(%rbp)		# movq %r(1658), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1659)
	movq (%rbx), %rbx		# movq (%r(1659)), %r(1630)
	movq $72, %r12		# movq $72, %r(1631)
	cmpq %r12, %rbx		# cmpq %r(1631), %r(1630)
	je .L261		# je .L261
	.L262:		# .L262:
	movq $0, %r13		# movq $0, %r(1632)
	jmp .L261		# jmp .L261
	.L261:		# .L261:
	movq %r13, %rdi		# movq %r(1340), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(1672)
	movq %rbx, -8(%rbp)		# movq %r(1672), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1673)
	movq (%rbx), %r12		# movq (%r(1673)), %r(1660)
	movq %r12, -24(%rbp)		# movq %r(1674), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1675)
	salq $3, %rbx		# salq $3, %r(1661)
	movq $8, %r12		# movq $8, %r(1662)
	addq %r12, %rbx		# addq %r(1662), %r(1663)
	movq %rbx, %rdi		# movq %r(1663), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1351)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1676)
	salq $3, %r12		# salq $3, %r(1664)
	movq %r14, %r13		# movq %r(1351), %r(1665)
	addq %r12, %r13		# addq %r(1664), %r(1665)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1677)
	movq %rbx, %r12		# movq %r(1677), %r(1666)
	salq $3, %r12		# salq $3, %r(1666)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1678)
	movq %rbx, -16(%rbp)		# movq %r(1679), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1680)
	addq %r12, %rbx		# addq %r(1666), %r(1680)
	movq %rbx, -16(%rbp)		# movq %r(1680), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1681)
	movq (%rbx), %rbx		# movq (%r(1681)), %r(1668)
	movq %rbx, (%r13)		# movq %r(1668), (%r(1665))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1682)
	decq %rbx		# decq %r(1682)
	movq %rbx, -24(%rbp)		# movq %r(1682), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1669)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1683)
	cmpq %rbx, %r12		# cmpq %r(1669), %r(1683)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1670)
	movq %r14, %r12		# movq %r(1351), %r(1671)
	addq %rbx, %r12		# addq %r(1670), %r(1671)
	movq %r12, %rax		# movq %r(1671), %rax
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
