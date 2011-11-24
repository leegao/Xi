.att_syntax prefix
.text
.globl _Iitoa_aiii
_Iitoa_aiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1557)
	movq %rbx, -8(%rbp)		# movq %r(1557), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1558)
	movq %rbx, -48(%rbp)		# movq %r(1558), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(1513)
	movq %rbx, %rdi		# movq %r(1513), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1501)
	movq $0, %r12		# movq $0, %r(1514)
	movq %r12, (%r13)		# movq %r(1514), (%r(1501))
	movq $8, %r12		# movq $8, %r(1515)
	addq %r12, %r13		# addq %r(1515), %r(1516)
	movq %r13, -88(%rbp)		# movq %r(1559), -88(%rbp)
	jmp .L268		# jmp .L268
	.L268:		# .L268:
	jmp .L269		# jmp .L269
	.L269:		# .L269:
	movq $16, %rbx		# movq $16, %r(1517)
	movq %rbx, %rdi		# movq %r(1517), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1502)
	movq $1, %r12		# movq $1, %r(1518)
	movq %r12, (%rbx)		# movq %r(1518), (%r(1502))
	movq $8, %r12		# movq $8, %r(1519)
	addq %r12, %rbx		# addq %r(1519), %r(1520)
	movq %rbx, -64(%rbp)		# movq %r(1560), -64(%rbp)
	movq $0, %r12		# movq $0, %r(1521)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1561)
	movq %r13, -16(%rbp)		# movq %r(1562), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1563)
	addq %r12, %rbx		# addq %r(1521), %r(1563)
	movq %rbx, -16(%rbp)		# movq %r(1563), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1523)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1564)
	subq %rbx, %r13		# subq %r(1523), %r(1524)
	movq (%r13), %r13		# movq (%r(1524)), %r(1525)
	movq $1, %r12		# movq $1, %r(1526)
	addq %r12, %r13		# addq %r(1526), %r(1527)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1565)
	movq %r13, (%r12)		# movq %r(1527), (%r(1565))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1566)
	movq %rbx, %rdi		# movq %r(1566), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1567)
	movq %rbx, -72(%rbp)		# movq %r(1567), -72(%rbp)
	movq $0, %r12		# movq $0, %r(1528)
	movq %r12, -80(%rbp)		# movq %r(1568), -80(%rbp)
	jmp .L272		# jmp .L272
	.L272:		# .L272:
	movq $8, %rbx		# movq $8, %r(1529)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1569)
	subq %rbx, %r13		# subq %r(1529), %r(1530)
	movq (%r13), %rbx		# movq (%r(1530)), %r(1531)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1570)
	cmpq %rbx, %r12		# cmpq %r(1531), %r(1570)
	jge .L274		# jge .L274
	.L273:		# .L273:
	movq $8, %rbx		# movq $8, %r(1532)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1571)
	subq %rbx, %r13		# subq %r(1532), %r(1533)
	movq (%r13), %rbx		# movq (%r(1533)), %r(1534)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1572)
	cmpq %rbx, %r12		# cmpq %r(1534), %r(1572)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1535)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1573)
	addq %rbx, %r14		# addq %r(1535), %r(1536)
	movq $8, %r13		# movq $8, %r(1537)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1574)
	movq %r12, -56(%rbp)		# movq %r(1575), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1576)
	subq %r13, %rbx		# subq %r(1537), %r(1576)
	movq %rbx, -56(%rbp)		# movq %r(1576), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1577)
	movq (%rbx), %rbx		# movq (%r(1577)), %r(1539)
	cmpq %rbx, %r14		# cmpq %r(1539), %r(1475)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1540)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1578)
	addq %r14, %rbx		# addq %r(1540), %r(1541)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1579)
	salq $3, %r14		# salq $3, %r(1542)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1580)
	movq %r12, -24(%rbp)		# movq %r(1581), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1582)
	addq %r14, %r13		# addq %r(1542), %r(1582)
	movq %r13, -24(%rbp)		# movq %r(1582), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1583)
	movq (%r12), %r12		# movq (%r(1583)), %r(1544)
	movq %r12, (%rbx)		# movq %r(1544), (%r(1541))
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1584)
	incq %rbx		# incq %r(1584)
	movq %rbx, -80(%rbp)		# movq %r(1584), -80(%rbp)
	jmp .L272		# jmp .L272
	.L274:		# .L274:
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1585)
	movq %r12, -88(%rbp)		# movq %r(1586), -88(%rbp)
	movq $0, %r13		# movq $0, %r(1545)
	movq $8, %r12		# movq $8, %r(1546)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(1587)
	movq %r14, -40(%rbp)		# movq %r(1588), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1589)
	subq %r12, %rbx		# subq %r(1546), %r(1589)
	movq %rbx, -40(%rbp)		# movq %r(1589), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1590)
	movq (%rbx), %rbx		# movq (%r(1590)), %r(1548)
	cmpq %rbx, %r13		# cmpq %r(1548), %r(1545)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1549)
	salq $3, %r13		# salq $3, %r(1550)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1591)
	addq %r13, %r12		# addq %r(1550), %r(1551)
	movq $48, %r14		# movq $48, %r(1552)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1592)
	movq %rbx, %rax		# movq %r(1592), %rax
	cqto		# cqto
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1593)
	idivq %rbx		# idivq %r(1593)
	movq %rdx, %rbx		# movq %rdx, %r(1594)
	movq %rbx, -32(%rbp)		# movq %r(1594), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1595)
	addq %rbx, %r14		# addq %r(1595), %r(1554)
	movq %r14, (%r12)		# movq %r(1554), (%r(1551))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1596)
	movq %rbx, %rax		# movq %r(1596), %rax
	cqto		# cqto
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1597)
	idivq %rbx		# idivq %r(1597)
	movq %rax, %r12		# movq %rax, %r(1555)
	movq %r12, -8(%rbp)		# movq %r(1598), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1556)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1599)
	cmpq %rbx, %r12		# cmpq %r(1556), %r(1599)
	jne .L282		# jne .L282
	.L281:		# .L281:
	jmp .L270		# jmp .L270
	.L270:		# .L270:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1600)
	movq %rbx, %rax		# movq %r(1600), %rax
	jmp .L267		# jmp .L267
	.L267:		# .L267:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L282:		# .L282:
	jmp .L268		# jmp .L268
	
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
	movq %rdi, %rbx		# movq %rdi, %r(1681)
	movq %rbx, -32(%rbp)		# movq %r(1681), -32(%rbp)
	movq $153, %rbx		# movq $153, %r(1601)
	movq $10, %r12		# movq $10, %r(1602)
	movq %rbx, %rdi		# movq %r(1601), %rdi
	movq %r12, %rsi		# movq %r(1602), %rsi
	call _Iitoa_aiii		# call _Iitoa_aiii
	movq %rax, %r13		# movq %rax, %r(1504)
	movq $0, %r12		# movq $0, %r(1603)
	movq $8, %r14		# movq $8, %r(1604)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1682)
	subq %r14, %rbx		# subq %r(1604), %r(1605)
	movq (%rbx), %rbx		# movq (%r(1605)), %r(1606)
	cmpq %rbx, %r12		# cmpq %r(1606), %r(1603)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(1607)
	salq $3, %r14		# salq $3, %r(1608)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1683)
	addq %r14, %rbx		# addq %r(1608), %r(1609)
	movq %r13, (%rbx)		# movq %r(1504), (%r(1609))
	movq $1, %rbx		# movq $1, %r(1610)
	movq %rbx, %r13		# movq %r(1610), %r(1485)
	movq $0, %r12		# movq $0, %r(1611)
	movq $8, %r14		# movq $8, %r(1612)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1684)
	subq %r14, %rbx		# subq %r(1612), %r(1613)
	movq (%rbx), %rbx		# movq (%r(1613)), %r(1614)
	cmpq %rbx, %r12		# cmpq %r(1614), %r(1611)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(1615)
	salq $3, %r14		# salq $3, %r(1616)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1685)
	addq %r14, %rbx		# addq %r(1616), %r(1617)
	movq (%rbx), %r14		# movq (%r(1617)), %r(1618)
	movq $8, %r12		# movq $8, %r(1619)
	subq %r12, %r14		# subq %r(1619), %r(1620)
	movq (%r14), %rbx		# movq (%r(1620)), %r(1621)
	movq $3, %r12		# movq $3, %r(1622)
	cmpq %r12, %rbx		# cmpq %r(1622), %r(1621)
	je .L288		# je .L288
	.L289:		# .L289:
	movq $0, %r13		# movq $0, %r(1623)
	jmp .L288		# jmp .L288
	.L288:		# .L288:
	movq %r13, %rdi		# movq %r(1485), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(1624)
	movq %r12, -24(%rbp)		# movq %r(1686), -24(%rbp)
	movq $0, %r13		# movq $0, %r(1625)
	movq $8, %r12		# movq $8, %r(1626)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(1687)
	subq %r12, %r14		# subq %r(1626), %r(1627)
	movq (%r14), %rbx		# movq (%r(1627)), %r(1628)
	cmpq %rbx, %r13		# cmpq %r(1628), %r(1625)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1629)
	salq $3, %r13		# salq $3, %r(1630)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1688)
	addq %r13, %rbx		# addq %r(1630), %r(1631)
	movq (%rbx), %rbx		# movq (%r(1631)), %r(1632)
	movq %rbx, %r15		# movq %r(1632), %r(1488)
	movq $0, %r14		# movq $0, %r(1633)
	movq $8, %r12		# movq $8, %r(1634)
	movq %r15, %rbx		# movq %r(1488), %r(1689)
	movq %rbx, -16(%rbp)		# movq %r(1689), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1690)
	subq %r12, %rbx		# subq %r(1634), %r(1690)
	movq %rbx, -16(%rbp)		# movq %r(1690), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1691)
	movq (%rbx), %rbx		# movq (%r(1691)), %r(1636)
	cmpq %rbx, %r14		# cmpq %r(1636), %r(1633)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(1637)
	salq $3, %r12		# salq $3, %r(1638)
	addq %r12, %r15		# addq %r(1638), %r(1639)
	movq (%r15), %rbx		# movq (%r(1639)), %r(1640)
	movq $49, %r12		# movq $49, %r(1641)
	cmpq %r12, %rbx		# cmpq %r(1641), %r(1640)
	je .L294		# je .L294
	.L295:		# .L295:
	movq $0, %r12		# movq $0, %r(1642)
	movq %r12, -24(%rbp)		# movq %r(1692), -24(%rbp)
	jmp .L294		# jmp .L294
	.L294:		# .L294:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1693)
	movq %rbx, %rdi		# movq %r(1693), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1643)
	movq %rbx, %r15		# movq %r(1643), %r(1495)
	movq $0, %r13		# movq $0, %r(1644)
	movq $8, %r12		# movq $8, %r(1645)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1694)
	subq %r12, %rbx		# subq %r(1645), %r(1646)
	movq (%rbx), %rbx		# movq (%r(1646)), %r(1647)
	cmpq %rbx, %r13		# cmpq %r(1647), %r(1644)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1648)
	salq $3, %r13		# salq $3, %r(1649)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1695)
	addq %r13, %rbx		# addq %r(1649), %r(1650)
	movq (%rbx), %rbx		# movq (%r(1650)), %r(1651)
	movq %rbx, %r12		# movq %r(1651), %r(1493)
	movq $1, %r13		# movq $1, %r(1652)
	movq $8, %r14		# movq $8, %r(1653)
	movq %r12, %rbx		# movq %r(1493), %r(1696)
	movq %rbx, -8(%rbp)		# movq %r(1696), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1697)
	subq %r14, %rbx		# subq %r(1653), %r(1697)
	movq %rbx, -8(%rbp)		# movq %r(1697), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1698)
	movq (%rbx), %rbx		# movq (%r(1698)), %r(1655)
	cmpq %rbx, %r13		# cmpq %r(1655), %r(1652)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1656)
	salq $3, %r13		# salq $3, %r(1657)
	addq %r13, %r12		# addq %r(1657), %r(1658)
	movq (%r12), %rbx		# movq (%r(1658)), %r(1659)
	movq $53, %r12		# movq $53, %r(1660)
	cmpq %r12, %rbx		# cmpq %r(1660), %r(1659)
	je .L300		# je .L300
	.L301:		# .L301:
	movq $0, %rbx		# movq $0, %r(1661)
	movq %rbx, %r15		# movq %r(1661), %r(1495)
	jmp .L300		# jmp .L300
	.L300:		# .L300:
	movq %r15, %rdi		# movq %r(1495), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1662)
	movq %rbx, %r15		# movq %r(1662), %r(1500)
	movq $0, %r12		# movq $0, %r(1663)
	movq $8, %r13		# movq $8, %r(1664)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1699)
	subq %r13, %rbx		# subq %r(1664), %r(1665)
	movq (%rbx), %rbx		# movq (%r(1665)), %r(1666)
	cmpq %rbx, %r12		# cmpq %r(1666), %r(1663)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1667)
	salq $3, %r13		# salq $3, %r(1668)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1700)
	addq %r13, %rbx		# addq %r(1668), %r(1669)
	movq (%rbx), %rbx		# movq (%r(1669)), %r(1670)
	movq %rbx, %r12		# movq %r(1670), %r(1498)
	movq $2, %r13		# movq $2, %r(1671)
	movq $8, %rbx		# movq $8, %r(1672)
	movq %r12, %r14		# movq %r(1498), %r(1673)
	subq %rbx, %r14		# subq %r(1672), %r(1673)
	movq (%r14), %rbx		# movq (%r(1673)), %r(1674)
	cmpq %rbx, %r13		# cmpq %r(1674), %r(1671)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1675)
	salq $3, %r13		# salq $3, %r(1676)
	addq %r13, %r12		# addq %r(1676), %r(1677)
	movq (%r12), %rbx		# movq (%r(1677)), %r(1678)
	movq $51, %r12		# movq $51, %r(1679)
	cmpq %r12, %rbx		# cmpq %r(1679), %r(1678)
	je .L306		# je .L306
	.L307:		# .L307:
	movq $0, %rbx		# movq $0, %r(1680)
	movq %rbx, %r15		# movq %r(1680), %r(1500)
	jmp .L306		# jmp .L306
	.L306:		# .L306:
	movq %r15, %rdi		# movq %r(1500), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L283		# jmp .L283
	.L283:		# .L283:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1744)
	movq %rbx, -80(%rbp)		# movq %r(1744), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(1701)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1745)
	subq %rbx, %r13		# subq %r(1701), %r(1702)
	movq (%r13), %r12		# movq (%r(1702)), %r(1703)
	movq %r12, -32(%rbp)		# movq %r(1746), -32(%rbp)
	movq $1, %r12		# movq $1, %r(1704)
	movq %r12, -40(%rbp)		# movq %r(1747), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(1705)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1748)
	cmpq %rbx, %r12		# cmpq %r(1705), %r(1748)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(1706)
	movq %rbx, %rax		# movq %r(1706), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L69:		# .L69:
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1749)
	salq $3, %r12		# salq $3, %r(1707)
	movq %r12, %rdi		# movq %r(1707), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1509)
	movq $1, %r12		# movq $1, %r(1708)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(1750)
	movq %r14, -64(%rbp)		# movq %r(1751), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1752)
	subq %r12, %rbx		# subq %r(1708), %r(1752)
	movq %rbx, -64(%rbp)		# movq %r(1752), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1753)
	movq %rbx, (%r13)		# movq %r(1753), (%r(1509))
	movq $8, %rbx		# movq $8, %r(1710)
	addq %rbx, %r13		# addq %r(1710), %r(1711)
	movq %r13, -24(%rbp)		# movq %r(1754), -24(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1755)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1756)
	cmpq %rbx, %r12		# cmpq %r(1755), %r(1756)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(1712)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1757)
	subq %rbx, %r13		# subq %r(1712), %r(1713)
	movq (%r13), %rbx		# movq (%r(1713)), %r(1714)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1758)
	cmpq %rbx, %r12		# cmpq %r(1714), %r(1758)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1715)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1759)
	subq %rbx, %r14		# subq %r(1715), %r(1716)
	movq $8, %r13		# movq $8, %r(1717)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1760)
	movq %r12, -56(%rbp)		# movq %r(1761), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1762)
	subq %r13, %rbx		# subq %r(1717), %r(1762)
	movq %rbx, -56(%rbp)		# movq %r(1762), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1763)
	movq (%rbx), %rbx		# movq (%r(1763)), %r(1719)
	cmpq %rbx, %r14		# cmpq %r(1719), %r(70)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1720)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1764)
	addq %r14, %rbx		# addq %r(1720), %r(1721)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1765)
	salq $3, %r14		# salq $3, %r(1722)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1766)
	movq %r12, -48(%rbp)		# movq %r(1767), -48(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1768)
	addq %r14, %r13		# addq %r(1722), %r(1768)
	movq %r13, -48(%rbp)		# movq %r(1768), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1769)
	movq (%r12), %r12		# movq (%r(1769)), %r(1724)
	movq %r12, (%rbx)		# movq %r(1724), (%r(1721))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1770)
	incq %rbx		# incq %r(1770)
	movq %rbx, -40(%rbp)		# movq %r(1770), -40(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(1725)
	movq $8, %r12		# movq $8, %r(1726)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1771)
	subq %r12, %r14		# subq %r(1726), %r(1727)
	movq (%r14), %rbx		# movq (%r(1727)), %r(1728)
	cmpq %rbx, %r13		# cmpq %r(1728), %r(1725)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1729)
	salq $3, %r13		# salq $3, %r(1730)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1772)
	addq %r13, %rbx		# addq %r(1730), %r(1731)
	movq (%rbx), %r12		# movq (%r(1731)), %r(1732)
	movq %r12, -40(%rbp)		# movq %r(1773), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(1733)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1774)
	addq %rbx, %r12		# addq %r(1733), %r(1734)
	salq $3, %r12		# salq $3, %r(1735)
	movq %r12, %rdi		# movq %r(1735), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1510)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1775)
	movq %r12, (%rbx)		# movq %r(1775), (%r(1510))
	movq $8, %r12		# movq $8, %r(1736)
	addq %r12, %rbx		# addq %r(1736), %r(1737)
	movq %rbx, -72(%rbp)		# movq %r(1776), -72(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(1738)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1777)
	cmpq %rbx, %r12		# cmpq %r(1738), %r(1777)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1778)
	decq %rbx		# decq %r(1778)
	movq %rbx, -40(%rbp)		# movq %r(1778), -40(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1779)
	movq %rbx, %rdi		# movq %r(1779), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1780)
	movq %rbx, -8(%rbp)		# movq %r(1780), -8(%rbp)
	movq $8, %r12		# movq $8, %r(1739)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1781)
	movq %r13, -88(%rbp)		# movq %r(1782), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1783)
	subq %r12, %rbx		# subq %r(1739), %r(1783)
	movq %rbx, -88(%rbp)		# movq %r(1783), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1784)
	movq (%rbx), %rbx		# movq (%r(1784)), %r(1741)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1785)
	cmpq %rbx, %r12		# cmpq %r(1741), %r(1785)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1786)
	salq $3, %r13		# salq $3, %r(1742)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1787)
	movq %rbx, -16(%rbp)		# movq %r(1788), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1789)
	addq %r13, %r12		# addq %r(1742), %r(1789)
	movq %r12, -16(%rbp)		# movq %r(1789), -16(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1790)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1791)
	movq %rbx, (%r12)		# movq %r(1790), (%r(1791))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1792)
	movq %rbx, %rax		# movq %r(1792), %rax
	jmp .L71		# jmp .L71
	
error_outofbounds:
call _I_outOfBounds_p
