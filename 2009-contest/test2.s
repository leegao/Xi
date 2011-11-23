.att_syntax prefix
.text
.globl _Iitoa_aiii
_Iitoa_aiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1932)
	movq %rbx, -96(%rbp)		# movq %r(1932), -96(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1933)
	movq %rbx, -88(%rbp)		# movq %r(1933), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(1889)
	movq %rbx, %rdi		# movq %r(1889), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1877)
	movq %rbx, %rbx		# movq %r(1877), %r(1845)
	movq $0, %r12		# movq $0, %r(1890)
	movq %r12, (%rbx)		# movq %r(1890), (%r(1845))
	movq $8, %r12		# movq $8, %r(1891)
	movq %rbx, %rbx		# movq %r(1845), %r(1892)
	addq %r12, %rbx		# addq %r(1891), %r(1892)
	movq %rbx, %rbx		# movq %r(1892), %r(1844)
	movq %rbx, %rbx		# movq %r(1844), %r(1934)
	movq %rbx, -16(%rbp)		# movq %r(1934), -16(%rbp)
	.L270:		# .L270:
	jmp .L271		# jmp .L271
	.L271:		# .L271:
	movq $16, %rbx		# movq $16, %r(1893)
	movq %rbx, %rdi		# movq %r(1893), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1878)
	movq %r13, %r13		# movq %r(1878), %r(1848)
	movq $1, %r12		# movq $1, %r(1894)
	movq %r12, (%r13)		# movq %r(1894), (%r(1848))
	movq $8, %r12		# movq $8, %r(1895)
	movq %r13, %r13		# movq %r(1848), %r(1896)
	addq %r12, %r13		# addq %r(1895), %r(1896)
	movq %r13, %r13		# movq %r(1896), %r(1935)
	movq %r13, -48(%rbp)		# movq %r(1935), -48(%rbp)
	movq $0, %r12		# movq $0, %r(1897)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1936)
	movq %r13, %r13		# movq %r(1936), %r(1937)
	movq %r13, -32(%rbp)		# movq %r(1937), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1938)
	addq %r12, %rbx		# addq %r(1897), %r(1938)
	movq %rbx, -32(%rbp)		# movq %r(1938), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(1899)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1939)
	movq %r13, %r13		# movq %r(1939), %r(1900)
	subq %rbx, %r13		# subq %r(1899), %r(1900)
	movq (%r13), %r13		# movq (%r(1900)), %r(1901)
	movq $1, %r12		# movq $1, %r(1902)
	movq %r13, %r13		# movq %r(1901), %r(1903)
	addq %r12, %r13		# addq %r(1902), %r(1903)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1940)
	movq %r13, (%r12)		# movq %r(1903), (%r(1940))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1941)
	movq %rbx, %rdi		# movq %r(1941), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(1879)
	movq %r12, %r12		# movq %r(1879), %r(1942)
	movq %r12, -56(%rbp)		# movq %r(1942), -56(%rbp)
	movq $0, %r12		# movq $0, %r(1904)
	movq %r12, %r12		# movq %r(1904), %r(1943)
	movq %r12, -64(%rbp)		# movq %r(1943), -64(%rbp)
	.L274:		# .L274:
	movq $8, %rbx		# movq $8, %r(1905)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1944)
	movq %r13, %r13		# movq %r(1944), %r(1906)
	subq %rbx, %r13		# subq %r(1905), %r(1906)
	movq (%r13), %rbx		# movq (%r(1906)), %r(1907)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1945)
	cmpq %rbx, %r12		# cmpq %r(1907), %r(1945)
	jge .L276		# jge .L276
	.L275:		# .L275:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1946)
	movq %r12, %r12		# movq %r(1946), %r(1947)
	movq %r12, -8(%rbp)		# movq %r(1947), -8(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1948)
	movq %r12, %r12		# movq %r(1948), %r(1949)
	movq %r12, -80(%rbp)		# movq %r(1949), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(1908)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1950)
	movq %r13, %r13		# movq %r(1950), %r(1909)
	subq %rbx, %r13		# subq %r(1908), %r(1909)
	movq (%r13), %rbx		# movq (%r(1909)), %r(1910)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1951)
	cmpq %rbx, %r12		# cmpq %r(1910), %r(1951)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1952)
	movq %r12, %r12		# movq %r(1952), %r(1953)
	movq %r12, -104(%rbp)		# movq %r(1953), -104(%rbp)
	movq $1, %rbx		# movq $1, %r(1911)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(1954)
	movq %r14, %r14		# movq %r(1954), %r(1912)
	addq %rbx, %r14		# addq %r(1911), %r(1912)
	movq %r14, %r14		# movq %r(1912), %r(1851)
	movq $8, %r13		# movq $8, %r(1913)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1955)
	movq %r12, %r12		# movq %r(1955), %r(1956)
	movq %r12, -72(%rbp)		# movq %r(1956), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1957)
	subq %r13, %rbx		# subq %r(1913), %r(1957)
	movq %rbx, -72(%rbp)		# movq %r(1957), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1958)
	movq (%rbx), %rbx		# movq (%r(1958)), %r(1915)
	cmpq %rbx, %r14		# cmpq %r(1915), %r(1851)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r14		# movq %r(1851), %r(1916)
	salq $3, %r14		# salq $3, %r(1916)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1959)
	movq %r12, %r12		# movq %r(1959), %r(1960)
	movq %r12, -40(%rbp)		# movq %r(1960), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1961)
	addq %r14, %rbx		# addq %r(1916), %r(1961)
	movq %rbx, -40(%rbp)		# movq %r(1961), -40(%rbp)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1962)
	movq %r13, %r13		# movq %r(1962), %r(1918)
	salq $3, %r13		# salq $3, %r(1918)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1963)
	movq %rbx, %rbx		# movq %r(1963), %r(1919)
	addq %r13, %rbx		# addq %r(1918), %r(1919)
	movq (%rbx), %rbx		# movq (%r(1919)), %r(1920)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1964)
	movq %rbx, (%r12)		# movq %r(1920), (%r(1964))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1965)
	incq %rbx		# incq %r(1965)
	movq %rbx, -64(%rbp)		# movq %r(1965), -64(%rbp)
	jmp .L274		# jmp .L274
	.L276:		# .L276:
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1966)
	movq %r12, %r12		# movq %r(1966), %r(1967)
	movq %r12, -16(%rbp)		# movq %r(1967), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1968)
	movq %rbx, %r14		# movq %r(1968), %r(1854)
	movq $0, %rbx		# movq $0, %r(1921)
	movq %rbx, %r13		# movq %r(1921), %r(1855)
	movq $8, %r12		# movq $8, %r(1922)
	movq %r14, %rbx		# movq %r(1854), %r(1969)
	movq %rbx, -24(%rbp)		# movq %r(1969), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1970)
	subq %r12, %rbx		# subq %r(1922), %r(1970)
	movq %rbx, -24(%rbp)		# movq %r(1970), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1971)
	movq (%rbx), %rbx		# movq (%r(1971)), %r(1924)
	cmpq %rbx, %r13		# cmpq %r(1924), %r(1855)
	jae error_outofbounds		# jae error_outofbounds
	movq %r13, %rbx		# movq %r(1855), %r(1925)
	salq $3, %rbx		# salq $3, %r(1925)
	movq %r14, %r13		# movq %r(1854), %r(1926)
	addq %rbx, %r13		# addq %r(1925), %r(1926)
	movq $48, %r14		# movq $48, %r(1927)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1972)
	movq %rbx, %rax		# movq %r(1972), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1973)
	idivq %rbx		# idivq %r(1973)
	movq %rdx, %rbx		# movq %rdx, %r(1928)
	movq %r14, %r14		# movq %r(1927), %r(1929)
	addq %rbx, %r14		# addq %r(1928), %r(1929)
	movq %r14, (%r13)		# movq %r(1929), (%r(1926))
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1974)
	movq %rbx, %rax		# movq %r(1974), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1975)
	idivq %rbx		# idivq %r(1975)
	movq %rax, %r12		# movq %rax, %r(1930)
	movq %r12, %r12		# movq %r(1930), %r(1976)
	movq %r12, -96(%rbp)		# movq %r(1976), -96(%rbp)
	movq $0, %rbx		# movq $0, %r(1931)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1977)
	cmpq %rbx, %r12		# cmpq %r(1931), %r(1977)
	jne .L284		# jne .L284
	.L283:		# .L283:
	jmp .L272		# jmp .L272
	.L284:		# .L284:
	jmp .L270		# jmp .L270
	.L272:		# .L272:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1978)
	movq %rbx, %rax		# movq %r(1978), %rax
	jmp .L269		# jmp .L269
	.L269:		# .L269:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $128, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2051)
	movq %rbx, -104(%rbp)		# movq %r(2051), -104(%rbp)
	movq $153, %rbx		# movq $153, %r(1979)
	movq $10, %r12		# movq $10, %r(1980)
	movq %rbx, %rdi		# movq %r(1979), %rdi
	movq %r12, %rsi		# movq %r(1980), %rsi
	call _Iitoa_aiii		# call _Iitoa_aiii
	movq %rax, %rbx		# movq %rax, %r(2052)
	movq %rbx, -48(%rbp)		# movq %r(2052), -48(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2053)
	movq %r12, %r12		# movq %r(2053), %r(2054)
	movq %r12, -56(%rbp)		# movq %r(2054), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(1981)
	movq %rbx, %rbx		# movq %r(1981), %r(1858)
	movq $8, %r13		# movq $8, %r(1982)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(2055)
	movq %r14, %r14		# movq %r(2055), %r(2056)
	movq %r14, -24(%rbp)		# movq %r(2056), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2057)
	subq %r13, %r12		# subq %r(1982), %r(2057)
	movq %r12, -24(%rbp)		# movq %r(2057), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2058)
	movq (%r12), %r12		# movq (%r(2058)), %r(1984)
	cmpq %r12, %rbx		# cmpq %r(1984), %r(1858)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1858), %r(1985)
	salq $3, %rbx		# salq $3, %r(1985)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2059)
	movq %r13, %r13		# movq %r(2059), %r(1986)
	addq %rbx, %r13		# addq %r(1985), %r(1986)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2060)
	movq %rbx, (%r13)		# movq %r(2060), (%r(1986))
	movq $1, %r12		# movq $1, %r(1987)
	movq %r12, %r12		# movq %r(1987), %r(2061)
	movq %r12, -32(%rbp)		# movq %r(2061), -32(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2062)
	movq %r12, %r12		# movq %r(2062), %r(2063)
	movq %r12, -120(%rbp)		# movq %r(2063), -120(%rbp)
	movq $0, %rbx		# movq $0, %r(1988)
	movq %rbx, %rbx		# movq %r(1988), %r(1860)
	movq $8, %r13		# movq $8, %r(1989)
	movq -120(%rbp), %r14		# movq -120(%rbp), %r(2064)
	movq %r14, %r14		# movq %r(2064), %r(2065)
	movq %r14, -16(%rbp)		# movq %r(2065), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2066)
	subq %r13, %r12		# subq %r(1989), %r(2066)
	movq %r12, -16(%rbp)		# movq %r(2066), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2067)
	movq (%r12), %r12		# movq (%r(2067)), %r(1991)
	cmpq %r12, %rbx		# cmpq %r(1991), %r(1860)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1860), %r(1992)
	salq $3, %rbx		# salq $3, %r(1992)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(2068)
	movq %r13, %r13		# movq %r(2068), %r(1993)
	addq %rbx, %r13		# addq %r(1992), %r(1993)
	movq (%r13), %r13		# movq (%r(1993)), %r(1994)
	movq $8, %r12		# movq $8, %r(1995)
	movq %r13, %r13		# movq %r(1994), %r(1996)
	subq %r12, %r13		# subq %r(1995), %r(1996)
	movq (%r13), %rbx		# movq (%r(1996)), %r(1997)
	movq $3, %r12		# movq $3, %r(1998)
	cmpq %r12, %rbx		# cmpq %r(1998), %r(1997)
	je .L290		# je .L290
	.L291:		# .L291:
	movq $0, %r12		# movq $0, %r(1999)
	movq %r12, %r12		# movq %r(1999), %r(2069)
	movq %r12, -32(%rbp)		# movq %r(2069), -32(%rbp)
	.L290:		# .L290:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2070)
	movq %rbx, %rdi		# movq %r(2070), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2000)
	movq %r12, %r12		# movq %r(2000), %r(2071)
	movq %r12, -112(%rbp)		# movq %r(2071), -112(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2072)
	movq %r12, %r12		# movq %r(2072), %r(2073)
	movq %r12, -96(%rbp)		# movq %r(2073), -96(%rbp)
	movq $0, %rbx		# movq $0, %r(2001)
	movq %rbx, %rbx		# movq %r(2001), %r(1863)
	movq $8, %r13		# movq $8, %r(2002)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(2074)
	movq %r14, %r14		# movq %r(2074), %r(2075)
	movq %r14, -72(%rbp)		# movq %r(2075), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2076)
	subq %r13, %r12		# subq %r(2002), %r(2076)
	movq %r12, -72(%rbp)		# movq %r(2076), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2077)
	movq (%r12), %r12		# movq (%r(2077)), %r(2004)
	cmpq %r12, %rbx		# cmpq %r(2004), %r(1863)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1863), %r(2005)
	salq $3, %rbx		# salq $3, %r(2005)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(2078)
	movq %r13, %r13		# movq %r(2078), %r(2006)
	addq %rbx, %r13		# addq %r(2005), %r(2006)
	movq (%r13), %rbx		# movq (%r(2006)), %r(2007)
	movq %rbx, %r14		# movq %r(2007), %r(1864)
	movq $0, %rbx		# movq $0, %r(2008)
	movq %rbx, %r12		# movq %r(2008), %r(1865)
	movq $8, %r13		# movq $8, %r(2009)
	movq %r14, %rbx		# movq %r(1864), %r(2079)
	movq %rbx, -80(%rbp)		# movq %r(2079), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2080)
	subq %r13, %rbx		# subq %r(2009), %r(2080)
	movq %rbx, -80(%rbp)		# movq %r(2080), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2081)
	movq (%rbx), %rbx		# movq (%r(2081)), %r(2011)
	cmpq %rbx, %r12		# cmpq %r(2011), %r(1865)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(1865), %r(2012)
	salq $3, %rbx		# salq $3, %r(2012)
	movq %r14, %r12		# movq %r(1864), %r(2013)
	addq %rbx, %r12		# addq %r(2012), %r(2013)
	movq (%r12), %rbx		# movq (%r(2013)), %r(2014)
	movq $49, %r12		# movq $49, %r(2015)
	cmpq %r12, %rbx		# cmpq %r(2015), %r(2014)
	je .L296		# je .L296
	.L297:		# .L297:
	movq $0, %r12		# movq $0, %r(2016)
	movq %r12, %r12		# movq %r(2016), %r(2082)
	movq %r12, -112(%rbp)		# movq %r(2082), -112(%rbp)
	.L296:		# .L296:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(2083)
	movq %rbx, %rdi		# movq %r(2083), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2017)
	movq %r12, %r12		# movq %r(2017), %r(2084)
	movq %r12, -64(%rbp)		# movq %r(2084), -64(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2085)
	movq %rbx, %r13		# movq %r(2085), %r(1867)
	movq $0, %rbx		# movq $0, %r(2018)
	movq %rbx, %r12		# movq %r(2018), %r(1868)
	movq $8, %r14		# movq $8, %r(2019)
	movq %r13, %rbx		# movq %r(1867), %r(2086)
	movq %rbx, -8(%rbp)		# movq %r(2086), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2087)
	subq %r14, %rbx		# subq %r(2019), %r(2087)
	movq %rbx, -8(%rbp)		# movq %r(2087), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2088)
	movq (%rbx), %rbx		# movq (%r(2088)), %r(2021)
	cmpq %rbx, %r12		# cmpq %r(2021), %r(1868)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(1868), %r(2022)
	salq $3, %rbx		# salq $3, %r(2022)
	movq %r13, %r12		# movq %r(1867), %r(2023)
	addq %rbx, %r12		# addq %r(2022), %r(2023)
	movq (%r12), %rbx		# movq (%r(2023)), %r(2024)
	movq %rbx, %r13		# movq %r(2024), %r(1869)
	movq $1, %rbx		# movq $1, %r(2025)
	movq %rbx, %r12		# movq %r(2025), %r(1870)
	movq $8, %r14		# movq $8, %r(2026)
	movq %r13, %rbx		# movq %r(1869), %r(2089)
	movq %rbx, -40(%rbp)		# movq %r(2089), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2090)
	subq %r14, %rbx		# subq %r(2026), %r(2090)
	movq %rbx, -40(%rbp)		# movq %r(2090), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2091)
	movq (%rbx), %rbx		# movq (%r(2091)), %r(2028)
	cmpq %rbx, %r12		# cmpq %r(2028), %r(1870)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(1870), %r(2029)
	salq $3, %rbx		# salq $3, %r(2029)
	movq %r13, %r12		# movq %r(1869), %r(2030)
	addq %rbx, %r12		# addq %r(2029), %r(2030)
	movq (%r12), %rbx		# movq (%r(2030)), %r(2031)
	movq $53, %r12		# movq $53, %r(2032)
	cmpq %r12, %rbx		# cmpq %r(2032), %r(2031)
	je .L302		# je .L302
	.L303:		# .L303:
	movq $0, %r12		# movq $0, %r(2033)
	movq %r12, %r12		# movq %r(2033), %r(2092)
	movq %r12, -64(%rbp)		# movq %r(2092), -64(%rbp)
	.L302:		# .L302:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2093)
	movq %rbx, %rdi		# movq %r(2093), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2034)
	movq %r12, %r12		# movq %r(2034), %r(2094)
	movq %r12, -88(%rbp)		# movq %r(2094), -88(%rbp)
	movq -104(%rbp), %r15		# movq -104(%rbp), %r(2095)
	movq %r15, %r15		# movq %r(2095), %r(1872)
	movq $0, %r12		# movq $0, %r(2035)
	movq %r12, %r14		# movq %r(2035), %r(1873)
	movq $8, %r12		# movq $8, %r(2036)
	movq %r15, %r13		# movq %r(1872), %r(2037)
	subq %r12, %r13		# subq %r(2036), %r(2037)
	movq (%r13), %r12		# movq (%r(2037)), %r(2038)
	cmpq %r12, %r14		# cmpq %r(2038), %r(1873)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1873), %r(2039)
	salq $3, %r12		# salq $3, %r(2039)
	movq %r15, %rbx		# movq %r(1872), %r(2040)
	addq %r12, %rbx		# addq %r(2039), %r(2040)
	movq (%rbx), %r15		# movq (%r(2040)), %r(2041)
	movq %r15, %r15		# movq %r(2041), %r(1874)
	movq $2, %r12		# movq $2, %r(2042)
	movq %r12, %r14		# movq %r(2042), %r(1875)
	movq $8, %r12		# movq $8, %r(2043)
	movq %r15, %r13		# movq %r(1874), %r(2044)
	subq %r12, %r13		# subq %r(2043), %r(2044)
	movq (%r13), %r12		# movq (%r(2044)), %r(2045)
	cmpq %r12, %r14		# cmpq %r(2045), %r(1875)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1875), %r(2046)
	salq $3, %r12		# salq $3, %r(2046)
	movq %r15, %rbx		# movq %r(1874), %r(2047)
	addq %r12, %rbx		# addq %r(2046), %r(2047)
	movq (%rbx), %rbx		# movq (%r(2047)), %r(2048)
	movq $51, %r12		# movq $51, %r(2049)
	cmpq %r12, %rbx		# cmpq %r(2049), %r(2048)
	je .L308		# je .L308
	.L309:		# .L309:
	movq $0, %r12		# movq $0, %r(2050)
	movq %r12, %r12		# movq %r(2050), %r(2096)
	movq %r12, -88(%rbp)		# movq %r(2096), -88(%rbp)
	.L308:		# .L308:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2097)
	movq %rbx, %rdi		# movq %r(2097), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L285:		# .L285:
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
	subq $160, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2138)
	movq %rbx, -112(%rbp)		# movq %r(2138), -112(%rbp)
	movq $8, %rbx		# movq $8, %r(2098)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(2139)
	movq %r13, %r13		# movq %r(2139), %r(2099)
	subq %rbx, %r13		# subq %r(2098), %r(2099)
	movq (%r13), %r12		# movq (%r(2099)), %r(2100)
	movq %r12, %r12		# movq %r(2100), %r(2140)
	movq %r12, -72(%rbp)		# movq %r(2140), -72(%rbp)
	movq $1, %r12		# movq $1, %r(2101)
	movq %r12, %r12		# movq %r(2101), %r(2141)
	movq %r12, -144(%rbp)		# movq %r(2141), -144(%rbp)
	movq $0, %rbx		# movq $0, %r(2102)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2142)
	cmpq %rbx, %r12		# cmpq %r(2102), %r(2142)
	jne .L227		# jne .L227
	.L228:		# .L228:
	movq $0, %rbx		# movq $0, %r(2103)
	movq %rbx, %rax		# movq %r(2103), %rax
	jmp .L229		# jmp .L229
	.L227:		# .L227:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2143)
	movq %rbx, %rdi		# movq %r(2143), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1885)
	movq %r14, %r14		# movq %r(1885), %r(1078)
	movq %r14, %r14		# movq %r(1078), %r(1079)
	movq $1, %r13		# movq $1, %r(2104)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2144)
	movq %rbx, %rbx		# movq %r(2144), %r(2145)
	movq %rbx, -96(%rbp)		# movq %r(2145), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2146)
	subq %r13, %r12		# subq %r(2104), %r(2146)
	movq %r12, -96(%rbp)		# movq %r(2146), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2147)
	movq %r12, (%r14)		# movq %r(2147), (%r(1079))
	movq $8, %r12		# movq $8, %r(2106)
	movq %r14, %r14		# movq %r(1079), %r(2107)
	addq %r12, %r14		# addq %r(2106), %r(2107)
	movq %r14, %r14		# movq %r(2107), %r(2148)
	movq %r14, -24(%rbp)		# movq %r(2148), -24(%rbp)
	.L230:		# .L230:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2149)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2150)
	cmpq %r12, %rbx		# cmpq %r(2150), %r(2149)
	jge .L231		# jge .L231
	.L232:		# .L232:
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2151)
	movq %r12, %r12		# movq %r(2151), %r(2152)
	movq %r12, -56(%rbp)		# movq %r(2152), -56(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2153)
	movq %r12, %r12		# movq %r(2153), %r(2154)
	movq %r12, -64(%rbp)		# movq %r(2154), -64(%rbp)
	movq $8, %r12		# movq $8, %r(2108)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2155)
	movq %r13, %r13		# movq %r(2155), %r(2156)
	movq %r13, -16(%rbp)		# movq %r(2156), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2157)
	subq %r12, %rbx		# subq %r(2108), %r(2157)
	movq %rbx, -16(%rbp)		# movq %r(2157), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2158)
	movq (%rbx), %rbx		# movq (%r(2158)), %r(2110)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2159)
	cmpq %rbx, %r12		# cmpq %r(2110), %r(2159)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2160)
	movq %r12, %r12		# movq %r(2160), %r(2161)
	movq %r12, -128(%rbp)		# movq %r(2161), -128(%rbp)
	movq $1, %r12		# movq $1, %r(2111)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(2162)
	movq %r13, %r13		# movq %r(2162), %r(2163)
	movq %r13, -104(%rbp)		# movq %r(2163), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2164)
	subq %r12, %rbx		# subq %r(2111), %r(2164)
	movq %rbx, -104(%rbp)		# movq %r(2164), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2165)
	movq %r12, %r12		# movq %r(2165), %r(2166)
	movq %r12, -80(%rbp)		# movq %r(2166), -80(%rbp)
	movq $8, %r12		# movq $8, %r(2113)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(2167)
	movq %r13, %r13		# movq %r(2167), %r(2168)
	movq %r13, -120(%rbp)		# movq %r(2168), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2169)
	subq %r12, %rbx		# subq %r(2113), %r(2169)
	movq %rbx, -120(%rbp)		# movq %r(2169), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2170)
	movq (%rbx), %rbx		# movq (%r(2170)), %r(2115)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2171)
	cmpq %rbx, %r12		# cmpq %r(2115), %r(2171)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2172)
	movq %r13, %r13		# movq %r(2172), %r(2116)
	salq $3, %r13		# salq $3, %r(2116)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(2173)
	movq %rbx, %rbx		# movq %r(2173), %r(2174)
	movq %rbx, -8(%rbp)		# movq %r(2174), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2175)
	addq %r13, %r12		# addq %r(2116), %r(2175)
	movq %r12, -8(%rbp)		# movq %r(2175), -8(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2176)
	movq %r12, %r12		# movq %r(2176), %r(2177)
	movq %r12, -48(%rbp)		# movq %r(2177), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2178)
	salq $3, %rbx		# salq $3, %r(2178)
	movq %rbx, -48(%rbp)		# movq %r(2178), -48(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2179)
	movq %r13, %r13		# movq %r(2179), %r(2119)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2180)
	addq %r12, %r13		# addq %r(2180), %r(2119)
	movq (%r13), %rbx		# movq (%r(2119)), %r(2120)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2181)
	movq %rbx, (%r12)		# movq %r(2120), (%r(2181))
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2182)
	incq %rbx		# incq %r(2182)
	movq %rbx, -144(%rbp)		# movq %r(2182), -144(%rbp)
	jmp .L230		# jmp .L230
	.L231:		# .L231:
	movq -112(%rbp), %r15		# movq -112(%rbp), %r(2183)
	movq %r15, %r15		# movq %r(2183), %r(1085)
	movq $0, %r12		# movq $0, %r(2121)
	movq %r12, %r14		# movq %r(2121), %r(1086)
	movq $8, %r12		# movq $8, %r(2122)
	movq %r15, %r13		# movq %r(1085), %r(2123)
	subq %r12, %r13		# subq %r(2122), %r(2123)
	movq (%r13), %r12		# movq (%r(2123)), %r(2124)
	cmpq %r12, %r14		# cmpq %r(2124), %r(1086)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1086), %r(2125)
	salq $3, %r12		# salq $3, %r(2125)
	movq %r15, %rbx		# movq %r(1085), %r(2126)
	addq %r12, %rbx		# addq %r(2125), %r(2126)
	movq (%rbx), %r12		# movq (%r(2126)), %r(2127)
	movq %r12, %r12		# movq %r(2127), %r(2184)
	movq %r12, -144(%rbp)		# movq %r(2184), -144(%rbp)
	movq $1, %rbx		# movq $1, %r(2128)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(2185)
	movq %r13, %r13		# movq %r(2185), %r(2129)
	addq %rbx, %r13		# addq %r(2128), %r(2129)
	movq %r13, %rdi		# movq %r(2129), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1886)
	movq %rbx, %rbx		# movq %r(1886), %r(1087)
	movq %rbx, %rbx		# movq %r(1087), %r(1088)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2186)
	movq %r12, (%rbx)		# movq %r(2186), (%r(1088))
	movq $8, %r12		# movq $8, %r(2130)
	movq %rbx, %rbx		# movq %r(1088), %r(2131)
	addq %r12, %rbx		# addq %r(2130), %r(2131)
	movq %rbx, %rbx		# movq %r(2131), %r(2187)
	movq %rbx, -88(%rbp)		# movq %r(2187), -88(%rbp)
	.L236:		# .L236:
	movq $0, %rbx		# movq $0, %r(2132)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2188)
	cmpq %rbx, %r12		# cmpq %r(2132), %r(2188)
	jle .L237		# jle .L237
	.L238:		# .L238:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2189)
	decq %rbx		# decq %r(2189)
	movq %rbx, -144(%rbp)		# movq %r(2189), -144(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2190)
	movq %rbx, %rdi		# movq %r(2190), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1887)
	movq %rbx, %rbx		# movq %r(1887), %r(1090)
	movq %rbx, %rbx		# movq %r(1090), %r(2191)
	movq %rbx, -136(%rbp)		# movq %r(2191), -136(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2192)
	movq %r12, %r12		# movq %r(2192), %r(2193)
	movq %r12, -32(%rbp)		# movq %r(2193), -32(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2194)
	movq %rbx, %rbx		# movq %r(2194), %r(1093)
	movq $8, %r13		# movq $8, %r(2133)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2195)
	movq %r14, %r14		# movq %r(2195), %r(2196)
	movq %r14, -40(%rbp)		# movq %r(2196), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2197)
	subq %r13, %r12		# subq %r(2133), %r(2197)
	movq %r12, -40(%rbp)		# movq %r(2197), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2198)
	movq (%r12), %r12		# movq (%r(2198)), %r(2135)
	cmpq %r12, %rbx		# cmpq %r(2135), %r(1093)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1093), %r(2136)
	salq $3, %rbx		# salq $3, %r(2136)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2199)
	movq %r13, %r13		# movq %r(2199), %r(2137)
	addq %rbx, %r13		# addq %r(2136), %r(2137)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(2200)
	movq %rbx, (%r13)		# movq %r(2200), (%r(2137))
	jmp .L236		# jmp .L236
	.L237:		# .L237:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2201)
	movq %rbx, %rax		# movq %r(2201), %rax
	jmp .L229		# jmp .L229
	.L229:		# .L229:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $160, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
