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
	movq $64, %rbx		# movq $64, %r(1759)
	movq %rbx, %rdi		# movq %r(1759), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1750)
	movq $7, %r12		# movq $7, %r(1760)
	movq %r12, (%r14)		# movq %r(1760), (%r(1750))
	movq $8, %r12		# movq $8, %r(1761)
	addq %r12, %r14		# addq %r(1761), %r(1762)
	movq $0, %r12		# movq $0, %r(1763)
	movq %r14, %rbx		# movq %r(1686), %r(1764)
	addq %r12, %rbx		# addq %r(1763), %r(1764)
	movq $7, %r12		# movq $7, %r(1765)
	movq %r12, (%rbx)		# movq %r(1765), (%r(1764))
	movq $8, %r12		# movq $8, %r(1766)
	movq %r14, %rbx		# movq %r(1686), %r(1767)
	addq %r12, %rbx		# addq %r(1766), %r(1767)
	movq $7, %r12		# movq $7, %r(1768)
	movq %r12, (%rbx)		# movq %r(1768), (%r(1767))
	movq $16, %r12		# movq $16, %r(1769)
	movq %r14, %rbx		# movq %r(1686), %r(1770)
	addq %r12, %rbx		# addq %r(1769), %r(1770)
	movq $7, %r12		# movq $7, %r(1771)
	movq %r12, (%rbx)		# movq %r(1771), (%r(1770))
	movq $24, %r12		# movq $24, %r(1772)
	movq %r14, %rbx		# movq %r(1686), %r(1773)
	addq %r12, %rbx		# addq %r(1772), %r(1773)
	movq $7, %r12		# movq $7, %r(1774)
	movq %r12, (%rbx)		# movq %r(1774), (%r(1773))
	movq $32, %r12		# movq $32, %r(1775)
	movq %r14, %rbx		# movq %r(1686), %r(1776)
	addq %r12, %rbx		# addq %r(1775), %r(1776)
	movq $7, %r12		# movq $7, %r(1777)
	movq %r12, (%rbx)		# movq %r(1777), (%r(1776))
	movq $40, %r12		# movq $40, %r(1778)
	movq %r14, %rbx		# movq %r(1686), %r(1779)
	addq %r12, %rbx		# addq %r(1778), %r(1779)
	movq $7, %r12		# movq $7, %r(1780)
	movq %r12, (%rbx)		# movq %r(1780), (%r(1779))
	movq $48, %r12		# movq $48, %r(1781)
	movq %r14, %rbx		# movq %r(1686), %r(1782)
	addq %r12, %rbx		# addq %r(1781), %r(1782)
	movq $7, %r12		# movq $7, %r(1783)
	movq %r12, (%rbx)		# movq %r(1783), (%r(1782))
	movq %r14, %rdi		# movq %r(1686), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1955)
	movq %rbx, -16(%rbp)		# movq %r(1955), -16(%rbp)
	movq $0, %r13		# movq $0, %r(1784)
	movq $8, %r12		# movq $8, %r(1785)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1956)
	subq %r12, %r14		# subq %r(1785), %r(1786)
	movq (%r14), %rbx		# movq (%r(1786)), %r(1787)
	cmpq %rbx, %r13		# cmpq %r(1787), %r(1784)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1788)
	salq $3, %r13		# salq $3, %r(1789)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1957)
	addq %r13, %rbx		# addq %r(1789), %r(1790)
	movq (%rbx), %rbx		# movq (%r(1790)), %r(1791)
	movq $1, %r13		# movq $1, %r(1792)
	movq $8, %r12		# movq $8, %r(1793)
	movq %rbx, %r14		# movq %r(1690), %r(1794)
	subq %r12, %r14		# subq %r(1793), %r(1794)
	movq (%r14), %r12		# movq (%r(1794)), %r(1795)
	cmpq %r12, %r13		# cmpq %r(1795), %r(1792)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1796)
	salq $3, %r13		# salq $3, %r(1797)
	addq %r13, %rbx		# addq %r(1797), %r(1798)
	movq (%rbx), %rbx		# movq (%r(1798)), %r(1799)
	movq $2, %r13		# movq $2, %r(1800)
	movq $8, %r12		# movq $8, %r(1801)
	movq %rbx, %r14		# movq %r(1692), %r(1802)
	subq %r12, %r14		# subq %r(1801), %r(1802)
	movq (%r14), %r12		# movq (%r(1802)), %r(1803)
	cmpq %r12, %r13		# cmpq %r(1803), %r(1800)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1804)
	salq $3, %r13		# salq $3, %r(1805)
	addq %r13, %rbx		# addq %r(1805), %r(1806)
	movq (%rbx), %rbx		# movq (%r(1806)), %r(1807)
	movq $3, %r13		# movq $3, %r(1808)
	movq $8, %r12		# movq $8, %r(1809)
	movq %rbx, %r14		# movq %r(1694), %r(1810)
	subq %r12, %r14		# subq %r(1809), %r(1810)
	movq (%r14), %r12		# movq (%r(1810)), %r(1811)
	cmpq %r12, %r13		# cmpq %r(1811), %r(1808)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(1812)
	salq $3, %r13		# salq $3, %r(1813)
	addq %r13, %rbx		# addq %r(1813), %r(1814)
	movq (%rbx), %rbx		# movq (%r(1814)), %r(1815)
	movq $4, %r13		# movq $4, %r(1816)
	movq $8, %r12		# movq $8, %r(1817)
	movq %rbx, %r14		# movq %r(1696), %r(1818)
	subq %r12, %r14		# subq %r(1817), %r(1818)
	movq (%r14), %r12		# movq (%r(1818)), %r(1819)
	cmpq %r12, %r13		# cmpq %r(1819), %r(1816)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(1820)
	salq $3, %r13		# salq $3, %r(1821)
	addq %r13, %rbx		# addq %r(1821), %r(1822)
	movq (%rbx), %rbx		# movq (%r(1822)), %r(1823)
	movq $5, %r13		# movq $5, %r(1824)
	movq $8, %r12		# movq $8, %r(1825)
	movq %rbx, %r14		# movq %r(1698), %r(1826)
	subq %r12, %r14		# subq %r(1825), %r(1826)
	movq (%r14), %r12		# movq (%r(1826)), %r(1827)
	cmpq %r12, %r13		# cmpq %r(1827), %r(1824)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(1828)
	salq $3, %r13		# salq $3, %r(1829)
	addq %r13, %rbx		# addq %r(1829), %r(1830)
	movq (%rbx), %rbx		# movq (%r(1830)), %r(1831)
	movq $6, %r13		# movq $6, %r(1832)
	movq $8, %r12		# movq $8, %r(1833)
	movq %rbx, %r14		# movq %r(1700), %r(1834)
	subq %r12, %r14		# subq %r(1833), %r(1834)
	movq (%r14), %r12		# movq (%r(1834)), %r(1835)
	cmpq %r12, %r13		# cmpq %r(1835), %r(1832)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(1836)
	salq $3, %r13		# salq $3, %r(1837)
	addq %r13, %rbx		# addq %r(1837), %r(1838)
	movq $7, %r12		# movq $7, %r(1839)
	movq %r12, (%rbx)		# movq %r(1839), (%r(1838))
	movq $0, %r13		# movq $0, %r(1840)
	movq $8, %r12		# movq $8, %r(1841)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1958)
	subq %r12, %r14		# subq %r(1841), %r(1842)
	movq (%r14), %rbx		# movq (%r(1842)), %r(1843)
	cmpq %rbx, %r13		# cmpq %r(1843), %r(1840)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1844)
	salq $3, %r13		# salq $3, %r(1845)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1959)
	addq %r13, %rbx		# addq %r(1845), %r(1846)
	movq (%rbx), %rbx		# movq (%r(1846)), %r(1847)
	movq $1, %r13		# movq $1, %r(1848)
	movq $8, %r12		# movq $8, %r(1849)
	movq %rbx, %r14		# movq %r(1704), %r(1850)
	subq %r12, %r14		# subq %r(1849), %r(1850)
	movq (%r14), %r12		# movq (%r(1850)), %r(1851)
	cmpq %r12, %r13		# cmpq %r(1851), %r(1848)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1852)
	salq $3, %r13		# salq $3, %r(1853)
	addq %r13, %rbx		# addq %r(1853), %r(1854)
	movq (%rbx), %rbx		# movq (%r(1854)), %r(1855)
	movq $2, %r13		# movq $2, %r(1856)
	movq $8, %r12		# movq $8, %r(1857)
	movq %rbx, %r14		# movq %r(1706), %r(1858)
	subq %r12, %r14		# subq %r(1857), %r(1858)
	movq (%r14), %r12		# movq (%r(1858)), %r(1859)
	cmpq %r12, %r13		# cmpq %r(1859), %r(1856)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1860)
	salq $3, %r13		# salq $3, %r(1861)
	addq %r13, %rbx		# addq %r(1861), %r(1862)
	movq (%rbx), %rbx		# movq (%r(1862)), %r(1863)
	movq $3, %r13		# movq $3, %r(1864)
	movq $8, %r12		# movq $8, %r(1865)
	movq %rbx, %r14		# movq %r(1708), %r(1866)
	subq %r12, %r14		# subq %r(1865), %r(1866)
	movq (%r14), %r12		# movq (%r(1866)), %r(1867)
	cmpq %r12, %r13		# cmpq %r(1867), %r(1864)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(1868)
	salq $3, %r13		# salq $3, %r(1869)
	addq %r13, %rbx		# addq %r(1869), %r(1870)
	movq (%rbx), %rbx		# movq (%r(1870)), %r(1871)
	movq $4, %r13		# movq $4, %r(1872)
	movq $8, %r12		# movq $8, %r(1873)
	movq %rbx, %r14		# movq %r(1710), %r(1874)
	subq %r12, %r14		# subq %r(1873), %r(1874)
	movq (%r14), %r12		# movq (%r(1874)), %r(1875)
	cmpq %r12, %r13		# cmpq %r(1875), %r(1872)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(1876)
	salq $3, %r13		# salq $3, %r(1877)
	addq %r13, %rbx		# addq %r(1877), %r(1878)
	movq (%rbx), %rbx		# movq (%r(1878)), %r(1879)
	movq $5, %r13		# movq $5, %r(1880)
	movq $8, %r12		# movq $8, %r(1881)
	movq %rbx, %r14		# movq %r(1712), %r(1882)
	subq %r12, %r14		# subq %r(1881), %r(1882)
	movq (%r14), %r12		# movq (%r(1882)), %r(1883)
	cmpq %r12, %r13		# cmpq %r(1883), %r(1880)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(1884)
	salq $3, %r13		# salq $3, %r(1885)
	addq %r13, %rbx		# addq %r(1885), %r(1886)
	movq (%rbx), %rbx		# movq (%r(1886)), %r(1887)
	movq $6, %r13		# movq $6, %r(1888)
	movq $8, %r12		# movq $8, %r(1889)
	movq %rbx, %r14		# movq %r(1714), %r(1890)
	subq %r12, %r14		# subq %r(1889), %r(1890)
	movq (%r14), %r12		# movq (%r(1890)), %r(1891)
	cmpq %r12, %r13		# cmpq %r(1891), %r(1888)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(1892)
	salq $3, %r13		# salq $3, %r(1893)
	addq %r13, %rbx		# addq %r(1893), %r(1894)
	movq (%rbx), %rbx		# movq (%r(1894)), %r(1895)
	movq %rbx, %rdi		# movq %r(1895), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1752)
	movq %rbx, %rdi		# movq %r(1752), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(1896)
	movq %r12, -8(%rbp)		# movq %r(1960), -8(%rbp)
	movq $0, %r13		# movq $0, %r(1897)
	movq $8, %r12		# movq $8, %r(1898)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1961)
	subq %r12, %r14		# subq %r(1898), %r(1899)
	movq (%r14), %rbx		# movq (%r(1899)), %r(1900)
	cmpq %rbx, %r13		# cmpq %r(1900), %r(1897)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1901)
	salq $3, %r13		# salq $3, %r(1902)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1962)
	addq %r13, %rbx		# addq %r(1902), %r(1903)
	movq (%rbx), %rbx		# movq (%r(1903)), %r(1904)
	movq $1, %r13		# movq $1, %r(1905)
	movq $8, %r12		# movq $8, %r(1906)
	movq %rbx, %r14		# movq %r(1718), %r(1907)
	subq %r12, %r14		# subq %r(1906), %r(1907)
	movq (%r14), %r12		# movq (%r(1907)), %r(1908)
	cmpq %r12, %r13		# cmpq %r(1908), %r(1905)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1909)
	salq $3, %r13		# salq $3, %r(1910)
	addq %r13, %rbx		# addq %r(1910), %r(1911)
	movq (%rbx), %rbx		# movq (%r(1911)), %r(1912)
	movq $2, %r13		# movq $2, %r(1913)
	movq $8, %r12		# movq $8, %r(1914)
	movq %rbx, %r14		# movq %r(1720), %r(1915)
	subq %r12, %r14		# subq %r(1914), %r(1915)
	movq (%r14), %r12		# movq (%r(1915)), %r(1916)
	cmpq %r12, %r13		# cmpq %r(1916), %r(1913)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1917)
	salq $3, %r13		# salq $3, %r(1918)
	addq %r13, %rbx		# addq %r(1918), %r(1919)
	movq (%rbx), %rbx		# movq (%r(1919)), %r(1920)
	movq $3, %r13		# movq $3, %r(1921)
	movq $8, %r12		# movq $8, %r(1922)
	movq %rbx, %r14		# movq %r(1722), %r(1923)
	subq %r12, %r14		# subq %r(1922), %r(1923)
	movq (%r14), %r12		# movq (%r(1923)), %r(1924)
	cmpq %r12, %r13		# cmpq %r(1924), %r(1921)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(1925)
	salq $3, %r13		# salq $3, %r(1926)
	addq %r13, %rbx		# addq %r(1926), %r(1927)
	movq (%rbx), %rbx		# movq (%r(1927)), %r(1928)
	movq $4, %r13		# movq $4, %r(1929)
	movq $8, %r12		# movq $8, %r(1930)
	movq %rbx, %r14		# movq %r(1724), %r(1931)
	subq %r12, %r14		# subq %r(1930), %r(1931)
	movq (%r14), %r12		# movq (%r(1931)), %r(1932)
	cmpq %r12, %r13		# cmpq %r(1932), %r(1929)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(1933)
	salq $3, %r13		# salq $3, %r(1934)
	addq %r13, %rbx		# addq %r(1934), %r(1935)
	movq (%rbx), %rbx		# movq (%r(1935)), %r(1936)
	movq $5, %r13		# movq $5, %r(1937)
	movq $8, %r12		# movq $8, %r(1938)
	movq %rbx, %r14		# movq %r(1726), %r(1939)
	subq %r12, %r14		# subq %r(1938), %r(1939)
	movq (%r14), %r12		# movq (%r(1939)), %r(1940)
	cmpq %r12, %r13		# cmpq %r(1940), %r(1937)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(1941)
	salq $3, %r13		# salq $3, %r(1942)
	addq %r13, %rbx		# addq %r(1942), %r(1943)
	movq (%rbx), %rbx		# movq (%r(1943)), %r(1944)
	movq $6, %r13		# movq $6, %r(1945)
	movq $8, %r12		# movq $8, %r(1946)
	movq %rbx, %r14		# movq %r(1728), %r(1947)
	subq %r12, %r14		# subq %r(1946), %r(1947)
	movq (%r14), %r12		# movq (%r(1947)), %r(1948)
	cmpq %r12, %r13		# cmpq %r(1948), %r(1945)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(1949)
	salq $3, %r13		# salq $3, %r(1950)
	addq %r13, %rbx		# addq %r(1950), %r(1951)
	movq (%rbx), %rbx		# movq (%r(1951)), %r(1952)
	movq $7, %r12		# movq $7, %r(1953)
	cmpq %r12, %rbx		# cmpq %r(1953), %r(1952)
	je .L316		# je .L316
	.L317:		# .L317:
	movq $0, %r12		# movq $0, %r(1954)
	movq %r12, -8(%rbp)		# movq %r(1963), -8(%rbp)
	jmp .L316		# jmp .L316
	.L316:		# .L316:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1964)
	movq %rbx, %rdi		# movq %r(1964), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(2008)
	movq %rbx, -24(%rbp)		# movq %r(2008), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1965)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2009)
	subq %rbx, %r13		# subq %r(1965), %r(1966)
	movq (%r13), %r12		# movq (%r(1966)), %r(1967)
	movq %r12, -88(%rbp)		# movq %r(2010), -88(%rbp)
	movq $1, %r12		# movq $1, %r(1968)
	movq %r12, -56(%rbp)		# movq %r(2011), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(1969)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2012)
	cmpq %rbx, %r12		# cmpq %r(1969), %r(2012)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(1970)
	movq %rbx, %rax		# movq %r(1970), %rax
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
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2013)
	salq $3, %r12		# salq $3, %r(1971)
	movq %r12, %rdi		# movq %r(1971), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1755)
	movq $1, %r12		# movq $1, %r(1972)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(2014)
	movq %r14, -40(%rbp)		# movq %r(2015), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2016)
	subq %r12, %rbx		# subq %r(1972), %r(2016)
	movq %rbx, -40(%rbp)		# movq %r(2016), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2017)
	movq %rbx, (%r13)		# movq %r(2017), (%r(1755))
	movq $8, %rbx		# movq $8, %r(1974)
	addq %rbx, %r13		# addq %r(1974), %r(1975)
	movq %r13, -80(%rbp)		# movq %r(2018), -80(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2019)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2020)
	cmpq %r12, %rbx		# cmpq %r(2020), %r(2019)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(1976)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2021)
	subq %rbx, %r13		# subq %r(1976), %r(1977)
	movq (%r13), %rbx		# movq (%r(1977)), %r(1978)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2022)
	cmpq %rbx, %r12		# cmpq %r(1978), %r(2022)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1979)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(2023)
	subq %rbx, %r14		# subq %r(1979), %r(1980)
	movq $8, %r13		# movq $8, %r(1981)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2024)
	movq %r12, -16(%rbp)		# movq %r(2025), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2026)
	subq %r13, %rbx		# subq %r(1981), %r(2026)
	movq %rbx, -16(%rbp)		# movq %r(2026), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2027)
	movq (%rbx), %rbx		# movq (%r(2027)), %r(1983)
	cmpq %rbx, %r14		# cmpq %r(1983), %r(1740)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1984)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2028)
	addq %r14, %rbx		# addq %r(1984), %r(1985)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(2029)
	salq $3, %r14		# salq $3, %r(1986)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2030)
	movq %r12, -32(%rbp)		# movq %r(2031), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2032)
	addq %r14, %r13		# addq %r(1986), %r(2032)
	movq %r13, -32(%rbp)		# movq %r(2032), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2033)
	movq (%r12), %r12		# movq (%r(2033)), %r(1988)
	movq %r12, (%rbx)		# movq %r(1988), (%r(1985))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2034)
	incq %rbx		# incq %r(2034)
	movq %rbx, -56(%rbp)		# movq %r(2034), -56(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(1989)
	movq $8, %r12		# movq $8, %r(1990)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2035)
	subq %r12, %r14		# subq %r(1990), %r(1991)
	movq (%r14), %rbx		# movq (%r(1991)), %r(1992)
	cmpq %rbx, %r13		# cmpq %r(1992), %r(1989)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1993)
	salq $3, %r13		# salq $3, %r(1994)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2036)
	addq %r13, %rbx		# addq %r(1994), %r(1995)
	movq (%rbx), %r12		# movq (%r(1995)), %r(1996)
	movq %r12, -56(%rbp)		# movq %r(2037), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(1997)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2038)
	addq %rbx, %r12		# addq %r(1997), %r(1998)
	salq $3, %r12		# salq $3, %r(1999)
	movq %r12, %rdi		# movq %r(1999), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1756)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2039)
	movq %r12, (%rbx)		# movq %r(2039), (%r(1756))
	movq $8, %r12		# movq $8, %r(2000)
	addq %r12, %rbx		# addq %r(2000), %r(2001)
	movq %rbx, -64(%rbp)		# movq %r(2040), -64(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(2002)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2041)
	cmpq %rbx, %r12		# cmpq %r(2002), %r(2041)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2042)
	decq %rbx		# decq %r(2042)
	movq %rbx, -56(%rbp)		# movq %r(2042), -56(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2043)
	movq %rbx, %rdi		# movq %r(2043), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2044)
	movq %rbx, -48(%rbp)		# movq %r(2044), -48(%rbp)
	movq $8, %r12		# movq $8, %r(2003)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2045)
	movq %r13, -8(%rbp)		# movq %r(2046), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2047)
	subq %r12, %rbx		# subq %r(2003), %r(2047)
	movq %rbx, -8(%rbp)		# movq %r(2047), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2048)
	movq (%rbx), %rbx		# movq (%r(2048)), %r(2005)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2049)
	cmpq %rbx, %r12		# cmpq %r(2005), %r(2049)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2050)
	salq $3, %r13		# salq $3, %r(2006)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2051)
	movq %rbx, -72(%rbp)		# movq %r(2052), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2053)
	addq %r13, %r12		# addq %r(2006), %r(2053)
	movq %r12, -72(%rbp)		# movq %r(2053), -72(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2054)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2055)
	movq %rbx, (%r12)		# movq %r(2054), (%r(2055))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2056)
	movq %rbx, %rax		# movq %r(2056), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
