.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $320, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $0, %r12		# movq $0, %r(1606)
	movq %r12, -152(%rbp)		# movq %r(1726), -152(%rbp)
	leaq .L243(%rip), %rdi		# leaq .L243(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1576)
	leaq .L244(%rip), %rdi		# leaq .L244(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1577)
	movq %rbx, %rdi		# movq %r(1576), %rdi
	movq %r12, %rsi		# movq %r(1577), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(1727)
	movq %rbx, -136(%rbp)		# movq %r(1727), -136(%rbp)
	movq $24, %rbx		# movq $24, %r(1609)
	movq %rbx, %rdi		# movq %r(1609), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1579)
	movq $2, %r12		# movq $2, %r(1610)
	movq %r12, (%rbx)		# movq %r(1610), (%r(1519))
	movq $8, %r12		# movq $8, %r(1611)
	addq %r12, %rbx		# addq %r(1611), %r(1612)
	movq $0, %r12		# movq $0, %r(1613)
	movq %rbx, %r14		# movq %r(1518), %r(1614)
	addq %r12, %r14		# addq %r(1613), %r(1614)
	movq $100, %r12		# movq $100, %r(1615)
	movq %r12, (%r14)		# movq %r(1615), (%r(1614))
	movq $8, %r12		# movq $8, %r(1616)
	movq %rbx, %r14		# movq %r(1518), %r(1617)
	addq %r12, %r14		# addq %r(1616), %r(1617)
	movq $101, %r12		# movq $101, %r(1618)
	movq %r12, (%r14)		# movq %r(1618), (%r(1617))
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1728)
	movq %r12, %rdi		# movq %r(1728), %rdi
	movq %rbx, %rsi		# movq %r(1518), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r12		# movq %rax, %r(1580)
	movq %r12, -184(%rbp)		# movq %r(1729), -184(%rbp)
	movq $32, %rbx		# movq $32, %r(1619)
	movq %rbx, %rdi		# movq %r(1619), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1581)
	movq $3, %r12		# movq $3, %r(1620)
	movq %r12, (%rbx)		# movq %r(1620), (%r(1522))
	movq $8, %r12		# movq $8, %r(1621)
	addq %r12, %rbx		# addq %r(1621), %r(1622)
	movq $0, %r12		# movq $0, %r(1623)
	movq %rbx, %r14		# movq %r(1521), %r(1624)
	addq %r12, %r14		# addq %r(1623), %r(1624)
	movq $1, %r12		# movq $1, %r(1625)
	movq %r12, (%r14)		# movq %r(1625), (%r(1624))
	movq $8, %r12		# movq $8, %r(1626)
	movq %rbx, %r14		# movq %r(1521), %r(1627)
	addq %r12, %r14		# addq %r(1626), %r(1627)
	movq $1, %r12		# movq $1, %r(1628)
	movq %r12, (%r14)		# movq %r(1628), (%r(1627))
	movq $16, %r12		# movq $16, %r(1629)
	movq %rbx, %r14		# movq %r(1521), %r(1630)
	addq %r12, %r14		# addq %r(1629), %r(1630)
	movq $1, %r12		# movq $1, %r(1631)
	movq %r12, (%r14)		# movq %r(1631), (%r(1630))
	movq %rbx, -72(%rbp)		# movq %r(1730), -72(%rbp)
	movq $32, %rbx		# movq $32, %r(1632)
	movq %rbx, %rdi		# movq %r(1632), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1582)
	movq $3, %r12		# movq $3, %r(1633)
	movq %r12, (%r13)		# movq %r(1633), (%r(1527))
	movq $8, %r12		# movq $8, %r(1634)
	addq %r12, %r13		# addq %r(1634), %r(1635)
	movq %r13, -128(%rbp)		# movq %r(1731), -128(%rbp)
	movq $24, %rbx		# movq $24, %r(1636)
	movq %rbx, %rdi		# movq %r(1636), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1583)
	movq $2, %r12		# movq $2, %r(1637)
	movq %r12, (%rbx)		# movq %r(1637), (%r(1529))
	movq $8, %r12		# movq $8, %r(1638)
	addq %r12, %rbx		# addq %r(1638), %r(1639)
	movq $0, %r12		# movq $0, %r(1640)
	movq %rbx, %r14		# movq %r(1528), %r(1641)
	addq %r12, %r14		# addq %r(1640), %r(1641)
	movq $1, %r12		# movq $1, %r(1642)
	movq %r12, (%r14)		# movq %r(1642), (%r(1641))
	movq $8, %r12		# movq $8, %r(1643)
	movq %rbx, %r14		# movq %r(1528), %r(1644)
	addq %r12, %r14		# addq %r(1643), %r(1644)
	movq $2, %r12		# movq $2, %r(1645)
	movq %r12, (%r14)		# movq %r(1645), (%r(1644))
	movq $0, %r13		# movq $0, %r(1646)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(1732)
	addq %r13, %r14		# addq %r(1646), %r(1647)
	movq %rbx, (%r14)		# movq %r(1528), (%r(1647))
	movq $24, %rbx		# movq $24, %r(1648)
	movq %rbx, %rdi		# movq %r(1648), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1584)
	movq $2, %r12		# movq $2, %r(1649)
	movq %r12, (%rbx)		# movq %r(1649), (%r(1531))
	movq $8, %r12		# movq $8, %r(1650)
	addq %r12, %rbx		# addq %r(1650), %r(1651)
	movq $0, %r12		# movq $0, %r(1652)
	movq %rbx, %r14		# movq %r(1530), %r(1653)
	addq %r12, %r14		# addq %r(1652), %r(1653)
	movq $3, %r12		# movq $3, %r(1654)
	movq %r12, (%r14)		# movq %r(1654), (%r(1653))
	movq $8, %r12		# movq $8, %r(1655)
	movq %rbx, %r14		# movq %r(1530), %r(1656)
	addq %r12, %r14		# addq %r(1655), %r(1656)
	movq $4, %r12		# movq $4, %r(1657)
	movq %r12, (%r14)		# movq %r(1657), (%r(1656))
	movq $8, %r13		# movq $8, %r(1658)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(1733)
	addq %r13, %r14		# addq %r(1658), %r(1659)
	movq %rbx, (%r14)		# movq %r(1530), (%r(1659))
	movq $24, %rbx		# movq $24, %r(1660)
	movq %rbx, %rdi		# movq %r(1660), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1585)
	movq $2, %r12		# movq $2, %r(1661)
	movq %r12, (%rbx)		# movq %r(1661), (%r(1533))
	movq $8, %r12		# movq $8, %r(1662)
	addq %r12, %rbx		# addq %r(1662), %r(1663)
	movq $0, %r12		# movq $0, %r(1664)
	movq %rbx, %r14		# movq %r(1532), %r(1665)
	addq %r12, %r14		# addq %r(1664), %r(1665)
	movq $5, %r12		# movq $5, %r(1666)
	movq %r12, (%r14)		# movq %r(1666), (%r(1665))
	movq $8, %r12		# movq $8, %r(1667)
	movq %rbx, %r14		# movq %r(1532), %r(1668)
	addq %r12, %r14		# addq %r(1667), %r(1668)
	movq $6, %r12		# movq $6, %r(1669)
	movq %r12, (%r14)		# movq %r(1669), (%r(1668))
	movq $16, %r13		# movq $16, %r(1670)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(1734)
	addq %r13, %r14		# addq %r(1670), %r(1671)
	movq %rbx, (%r14)		# movq %r(1532), (%r(1671))
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1735)
	movq %r12, -304(%rbp)		# movq %r(1736), -304(%rbp)
	movq $195, %r12		# movq $195, %r(1672)
	movq %r12, -56(%rbp)		# movq %r(1737), -56(%rbp)
	movq $1, %r12		# movq $1, %r(1673)
	movq %r12, -232(%rbp)		# movq %r(1738), -232(%rbp)
	movq $32, %rbx		# movq $32, %r(1674)
	movq %rbx, %rdi		# movq %r(1674), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1586)
	movq %r12, -280(%rbp)		# movq %r(1739), -280(%rbp)
	movq $3, %rbx		# movq $3, %r(1675)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(1740)
	movq %rbx, (%r12)		# movq %r(1675), (%r(1740))
	movq $8, %rbx		# movq $8, %r(1741)
	movq %rbx, -200(%rbp)		# movq %r(1741), -200(%rbp)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(1742)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(1743)
	addq %r12, %rbx		# addq %r(1743), %r(1677)
	movq %rbx, -24(%rbp)		# movq %r(1744), -24(%rbp)
	movq $0, %r12		# movq $0, %r(1678)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1745)
	movq %r13, -88(%rbp)		# movq %r(1746), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1747)
	addq %r12, %rbx		# addq %r(1678), %r(1747)
	movq %rbx, -88(%rbp)		# movq %r(1747), -88(%rbp)
	movq $1, %rbx		# movq $1, %r(1680)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1748)
	movq %rbx, (%r12)		# movq %r(1680), (%r(1748))
	movq $8, %r12		# movq $8, %r(1681)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1749)
	movq %r13, -256(%rbp)		# movq %r(1750), -256(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(1751)
	addq %r12, %rbx		# addq %r(1681), %r(1751)
	movq %rbx, -256(%rbp)		# movq %r(1751), -256(%rbp)
	movq $2, %rbx		# movq $2, %r(1683)
	movq -256(%rbp), %r12		# movq -256(%rbp), %r(1752)
	movq %rbx, (%r12)		# movq %r(1683), (%r(1752))
	movq $16, %r12		# movq $16, %r(1684)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1753)
	movq %r13, -40(%rbp)		# movq %r(1754), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1755)
	addq %r12, %rbx		# addq %r(1684), %r(1755)
	movq %rbx, -40(%rbp)		# movq %r(1755), -40(%rbp)
	movq $3, %rbx		# movq $3, %r(1686)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1756)
	movq %rbx, (%r12)		# movq %r(1686), (%r(1756))
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1757)
	movq %r12, -16(%rbp)		# movq %r(1758), -16(%rbp)
	leaq .L245(%rip), %rdi		# leaq .L245(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1587)
	movq %r12, -104(%rbp)		# movq %r(1759), -104(%rbp)
	movq $16, %rbx		# movq $16, %r(1688)
	movq %rbx, %rdi		# movq %r(1688), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1588)
	movq %r12, -144(%rbp)		# movq %r(1760), -144(%rbp)
	movq $1, %rbx		# movq $1, %r(1689)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1761)
	movq %rbx, (%r12)		# movq %r(1689), (%r(1761))
	movq $8, %rbx		# movq $8, %r(1762)
	movq %rbx, -296(%rbp)		# movq %r(1762), -296(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1763)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(1764)
	addq %r12, %rbx		# addq %r(1764), %r(1691)
	movq %rbx, -240(%rbp)		# movq %r(1765), -240(%rbp)
	movq $32, %rbx		# movq $32, %r(1692)
	movq %rbx, %rdi		# movq %r(1692), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1589)
	movq %r12, -248(%rbp)		# movq %r(1766), -248(%rbp)
	movq $3, %rbx		# movq $3, %r(1693)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(1767)
	movq %rbx, (%r12)		# movq %r(1693), (%r(1767))
	movq $8, %rbx		# movq $8, %r(1768)
	movq %rbx, -264(%rbp)		# movq %r(1768), -264(%rbp)
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(1769)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(1770)
	addq %r12, %rbx		# addq %r(1770), %r(1695)
	movq %rbx, -96(%rbp)		# movq %r(1771), -96(%rbp)
	movq $16, %rbx		# movq $16, %r(1696)
	movq %rbx, %rdi		# movq %r(1696), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1590)
	movq %r12, -168(%rbp)		# movq %r(1772), -168(%rbp)
	movq $1, %rbx		# movq $1, %r(1697)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(1773)
	movq %rbx, (%r12)		# movq %r(1697), (%r(1773))
	movq $8, %rbx		# movq $8, %r(1774)
	movq %rbx, -288(%rbp)		# movq %r(1774), -288(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(1775)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(1776)
	addq %r12, %rbx		# addq %r(1776), %r(1699)
	movq %rbx, -112(%rbp)		# movq %r(1777), -112(%rbp)
	movq $0, %r12		# movq $0, %r(1700)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(1778)
	movq %r13, -192(%rbp)		# movq %r(1779), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(1780)
	addq %r12, %rbx		# addq %r(1700), %r(1780)
	movq %rbx, -192(%rbp)		# movq %r(1780), -192(%rbp)
	movq $1, %rbx		# movq $1, %r(1702)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(1781)
	movq %rbx, (%r12)		# movq %r(1702), (%r(1781))
	movq $0, %r12		# movq $0, %r(1703)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(1782)
	movq %r13, -224(%rbp)		# movq %r(1783), -224(%rbp)
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(1784)
	addq %r12, %rbx		# addq %r(1703), %r(1784)
	movq %rbx, -224(%rbp)		# movq %r(1784), -224(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1785)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(1786)
	movq %rbx, (%r12)		# movq %r(1785), (%r(1786))
	movq $16, %rbx		# movq $16, %r(1705)
	movq %rbx, %rdi		# movq %r(1705), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1591)
	movq %r12, -272(%rbp)		# movq %r(1787), -272(%rbp)
	movq $1, %rbx		# movq $1, %r(1706)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(1788)
	movq %rbx, (%r12)		# movq %r(1706), (%r(1788))
	movq $8, %rbx		# movq $8, %r(1789)
	movq %rbx, -120(%rbp)		# movq %r(1789), -120(%rbp)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(1790)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1791)
	addq %r12, %rbx		# addq %r(1791), %r(1708)
	movq %rbx, -8(%rbp)		# movq %r(1792), -8(%rbp)
	movq $0, %r12		# movq $0, %r(1709)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1793)
	movq %r13, -208(%rbp)		# movq %r(1794), -208(%rbp)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(1795)
	addq %r12, %rbx		# addq %r(1709), %r(1795)
	movq %rbx, -208(%rbp)		# movq %r(1795), -208(%rbp)
	movq $1, %rbx		# movq $1, %r(1711)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(1796)
	movq %rbx, (%r12)		# movq %r(1711), (%r(1796))
	movq $8, %r12		# movq $8, %r(1712)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(1797)
	movq %r13, -176(%rbp)		# movq %r(1798), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(1799)
	addq %r12, %rbx		# addq %r(1712), %r(1799)
	movq %rbx, -176(%rbp)		# movq %r(1799), -176(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1800)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(1801)
	movq %rbx, (%r12)		# movq %r(1800), (%r(1801))
	movq $16, %rbx		# movq $16, %r(1714)
	movq %rbx, %rdi		# movq %r(1714), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1592)
	movq %r12, -32(%rbp)		# movq %r(1802), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(1715)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1803)
	movq %rbx, (%r12)		# movq %r(1715), (%r(1803))
	movq $8, %rbx		# movq $8, %r(1804)
	movq %rbx, -64(%rbp)		# movq %r(1804), -64(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1805)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1806)
	addq %r12, %rbx		# addq %r(1806), %r(1717)
	movq %rbx, -216(%rbp)		# movq %r(1807), -216(%rbp)
	movq $0, %r12		# movq $0, %r(1718)
	movq -216(%rbp), %r13		# movq -216(%rbp), %r(1808)
	movq %r13, -80(%rbp)		# movq %r(1809), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1810)
	addq %r12, %rbx		# addq %r(1718), %r(1810)
	movq %rbx, -80(%rbp)		# movq %r(1810), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(1720)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1811)
	movq %rbx, (%r12)		# movq %r(1720), (%r(1811))
	movq $16, %r12		# movq $16, %r(1721)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(1812)
	movq %r13, -160(%rbp)		# movq %r(1813), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(1814)
	addq %r12, %rbx		# addq %r(1721), %r(1814)
	movq %rbx, -160(%rbp)		# movq %r(1814), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(1815)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(1816)
	movq %r12, (%rbx)		# movq %r(1816), (%r(1815))
	movq $0, %r12		# movq $0, %r(1723)
	movq -240(%rbp), %r13		# movq -240(%rbp), %r(1817)
	movq %r13, -312(%rbp)		# movq %r(1818), -312(%rbp)
	movq -312(%rbp), %rbx		# movq -312(%rbp), %r(1819)
	addq %r12, %rbx		# addq %r(1723), %r(1819)
	movq %rbx, -312(%rbp)		# movq %r(1819), -312(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1820)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(1821)
	movq %rbx, (%r12)		# movq %r(1820), (%r(1821))
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(1822)
	movq %r12, -48(%rbp)		# movq %r(1823), -48(%rbp)
	movq $32, %rbx		# movq $32, %r(1725)
	movq %rbx, %rdi		# movq %r(1725), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1593)
	movq %rbx, %rdi		# movq %r(1554), %rdi
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(1824)
	movq %r12, %rsi		# movq %r(1824), %rsi
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(1825)
	movq %r12, %rdx		# movq %r(1825), %rdx
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1826)
	movq %r12, %rcx		# movq %r(1826), %rcx
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(1827)
	movq %r12, %r8		# movq %r(1827), %r8
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1828)
	movq %r12, %r9		# movq %r(1828), %r9
	movq -232(%rbp), %r12		# movq -232(%rbp), %r(1829)
	pushq %r12		# pushq %r(1829)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1830)
	pushq %r12		# pushq %r(1830)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1831)
	pushq %r12		# pushq %r(1831)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1832)
	pushq %r12		# pushq %r(1832)
	call _If_t4iaiaabaibaiabaaiibaiaiaaai		# call _If_t4iaiaabaibaiabaaiibaiaiaaai
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	movq 0(%rbx), %rbx		# movq 0(%r(1554)), %r(a)
	movq 8(%rbx), %rbx		# movq 8(%r(1554)), %r(b)
	movq 16(%rbx), %rbx		# movq 16(%r(1554)), %r(c)
	.L242:		# .L242:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $320, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1884)
	movq %rbx, -8(%rbp)		# movq %r(1884), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(a)
	movq %rdx, %rbx		# movq %rdx, %r(b)
	movq %rcx, %rbx		# movq %rcx, %r(c)
	movq %r8, %rbx		# movq %r8, %r(d)
	movq %r9, %rbx		# movq %r9, %r(e)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(f_)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(g)
	movq 32(%rbp), %rbx		# movq 32(%rbp), %r(h)
	movq 40(%rbp), %rbx		# movq 40(%rbp), %r(i)
	movq $0, %rbx		# movq $0, %r(1833)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1885)
	addq %rbx, %r13		# addq %r(1833), %r(1834)
	movq $1, %rbx		# movq $1, %r(1835)
	movq %rbx, (%r13)		# movq %r(1835), (%r(1834))
	movq $32, %rbx		# movq $32, %r(1836)
	movq %rbx, %rdi		# movq %r(1836), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1595)
	movq $3, %r12		# movq $3, %r(1837)
	movq %r12, (%rbx)		# movq %r(1837), (%r(1569))
	movq $8, %r12		# movq $8, %r(1838)
	addq %r12, %rbx		# addq %r(1838), %r(1839)
	movq $0, %r12		# movq $0, %r(1840)
	movq %rbx, %r14		# movq %r(1568), %r(1841)
	addq %r12, %r14		# addq %r(1840), %r(1841)
	movq $100, %r12		# movq $100, %r(1842)
	movq %r12, (%r14)		# movq %r(1842), (%r(1841))
	movq $8, %r12		# movq $8, %r(1843)
	movq %rbx, %r14		# movq %r(1568), %r(1844)
	addq %r12, %r14		# addq %r(1843), %r(1844)
	movq $3, %r12		# movq $3, %r(1845)
	movq %r12, (%r14)		# movq %r(1845), (%r(1844))
	movq $16, %r12		# movq $16, %r(1846)
	movq %rbx, %r14		# movq %r(1568), %r(1847)
	addq %r12, %r14		# addq %r(1846), %r(1847)
	movq $2, %r12		# movq $2, %r(1848)
	movq %r12, (%r14)		# movq %r(1848), (%r(1847))
	movq $8, %r13		# movq $8, %r(1849)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1886)
	addq %r13, %r14		# addq %r(1849), %r(1850)
	movq %rbx, (%r14)		# movq %r(1568), (%r(1850))
	movq $24, %rbx		# movq $24, %r(1851)
	movq %rbx, %rdi		# movq %r(1851), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1596)
	movq $2, %r12		# movq $2, %r(1852)
	movq %r12, (%r13)		# movq %r(1852), (%r(1571))
	movq $8, %r12		# movq $8, %r(1853)
	addq %r12, %r13		# addq %r(1853), %r(1854)
	movq %r13, -16(%rbp)		# movq %r(1887), -16(%rbp)
	movq $24, %rbx		# movq $24, %r(1855)
	movq %rbx, %rdi		# movq %r(1855), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1597)
	movq $2, %r12		# movq $2, %r(1856)
	movq %r12, (%rbx)		# movq %r(1856), (%r(1573))
	movq $8, %r12		# movq $8, %r(1857)
	addq %r12, %rbx		# addq %r(1857), %r(1858)
	movq $0, %r12		# movq $0, %r(1859)
	movq %rbx, %r14		# movq %r(1572), %r(1860)
	addq %r12, %r14		# addq %r(1859), %r(1860)
	movq $1, %r12		# movq $1, %r(1861)
	movq %r12, (%r14)		# movq %r(1861), (%r(1860))
	movq $8, %r12		# movq $8, %r(1862)
	movq %rbx, %r14		# movq %r(1572), %r(1863)
	addq %r12, %r14		# addq %r(1862), %r(1863)
	movq $0, %r12		# movq $0, %r(1864)
	movq %r12, (%r14)		# movq %r(1864), (%r(1863))
	movq $0, %r13		# movq $0, %r(1865)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1888)
	addq %r13, %r14		# addq %r(1865), %r(1866)
	movq %rbx, (%r14)		# movq %r(1572), (%r(1866))
	movq $24, %rbx		# movq $24, %r(1867)
	movq %rbx, %rdi		# movq %r(1867), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1598)
	movq $2, %r12		# movq $2, %r(1868)
	movq %r12, (%rbx)		# movq %r(1868), (%r(1575))
	movq $8, %r12		# movq $8, %r(1869)
	addq %r12, %rbx		# addq %r(1869), %r(1870)
	movq $0, %r12		# movq $0, %r(1871)
	movq %rbx, %r14		# movq %r(1574), %r(1872)
	addq %r12, %r14		# addq %r(1871), %r(1872)
	movq $0, %r12		# movq $0, %r(1873)
	movq %r12, (%r14)		# movq %r(1873), (%r(1872))
	movq $8, %r12		# movq $8, %r(1874)
	movq %rbx, %r14		# movq %r(1574), %r(1875)
	addq %r12, %r14		# addq %r(1874), %r(1875)
	movq $1, %r12		# movq $1, %r(1876)
	movq %r12, (%r14)		# movq %r(1876), (%r(1875))
	movq $8, %r13		# movq $8, %r(1877)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1889)
	addq %r13, %r14		# addq %r(1877), %r(1878)
	movq %rbx, (%r14)		# movq %r(1574), (%r(1878))
	movq $16, %rbx		# movq $16, %r(1879)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1890)
	addq %rbx, %r13		# addq %r(1879), %r(1880)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1891)
	movq %rbx, (%r13)		# movq %r(1891), (%r(1880))
	leaq .L248(%rip), %rdi		# leaq .L248(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1599)
	movq $24, %r12		# movq $24, %r(1882)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1892)
	addq %r12, %r14		# addq %r(1882), %r(1883)
	movq %r13, (%r14)		# movq %r(1599), (%r(1883))
	jmp .L247		# jmp .L247
	.L247:		# .L247:
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
	subq $160, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1933)
	movq %rbx, -32(%rbp)		# movq %r(1933), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(1893)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1934)
	subq %rbx, %r13		# subq %r(1893), %r(1894)
	movq (%r13), %r12		# movq (%r(1894)), %r(1895)
	movq %r12, -104(%rbp)		# movq %r(1935), -104(%rbp)
	movq $1, %r12		# movq $1, %r(1896)
	movq %r12, -80(%rbp)		# movq %r(1936), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(1897)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1937)
	cmpq %rbx, %r12		# cmpq %r(1897), %r(1937)
	jne .L131		# jne .L131
	.L132:		# .L132:
	movq $0, %rbx		# movq $0, %r(1898)
	movq %rbx, %rax		# movq %r(1898), %rax
	jmp .L133		# jmp .L133
	.L131:		# .L131:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1938)
	movq %rbx, %rdi		# movq %r(1938), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1600)
	movq $1, %r13		# movq $1, %r(1899)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1939)
	movq %rbx, -112(%rbp)		# movq %r(1940), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1941)
	subq %r13, %r12		# subq %r(1899), %r(1941)
	movq %r12, -112(%rbp)		# movq %r(1941), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1942)
	movq %r12, (%r14)		# movq %r(1942), (%r(657))
	movq $8, %r12		# movq $8, %r(1901)
	addq %r12, %r14		# addq %r(1901), %r(1902)
	movq %r14, -96(%rbp)		# movq %r(1943), -96(%rbp)
	.L134:		# .L134:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1944)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1945)
	cmpq %r12, %rbx		# cmpq %r(1945), %r(1944)
	jge .L135		# jge .L135
	.L136:		# .L136:
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1946)
	movq %r12, -64(%rbp)		# movq %r(1947), -64(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1948)
	movq %r12, -88(%rbp)		# movq %r(1949), -88(%rbp)
	movq $8, %r12		# movq $8, %r(1903)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1950)
	movq %r13, -48(%rbp)		# movq %r(1951), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1952)
	subq %r12, %rbx		# subq %r(1903), %r(1952)
	movq %rbx, -48(%rbp)		# movq %r(1952), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1953)
	movq (%rbx), %rbx		# movq (%r(1953)), %r(1905)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1954)
	cmpq %rbx, %r12		# cmpq %r(1905), %r(1954)
	jae error_outofbounds		# jae error_outofbounds
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1955)
	movq %r12, -72(%rbp)		# movq %r(1956), -72(%rbp)
	movq $1, %r12		# movq $1, %r(1906)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1957)
	movq %r13, -128(%rbp)		# movq %r(1958), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1959)
	subq %r12, %rbx		# subq %r(1906), %r(1959)
	movq %rbx, -128(%rbp)		# movq %r(1959), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1960)
	movq %r12, -136(%rbp)		# movq %r(1961), -136(%rbp)
	movq $8, %r12		# movq $8, %r(1908)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1962)
	movq %r13, -16(%rbp)		# movq %r(1963), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1964)
	subq %r12, %rbx		# subq %r(1908), %r(1964)
	movq %rbx, -16(%rbp)		# movq %r(1964), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1965)
	movq (%rbx), %rbx		# movq (%r(1965)), %r(1910)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1966)
	cmpq %rbx, %r12		# cmpq %r(1910), %r(1966)
	jae error_outofbounds		# jae error_outofbounds
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(1967)
	salq $3, %r13		# salq $3, %r(1911)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1968)
	movq %rbx, -24(%rbp)		# movq %r(1969), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1970)
	addq %r13, %r12		# addq %r(1911), %r(1970)
	movq %r12, -24(%rbp)		# movq %r(1970), -24(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1971)
	movq %r12, -120(%rbp)		# movq %r(1972), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(1973)
	salq $3, %rbx		# salq $3, %r(1973)
	movq %rbx, -120(%rbp)		# movq %r(1973), -120(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1974)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1975)
	addq %r12, %r13		# addq %r(1975), %r(1914)
	movq (%r13), %rbx		# movq (%r(1914)), %r(1915)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1976)
	movq %rbx, (%r12)		# movq %r(1915), (%r(1976))
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1977)
	incq %rbx		# incq %r(1977)
	movq %rbx, -80(%rbp)		# movq %r(1977), -80(%rbp)
	jmp .L134		# jmp .L134
	.L135:		# .L135:
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(1978)
	movq $0, %r12		# movq $0, %r(1916)
	movq %r12, %r14		# movq %r(1916), %r(664)
	movq $8, %r12		# movq $8, %r(1917)
	movq %r15, %r13		# movq %r(663), %r(1918)
	subq %r12, %r13		# subq %r(1917), %r(1918)
	movq (%r13), %r12		# movq (%r(1918)), %r(1919)
	cmpq %r12, %r14		# cmpq %r(1919), %r(664)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(664), %r(1920)
	salq $3, %r12		# salq $3, %r(1920)
	movq %r15, %rbx		# movq %r(663), %r(1921)
	addq %r12, %rbx		# addq %r(1920), %r(1921)
	movq (%rbx), %r12		# movq (%r(1921)), %r(1922)
	movq %r12, -80(%rbp)		# movq %r(1979), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(1923)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1980)
	addq %rbx, %r13		# addq %r(1923), %r(1924)
	movq %r13, %rdi		# movq %r(1924), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1601)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1981)
	movq %r12, (%rbx)		# movq %r(1981), (%r(666))
	movq $8, %r12		# movq $8, %r(1925)
	addq %r12, %rbx		# addq %r(1925), %r(1926)
	movq %rbx, -56(%rbp)		# movq %r(1982), -56(%rbp)
	.L140:		# .L140:
	movq $0, %rbx		# movq $0, %r(1927)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1983)
	cmpq %rbx, %r12		# cmpq %r(1927), %r(1983)
	jle .L141		# jle .L141
	.L142:		# .L142:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1984)
	decq %rbx		# decq %r(1984)
	movq %rbx, -80(%rbp)		# movq %r(1984), -80(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1985)
	movq %rbx, %rdi		# movq %r(1985), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1602)
	movq %rbx, -144(%rbp)		# movq %r(1986), -144(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1987)
	movq %r12, -40(%rbp)		# movq %r(1988), -40(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1989)
	movq $8, %r13		# movq $8, %r(1928)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1990)
	movq %r14, -8(%rbp)		# movq %r(1991), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1992)
	subq %r13, %r12		# subq %r(1928), %r(1992)
	movq %r12, -8(%rbp)		# movq %r(1992), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1993)
	movq (%r12), %r12		# movq (%r(1993)), %r(1930)
	cmpq %r12, %rbx		# cmpq %r(1930), %r(671)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1931)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1994)
	addq %rbx, %r13		# addq %r(1931), %r(1932)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1995)
	movq %rbx, (%r13)		# movq %r(1995), (%r(1932))
	jmp .L140		# jmp .L140
	.L141:		# .L141:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1996)
	movq %rbx, %rax		# movq %r(1996), %rax
	jmp .L133		# jmp .L133
	.L133:		# .L133:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $160, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(2012)
	movq %rbx, -16(%rbp)		# movq %r(2012), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2013)
	movq (%rbx), %r12		# movq (%r(2013)), %r(1997)
	movq %r12, -32(%rbp)		# movq %r(2014), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2015)
	salq $3, %rbx		# salq $3, %r(1998)
	movq $8, %r12		# movq $8, %r(1999)
	addq %r12, %rbx		# addq %r(1999), %r(2000)
	movq %rbx, %rdi		# movq %r(2000), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1603)
	movq %r12, -40(%rbp)		# movq %r(2016), -40(%rbp)
	.L14:		# .L14:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2017)
	salq $3, %r13		# salq $3, %r(2001)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2018)
	addq %r13, %r12		# addq %r(2001), %r(2002)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2019)
	movq %r13, -24(%rbp)		# movq %r(2020), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2021)
	salq $3, %rbx		# salq $3, %r(2021)
	movq %rbx, -24(%rbp)		# movq %r(2021), -24(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2022)
	movq %r13, -8(%rbp)		# movq %r(2009), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2010)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2023)
	addq %r13, %rbx		# addq %r(2023), %r(2010)
	movq %rbx, -8(%rbp)		# movq %r(2010), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2011)
	movq (%rbx), %rbx		# movq (%r(2011)), %r(2005)
	movq %rbx, (%r12)		# movq %r(2005), (%r(2002))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2024)
	decq %rbx		# decq %r(2024)
	movq %rbx, -32(%rbp)		# movq %r(2024), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(2006)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2025)
	cmpq %rbx, %r12		# cmpq %r(2006), %r(2025)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(2007)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2026)
	addq %rbx, %r13		# addq %r(2007), %r(2008)
	movq %r13, %rax		# movq %r(2008), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(2050)
	movq %rbx, -32(%rbp)		# movq %r(2050), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2051)
	movq %rbx, -8(%rbp)		# movq %r(2051), -8(%rbp)
	movq $0, %r12		# movq $0, %r(2027)
	movq %r12, -48(%rbp)		# movq %r(2052), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(2028)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2053)
	subq %rbx, %r13		# subq %r(2028), %r(2029)
	movq (%r13), %r12		# movq (%r(2029)), %r(2030)
	movq %r12, -24(%rbp)		# movq %r(2054), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(2031)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2055)
	subq %rbx, %r13		# subq %r(2031), %r(2032)
	movq (%r13), %rbx		# movq (%r(2032)), %r(2033)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2056)
	addq %rbx, %r12		# addq %r(2033), %r(2034)
	movq %r12, -16(%rbp)		# movq %r(2057), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(2035)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2058)
	addq %rbx, %r13		# addq %r(2035), %r(2036)
	movq %r13, %rdi		# movq %r(2036), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1604)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2059)
	movq %r12, (%r13)		# movq %r(2059), (%r(25))
	movq $8, %r12		# movq $8, %r(2037)
	addq %r12, %r13		# addq %r(2037), %r(2038)
	movq %r13, -40(%rbp)		# movq %r(2060), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2061)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2062)
	cmpq %rbx, %r12		# cmpq %r(2061), %r(2062)
	jge .L18		# jge .L18
	.L17:		# .L17:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2063)
	salq $3, %r13		# salq $3, %r(2039)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2064)
	movq %rbx, -56(%rbp)		# movq %r(2065), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2066)
	addq %r13, %r12		# addq %r(2039), %r(2066)
	movq %r12, -56(%rbp)		# movq %r(2066), -56(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2067)
	salq $3, %r13		# salq $3, %r(2041)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2068)
	movq %rbx, -64(%rbp)		# movq %r(2069), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2070)
	addq %r13, %r12		# addq %r(2041), %r(2070)
	movq %r12, -64(%rbp)		# movq %r(2070), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2071)
	movq (%rbx), %rbx		# movq (%r(2071)), %r(2043)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2072)
	movq %rbx, (%r12)		# movq %r(2043), (%r(2072))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2073)
	incq %rbx		# incq %r(2073)
	movq %rbx, -48(%rbp)		# movq %r(2073), -48(%rbp)
	jmp .L16		# jmp .L16
	.L18:		# .L18:
	.L19:		# .L19:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2074)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2075)
	cmpq %rbx, %r12		# cmpq %r(2074), %r(2075)
	jge .L21		# jge .L21
	.L20:		# .L20:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2076)
	salq $3, %r13		# salq $3, %r(2044)
	movq -40(%rbp), %r15		# movq -40(%rbp), %r(2077)
	addq %r13, %r15		# addq %r(2044), %r(2045)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2078)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2079)
	subq %r13, %rbx		# subq %r(2079), %r(2046)
	salq $3, %rbx		# salq $3, %r(2047)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2080)
	addq %rbx, %r12		# addq %r(2047), %r(2048)
	movq (%r12), %rbx		# movq (%r(2048)), %r(2049)
	movq %rbx, (%r15)		# movq %r(2049), (%r(2045))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2081)
	incq %rbx		# incq %r(2081)
	movq %rbx, -48(%rbp)		# movq %r(2081), -48(%rbp)
	jmp .L19		# jmp .L19
	.L21:		# .L21:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2082)
	movq %rbx, %rax		# movq %r(2082), %rax
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
.L244:
	.quad 5
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L243:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

#.section .rodata
.align 8
.L248:
	.quad 7
	.quad 78
	.quad 111
	.quad 116
	.quad 104
	.quad 105
	.quad 110
	.quad 103
	.text

error_outofbounds:
call _I_outOfBounds_p
