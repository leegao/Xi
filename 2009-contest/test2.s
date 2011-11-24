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
	movq %rdi, %rbx		# movq %rdi, %r(1811)
	movq %rbx, -80(%rbp)		# movq %r(1811), -80(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1812)
	movq %rbx, -88(%rbp)		# movq %r(1812), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(1767)
	movq %rbx, %rdi		# movq %r(1767), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1755)
	movq $0, %r12		# movq $0, %r(1768)
	movq %r12, (%r13)		# movq %r(1768), (%r(1755))
	movq $8, %r12		# movq $8, %r(1769)
	addq %r12, %r13		# addq %r(1769), %r(1770)
	movq %r13, -56(%rbp)		# movq %r(1813), -56(%rbp)
	.L289:		# .L289:
	jmp .L290		# jmp .L290
	.L290:		# .L290:
	movq $16, %rbx		# movq $16, %r(1771)
	movq %rbx, %rdi		# movq %r(1771), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1756)
	movq $1, %r12		# movq $1, %r(1772)
	movq %r12, (%rbx)		# movq %r(1772), (%r(1756))
	movq $8, %r12		# movq $8, %r(1773)
	addq %r12, %rbx		# addq %r(1773), %r(1774)
	movq %rbx, -40(%rbp)		# movq %r(1814), -40(%rbp)
	movq $0, %r12		# movq $0, %r(1775)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1815)
	movq %r13, -48(%rbp)		# movq %r(1816), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1817)
	addq %r12, %rbx		# addq %r(1775), %r(1817)
	movq %rbx, -48(%rbp)		# movq %r(1817), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(1777)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1818)
	subq %rbx, %r13		# subq %r(1777), %r(1778)
	movq (%r13), %r13		# movq (%r(1778)), %r(1779)
	movq $1, %r12		# movq $1, %r(1780)
	addq %r12, %r13		# addq %r(1780), %r(1781)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1819)
	movq %r13, (%r12)		# movq %r(1781), (%r(1819))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1820)
	movq %rbx, %rdi		# movq %r(1820), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1821)
	movq %rbx, -8(%rbp)		# movq %r(1821), -8(%rbp)
	movq $0, %r12		# movq $0, %r(1782)
	movq %r12, -24(%rbp)		# movq %r(1822), -24(%rbp)
	.L293:		# .L293:
	movq $8, %rbx		# movq $8, %r(1783)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1823)
	subq %rbx, %r13		# subq %r(1783), %r(1784)
	movq (%r13), %rbx		# movq (%r(1784)), %r(1785)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1824)
	cmpq %rbx, %r12		# cmpq %r(1785), %r(1824)
	jge .L295		# jge .L295
	.L294:		# .L294:
	movq $8, %rbx		# movq $8, %r(1786)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1825)
	subq %rbx, %r13		# subq %r(1786), %r(1787)
	movq (%r13), %rbx		# movq (%r(1787)), %r(1788)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1826)
	cmpq %rbx, %r12		# cmpq %r(1788), %r(1826)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1789)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1827)
	addq %rbx, %r14		# addq %r(1789), %r(1790)
	movq $8, %r13		# movq $8, %r(1791)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1828)
	movq %r12, -64(%rbp)		# movq %r(1829), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1830)
	subq %r13, %rbx		# subq %r(1791), %r(1830)
	movq %rbx, -64(%rbp)		# movq %r(1830), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1831)
	movq (%rbx), %rbx		# movq (%r(1831)), %r(1793)
	cmpq %rbx, %r14		# cmpq %r(1793), %r(1729)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1794)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1832)
	addq %r14, %rbx		# addq %r(1794), %r(1795)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1833)
	salq $3, %r14		# salq $3, %r(1796)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1834)
	movq %r12, -72(%rbp)		# movq %r(1835), -72(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1836)
	addq %r14, %r13		# addq %r(1796), %r(1836)
	movq %r13, -72(%rbp)		# movq %r(1836), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1837)
	movq (%r12), %r12		# movq (%r(1837)), %r(1798)
	movq %r12, (%rbx)		# movq %r(1798), (%r(1795))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1838)
	incq %rbx		# incq %r(1838)
	movq %rbx, -24(%rbp)		# movq %r(1838), -24(%rbp)
	jmp .L293		# jmp .L293
	.L295:		# .L295:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1839)
	movq %r12, -56(%rbp)		# movq %r(1840), -56(%rbp)
	movq $0, %r13		# movq $0, %r(1799)
	movq $8, %r12		# movq $8, %r(1800)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1841)
	movq %r14, -32(%rbp)		# movq %r(1842), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1843)
	subq %r12, %rbx		# subq %r(1800), %r(1843)
	movq %rbx, -32(%rbp)		# movq %r(1843), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1844)
	movq (%rbx), %rbx		# movq (%r(1844)), %r(1802)
	cmpq %rbx, %r13		# cmpq %r(1802), %r(1799)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1803)
	salq $3, %r13		# salq $3, %r(1804)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1845)
	addq %r13, %r12		# addq %r(1804), %r(1805)
	movq $48, %r14		# movq $48, %r(1806)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1846)
	movq %rbx, %rax		# movq %r(1846), %rax
	cqto		# cqto
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1847)
	idivq %rbx		# idivq %r(1847)
	movq %rdx, %rbx		# movq %rdx, %r(1848)
	movq %rbx, -16(%rbp)		# movq %r(1848), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1849)
	addq %rbx, %r14		# addq %r(1849), %r(1808)
	movq %r14, (%r12)		# movq %r(1808), (%r(1805))
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1850)
	movq %rbx, %rax		# movq %r(1850), %rax
	cqto		# cqto
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1851)
	idivq %rbx		# idivq %r(1851)
	movq %rax, %r12		# movq %rax, %r(1809)
	movq %r12, -80(%rbp)		# movq %r(1852), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(1810)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1853)
	cmpq %rbx, %r12		# cmpq %r(1810), %r(1853)
	jne .L303		# jne .L303
	.L302:		# .L302:
	jmp .L291		# jmp .L291
	.L291:		# .L291:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1854)
	movq %rbx, %rax		# movq %r(1854), %rax
	jmp .L288		# jmp .L288
	.L288:		# .L288:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L303:		# .L303:
	jmp .L289		# jmp .L289
	
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
	movq %rdi, %rbx		# movq %rdi, %r(1935)
	movq %rbx, -24(%rbp)		# movq %r(1935), -24(%rbp)
	movq $153, %rbx		# movq $153, %r(1855)
	movq $10, %r12		# movq $10, %r(1856)
	movq %rbx, %rdi		# movq %r(1855), %rdi
	movq %r12, %rsi		# movq %r(1856), %rsi
	call _Iitoa_aiii		# call _Iitoa_aiii
	movq %rax, %r13		# movq %rax, %r(1758)
	movq $0, %r12		# movq $0, %r(1857)
	movq $8, %r14		# movq $8, %r(1858)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1936)
	subq %r14, %rbx		# subq %r(1858), %r(1859)
	movq (%rbx), %rbx		# movq (%r(1859)), %r(1860)
	cmpq %rbx, %r12		# cmpq %r(1860), %r(1857)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(1861)
	salq $3, %r14		# salq $3, %r(1862)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1937)
	addq %r14, %rbx		# addq %r(1862), %r(1863)
	movq %r13, (%rbx)		# movq %r(1758), (%r(1863))
	movq $1, %rbx		# movq $1, %r(1864)
	movq %rbx, %r13		# movq %r(1864), %r(1739)
	movq $0, %r14		# movq $0, %r(1865)
	movq $8, %r12		# movq $8, %r(1866)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1938)
	subq %r12, %rbx		# subq %r(1866), %r(1867)
	movq (%rbx), %rbx		# movq (%r(1867)), %r(1868)
	cmpq %rbx, %r14		# cmpq %r(1868), %r(1865)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(1869)
	salq $3, %r14		# salq $3, %r(1870)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1939)
	addq %r14, %rbx		# addq %r(1870), %r(1871)
	movq (%rbx), %r14		# movq (%r(1871)), %r(1872)
	movq $8, %r12		# movq $8, %r(1873)
	subq %r12, %r14		# subq %r(1873), %r(1874)
	movq (%r14), %rbx		# movq (%r(1874)), %r(1875)
	movq $3, %r12		# movq $3, %r(1876)
	cmpq %r12, %rbx		# cmpq %r(1876), %r(1875)
	je .L309		# je .L309
	.L310:		# .L310:
	movq $0, %r13		# movq $0, %r(1877)
	.L309:		# .L309:
	movq %r13, %rdi		# movq %r(1739), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(1878)
	movq %r12, -16(%rbp)		# movq %r(1940), -16(%rbp)
	movq $0, %r13		# movq $0, %r(1879)
	movq $8, %r12		# movq $8, %r(1880)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1941)
	subq %r12, %r14		# subq %r(1880), %r(1881)
	movq (%r14), %rbx		# movq (%r(1881)), %r(1882)
	cmpq %rbx, %r13		# cmpq %r(1882), %r(1879)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1883)
	salq $3, %r13		# salq $3, %r(1884)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1942)
	addq %r13, %rbx		# addq %r(1884), %r(1885)
	movq (%rbx), %rbx		# movq (%r(1885)), %r(1886)
	movq %rbx, %r15		# movq %r(1886), %r(1742)
	movq $0, %r14		# movq $0, %r(1887)
	movq $8, %r12		# movq $8, %r(1888)
	movq %r15, %rbx		# movq %r(1742), %r(1943)
	movq %rbx, -32(%rbp)		# movq %r(1943), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1944)
	subq %r12, %rbx		# subq %r(1888), %r(1944)
	movq %rbx, -32(%rbp)		# movq %r(1944), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1945)
	movq (%rbx), %rbx		# movq (%r(1945)), %r(1890)
	cmpq %rbx, %r14		# cmpq %r(1890), %r(1887)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(1891)
	salq $3, %r12		# salq $3, %r(1892)
	addq %r12, %r15		# addq %r(1892), %r(1893)
	movq (%r15), %rbx		# movq (%r(1893)), %r(1894)
	movq $49, %r12		# movq $49, %r(1895)
	cmpq %r12, %rbx		# cmpq %r(1895), %r(1894)
	je .L315		# je .L315
	.L316:		# .L316:
	movq $0, %r12		# movq $0, %r(1896)
	movq %r12, -16(%rbp)		# movq %r(1946), -16(%rbp)
	.L315:		# .L315:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1947)
	movq %rbx, %rdi		# movq %r(1947), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1897)
	movq %rbx, %r15		# movq %r(1897), %r(1749)
	movq $0, %r13		# movq $0, %r(1898)
	movq $8, %r12		# movq $8, %r(1899)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1948)
	subq %r12, %rbx		# subq %r(1899), %r(1900)
	movq (%rbx), %rbx		# movq (%r(1900)), %r(1901)
	cmpq %rbx, %r13		# cmpq %r(1901), %r(1898)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1902)
	salq $3, %r13		# salq $3, %r(1903)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1949)
	addq %r13, %rbx		# addq %r(1903), %r(1904)
	movq (%rbx), %rbx		# movq (%r(1904)), %r(1905)
	movq %rbx, %r12		# movq %r(1905), %r(1747)
	movq $1, %r13		# movq $1, %r(1906)
	movq $8, %r14		# movq $8, %r(1907)
	movq %r12, %rbx		# movq %r(1747), %r(1950)
	movq %rbx, -8(%rbp)		# movq %r(1950), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1951)
	subq %r14, %rbx		# subq %r(1907), %r(1951)
	movq %rbx, -8(%rbp)		# movq %r(1951), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1952)
	movq (%rbx), %rbx		# movq (%r(1952)), %r(1909)
	cmpq %rbx, %r13		# cmpq %r(1909), %r(1906)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(1910)
	salq $3, %r13		# salq $3, %r(1911)
	addq %r13, %r12		# addq %r(1911), %r(1912)
	movq (%r12), %rbx		# movq (%r(1912)), %r(1913)
	movq $53, %r12		# movq $53, %r(1914)
	cmpq %r12, %rbx		# cmpq %r(1914), %r(1913)
	je .L321		# je .L321
	.L322:		# .L322:
	movq $0, %rbx		# movq $0, %r(1915)
	movq %rbx, %r15		# movq %r(1915), %r(1749)
	.L321:		# .L321:
	movq %r15, %rdi		# movq %r(1749), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1916)
	movq %rbx, %r15		# movq %r(1916), %r(1754)
	movq $0, %r12		# movq $0, %r(1917)
	movq $8, %r13		# movq $8, %r(1918)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1953)
	subq %r13, %rbx		# subq %r(1918), %r(1919)
	movq (%rbx), %rbx		# movq (%r(1919)), %r(1920)
	cmpq %rbx, %r12		# cmpq %r(1920), %r(1917)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1921)
	salq $3, %r13		# salq $3, %r(1922)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1954)
	addq %r13, %rbx		# addq %r(1922), %r(1923)
	movq (%rbx), %rbx		# movq (%r(1923)), %r(1924)
	movq %rbx, %r12		# movq %r(1924), %r(1752)
	movq $2, %r13		# movq $2, %r(1925)
	movq $8, %rbx		# movq $8, %r(1926)
	movq %r12, %r14		# movq %r(1752), %r(1927)
	subq %rbx, %r14		# subq %r(1926), %r(1927)
	movq (%r14), %rbx		# movq (%r(1927)), %r(1928)
	cmpq %rbx, %r13		# cmpq %r(1928), %r(1925)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(1929)
	salq $3, %r13		# salq $3, %r(1930)
	addq %r13, %r12		# addq %r(1930), %r(1931)
	movq (%r12), %rbx		# movq (%r(1931)), %r(1932)
	movq $51, %r12		# movq $51, %r(1933)
	cmpq %r12, %rbx		# cmpq %r(1933), %r(1932)
	je .L327		# je .L327
	.L328:		# .L328:
	movq $0, %rbx		# movq $0, %r(1934)
	movq %rbx, %r15		# movq %r(1934), %r(1754)
	.L327:		# .L327:
	movq %r15, %rdi		# movq %r(1754), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L304:		# .L304:
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
	movq %rdi, %rbx		# movq %rdi, %r(1998)
	movq %rbx, -32(%rbp)		# movq %r(1998), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(1955)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1999)
	subq %rbx, %r13		# subq %r(1955), %r(1956)
	movq (%r13), %r12		# movq (%r(1956)), %r(1957)
	movq %r12, -16(%rbp)		# movq %r(2000), -16(%rbp)
	movq $1, %r12		# movq $1, %r(1958)
	movq %r12, -80(%rbp)		# movq %r(2001), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(1959)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2002)
	cmpq %rbx, %r12		# cmpq %r(1959), %r(2002)
	jne .L248		# jne .L248
	.L249:		# .L249:
	movq $0, %rbx		# movq $0, %r(1960)
	movq %rbx, %rax		# movq %r(1960), %rax
	jmp .L250		# jmp .L250
	.L250:		# .L250:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L248:		# .L248:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2003)
	salq $3, %r12		# salq $3, %r(1961)
	movq %r12, %rdi		# movq %r(1961), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1763)
	movq $1, %r12		# movq $1, %r(1962)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(2004)
	movq %r14, -56(%rbp)		# movq %r(2005), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2006)
	subq %r12, %rbx		# subq %r(1962), %r(2006)
	movq %rbx, -56(%rbp)		# movq %r(2006), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2007)
	movq %rbx, (%r13)		# movq %r(2007), (%r(1763))
	movq $8, %rbx		# movq $8, %r(1964)
	addq %rbx, %r13		# addq %r(1964), %r(1965)
	movq %r13, -72(%rbp)		# movq %r(2008), -72(%rbp)
	.L251:		# .L251:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2009)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2010)
	cmpq %rbx, %r12		# cmpq %r(2009), %r(2010)
	jge .L252		# jge .L252
	.L253:		# .L253:
	movq $8, %rbx		# movq $8, %r(1966)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2011)
	subq %rbx, %r13		# subq %r(1966), %r(1967)
	movq (%r13), %rbx		# movq (%r(1967)), %r(1968)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2012)
	cmpq %rbx, %r12		# cmpq %r(1968), %r(2012)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1969)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(2013)
	subq %rbx, %r14		# subq %r(1969), %r(1970)
	movq $8, %r13		# movq $8, %r(1971)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2014)
	movq %r12, -40(%rbp)		# movq %r(2015), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2016)
	subq %r13, %rbx		# subq %r(1971), %r(2016)
	movq %rbx, -40(%rbp)		# movq %r(2016), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2017)
	movq (%rbx), %rbx		# movq (%r(2017)), %r(1973)
	cmpq %rbx, %r14		# cmpq %r(1973), %r(1080)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1974)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2018)
	addq %r14, %rbx		# addq %r(1974), %r(1975)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(2019)
	salq $3, %r14		# salq $3, %r(1976)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2020)
	movq %r12, -48(%rbp)		# movq %r(2021), -48(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2022)
	addq %r14, %r13		# addq %r(1976), %r(2022)
	movq %r13, -48(%rbp)		# movq %r(2022), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2023)
	movq (%r12), %r12		# movq (%r(2023)), %r(1978)
	movq %r12, (%rbx)		# movq %r(1978), (%r(1975))
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2024)
	incq %rbx		# incq %r(2024)
	movq %rbx, -80(%rbp)		# movq %r(2024), -80(%rbp)
	jmp .L251		# jmp .L251
	.L252:		# .L252:
	movq $0, %r13		# movq $0, %r(1979)
	movq $8, %r12		# movq $8, %r(1980)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2025)
	subq %r12, %r14		# subq %r(1980), %r(1981)
	movq (%r14), %rbx		# movq (%r(1981)), %r(1982)
	cmpq %rbx, %r13		# cmpq %r(1982), %r(1979)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1983)
	salq $3, %r13		# salq $3, %r(1984)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2026)
	addq %r13, %rbx		# addq %r(1984), %r(1985)
	movq (%rbx), %r12		# movq (%r(1985)), %r(1986)
	movq %r12, -80(%rbp)		# movq %r(2027), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(1987)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2028)
	addq %rbx, %r12		# addq %r(1987), %r(1988)
	salq $3, %r12		# salq $3, %r(1989)
	movq %r12, %rdi		# movq %r(1989), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1764)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2029)
	movq %r12, (%rbx)		# movq %r(2029), (%r(1764))
	movq $8, %r12		# movq $8, %r(1990)
	addq %r12, %rbx		# addq %r(1990), %r(1991)
	movq %rbx, -24(%rbp)		# movq %r(2030), -24(%rbp)
	.L257:		# .L257:
	movq $0, %rbx		# movq $0, %r(1992)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2031)
	cmpq %rbx, %r12		# cmpq %r(1992), %r(2031)
	jle .L258		# jle .L258
	.L259:		# .L259:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2032)
	decq %rbx		# decq %r(2032)
	movq %rbx, -80(%rbp)		# movq %r(2032), -80(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2033)
	movq %rbx, %rdi		# movq %r(2033), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2034)
	movq %rbx, -64(%rbp)		# movq %r(2034), -64(%rbp)
	movq $8, %r12		# movq $8, %r(1993)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2035)
	movq %r13, -8(%rbp)		# movq %r(2036), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2037)
	subq %r12, %rbx		# subq %r(1993), %r(2037)
	movq %rbx, -8(%rbp)		# movq %r(2037), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2038)
	movq (%rbx), %rbx		# movq (%r(2038)), %r(1995)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2039)
	cmpq %rbx, %r12		# cmpq %r(1995), %r(2039)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2040)
	salq $3, %r13		# salq $3, %r(1996)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2041)
	movq %rbx, -88(%rbp)		# movq %r(2042), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2043)
	addq %r13, %r12		# addq %r(1996), %r(2043)
	movq %r12, -88(%rbp)		# movq %r(2043), -88(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2044)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2045)
	movq %rbx, (%r12)		# movq %r(2044), (%r(2045))
	jmp .L257		# jmp .L257
	.L258:		# .L258:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2046)
	movq %rbx, %rax		# movq %r(2046), %rax
	jmp .L250		# jmp .L250
	
error_outofbounds:
call _I_outOfBounds_p
