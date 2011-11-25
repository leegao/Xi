.att_syntax prefix
.text
.globl _Iitoa_aiii
_Iitoa_aiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $144, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1668)
	movq %rbx, -80(%rbp)		# movq %r(1668), -80(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1669)
	movq %rbx, -8(%rbp)		# movq %r(1669), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(1624)
	movq %rbx, %rdi		# movq %r(1624), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1612)
	movq $0, %rbx		# movq $0, %r(1625)
	movq %rbx, (%r14)		# movq %r(1625), (%r(1612))
	movq $8, %rbx		# movq $8, %r(1626)
	movq %r14, %r13		# movq %r(1612), %r(1627)
	addq %rbx, %r13		# addq %r(1626), %r(1627)
	movq %r13, %rbx		# movq %r(1627), %r(1579)
	movq %rbx, %r13		# movq %r(1579), %r(1670)
	movq %r13, -96(%rbp)		# movq %r(1670), -96(%rbp)
	jmp .L268		# jmp .L268
	.L268:		# .L268:
	jmp .L269		# jmp .L269
	.L269:		# .L269:
	movq $16, %rbx		# movq $16, %r(1628)
	movq %rbx, %rdi		# movq %r(1628), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1613)
	movq $1, %rbx		# movq $1, %r(1629)
	movq %rbx, (%r14)		# movq %r(1629), (%r(1613))
	movq $8, %r13		# movq $8, %r(1630)
	movq %r14, %r12		# movq %r(1613), %r(1671)
	movq %r12, -64(%rbp)		# movq %r(1671), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1672)
	addq %r13, %rbx		# addq %r(1630), %r(1672)
	movq %rbx, -64(%rbp)		# movq %r(1672), -64(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1673)
	movq %r13, %rbx		# movq %r(1673), %r(1674)
	movq %rbx, -16(%rbp)		# movq %r(1674), -16(%rbp)
	movq $0, %r13		# movq $0, %r(1632)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1675)
	movq %r14, %rbx		# movq %r(1675), %r(1676)
	movq %rbx, -104(%rbp)		# movq %r(1676), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1677)
	addq %r13, %rbx		# addq %r(1632), %r(1677)
	movq %rbx, -104(%rbp)		# movq %r(1677), -104(%rbp)
	movq $8, %r13		# movq $8, %r(1634)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(1678)
	movq %r14, %rbx		# movq %r(1678), %r(1679)
	movq %rbx, -32(%rbp)		# movq %r(1679), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1680)
	subq %r13, %rbx		# subq %r(1634), %r(1680)
	movq %rbx, -32(%rbp)		# movq %r(1680), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1681)
	movq (%rbx), %r13		# movq (%r(1681)), %r(1636)
	movq $1, %rbx		# movq $1, %r(1682)
	movq %rbx, -120(%rbp)		# movq %r(1682), -120(%rbp)
	movq %r13, %r12		# movq %r(1636), %r(1683)
	movq %r12, -72(%rbp)		# movq %r(1683), -72(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(1684)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1685)
	addq %rbx, %r12		# addq %r(1684), %r(1685)
	movq %r12, -72(%rbp)		# movq %r(1685), -72(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1686)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1687)
	movq %r12, (%rbx)		# movq %r(1687), (%r(1686))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1688)
	movq %rbx, %rdi		# movq %r(1688), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1689)
	movq %rbx, -24(%rbp)		# movq %r(1689), -24(%rbp)
	movq $0, %r13		# movq $0, %r(1639)
	movq %r13, %rbx		# movq %r(1639), %r(1690)
	movq %rbx, -48(%rbp)		# movq %r(1690), -48(%rbp)
	jmp .L272		# jmp .L272
	.L272:		# .L272:
	movq $8, %rbx		# movq $8, %r(1640)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(1691)
	movq %r14, %r12		# movq %r(1691), %r(1641)
	subq %rbx, %r12		# subq %r(1640), %r(1641)
	movq (%r12), %rbx		# movq (%r(1641)), %r(1642)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1692)
	cmpq %rbx, %r12		# cmpq %r(1642), %r(1692)
	jge .L274		# jge .L274
	.L273:		# .L273:
	movq $8, %rbx		# movq $8, %r(1643)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(1693)
	movq %r14, %r12		# movq %r(1693), %r(1644)
	subq %rbx, %r12		# subq %r(1643), %r(1644)
	movq (%r12), %rbx		# movq (%r(1644)), %r(1645)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1694)
	cmpq %rbx, %r12		# cmpq %r(1645), %r(1694)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1646)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1695)
	movq %r14, %r13		# movq %r(1695), %r(1647)
	addq %rbx, %r13		# addq %r(1646), %r(1647)
	movq %r13, %r12		# movq %r(1647), %r(1696)
	movq %r12, -88(%rbp)		# movq %r(1696), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(1648)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1697)
	movq %r14, %r12		# movq %r(1697), %r(1649)
	subq %rbx, %r12		# subq %r(1648), %r(1649)
	movq (%r12), %rbx		# movq (%r(1649)), %r(1650)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1698)
	cmpq %rbx, %r12		# cmpq %r(1650), %r(1698)
	jae error_outofbounds		# jae error_outofbounds
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1699)
	movq %r13, %r14		# movq %r(1699), %r(1651)
	salq $3, %r14		# salq $3, %r(1651)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1700)
	movq %r12, %r15		# movq %r(1700), %r(1652)
	addq %r14, %r15		# addq %r(1651), %r(1652)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1701)
	movq %r13, %rbx		# movq %r(1701), %r(1726)
	movq %rbx, -136(%rbp)		# movq %r(1726), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(1727)
	salq $3, %rbx		# salq $3, %r(1727)
	movq %rbx, -136(%rbp)		# movq %r(1727), -136(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(1702)
	movq %r13, %rbx		# movq %r(1702), %r(1703)
	movq %rbx, -112(%rbp)		# movq %r(1703), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1704)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1728)
	addq %r12, %rbx		# addq %r(1728), %r(1704)
	movq %rbx, -112(%rbp)		# movq %r(1704), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1705)
	movq (%rbx), %r12		# movq (%r(1705)), %r(1655)
	movq %r12, (%r15)		# movq %r(1655), (%r(1652))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1706)
	incq %rbx		# incq %r(1706)
	movq %rbx, -48(%rbp)		# movq %r(1706), -48(%rbp)
	jmp .L272		# jmp .L272
	.L274:		# .L274:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1707)
	movq %r13, %rbx		# movq %r(1707), %r(1708)
	movq %rbx, -96(%rbp)		# movq %r(1708), -96(%rbp)
	movq $0, %r14		# movq $0, %r(1656)
	movq $8, %r12		# movq $8, %r(1657)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1709)
	movq %rbx, %r13		# movq %r(1709), %r(1710)
	movq %r13, -128(%rbp)		# movq %r(1710), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1711)
	subq %r12, %rbx		# subq %r(1657), %r(1711)
	movq %rbx, -128(%rbp)		# movq %r(1711), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1712)
	movq (%rbx), %r12		# movq (%r(1712)), %r(1659)
	cmpq %r12, %r14		# cmpq %r(1659), %r(1656)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1660)
	movq %r13, %r14		# movq %r(1660), %r(1661)
	salq $3, %r14		# salq $3, %r(1661)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1713)
	movq %r12, %r15		# movq %r(1713), %r(1662)
	addq %r14, %r15		# addq %r(1661), %r(1662)
	movq $48, %r13		# movq $48, %r(1663)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1714)
	movq %rbx, %rax		# movq %r(1714), %rax
	cqto		# cqto
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1715)
	idivq %rbx		# idivq %r(1715)
	movq %rdx, %rbx		# movq %rdx, %r(1716)
	movq %rbx, -56(%rbp)		# movq %r(1716), -56(%rbp)
	movq %r13, %r12		# movq %r(1663), %r(1717)
	movq %r12, -40(%rbp)		# movq %r(1717), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1718)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1719)
	addq %r12, %rbx		# addq %r(1719), %r(1718)
	movq %rbx, -40(%rbp)		# movq %r(1718), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1720)
	movq %rbx, (%r15)		# movq %r(1720), (%r(1662))
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1721)
	movq %rbx, %rax		# movq %r(1721), %rax
	cqto		# cqto
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1722)
	idivq %rbx		# idivq %r(1722)
	movq %rax, %r13		# movq %rax, %r(1666)
	movq %r13, %rbx		# movq %r(1666), %r(1723)
	movq %rbx, -80(%rbp)		# movq %r(1723), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(1667)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1724)
	cmpq %rbx, %r12		# cmpq %r(1667), %r(1724)
	jne .L282		# jne .L282
	.L281:		# .L281:
	jmp .L270		# jmp .L270
	.L270:		# .L270:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1725)
	movq %rbx, %rax		# movq %r(1725), %rax
	jmp .L267		# jmp .L267
	.L267:		# .L267:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $144, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L282:		# .L282:
	jmp .L268		# jmp .L268
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1809)
	movq %rbx, -48(%rbp)		# movq %r(1809), -48(%rbp)
	movq $153, %rbx		# movq $153, %r(1729)
	movq $10, %r12		# movq $10, %r(1730)
	movq %rbx, %rdi		# movq %r(1729), %rdi
	movq %r12, %rsi		# movq %r(1730), %rsi
	call _Iitoa_aiii		# call _Iitoa_aiii
	movq %rax, %r13		# movq %rax, %r(1615)
	movq $0, %r14		# movq $0, %r(1731)
	movq $8, %rbx		# movq $8, %r(1732)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1810)
	movq %r12, %r15		# movq %r(1810), %r(1733)
	subq %rbx, %r15		# subq %r(1732), %r(1733)
	movq (%r15), %rbx		# movq (%r(1733)), %r(1734)
	cmpq %rbx, %r14		# cmpq %r(1734), %r(1731)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(1735)
	movq %r12, %rbx		# movq %r(1735), %r(1736)
	salq $3, %rbx		# salq $3, %r(1736)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1811)
	movq %r14, %r12		# movq %r(1811), %r(1737)
	addq %rbx, %r12		# addq %r(1736), %r(1737)
	movq %r13, (%r12)		# movq %r(1615), (%r(1737))
	movq $1, %r13		# movq $1, %r(1738)
	movq %r13, %rbx		# movq %r(1738), %r(1812)
	movq %rbx, -40(%rbp)		# movq %r(1812), -40(%rbp)
	movq $0, %r13		# movq $0, %r(1739)
	movq $8, %rbx		# movq $8, %r(1740)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1813)
	movq %r12, %r14		# movq %r(1813), %r(1741)
	subq %rbx, %r14		# subq %r(1740), %r(1741)
	movq (%r14), %rbx		# movq (%r(1741)), %r(1742)
	cmpq %rbx, %r13		# cmpq %r(1742), %r(1739)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1743)
	movq %r13, %r14		# movq %r(1743), %r(1744)
	salq $3, %r14		# salq $3, %r(1744)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1814)
	movq %r12, %rbx		# movq %r(1814), %r(1745)
	addq %r14, %rbx		# addq %r(1744), %r(1745)
	movq (%rbx), %r14		# movq (%r(1745)), %r(1746)
	movq $8, %rbx		# movq $8, %r(1747)
	movq %r14, %r12		# movq %r(1746), %r(1748)
	subq %rbx, %r12		# subq %r(1747), %r(1748)
	movq (%r12), %rbx		# movq (%r(1748)), %r(1749)
	movq $3, %r12		# movq $3, %r(1750)
	cmpq %r12, %rbx		# cmpq %r(1750), %r(1749)
	je .L288		# je .L288
	.L289:		# .L289:
	movq $0, %r13		# movq $0, %r(1751)
	movq %r13, %rbx		# movq %r(1751), %r(1815)
	movq %rbx, -40(%rbp)		# movq %r(1815), -40(%rbp)
	jmp .L288		# jmp .L288
	.L288:		# .L288:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1816)
	movq %rbx, %rdi		# movq %r(1816), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1752)
	movq %r13, %rbx		# movq %r(1752), %r(1817)
	movq %rbx, -16(%rbp)		# movq %r(1817), -16(%rbp)
	movq $0, %r13		# movq $0, %r(1753)
	movq $8, %rbx		# movq $8, %r(1754)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1818)
	movq %r12, %r14		# movq %r(1818), %r(1755)
	subq %rbx, %r14		# subq %r(1754), %r(1755)
	movq (%r14), %rbx		# movq (%r(1755)), %r(1756)
	cmpq %rbx, %r13		# cmpq %r(1756), %r(1753)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1757)
	movq %r13, %r14		# movq %r(1757), %r(1758)
	salq $3, %r14		# salq $3, %r(1758)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1819)
	movq %r12, %r15		# movq %r(1819), %r(1759)
	addq %r14, %r15		# addq %r(1758), %r(1759)
	movq (%r15), %r12		# movq (%r(1759)), %r(1760)
	movq %r12, %r14		# movq %r(1760), %r(1599)
	movq $0, %r13		# movq $0, %r(1761)
	movq $8, %r12		# movq $8, %r(1762)
	movq %r14, %rbx		# movq %r(1599), %r(1820)
	movq %rbx, -8(%rbp)		# movq %r(1820), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1821)
	subq %r12, %rbx		# subq %r(1762), %r(1821)
	movq %rbx, -8(%rbp)		# movq %r(1821), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1822)
	movq (%rbx), %r12		# movq (%r(1822)), %r(1764)
	cmpq %r12, %r13		# cmpq %r(1764), %r(1761)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1765)
	movq %r13, %rbx		# movq %r(1765), %r(1766)
	salq $3, %rbx		# salq $3, %r(1766)
	movq %r14, %r12		# movq %r(1599), %r(1767)
	addq %rbx, %r12		# addq %r(1766), %r(1767)
	movq (%r12), %rbx		# movq (%r(1767)), %r(1768)
	movq $49, %r12		# movq $49, %r(1769)
	cmpq %r12, %rbx		# cmpq %r(1769), %r(1768)
	je .L294		# je .L294
	.L295:		# .L295:
	movq $0, %r13		# movq $0, %r(1770)
	movq %r13, %rbx		# movq %r(1770), %r(1823)
	movq %rbx, -16(%rbp)		# movq %r(1823), -16(%rbp)
	jmp .L294		# jmp .L294
	.L294:		# .L294:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1824)
	movq %rbx, %rdi		# movq %r(1824), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1771)
	movq %r13, %rbx		# movq %r(1771), %r(1825)
	movq %rbx, -56(%rbp)		# movq %r(1825), -56(%rbp)
	movq $0, %r13		# movq $0, %r(1772)
	movq $8, %rbx		# movq $8, %r(1773)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1826)
	movq %r12, %r14		# movq %r(1826), %r(1774)
	subq %rbx, %r14		# subq %r(1773), %r(1774)
	movq (%r14), %rbx		# movq (%r(1774)), %r(1775)
	cmpq %rbx, %r13		# cmpq %r(1775), %r(1772)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1776)
	movq %r13, %r14		# movq %r(1776), %r(1777)
	salq $3, %r14		# salq $3, %r(1777)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1827)
	movq %r12, %r15		# movq %r(1827), %r(1778)
	addq %r14, %r15		# addq %r(1777), %r(1778)
	movq (%r15), %r12		# movq (%r(1778)), %r(1779)
	movq %r12, %r14		# movq %r(1779), %r(1604)
	movq $1, %r13		# movq $1, %r(1780)
	movq $8, %r12		# movq $8, %r(1781)
	movq %r14, %rbx		# movq %r(1604), %r(1828)
	movq %rbx, -32(%rbp)		# movq %r(1828), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1829)
	subq %r12, %rbx		# subq %r(1781), %r(1829)
	movq %rbx, -32(%rbp)		# movq %r(1829), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1830)
	movq (%rbx), %r12		# movq (%r(1830)), %r(1783)
	cmpq %r12, %r13		# cmpq %r(1783), %r(1780)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1784)
	movq %r13, %rbx		# movq %r(1784), %r(1785)
	salq $3, %rbx		# salq $3, %r(1785)
	movq %r14, %r12		# movq %r(1604), %r(1786)
	addq %rbx, %r12		# addq %r(1785), %r(1786)
	movq (%r12), %rbx		# movq (%r(1786)), %r(1787)
	movq $53, %r12		# movq $53, %r(1788)
	cmpq %r12, %rbx		# cmpq %r(1788), %r(1787)
	je .L300		# je .L300
	.L301:		# .L301:
	movq $0, %r13		# movq $0, %r(1789)
	movq %r13, %rbx		# movq %r(1789), %r(1831)
	movq %rbx, -56(%rbp)		# movq %r(1831), -56(%rbp)
	jmp .L300		# jmp .L300
	.L300:		# .L300:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1832)
	movq %rbx, %rdi		# movq %r(1832), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1790)
	movq %r13, %rbx		# movq %r(1790), %r(1833)
	movq %rbx, -24(%rbp)		# movq %r(1833), -24(%rbp)
	movq $0, %r13		# movq $0, %r(1791)
	movq $8, %rbx		# movq $8, %r(1792)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1834)
	movq %r12, %r14		# movq %r(1834), %r(1793)
	subq %rbx, %r14		# subq %r(1792), %r(1793)
	movq (%r14), %rbx		# movq (%r(1793)), %r(1794)
	cmpq %rbx, %r13		# cmpq %r(1794), %r(1791)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1795)
	movq %r13, %r14		# movq %r(1795), %r(1796)
	salq $3, %r14		# salq $3, %r(1796)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1835)
	movq %r12, %r15		# movq %r(1835), %r(1797)
	addq %r14, %r15		# addq %r(1796), %r(1797)
	movq (%r15), %r12		# movq (%r(1797)), %r(1798)
	movq %r12, %r15		# movq %r(1798), %r(1609)
	movq $2, %r12		# movq $2, %r(1799)
	movq $8, %rbx		# movq $8, %r(1800)
	movq %r15, %r13		# movq %r(1609), %r(1801)
	subq %rbx, %r13		# subq %r(1800), %r(1801)
	movq (%r13), %rbx		# movq (%r(1801)), %r(1802)
	cmpq %rbx, %r12		# cmpq %r(1802), %r(1799)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1803)
	movq %r13, %rbx		# movq %r(1803), %r(1804)
	salq $3, %rbx		# salq $3, %r(1804)
	movq %r15, %r12		# movq %r(1609), %r(1805)
	addq %rbx, %r12		# addq %r(1804), %r(1805)
	movq (%r12), %rbx		# movq (%r(1805)), %r(1806)
	movq $51, %r12		# movq $51, %r(1807)
	cmpq %r12, %rbx		# cmpq %r(1807), %r(1806)
	je .L306		# je .L306
	.L307:		# .L307:
	movq $0, %r13		# movq $0, %r(1808)
	movq %r13, %rbx		# movq %r(1808), %r(1836)
	movq %rbx, -24(%rbp)		# movq %r(1836), -24(%rbp)
	jmp .L306		# jmp .L306
	.L306:		# .L306:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1837)
	movq %rbx, %rdi		# movq %r(1837), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L283		# jmp .L283
	.L283:		# .L283:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $64, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1881)
	movq %rbx, -56(%rbp)		# movq %r(1881), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(1838)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(1882)
	movq %r14, %r12		# movq %r(1882), %r(1839)
	subq %rbx, %r12		# subq %r(1838), %r(1839)
	movq (%r12), %r13		# movq (%r(1839)), %r(1840)
	movq %r13, %rbx		# movq %r(1840), %r(1883)
	movq %rbx, -72(%rbp)		# movq %r(1883), -72(%rbp)
	movq $1, %r13		# movq $1, %r(1841)
	movq %r13, %rbx		# movq %r(1841), %r(1884)
	movq %rbx, -48(%rbp)		# movq %r(1884), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(1842)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1885)
	cmpq %rbx, %r12		# cmpq %r(1842), %r(1885)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(1843)
	movq %rbx, %rax		# movq %r(1843), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L69:		# .L69:
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1886)
	movq %r13, %rbx		# movq %r(1886), %r(1844)
	salq $3, %rbx		# salq $3, %r(1844)
	movq %rbx, %rdi		# movq %r(1844), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1887)
	movq %rbx, -16(%rbp)		# movq %r(1887), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(1845)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(1888)
	movq %r14, %r12		# movq %r(1888), %r(1846)
	subq %rbx, %r12		# subq %r(1845), %r(1846)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1889)
	movq %r12, (%rbx)		# movq %r(1846), (%r(1889))
	movq $8, %rbx		# movq $8, %r(1847)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1890)
	movq %r14, %r13		# movq %r(1890), %r(1848)
	addq %rbx, %r13		# addq %r(1847), %r(1848)
	movq %r13, %r12		# movq %r(1848), %r(1891)
	movq %r12, -24(%rbp)		# movq %r(1891), -24(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1892)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1893)
	cmpq %r12, %rbx		# cmpq %r(1893), %r(1892)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(1849)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(1894)
	movq %r14, %r12		# movq %r(1894), %r(1850)
	subq %rbx, %r12		# subq %r(1849), %r(1850)
	movq (%r12), %rbx		# movq (%r(1850)), %r(1851)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1895)
	cmpq %rbx, %r12		# cmpq %r(1851), %r(1895)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1852)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1896)
	movq %r14, %r13		# movq %r(1896), %r(1853)
	subq %rbx, %r13		# subq %r(1852), %r(1853)
	movq %r13, %r12		# movq %r(1853), %r(1897)
	movq %r12, -80(%rbp)		# movq %r(1897), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(1854)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1898)
	movq %r14, %r12		# movq %r(1898), %r(1855)
	subq %rbx, %r12		# subq %r(1854), %r(1855)
	movq (%r12), %rbx		# movq (%r(1855)), %r(1856)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1899)
	cmpq %rbx, %r12		# cmpq %r(1856), %r(1899)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1900)
	movq %r13, %r14		# movq %r(1900), %r(1857)
	salq $3, %r14		# salq $3, %r(1857)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1901)
	movq %r12, %r15		# movq %r(1901), %r(1858)
	addq %r14, %r15		# addq %r(1857), %r(1858)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1902)
	movq %r13, %rbx		# movq %r(1902), %r(1933)
	movq %rbx, -104(%rbp)		# movq %r(1933), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1934)
	salq $3, %rbx		# salq $3, %r(1934)
	movq %rbx, -104(%rbp)		# movq %r(1934), -104(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1903)
	movq %r13, %rbx		# movq %r(1903), %r(1904)
	movq %rbx, -88(%rbp)		# movq %r(1904), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1905)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1935)
	addq %r12, %rbx		# addq %r(1935), %r(1905)
	movq %rbx, -88(%rbp)		# movq %r(1905), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1906)
	movq (%rbx), %r12		# movq (%r(1906)), %r(1861)
	movq %r12, (%r15)		# movq %r(1861), (%r(1858))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1907)
	incq %rbx		# incq %r(1907)
	movq %rbx, -48(%rbp)		# movq %r(1907), -48(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(1862)
	movq $8, %rbx		# movq $8, %r(1863)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1908)
	movq %r12, %r14		# movq %r(1908), %r(1864)
	subq %rbx, %r14		# subq %r(1863), %r(1864)
	movq (%r14), %rbx		# movq (%r(1864)), %r(1865)
	cmpq %rbx, %r13		# cmpq %r(1865), %r(1862)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1866)
	movq %r13, %r14		# movq %r(1866), %r(1867)
	salq $3, %r14		# salq $3, %r(1867)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1909)
	movq %r12, %r15		# movq %r(1909), %r(1868)
	addq %r14, %r15		# addq %r(1867), %r(1868)
	movq (%r15), %r13		# movq (%r(1868)), %r(1869)
	movq %r13, %rbx		# movq %r(1869), %r(1910)
	movq %rbx, -48(%rbp)		# movq %r(1910), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(1870)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1911)
	movq %r14, %r13		# movq %r(1911), %r(1871)
	addq %rbx, %r13		# addq %r(1870), %r(1871)
	movq %r13, %r12		# movq %r(1871), %r(1872)
	salq $3, %r12		# salq $3, %r(1872)
	movq %r12, %rdi		# movq %r(1872), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1621)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1912)
	movq %rbx, (%r14)		# movq %r(1912), (%r(1621))
	movq $8, %r13		# movq $8, %r(1873)
	movq %r14, %r12		# movq %r(1621), %r(1913)
	movq %r12, -8(%rbp)		# movq %r(1913), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1914)
	addq %r13, %rbx		# addq %r(1873), %r(1914)
	movq %rbx, -8(%rbp)		# movq %r(1914), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1915)
	movq %r13, %rbx		# movq %r(1915), %r(1916)
	movq %rbx, -96(%rbp)		# movq %r(1916), -96(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(1875)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1917)
	cmpq %rbx, %r12		# cmpq %r(1875), %r(1917)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1918)
	decq %rbx		# decq %r(1918)
	movq %rbx, -48(%rbp)		# movq %r(1918), -48(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1919)
	movq %rbx, %rdi		# movq %r(1919), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1920)
	movq %rbx, -64(%rbp)		# movq %r(1920), -64(%rbp)
	movq $8, %r13		# movq $8, %r(1876)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(1921)
	movq %r14, %rbx		# movq %r(1921), %r(1922)
	movq %rbx, -40(%rbp)		# movq %r(1922), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1923)
	subq %r13, %rbx		# subq %r(1876), %r(1923)
	movq %rbx, -40(%rbp)		# movq %r(1923), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1924)
	movq (%rbx), %r12		# movq (%r(1924)), %r(1878)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1925)
	cmpq %r12, %rbx		# cmpq %r(1878), %r(1925)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1926)
	movq %r12, %r14		# movq %r(1926), %r(1879)
	salq $3, %r14		# salq $3, %r(1879)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(1927)
	movq %r13, %rbx		# movq %r(1927), %r(1928)
	movq %rbx, -32(%rbp)		# movq %r(1928), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1929)
	addq %r14, %rbx		# addq %r(1879), %r(1929)
	movq %rbx, -32(%rbp)		# movq %r(1929), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1930)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1931)
	movq %r12, (%rbx)		# movq %r(1931), (%r(1930))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1932)
	movq %rbx, %rax		# movq %r(1932), %rax
	jmp .L71		# jmp .L71
	
error_outofbounds:
call _I_outOfBounds_p
