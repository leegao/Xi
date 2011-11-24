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
	leaq .L245(%rip), %rdi		# leaq .L245(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1503)
	leaq .L246(%rip), %rdi		# leaq .L246(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1504)
	movq %rbx, %rdi		# movq %r(1503), %rdi
	movq %r12, %rsi		# movq %r(1504), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(1505)
	movq $24, %rbx		# movq $24, %r(1535)
	movq %rbx, %rdi		# movq %r(1535), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1506)
	movq $2, %rbx		# movq $2, %r(1536)
	movq %rbx, (%r13)		# movq %r(1536), (%r(1506))
	movq $8, %rbx		# movq $8, %r(1537)
	addq %rbx, %r13		# addq %r(1537), %r(1538)
	movq %r13, %r15		# movq %r(1538), %r(1445)
	movq $0, %rbx		# movq $0, %r(1539)
	movq %r15, %r13		# movq %r(1445), %r(1540)
	addq %rbx, %r13		# addq %r(1539), %r(1540)
	movq $100, %rbx		# movq $100, %r(1541)
	movq %rbx, (%r13)		# movq %r(1541), (%r(1540))
	movq $8, %rbx		# movq $8, %r(1542)
	movq %r15, %r12		# movq %r(1445), %r(1543)
	addq %rbx, %r12		# addq %r(1542), %r(1543)
	movq $101, %rbx		# movq $101, %r(1544)
	movq %rbx, (%r12)		# movq %r(1544), (%r(1543))
	movq %r14, %rdi		# movq %r(1505), %rdi
	movq %r15, %rsi		# movq %r(1445), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(1653)
	movq %rbx, -40(%rbp)		# movq %r(1653), -40(%rbp)
	movq $32, %rbx		# movq $32, %r(1545)
	movq %rbx, %rdi		# movq %r(1545), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1508)
	movq $3, %r12		# movq $3, %r(1546)
	movq %r12, (%rbx)		# movq %r(1546), (%r(1508))
	movq $8, %r12		# movq $8, %r(1547)
	addq %r12, %rbx		# addq %r(1547), %r(1548)
	movq %rbx, -128(%rbp)		# movq %r(1654), -128(%rbp)
	movq $0, %rbx		# movq $0, %r(1549)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(1655)
	addq %rbx, %r13		# addq %r(1549), %r(1550)
	movq $1, %rbx		# movq $1, %r(1551)
	movq %rbx, (%r13)		# movq %r(1551), (%r(1550))
	movq $8, %rbx		# movq $8, %r(1552)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(1656)
	addq %rbx, %r13		# addq %r(1552), %r(1553)
	movq $1, %rbx		# movq $1, %r(1554)
	movq %rbx, (%r13)		# movq %r(1554), (%r(1553))
	movq $16, %rbx		# movq $16, %r(1555)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(1657)
	addq %rbx, %r13		# addq %r(1555), %r(1556)
	movq $1, %rbx		# movq $1, %r(1557)
	movq %rbx, (%r13)		# movq %r(1557), (%r(1556))
	movq $32, %rbx		# movq $32, %r(1558)
	movq %rbx, %rdi		# movq %r(1558), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1509)
	movq $3, %r12		# movq $3, %r(1559)
	movq %r12, (%rbx)		# movq %r(1559), (%r(1509))
	movq $8, %r12		# movq $8, %r(1560)
	addq %r12, %rbx		# addq %r(1560), %r(1561)
	movq %rbx, -48(%rbp)		# movq %r(1658), -48(%rbp)
	movq $24, %rbx		# movq $24, %r(1562)
	movq %rbx, %rdi		# movq %r(1562), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1510)
	movq $2, %r12		# movq $2, %r(1563)
	movq %r12, (%r14)		# movq %r(1563), (%r(1510))
	movq $8, %r12		# movq $8, %r(1564)
	addq %r12, %r14		# addq %r(1564), %r(1565)
	movq $0, %r12		# movq $0, %r(1566)
	movq %r14, %rbx		# movq %r(1455), %r(1567)
	addq %r12, %rbx		# addq %r(1566), %r(1567)
	movq $1, %r12		# movq $1, %r(1568)
	movq %r12, (%rbx)		# movq %r(1568), (%r(1567))
	movq $8, %r12		# movq $8, %r(1569)
	movq %r14, %rbx		# movq %r(1455), %r(1570)
	addq %r12, %rbx		# addq %r(1569), %r(1570)
	movq $2, %r12		# movq $2, %r(1571)
	movq %r12, (%rbx)		# movq %r(1571), (%r(1570))
	movq $0, %r13		# movq $0, %r(1572)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1659)
	addq %r13, %rbx		# addq %r(1572), %r(1573)
	movq %r14, (%rbx)		# movq %r(1455), (%r(1573))
	movq $24, %rbx		# movq $24, %r(1574)
	movq %rbx, %rdi		# movq %r(1574), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1511)
	movq $2, %r12		# movq $2, %r(1575)
	movq %r12, (%r14)		# movq %r(1575), (%r(1511))
	movq $8, %r12		# movq $8, %r(1576)
	addq %r12, %r14		# addq %r(1576), %r(1577)
	movq $0, %r12		# movq $0, %r(1578)
	movq %r14, %rbx		# movq %r(1457), %r(1579)
	addq %r12, %rbx		# addq %r(1578), %r(1579)
	movq $3, %r12		# movq $3, %r(1580)
	movq %r12, (%rbx)		# movq %r(1580), (%r(1579))
	movq $8, %r12		# movq $8, %r(1581)
	movq %r14, %rbx		# movq %r(1457), %r(1582)
	addq %r12, %rbx		# addq %r(1581), %r(1582)
	movq $4, %r12		# movq $4, %r(1583)
	movq %r12, (%rbx)		# movq %r(1583), (%r(1582))
	movq $8, %r13		# movq $8, %r(1584)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1660)
	addq %r13, %rbx		# addq %r(1584), %r(1585)
	movq %r14, (%rbx)		# movq %r(1457), (%r(1585))
	movq $24, %rbx		# movq $24, %r(1586)
	movq %rbx, %rdi		# movq %r(1586), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1512)
	movq $2, %r12		# movq $2, %r(1587)
	movq %r12, (%r14)		# movq %r(1587), (%r(1512))
	movq $8, %r12		# movq $8, %r(1588)
	addq %r12, %r14		# addq %r(1588), %r(1589)
	movq $0, %r12		# movq $0, %r(1590)
	movq %r14, %rbx		# movq %r(1459), %r(1591)
	addq %r12, %rbx		# addq %r(1590), %r(1591)
	movq $5, %r12		# movq $5, %r(1592)
	movq %r12, (%rbx)		# movq %r(1592), (%r(1591))
	movq $8, %r12		# movq $8, %r(1593)
	movq %r14, %rbx		# movq %r(1459), %r(1594)
	addq %r12, %rbx		# addq %r(1593), %r(1594)
	movq $6, %r12		# movq $6, %r(1595)
	movq %r12, (%rbx)		# movq %r(1595), (%r(1594))
	movq $16, %r13		# movq $16, %r(1596)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1661)
	addq %r13, %rbx		# addq %r(1596), %r(1597)
	movq %r14, (%rbx)		# movq %r(1459), (%r(1597))
	movq $32, %rbx		# movq $32, %r(1598)
	movq %rbx, %rdi		# movq %r(1598), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1513)
	movq $3, %r12		# movq $3, %r(1599)
	movq %r12, (%rbx)		# movq %r(1599), (%r(1513))
	movq $8, %r12		# movq $8, %r(1600)
	addq %r12, %rbx		# addq %r(1600), %r(1601)
	movq %rbx, -104(%rbp)		# movq %r(1662), -104(%rbp)
	movq $0, %rbx		# movq $0, %r(1602)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1663)
	addq %rbx, %r13		# addq %r(1602), %r(1603)
	movq $1, %rbx		# movq $1, %r(1604)
	movq %rbx, (%r13)		# movq %r(1604), (%r(1603))
	movq $8, %rbx		# movq $8, %r(1605)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1664)
	addq %rbx, %r13		# addq %r(1605), %r(1606)
	movq $2, %rbx		# movq $2, %r(1607)
	movq %rbx, (%r13)		# movq %r(1607), (%r(1606))
	movq $16, %rbx		# movq $16, %r(1608)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1665)
	addq %rbx, %r13		# addq %r(1608), %r(1609)
	movq $3, %rbx		# movq $3, %r(1610)
	movq %rbx, (%r13)		# movq %r(1610), (%r(1609))
	leaq .L247(%rip), %rdi		# leaq .L247(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1666)
	movq %rbx, -80(%rbp)		# movq %r(1666), -80(%rbp)
	movq $16, %rbx		# movq $16, %r(1612)
	movq %rbx, %rdi		# movq %r(1612), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1515)
	movq $1, %r12		# movq $1, %r(1613)
	movq %r12, (%rbx)		# movq %r(1613), (%r(1515))
	movq $8, %r12		# movq $8, %r(1667)
	movq %r12, -72(%rbp)		# movq %r(1667), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1668)
	addq %r12, %rbx		# addq %r(1668), %r(1615)
	movq %rbx, -120(%rbp)		# movq %r(1669), -120(%rbp)
	movq $32, %rbx		# movq $32, %r(1616)
	movq %rbx, %rdi		# movq %r(1616), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1516)
	movq $3, %r12		# movq $3, %r(1617)
	movq %r12, (%rbx)		# movq %r(1617), (%r(1516))
	movq $8, %r12		# movq $8, %r(1670)
	movq %r12, -24(%rbp)		# movq %r(1670), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1671)
	addq %r12, %rbx		# addq %r(1671), %r(1619)
	movq %rbx, -16(%rbp)		# movq %r(1672), -16(%rbp)
	movq $16, %rbx		# movq $16, %r(1620)
	movq %rbx, %rdi		# movq %r(1620), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1517)
	movq $1, %r12		# movq $1, %r(1621)
	movq %r12, (%rbx)		# movq %r(1621), (%r(1517))
	movq $8, %r12		# movq $8, %r(1673)
	movq %r12, -96(%rbp)		# movq %r(1673), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1674)
	addq %r12, %rbx		# addq %r(1674), %r(1623)
	movq %rbx, -56(%rbp)		# movq %r(1675), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(1624)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1676)
	addq %rbx, %r13		# addq %r(1624), %r(1625)
	movq $1, %rbx		# movq $1, %r(1626)
	movq %rbx, (%r13)		# movq %r(1626), (%r(1625))
	movq $0, %rbx		# movq $0, %r(1627)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1677)
	addq %rbx, %r13		# addq %r(1627), %r(1628)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1678)
	movq %rbx, (%r13)		# movq %r(1678), (%r(1628))
	movq $16, %rbx		# movq $16, %r(1629)
	movq %rbx, %rdi		# movq %r(1629), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1518)
	movq $1, %r12		# movq $1, %r(1630)
	movq %r12, (%rbx)		# movq %r(1630), (%r(1518))
	movq $8, %r12		# movq $8, %r(1679)
	movq %r12, -88(%rbp)		# movq %r(1679), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1680)
	addq %r12, %rbx		# addq %r(1680), %r(1632)
	movq %rbx, -136(%rbp)		# movq %r(1681), -136(%rbp)
	movq $0, %rbx		# movq $0, %r(1633)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(1682)
	addq %rbx, %r13		# addq %r(1633), %r(1634)
	movq $1, %rbx		# movq $1, %r(1635)
	movq %rbx, (%r13)		# movq %r(1635), (%r(1634))
	movq $8, %rbx		# movq $8, %r(1636)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1683)
	addq %rbx, %r13		# addq %r(1636), %r(1637)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(1684)
	movq %rbx, (%r13)		# movq %r(1684), (%r(1637))
	movq $16, %rbx		# movq $16, %r(1638)
	movq %rbx, %rdi		# movq %r(1638), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1519)
	movq $1, %r12		# movq $1, %r(1639)
	movq %r12, (%rbx)		# movq %r(1639), (%r(1519))
	movq $8, %r12		# movq $8, %r(1685)
	movq %r12, -8(%rbp)		# movq %r(1685), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1686)
	addq %r12, %rbx		# addq %r(1686), %r(1641)
	movq %rbx, -32(%rbp)		# movq %r(1687), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(1642)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1688)
	addq %rbx, %r13		# addq %r(1642), %r(1643)
	movq $1, %rbx		# movq $1, %r(1644)
	movq %rbx, (%r13)		# movq %r(1644), (%r(1643))
	movq $16, %rbx		# movq $16, %r(1645)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1689)
	addq %rbx, %r13		# addq %r(1645), %r(1646)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1690)
	movq %rbx, (%r13)		# movq %r(1690), (%r(1646))
	movq $0, %rbx		# movq $0, %r(1647)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(1691)
	addq %rbx, %r13		# addq %r(1647), %r(1648)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1692)
	movq %rbx, (%r13)		# movq %r(1692), (%r(1648))
	movq $32, %rbx		# movq $32, %r(1649)
	movq %rbx, %rdi		# movq %r(1649), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1520)
	movq $0, %r13		# movq $0, %r(1650)
	movq $195, %r12		# movq $195, %r(1693)
	movq %r12, -64(%rbp)		# movq %r(1693), -64(%rbp)
	movq $1, %r12		# movq $1, %r(1694)
	movq %r12, -112(%rbp)		# movq %r(1694), -112(%rbp)
	movq %rbx, %rdi		# movq %r(1481), %rdi
	movq %r13, %rsi		# movq %r(1650), %rsi
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1695)
	movq %rbx, %rdx		# movq %r(1695), %rdx
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1696)
	movq %rbx, %rcx		# movq %r(1696), %rcx
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1697)
	movq %rbx, %r8		# movq %r(1697), %r8
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1698)
	movq %rbx, %r9		# movq %r(1698), %r9
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(1699)
	pushq %rbx		# pushq %r(1699)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1700)
	pushq %rbx		# pushq %r(1700)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1701)
	pushq %rbx		# pushq %r(1701)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1702)
	pushq %rbx		# pushq %r(1702)
	call _If_t4iaiaabaibaiabaaiibaiaiaaai		# call _If_t4iaiaabaibaiabaaiibaiaiaaai
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	.L244:		# .L244:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1754)
	movq %rbx, -8(%rbp)		# movq %r(1754), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(a)
	movq %rdx, %rbx		# movq %rdx, %r(b)
	movq %rcx, %rbx		# movq %rcx, %r(c)
	movq %r8, %rbx		# movq %r8, %r(d)
	movq %r9, %rbx		# movq %r9, %r(e)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(f_)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(g)
	movq 32(%rbp), %rbx		# movq 32(%rbp), %r(h)
	movq 40(%rbp), %rbx		# movq 40(%rbp), %r(i)
	movq $0, %rbx		# movq $0, %r(1703)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1755)
	addq %rbx, %r13		# addq %r(1703), %r(1704)
	movq $1, %rbx		# movq $1, %r(1705)
	movq %rbx, (%r13)		# movq %r(1705), (%r(1704))
	movq $32, %rbx		# movq $32, %r(1706)
	movq %rbx, %rdi		# movq %r(1706), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1522)
	movq $3, %r12		# movq $3, %r(1707)
	movq %r12, (%r14)		# movq %r(1707), (%r(1522))
	movq $8, %r12		# movq $8, %r(1708)
	addq %r12, %r14		# addq %r(1708), %r(1709)
	movq $0, %r12		# movq $0, %r(1710)
	movq %r14, %rbx		# movq %r(1495), %r(1711)
	addq %r12, %rbx		# addq %r(1710), %r(1711)
	movq $100, %r12		# movq $100, %r(1712)
	movq %r12, (%rbx)		# movq %r(1712), (%r(1711))
	movq $8, %r12		# movq $8, %r(1713)
	movq %r14, %rbx		# movq %r(1495), %r(1714)
	addq %r12, %rbx		# addq %r(1713), %r(1714)
	movq $3, %r12		# movq $3, %r(1715)
	movq %r12, (%rbx)		# movq %r(1715), (%r(1714))
	movq $16, %r12		# movq $16, %r(1716)
	movq %r14, %rbx		# movq %r(1495), %r(1717)
	addq %r12, %rbx		# addq %r(1716), %r(1717)
	movq $2, %r12		# movq $2, %r(1718)
	movq %r12, (%rbx)		# movq %r(1718), (%r(1717))
	movq $8, %r13		# movq $8, %r(1719)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1756)
	addq %r13, %rbx		# addq %r(1719), %r(1720)
	movq %r14, (%rbx)		# movq %r(1495), (%r(1720))
	movq $24, %rbx		# movq $24, %r(1721)
	movq %rbx, %rdi		# movq %r(1721), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1523)
	movq $2, %r12		# movq $2, %r(1722)
	movq %r12, (%rbx)		# movq %r(1722), (%r(1523))
	movq $8, %r12		# movq $8, %r(1723)
	addq %r12, %rbx		# addq %r(1723), %r(1724)
	movq %rbx, -16(%rbp)		# movq %r(1757), -16(%rbp)
	movq $24, %rbx		# movq $24, %r(1725)
	movq %rbx, %rdi		# movq %r(1725), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1524)
	movq $2, %r12		# movq $2, %r(1726)
	movq %r12, (%r14)		# movq %r(1726), (%r(1524))
	movq $8, %r12		# movq $8, %r(1727)
	addq %r12, %r14		# addq %r(1727), %r(1728)
	movq $0, %r12		# movq $0, %r(1729)
	movq %r14, %rbx		# movq %r(1499), %r(1730)
	addq %r12, %rbx		# addq %r(1729), %r(1730)
	movq $1, %r12		# movq $1, %r(1731)
	movq %r12, (%rbx)		# movq %r(1731), (%r(1730))
	movq $8, %r12		# movq $8, %r(1732)
	movq %r14, %rbx		# movq %r(1499), %r(1733)
	addq %r12, %rbx		# addq %r(1732), %r(1733)
	movq $0, %r12		# movq $0, %r(1734)
	movq %r12, (%rbx)		# movq %r(1734), (%r(1733))
	movq $0, %r13		# movq $0, %r(1735)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1758)
	addq %r13, %rbx		# addq %r(1735), %r(1736)
	movq %r14, (%rbx)		# movq %r(1499), (%r(1736))
	movq $24, %rbx		# movq $24, %r(1737)
	movq %rbx, %rdi		# movq %r(1737), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1525)
	movq $2, %r12		# movq $2, %r(1738)
	movq %r12, (%r14)		# movq %r(1738), (%r(1525))
	movq $8, %r12		# movq $8, %r(1739)
	addq %r12, %r14		# addq %r(1739), %r(1740)
	movq $0, %r12		# movq $0, %r(1741)
	movq %r14, %rbx		# movq %r(1501), %r(1742)
	addq %r12, %rbx		# addq %r(1741), %r(1742)
	movq $0, %r12		# movq $0, %r(1743)
	movq %r12, (%rbx)		# movq %r(1743), (%r(1742))
	movq $8, %r12		# movq $8, %r(1744)
	movq %r14, %rbx		# movq %r(1501), %r(1745)
	addq %r12, %rbx		# addq %r(1744), %r(1745)
	movq $1, %r12		# movq $1, %r(1746)
	movq %r12, (%rbx)		# movq %r(1746), (%r(1745))
	movq $8, %r13		# movq $8, %r(1747)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1759)
	addq %r13, %rbx		# addq %r(1747), %r(1748)
	movq %r14, (%rbx)		# movq %r(1501), (%r(1748))
	movq $16, %rbx		# movq $16, %r(1749)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1760)
	addq %rbx, %r13		# addq %r(1749), %r(1750)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1761)
	movq %rbx, (%r13)		# movq %r(1761), (%r(1750))
	leaq .L250(%rip), %rdi		# leaq .L250(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1526)
	movq $24, %r13		# movq $24, %r(1752)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1762)
	addq %r13, %r14		# addq %r(1752), %r(1753)
	movq %r12, (%r14)		# movq %r(1526), (%r(1753))
	jmp .L249		# jmp .L249
	.L249:		# .L249:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1806)
	movq %rbx, -32(%rbp)		# movq %r(1806), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(1763)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1807)
	subq %rbx, %r13		# subq %r(1763), %r(1764)
	movq (%r13), %r12		# movq (%r(1764)), %r(1765)
	movq %r12, -64(%rbp)		# movq %r(1808), -64(%rbp)
	movq $1, %r12		# movq $1, %r(1766)
	movq %r12, -56(%rbp)		# movq %r(1809), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(1767)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1810)
	cmpq %rbx, %r12		# cmpq %r(1767), %r(1810)
	jne .L133		# jne .L133
	.L134:		# .L134:
	movq $0, %rbx		# movq $0, %r(1768)
	movq %rbx, %rax		# movq %r(1768), %rax
	jmp .L135		# jmp .L135
	.L135:		# .L135:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L133:		# .L133:
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1811)
	salq $3, %r12		# salq $3, %r(1769)
	movq %r12, %rdi		# movq %r(1769), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1527)
	movq $1, %r12		# movq $1, %r(1770)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(1812)
	movq %r14, -72(%rbp)		# movq %r(1813), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1814)
	subq %r12, %rbx		# subq %r(1770), %r(1814)
	movq %rbx, -72(%rbp)		# movq %r(1814), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1815)
	movq %rbx, (%r13)		# movq %r(1815), (%r(1527))
	movq $8, %rbx		# movq $8, %r(1772)
	addq %rbx, %r13		# addq %r(1772), %r(1773)
	movq %r13, -16(%rbp)		# movq %r(1816), -16(%rbp)
	.L136:		# .L136:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1817)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1818)
	cmpq %r12, %rbx		# cmpq %r(1818), %r(1817)
	jge .L137		# jge .L137
	.L138:		# .L138:
	movq $8, %rbx		# movq $8, %r(1774)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1819)
	subq %rbx, %r13		# subq %r(1774), %r(1775)
	movq (%r13), %rbx		# movq (%r(1775)), %r(1776)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1820)
	cmpq %rbx, %r12		# cmpq %r(1776), %r(1820)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1777)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(1821)
	subq %rbx, %r14		# subq %r(1777), %r(1778)
	movq $8, %r13		# movq $8, %r(1779)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1822)
	movq %r12, -24(%rbp)		# movq %r(1823), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1824)
	subq %r13, %rbx		# subq %r(1779), %r(1824)
	movq %rbx, -24(%rbp)		# movq %r(1824), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1825)
	movq (%rbx), %rbx		# movq (%r(1825)), %r(1781)
	cmpq %rbx, %r14		# cmpq %r(1781), %r(602)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1782)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1826)
	addq %r14, %rbx		# addq %r(1782), %r(1783)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(1827)
	salq $3, %r14		# salq $3, %r(1784)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1828)
	movq %r12, -8(%rbp)		# movq %r(1829), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1830)
	addq %r14, %r13		# addq %r(1784), %r(1830)
	movq %r13, -8(%rbp)		# movq %r(1830), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1831)
	movq (%r12), %r12		# movq (%r(1831)), %r(1786)
	movq %r12, (%rbx)		# movq %r(1786), (%r(1783))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1832)
	incq %rbx		# incq %r(1832)
	movq %rbx, -56(%rbp)		# movq %r(1832), -56(%rbp)
	jmp .L136		# jmp .L136
	.L137:		# .L137:
	movq $0, %r13		# movq $0, %r(1787)
	movq $8, %r12		# movq $8, %r(1788)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(1833)
	subq %r12, %r14		# subq %r(1788), %r(1789)
	movq (%r14), %rbx		# movq (%r(1789)), %r(1790)
	cmpq %rbx, %r13		# cmpq %r(1790), %r(1787)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1791)
	salq $3, %r13		# salq $3, %r(1792)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1834)
	addq %r13, %rbx		# addq %r(1792), %r(1793)
	movq (%rbx), %r12		# movq (%r(1793)), %r(1794)
	movq %r12, -56(%rbp)		# movq %r(1835), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(1795)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1836)
	addq %rbx, %r12		# addq %r(1795), %r(1796)
	salq $3, %r12		# salq $3, %r(1797)
	movq %r12, %rdi		# movq %r(1797), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1528)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1837)
	movq %r12, (%rbx)		# movq %r(1837), (%r(1528))
	movq $8, %r12		# movq $8, %r(1798)
	addq %r12, %rbx		# addq %r(1798), %r(1799)
	movq %rbx, -80(%rbp)		# movq %r(1838), -80(%rbp)
	.L142:		# .L142:
	movq $0, %rbx		# movq $0, %r(1800)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1839)
	cmpq %rbx, %r12		# cmpq %r(1800), %r(1839)
	jle .L143		# jle .L143
	.L144:		# .L144:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1840)
	decq %rbx		# decq %r(1840)
	movq %rbx, -56(%rbp)		# movq %r(1840), -56(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1841)
	movq %rbx, %rdi		# movq %r(1841), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1842)
	movq %rbx, -40(%rbp)		# movq %r(1842), -40(%rbp)
	movq $8, %r12		# movq $8, %r(1801)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1843)
	movq %r13, -88(%rbp)		# movq %r(1844), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1845)
	subq %r12, %rbx		# subq %r(1801), %r(1845)
	movq %rbx, -88(%rbp)		# movq %r(1845), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1846)
	movq (%rbx), %rbx		# movq (%r(1846)), %r(1803)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1847)
	cmpq %rbx, %r12		# cmpq %r(1803), %r(1847)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1848)
	salq $3, %r13		# salq $3, %r(1804)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1849)
	movq %rbx, -48(%rbp)		# movq %r(1850), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1851)
	addq %r13, %r12		# addq %r(1804), %r(1851)
	movq %r12, -48(%rbp)		# movq %r(1851), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1852)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1853)
	movq %r12, (%rbx)		# movq %r(1853), (%r(1852))
	jmp .L142		# jmp .L142
	.L143:		# .L143:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1854)
	movq %rbx, %rax		# movq %r(1854), %rax
	jmp .L135		# jmp .L135
	
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
	movq %rdi, %rbx		# movq %rdi, %r(1867)
	movq %rbx, -24(%rbp)		# movq %r(1867), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1868)
	movq (%rbx), %r12		# movq (%r(1868)), %r(1855)
	movq %r12, -16(%rbp)		# movq %r(1869), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1870)
	salq $3, %rbx		# salq $3, %r(1856)
	movq $8, %r12		# movq $8, %r(1857)
	addq %r12, %rbx		# addq %r(1857), %r(1858)
	movq %rbx, %rdi		# movq %r(1858), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1530)
	.L14:		# .L14:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1871)
	salq $3, %r12		# salq $3, %r(1859)
	movq %r14, %r13		# movq %r(1530), %r(1860)
	addq %r12, %r13		# addq %r(1859), %r(1860)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1872)
	movq %rbx, %r12		# movq %r(1872), %r(1861)
	salq $3, %r12		# salq $3, %r(1861)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1873)
	movq %rbx, -8(%rbp)		# movq %r(1874), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1875)
	addq %r12, %rbx		# addq %r(1861), %r(1875)
	movq %rbx, -8(%rbp)		# movq %r(1875), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1876)
	movq (%rbx), %rbx		# movq (%r(1876)), %r(1863)
	movq %rbx, (%r13)		# movq %r(1863), (%r(1860))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1877)
	decq %rbx		# decq %r(1877)
	movq %rbx, -16(%rbp)		# movq %r(1877), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1864)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1878)
	cmpq %rbx, %r12		# cmpq %r(1864), %r(1878)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1865)
	movq %r14, %r12		# movq %r(1530), %r(1866)
	addq %rbx, %r12		# addq %r(1865), %r(1866)
	movq %r12, %rax		# movq %r(1866), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(1902)
	movq %rbx, -64(%rbp)		# movq %r(1902), -64(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1903)
	movq %rbx, -56(%rbp)		# movq %r(1903), -56(%rbp)
	movq $0, %r12		# movq $0, %r(1879)
	movq %r12, -16(%rbp)		# movq %r(1904), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1880)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1905)
	subq %rbx, %r13		# subq %r(1880), %r(1881)
	movq (%r13), %r12		# movq (%r(1881)), %r(1882)
	movq %r12, -24(%rbp)		# movq %r(1906), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1883)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1907)
	subq %rbx, %r13		# subq %r(1883), %r(1884)
	movq (%r13), %rbx		# movq (%r(1884)), %r(1885)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1908)
	addq %rbx, %r12		# addq %r(1885), %r(1886)
	movq %r12, -32(%rbp)		# movq %r(1909), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(1887)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1910)
	addq %rbx, %r13		# addq %r(1887), %r(1888)
	movq %r13, %rdi		# movq %r(1888), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1531)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1911)
	movq %r12, (%rbx)		# movq %r(1911), (%r(1531))
	movq $8, %r12		# movq $8, %r(1889)
	addq %r12, %rbx		# addq %r(1889), %r(1890)
	movq %rbx, -40(%rbp)		# movq %r(1912), -40(%rbp)
	.L17:		# .L17:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1913)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1914)
	cmpq %r12, %rbx		# cmpq %r(1914), %r(1913)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1915)
	salq $3, %r13		# salq $3, %r(1891)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1916)
	movq %rbx, -48(%rbp)		# movq %r(1917), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1918)
	addq %r13, %r12		# addq %r(1891), %r(1918)
	movq %r12, -48(%rbp)		# movq %r(1918), -48(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1919)
	salq $3, %r13		# salq $3, %r(1893)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1920)
	movq %rbx, -8(%rbp)		# movq %r(1921), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1922)
	addq %r13, %r12		# addq %r(1893), %r(1922)
	movq %r12, -8(%rbp)		# movq %r(1922), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1923)
	movq (%rbx), %rbx		# movq (%r(1923)), %r(1895)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1924)
	movq %rbx, (%r12)		# movq %r(1895), (%r(1924))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1925)
	incq %rbx		# incq %r(1925)
	movq %rbx, -16(%rbp)		# movq %r(1925), -16(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	.L20:		# .L20:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1926)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1927)
	cmpq %r12, %rbx		# cmpq %r(1927), %r(1926)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1928)
	salq $3, %r13		# salq $3, %r(1896)
	movq -40(%rbp), %r15		# movq -40(%rbp), %r(1929)
	addq %r13, %r15		# addq %r(1896), %r(1897)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1930)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1931)
	subq %r13, %rbx		# subq %r(1931), %r(1898)
	salq $3, %rbx		# salq $3, %r(1899)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1932)
	addq %rbx, %r12		# addq %r(1899), %r(1900)
	movq (%r12), %rbx		# movq (%r(1900)), %r(1901)
	movq %rbx, (%r15)		# movq %r(1901), (%r(1897))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1933)
	incq %rbx		# incq %r(1933)
	movq %rbx, -16(%rbp)		# movq %r(1933), -16(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1934)
	movq %rbx, %rax		# movq %r(1934), %rax
	.L23:		# .L23:
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
.L245:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

#.section .rodata
.align 8
.L250:
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
.L246:
	.quad 5
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L247:
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

error_outofbounds:
call _I_outOfBounds_p
