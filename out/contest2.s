.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $64, %rbx		# movq $64, %r(1747)
	movq %rbx, %rdi		# movq %r(1747), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1738)
	movq $7, %r12		# movq $7, %r(1748)
	movq %r12, (%r14)		# movq %r(1748), (%r(1738))
	movq $8, %r12		# movq $8, %r(1749)
	addq %r12, %r14		# addq %r(1749), %r(1750)
	movq $0, %r12		# movq $0, %r(1751)
	movq %r14, %rbx		# movq %r(1674), %r(1752)
	addq %r12, %rbx		# addq %r(1751), %r(1752)
	movq $7, %r12		# movq $7, %r(1753)
	movq %r12, (%rbx)		# movq %r(1753), (%r(1752))
	movq $8, %r12		# movq $8, %r(1754)
	movq %r14, %rbx		# movq %r(1674), %r(1755)
	addq %r12, %rbx		# addq %r(1754), %r(1755)
	movq $7, %r12		# movq $7, %r(1756)
	movq %r12, (%rbx)		# movq %r(1756), (%r(1755))
	movq $16, %r12		# movq $16, %r(1757)
	movq %r14, %rbx		# movq %r(1674), %r(1758)
	addq %r12, %rbx		# addq %r(1757), %r(1758)
	movq $7, %r12		# movq $7, %r(1759)
	movq %r12, (%rbx)		# movq %r(1759), (%r(1758))
	movq $24, %r12		# movq $24, %r(1760)
	movq %r14, %rbx		# movq %r(1674), %r(1761)
	addq %r12, %rbx		# addq %r(1760), %r(1761)
	movq $7, %r12		# movq $7, %r(1762)
	movq %r12, (%rbx)		# movq %r(1762), (%r(1761))
	movq $32, %r12		# movq $32, %r(1763)
	movq %r14, %rbx		# movq %r(1674), %r(1764)
	addq %r12, %rbx		# addq %r(1763), %r(1764)
	movq $7, %r12		# movq $7, %r(1765)
	movq %r12, (%rbx)		# movq %r(1765), (%r(1764))
	movq $40, %r12		# movq $40, %r(1766)
	movq %r14, %rbx		# movq %r(1674), %r(1767)
	addq %r12, %rbx		# addq %r(1766), %r(1767)
	movq $7, %r12		# movq $7, %r(1768)
	movq %r12, (%rbx)		# movq %r(1768), (%r(1767))
	movq $48, %r12		# movq $48, %r(1769)
	movq %r14, %rbx		# movq %r(1674), %r(1770)
	addq %r12, %rbx		# addq %r(1769), %r(1770)
	movq $7, %r12		# movq $7, %r(1771)
	movq %r12, (%rbx)		# movq %r(1771), (%r(1770))
	movq %r14, %rdi		# movq %r(1674), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1943)
	movq %rbx, -16(%rbp)		# movq %r(1943), -16(%rbp)
	movq $0, %r13		# movq $0, %r(1772)
	movq $8, %r12		# movq $8, %r(1773)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1944)
	subq %r12, %r14		# subq %r(1773), %r(1774)
	movq (%r14), %rbx		# movq (%r(1774)), %r(1775)
	cmpq %rbx, %r13		# cmpq %r(1775), %r(1772)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1776)
	salq $3, %r13		# salq $3, %r(1777)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1945)
	addq %r13, %rbx		# addq %r(1777), %r(1778)
	movq (%rbx), %rbx		# movq (%r(1778)), %r(1779)
	movq $1, %r13		# movq $1, %r(1780)
	movq $8, %r12		# movq $8, %r(1781)
	movq %rbx, %r14		# movq %r(1678), %r(1782)
	subq %r12, %r14		# subq %r(1781), %r(1782)
	movq (%r14), %r12		# movq (%r(1782)), %r(1783)
	cmpq %r12, %r13		# cmpq %r(1783), %r(1780)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1784)
	salq $3, %r13		# salq $3, %r(1785)
	addq %r13, %rbx		# addq %r(1785), %r(1786)
	movq (%rbx), %rbx		# movq (%r(1786)), %r(1787)
	movq $2, %r13		# movq $2, %r(1788)
	movq $8, %r12		# movq $8, %r(1789)
	movq %rbx, %r14		# movq %r(1680), %r(1790)
	subq %r12, %r14		# subq %r(1789), %r(1790)
	movq (%r14), %r12		# movq (%r(1790)), %r(1791)
	cmpq %r12, %r13		# cmpq %r(1791), %r(1788)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1792)
	salq $3, %r13		# salq $3, %r(1793)
	addq %r13, %rbx		# addq %r(1793), %r(1794)
	movq (%rbx), %rbx		# movq (%r(1794)), %r(1795)
	movq $3, %r13		# movq $3, %r(1796)
	movq $8, %r12		# movq $8, %r(1797)
	movq %rbx, %r14		# movq %r(1682), %r(1798)
	subq %r12, %r14		# subq %r(1797), %r(1798)
	movq (%r14), %r12		# movq (%r(1798)), %r(1799)
	cmpq %r12, %r13		# cmpq %r(1799), %r(1796)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(1800)
	salq $3, %r13		# salq $3, %r(1801)
	addq %r13, %rbx		# addq %r(1801), %r(1802)
	movq (%rbx), %rbx		# movq (%r(1802)), %r(1803)
	movq $4, %r13		# movq $4, %r(1804)
	movq $8, %r12		# movq $8, %r(1805)
	movq %rbx, %r14		# movq %r(1684), %r(1806)
	subq %r12, %r14		# subq %r(1805), %r(1806)
	movq (%r14), %r12		# movq (%r(1806)), %r(1807)
	cmpq %r12, %r13		# cmpq %r(1807), %r(1804)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(1808)
	salq $3, %r13		# salq $3, %r(1809)
	addq %r13, %rbx		# addq %r(1809), %r(1810)
	movq (%rbx), %rbx		# movq (%r(1810)), %r(1811)
	movq $5, %r13		# movq $5, %r(1812)
	movq $8, %r12		# movq $8, %r(1813)
	movq %rbx, %r14		# movq %r(1686), %r(1814)
	subq %r12, %r14		# subq %r(1813), %r(1814)
	movq (%r14), %r12		# movq (%r(1814)), %r(1815)
	cmpq %r12, %r13		# cmpq %r(1815), %r(1812)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(1816)
	salq $3, %r13		# salq $3, %r(1817)
	addq %r13, %rbx		# addq %r(1817), %r(1818)
	movq (%rbx), %rbx		# movq (%r(1818)), %r(1819)
	movq $6, %r13		# movq $6, %r(1820)
	movq $8, %r12		# movq $8, %r(1821)
	movq %rbx, %r14		# movq %r(1688), %r(1822)
	subq %r12, %r14		# subq %r(1821), %r(1822)
	movq (%r14), %r12		# movq (%r(1822)), %r(1823)
	cmpq %r12, %r13		# cmpq %r(1823), %r(1820)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(1824)
	salq $3, %r13		# salq $3, %r(1825)
	addq %r13, %rbx		# addq %r(1825), %r(1826)
	movq $7, %r12		# movq $7, %r(1827)
	movq %r12, (%rbx)		# movq %r(1827), (%r(1826))
	movq $0, %r13		# movq $0, %r(1828)
	movq $8, %r12		# movq $8, %r(1829)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1946)
	subq %r12, %r14		# subq %r(1829), %r(1830)
	movq (%r14), %rbx		# movq (%r(1830)), %r(1831)
	cmpq %rbx, %r13		# cmpq %r(1831), %r(1828)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1832)
	salq $3, %r13		# salq $3, %r(1833)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1947)
	addq %r13, %rbx		# addq %r(1833), %r(1834)
	movq (%rbx), %rbx		# movq (%r(1834)), %r(1835)
	movq $1, %r13		# movq $1, %r(1836)
	movq $8, %r12		# movq $8, %r(1837)
	movq %rbx, %r14		# movq %r(1692), %r(1838)
	subq %r12, %r14		# subq %r(1837), %r(1838)
	movq (%r14), %r12		# movq (%r(1838)), %r(1839)
	cmpq %r12, %r13		# cmpq %r(1839), %r(1836)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1840)
	salq $3, %r13		# salq $3, %r(1841)
	addq %r13, %rbx		# addq %r(1841), %r(1842)
	movq (%rbx), %rbx		# movq (%r(1842)), %r(1843)
	movq $2, %r13		# movq $2, %r(1844)
	movq $8, %r12		# movq $8, %r(1845)
	movq %rbx, %r14		# movq %r(1694), %r(1846)
	subq %r12, %r14		# subq %r(1845), %r(1846)
	movq (%r14), %r12		# movq (%r(1846)), %r(1847)
	cmpq %r12, %r13		# cmpq %r(1847), %r(1844)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1848)
	salq $3, %r13		# salq $3, %r(1849)
	addq %r13, %rbx		# addq %r(1849), %r(1850)
	movq (%rbx), %rbx		# movq (%r(1850)), %r(1851)
	movq $3, %r13		# movq $3, %r(1852)
	movq $8, %r12		# movq $8, %r(1853)
	movq %rbx, %r14		# movq %r(1696), %r(1854)
	subq %r12, %r14		# subq %r(1853), %r(1854)
	movq (%r14), %r12		# movq (%r(1854)), %r(1855)
	cmpq %r12, %r13		# cmpq %r(1855), %r(1852)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(1856)
	salq $3, %r13		# salq $3, %r(1857)
	addq %r13, %rbx		# addq %r(1857), %r(1858)
	movq (%rbx), %rbx		# movq (%r(1858)), %r(1859)
	movq $4, %r13		# movq $4, %r(1860)
	movq $8, %r12		# movq $8, %r(1861)
	movq %rbx, %r14		# movq %r(1698), %r(1862)
	subq %r12, %r14		# subq %r(1861), %r(1862)
	movq (%r14), %r12		# movq (%r(1862)), %r(1863)
	cmpq %r12, %r13		# cmpq %r(1863), %r(1860)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(1864)
	salq $3, %r13		# salq $3, %r(1865)
	addq %r13, %rbx		# addq %r(1865), %r(1866)
	movq (%rbx), %rbx		# movq (%r(1866)), %r(1867)
	movq $5, %r13		# movq $5, %r(1868)
	movq $8, %r12		# movq $8, %r(1869)
	movq %rbx, %r14		# movq %r(1700), %r(1870)
	subq %r12, %r14		# subq %r(1869), %r(1870)
	movq (%r14), %r12		# movq (%r(1870)), %r(1871)
	cmpq %r12, %r13		# cmpq %r(1871), %r(1868)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(1872)
	salq $3, %r13		# salq $3, %r(1873)
	addq %r13, %rbx		# addq %r(1873), %r(1874)
	movq (%rbx), %rbx		# movq (%r(1874)), %r(1875)
	movq $6, %r13		# movq $6, %r(1876)
	movq $8, %r12		# movq $8, %r(1877)
	movq %rbx, %r14		# movq %r(1702), %r(1878)
	subq %r12, %r14		# subq %r(1877), %r(1878)
	movq (%r14), %r12		# movq (%r(1878)), %r(1879)
	cmpq %r12, %r13		# cmpq %r(1879), %r(1876)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(1880)
	salq $3, %r13		# salq $3, %r(1881)
	addq %r13, %rbx		# addq %r(1881), %r(1882)
	movq (%rbx), %rbx		# movq (%r(1882)), %r(1883)
	movq %rbx, %rdi		# movq %r(1883), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1740)
	movq %rbx, %rdi		# movq %r(1740), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(1884)
	movq %r12, -8(%rbp)		# movq %r(1948), -8(%rbp)
	movq $0, %r13		# movq $0, %r(1885)
	movq $8, %r12		# movq $8, %r(1886)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1949)
	subq %r12, %r14		# subq %r(1886), %r(1887)
	movq (%r14), %rbx		# movq (%r(1887)), %r(1888)
	cmpq %rbx, %r13		# cmpq %r(1888), %r(1885)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1889)
	salq $3, %r13		# salq $3, %r(1890)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1950)
	addq %r13, %rbx		# addq %r(1890), %r(1891)
	movq (%rbx), %rbx		# movq (%r(1891)), %r(1892)
	movq $1, %r13		# movq $1, %r(1893)
	movq $8, %r12		# movq $8, %r(1894)
	movq %rbx, %r14		# movq %r(1706), %r(1895)
	subq %r12, %r14		# subq %r(1894), %r(1895)
	movq (%r14), %r12		# movq (%r(1895)), %r(1896)
	cmpq %r12, %r13		# cmpq %r(1896), %r(1893)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1897)
	salq $3, %r13		# salq $3, %r(1898)
	addq %r13, %rbx		# addq %r(1898), %r(1899)
	movq (%rbx), %rbx		# movq (%r(1899)), %r(1900)
	movq $2, %r13		# movq $2, %r(1901)
	movq $8, %r12		# movq $8, %r(1902)
	movq %rbx, %r14		# movq %r(1708), %r(1903)
	subq %r12, %r14		# subq %r(1902), %r(1903)
	movq (%r14), %r12		# movq (%r(1903)), %r(1904)
	cmpq %r12, %r13		# cmpq %r(1904), %r(1901)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1905)
	salq $3, %r13		# salq $3, %r(1906)
	addq %r13, %rbx		# addq %r(1906), %r(1907)
	movq (%rbx), %rbx		# movq (%r(1907)), %r(1908)
	movq $3, %r13		# movq $3, %r(1909)
	movq $8, %r12		# movq $8, %r(1910)
	movq %rbx, %r14		# movq %r(1710), %r(1911)
	subq %r12, %r14		# subq %r(1910), %r(1911)
	movq (%r14), %r12		# movq (%r(1911)), %r(1912)
	cmpq %r12, %r13		# cmpq %r(1912), %r(1909)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(1913)
	salq $3, %r13		# salq $3, %r(1914)
	addq %r13, %rbx		# addq %r(1914), %r(1915)
	movq (%rbx), %rbx		# movq (%r(1915)), %r(1916)
	movq $4, %r13		# movq $4, %r(1917)
	movq $8, %r12		# movq $8, %r(1918)
	movq %rbx, %r14		# movq %r(1712), %r(1919)
	subq %r12, %r14		# subq %r(1918), %r(1919)
	movq (%r14), %r12		# movq (%r(1919)), %r(1920)
	cmpq %r12, %r13		# cmpq %r(1920), %r(1917)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(1921)
	salq $3, %r13		# salq $3, %r(1922)
	addq %r13, %rbx		# addq %r(1922), %r(1923)
	movq (%rbx), %rbx		# movq (%r(1923)), %r(1924)
	movq $5, %r13		# movq $5, %r(1925)
	movq $8, %r12		# movq $8, %r(1926)
	movq %rbx, %r14		# movq %r(1714), %r(1927)
	subq %r12, %r14		# subq %r(1926), %r(1927)
	movq (%r14), %r12		# movq (%r(1927)), %r(1928)
	cmpq %r12, %r13		# cmpq %r(1928), %r(1925)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(1929)
	salq $3, %r13		# salq $3, %r(1930)
	addq %r13, %rbx		# addq %r(1930), %r(1931)
	movq (%rbx), %rbx		# movq (%r(1931)), %r(1932)
	movq $6, %r13		# movq $6, %r(1933)
	movq $8, %r12		# movq $8, %r(1934)
	movq %rbx, %r14		# movq %r(1716), %r(1935)
	subq %r12, %r14		# subq %r(1934), %r(1935)
	movq (%r14), %r12		# movq (%r(1935)), %r(1936)
	cmpq %r12, %r13		# cmpq %r(1936), %r(1933)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(1937)
	salq $3, %r13		# salq $3, %r(1938)
	addq %r13, %rbx		# addq %r(1938), %r(1939)
	movq (%rbx), %rbx		# movq (%r(1939)), %r(1940)
	movq $7, %r12		# movq $7, %r(1941)
	cmpq %r12, %rbx		# cmpq %r(1941), %r(1940)
	je .L316		# je .L316
	.L317:		# .L317:
	movq $0, %r12		# movq $0, %r(1942)
	movq %r12, -8(%rbp)		# movq %r(1951), -8(%rbp)
	jmp .L316		# jmp .L316
	.L316:		# .L316:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1952)
	movq %rbx, %rdi		# movq %r(1952), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L272		# jmp .L272
	.L272:		# .L272:
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
	movq %rdi, %rbx		# movq %rdi, %r(1996)
	movq %rbx, -64(%rbp)		# movq %r(1996), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(1953)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1997)
	subq %rbx, %r13		# subq %r(1953), %r(1954)
	movq (%r13), %r12		# movq (%r(1954)), %r(1955)
	movq %r12, -56(%rbp)		# movq %r(1998), -56(%rbp)
	movq $1, %r12		# movq $1, %r(1956)
	movq %r12, -8(%rbp)		# movq %r(1999), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1957)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2000)
	cmpq %rbx, %r12		# cmpq %r(1957), %r(2000)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(1958)
	movq %rbx, %rax		# movq %r(1958), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L318:		# .L318:
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2001)
	salq $3, %r12		# salq $3, %r(1959)
	movq %r12, %rdi		# movq %r(1959), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1743)
	movq $1, %r12		# movq $1, %r(1960)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(2002)
	movq %r14, -80(%rbp)		# movq %r(2003), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2004)
	subq %r12, %rbx		# subq %r(1960), %r(2004)
	movq %rbx, -80(%rbp)		# movq %r(2004), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2005)
	movq %rbx, (%r13)		# movq %r(2005), (%r(1743))
	movq $8, %rbx		# movq $8, %r(1962)
	addq %rbx, %r13		# addq %r(1962), %r(1963)
	movq %r13, -40(%rbp)		# movq %r(2006), -40(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2007)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2008)
	cmpq %r12, %rbx		# cmpq %r(2008), %r(2007)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(1964)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2009)
	subq %rbx, %r13		# subq %r(1964), %r(1965)
	movq (%r13), %rbx		# movq (%r(1965)), %r(1966)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2010)
	cmpq %rbx, %r12		# cmpq %r(1966), %r(2010)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1967)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2011)
	subq %rbx, %r14		# subq %r(1967), %r(1968)
	movq $8, %r13		# movq $8, %r(1969)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2012)
	movq %r12, -72(%rbp)		# movq %r(2013), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2014)
	subq %r13, %rbx		# subq %r(1969), %r(2014)
	movq %rbx, -72(%rbp)		# movq %r(2014), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2015)
	movq (%rbx), %rbx		# movq (%r(2015)), %r(1971)
	cmpq %rbx, %r14		# cmpq %r(1971), %r(1728)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1972)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2016)
	addq %r14, %rbx		# addq %r(1972), %r(1973)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2017)
	salq $3, %r14		# salq $3, %r(1974)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2018)
	movq %r12, -24(%rbp)		# movq %r(2019), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2020)
	addq %r14, %r13		# addq %r(1974), %r(2020)
	movq %r13, -24(%rbp)		# movq %r(2020), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2021)
	movq (%r12), %r12		# movq (%r(2021)), %r(1976)
	movq %r12, (%rbx)		# movq %r(1976), (%r(1973))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2022)
	incq %rbx		# incq %r(2022)
	movq %rbx, -8(%rbp)		# movq %r(2022), -8(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(1977)
	movq $8, %r12		# movq $8, %r(1978)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(2023)
	subq %r12, %r14		# subq %r(1978), %r(1979)
	movq (%r14), %rbx		# movq (%r(1979)), %r(1980)
	cmpq %rbx, %r13		# cmpq %r(1980), %r(1977)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1981)
	salq $3, %r13		# salq $3, %r(1982)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2024)
	addq %r13, %rbx		# addq %r(1982), %r(1983)
	movq (%rbx), %r12		# movq (%r(1983)), %r(1984)
	movq %r12, -8(%rbp)		# movq %r(2025), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(1985)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2026)
	addq %rbx, %r12		# addq %r(1985), %r(1986)
	salq $3, %r12		# salq $3, %r(1987)
	movq %r12, %rdi		# movq %r(1987), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1744)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2027)
	movq %r12, (%rbx)		# movq %r(2027), (%r(1744))
	movq $8, %r12		# movq $8, %r(1988)
	addq %r12, %rbx		# addq %r(1988), %r(1989)
	movq %rbx, -32(%rbp)		# movq %r(2028), -32(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(1990)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2029)
	cmpq %rbx, %r12		# cmpq %r(1990), %r(2029)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2030)
	decq %rbx		# decq %r(2030)
	movq %rbx, -8(%rbp)		# movq %r(2030), -8(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2031)
	movq %rbx, %rdi		# movq %r(2031), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2032)
	movq %rbx, -88(%rbp)		# movq %r(2032), -88(%rbp)
	movq $8, %r12		# movq $8, %r(1991)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2033)
	movq %r13, -48(%rbp)		# movq %r(2034), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2035)
	subq %r12, %rbx		# subq %r(1991), %r(2035)
	movq %rbx, -48(%rbp)		# movq %r(2035), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2036)
	movq (%rbx), %rbx		# movq (%r(2036)), %r(1993)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2037)
	cmpq %rbx, %r12		# cmpq %r(1993), %r(2037)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2038)
	salq $3, %r13		# salq $3, %r(1994)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2039)
	movq %rbx, -16(%rbp)		# movq %r(2040), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2041)
	addq %r13, %r12		# addq %r(1994), %r(2041)
	movq %r12, -16(%rbp)		# movq %r(2041), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2042)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2043)
	movq %r12, (%rbx)		# movq %r(2043), (%r(2042))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2044)
	movq %rbx, %rax		# movq %r(2044), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
