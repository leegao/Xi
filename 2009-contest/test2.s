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
	movq %rdi, %rbx		# movq %rdi, %r(1971)
	movq %rbx, -104(%rbp)		# movq %r(1971), -104(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1972)
	movq %rbx, -72(%rbp)		# movq %r(1972), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(1928)
	movq %rbx, %rdi		# movq %r(1928), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1916)
	movq $0, %r12		# movq $0, %r(1929)
	movq %r12, (%rbx)		# movq %r(1929), (%r(1884))
	movq $8, %r12		# movq $8, %r(1930)
	addq %r12, %rbx		# addq %r(1930), %r(1931)
	movq %rbx, -32(%rbp)		# movq %r(1973), -32(%rbp)
	.L289:		# .L289:
	jmp .L290		# jmp .L290
	.L290:		# .L290:
	movq $16, %rbx		# movq $16, %r(1932)
	movq %rbx, %rdi		# movq %r(1932), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1917)
	movq $1, %r12		# movq $1, %r(1933)
	movq %r12, (%r13)		# movq %r(1933), (%r(1887))
	movq $8, %r12		# movq $8, %r(1934)
	addq %r12, %r13		# addq %r(1934), %r(1935)
	movq %r13, -88(%rbp)		# movq %r(1974), -88(%rbp)
	movq $0, %r12		# movq $0, %r(1936)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1975)
	movq %r13, -64(%rbp)		# movq %r(1976), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1977)
	addq %r12, %rbx		# addq %r(1936), %r(1977)
	movq %rbx, -64(%rbp)		# movq %r(1977), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(1938)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1978)
	subq %rbx, %r13		# subq %r(1938), %r(1939)
	movq (%r13), %r13		# movq (%r(1939)), %r(1940)
	movq $1, %r12		# movq $1, %r(1941)
	addq %r12, %r13		# addq %r(1941), %r(1942)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1979)
	movq %r13, (%r12)		# movq %r(1942), (%r(1979))
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1980)
	movq %rbx, %rdi		# movq %r(1980), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(1918)
	movq %r12, -24(%rbp)		# movq %r(1981), -24(%rbp)
	movq $0, %r12		# movq $0, %r(1943)
	movq %r12, -8(%rbp)		# movq %r(1982), -8(%rbp)
	.L293:		# .L293:
	movq $8, %rbx		# movq $8, %r(1944)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1983)
	subq %rbx, %r13		# subq %r(1944), %r(1945)
	movq (%r13), %rbx		# movq (%r(1945)), %r(1946)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1984)
	cmpq %rbx, %r12		# cmpq %r(1946), %r(1984)
	jge .L295		# jge .L295
	.L294:		# .L294:
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1985)
	movq %r12, -16(%rbp)		# movq %r(1986), -16(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1987)
	movq %r12, -40(%rbp)		# movq %r(1988), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(1947)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1989)
	subq %rbx, %r13		# subq %r(1947), %r(1948)
	movq (%r13), %rbx		# movq (%r(1948)), %r(1949)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1990)
	cmpq %rbx, %r12		# cmpq %r(1949), %r(1990)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1991)
	movq %r12, -80(%rbp)		# movq %r(1992), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(1950)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1993)
	addq %rbx, %r14		# addq %r(1950), %r(1951)
	movq $8, %r13		# movq $8, %r(1952)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1994)
	movq %r12, -48(%rbp)		# movq %r(1995), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1996)
	subq %r13, %rbx		# subq %r(1952), %r(1996)
	movq %rbx, -48(%rbp)		# movq %r(1996), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1997)
	movq (%rbx), %rbx		# movq (%r(1997)), %r(1954)
	cmpq %rbx, %r14		# cmpq %r(1954), %r(1890)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1955)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1998)
	movq %r12, -96(%rbp)		# movq %r(1999), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2000)
	addq %r14, %rbx		# addq %r(1955), %r(2000)
	movq %rbx, -96(%rbp)		# movq %r(2000), -96(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2001)
	salq $3, %r13		# salq $3, %r(1957)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2002)
	addq %r13, %rbx		# addq %r(1957), %r(1958)
	movq (%rbx), %rbx		# movq (%r(1958)), %r(1959)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2003)
	movq %rbx, (%r12)		# movq %r(1959), (%r(2003))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2004)
	incq %rbx		# incq %r(2004)
	movq %rbx, -8(%rbp)		# movq %r(2004), -8(%rbp)
	jmp .L293		# jmp .L293
	.L295:		# .L295:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2005)
	movq %r12, -32(%rbp)		# movq %r(2006), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2007)
	movq %rbx, %r15		# movq %r(2007), %r(1893)
	movq $0, %rbx		# movq $0, %r(1960)
	movq %rbx, %r14		# movq %r(1960), %r(1894)
	movq $8, %r13		# movq $8, %r(1961)
	movq %r15, %rbx		# movq %r(1893), %r(2008)
	movq %rbx, -56(%rbp)		# movq %r(2008), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2009)
	subq %r13, %rbx		# subq %r(1961), %r(2009)
	movq %rbx, -56(%rbp)		# movq %r(2009), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2010)
	movq (%rbx), %rbx		# movq (%r(2010)), %r(1963)
	cmpq %rbx, %r14		# cmpq %r(1963), %r(1894)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %rbx		# movq %r(1894), %r(1964)
	salq $3, %rbx		# salq $3, %r(1964)
	movq %r15, %r13		# movq %r(1893), %r(1965)
	addq %rbx, %r13		# addq %r(1964), %r(1965)
	movq $48, %r14		# movq $48, %r(1966)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2011)
	movq %rbx, %rax		# movq %r(2011), %rax
	cqto		# cqto
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2012)
	idivq %rbx		# idivq %r(2012)
	movq %rdx, %rbx		# movq %rdx, %r(1967)
	addq %rbx, %r14		# addq %r(1967), %r(1968)
	movq %r14, (%r13)		# movq %r(1968), (%r(1965))
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2013)
	movq %rbx, %rax		# movq %r(2013), %rax
	cqto		# cqto
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2014)
	idivq %rbx		# idivq %r(2014)
	movq %rax, %r12		# movq %rax, %r(1969)
	movq %r12, -104(%rbp)		# movq %r(2015), -104(%rbp)
	movq $0, %rbx		# movq $0, %r(1970)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2016)
	cmpq %rbx, %r12		# cmpq %r(1970), %r(2016)
	jne .L303		# jne .L303
	.L302:		# .L302:
	jmp .L291		# jmp .L291
	.L291:		# .L291:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2017)
	movq %rbx, %rax		# movq %r(2017), %rax
	jmp .L288		# jmp .L288
	.L288:		# .L288:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L303:		# .L303:
	jmp .L289		# jmp .L289
	
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
	movq %rdi, %rbx		# movq %rdi, %r(2090)
	movq %rbx, -48(%rbp)		# movq %r(2090), -48(%rbp)
	movq $153, %rbx		# movq $153, %r(2018)
	movq $10, %r12		# movq $10, %r(2019)
	movq %rbx, %rdi		# movq %r(2018), %rdi
	movq %r12, %rsi		# movq %r(2019), %rsi
	call _Iitoa_aiii		# call _Iitoa_aiii
	movq %rax, %rbx		# movq %rax, %r(2091)
	movq %rbx, -88(%rbp)		# movq %r(2091), -88(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2092)
	movq %r12, -32(%rbp)		# movq %r(2093), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(2020)
	movq $8, %r13		# movq $8, %r(2021)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2094)
	movq %r14, -96(%rbp)		# movq %r(2095), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2096)
	subq %r13, %r12		# subq %r(2021), %r(2096)
	movq %r12, -96(%rbp)		# movq %r(2096), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2097)
	movq (%r12), %r12		# movq (%r(2097)), %r(2023)
	cmpq %r12, %rbx		# cmpq %r(2023), %r(1897)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2024)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2098)
	addq %rbx, %r13		# addq %r(2024), %r(2025)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2099)
	movq %rbx, (%r13)		# movq %r(2099), (%r(2025))
	movq $1, %r12		# movq $1, %r(2026)
	movq %r12, -72(%rbp)		# movq %r(2100), -72(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2101)
	movq %r12, -40(%rbp)		# movq %r(2102), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(2027)
	movq $8, %r13		# movq $8, %r(2028)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(2103)
	movq %r14, -64(%rbp)		# movq %r(2104), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2105)
	subq %r13, %r12		# subq %r(2028), %r(2105)
	movq %r12, -64(%rbp)		# movq %r(2105), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2106)
	movq (%r12), %r12		# movq (%r(2106)), %r(2030)
	cmpq %r12, %rbx		# cmpq %r(2030), %r(1899)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2031)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2107)
	addq %rbx, %r13		# addq %r(2031), %r(2032)
	movq (%r13), %r13		# movq (%r(2032)), %r(2033)
	movq $8, %r12		# movq $8, %r(2034)
	subq %r12, %r13		# subq %r(2034), %r(2035)
	movq (%r13), %rbx		# movq (%r(2035)), %r(2036)
	movq $3, %r12		# movq $3, %r(2037)
	cmpq %r12, %rbx		# cmpq %r(2037), %r(2036)
	je .L309		# je .L309
	.L310:		# .L310:
	movq $0, %r12		# movq $0, %r(2038)
	movq %r12, -72(%rbp)		# movq %r(2108), -72(%rbp)
	.L309:		# .L309:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2109)
	movq %rbx, %rdi		# movq %r(2109), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2039)
	movq %r12, -120(%rbp)		# movq %r(2110), -120(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2111)
	movq %r12, -56(%rbp)		# movq %r(2112), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(2040)
	movq $8, %r13		# movq $8, %r(2041)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(2113)
	movq %r14, -8(%rbp)		# movq %r(2114), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2115)
	subq %r13, %r12		# subq %r(2041), %r(2115)
	movq %r12, -8(%rbp)		# movq %r(2115), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2116)
	movq (%r12), %r12		# movq (%r(2116)), %r(2043)
	cmpq %r12, %rbx		# cmpq %r(2043), %r(1902)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2044)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2117)
	addq %rbx, %r13		# addq %r(2044), %r(2045)
	movq (%r13), %rbx		# movq (%r(2045)), %r(2046)
	movq %rbx, %r14		# movq %r(2046), %r(1903)
	movq $0, %rbx		# movq $0, %r(2047)
	movq %rbx, %r12		# movq %r(2047), %r(1904)
	movq $8, %r13		# movq $8, %r(2048)
	movq %r14, %rbx		# movq %r(1903), %r(2118)
	movq %rbx, -24(%rbp)		# movq %r(2118), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2119)
	subq %r13, %rbx		# subq %r(2048), %r(2119)
	movq %rbx, -24(%rbp)		# movq %r(2119), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2120)
	movq (%rbx), %rbx		# movq (%r(2120)), %r(2050)
	cmpq %rbx, %r12		# cmpq %r(2050), %r(1904)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(1904), %r(2051)
	salq $3, %rbx		# salq $3, %r(2051)
	movq %r14, %r12		# movq %r(1903), %r(2052)
	addq %rbx, %r12		# addq %r(2051), %r(2052)
	movq (%r12), %rbx		# movq (%r(2052)), %r(2053)
	movq $49, %r12		# movq $49, %r(2054)
	cmpq %r12, %rbx		# cmpq %r(2054), %r(2053)
	je .L315		# je .L315
	.L316:		# .L316:
	movq $0, %r12		# movq $0, %r(2055)
	movq %r12, -120(%rbp)		# movq %r(2121), -120(%rbp)
	.L315:		# .L315:
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2122)
	movq %rbx, %rdi		# movq %r(2122), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2056)
	movq %r12, -104(%rbp)		# movq %r(2123), -104(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2124)
	movq %rbx, %r15		# movq %r(2124), %r(1906)
	movq $0, %rbx		# movq $0, %r(2057)
	movq %rbx, %r13		# movq %r(2057), %r(1907)
	movq $8, %r14		# movq $8, %r(2058)
	movq %r15, %rbx		# movq %r(1906), %r(2125)
	movq %rbx, -80(%rbp)		# movq %r(2125), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2126)
	subq %r14, %rbx		# subq %r(2058), %r(2126)
	movq %rbx, -80(%rbp)		# movq %r(2126), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2127)
	movq (%rbx), %rbx		# movq (%r(2127)), %r(2060)
	cmpq %rbx, %r13		# cmpq %r(2060), %r(1907)
	jae error_outofbounds		# jae error_outofbounds
	movq %r13, %rbx		# movq %r(1907), %r(2061)
	salq $3, %rbx		# salq $3, %r(2061)
	movq %r15, %r12		# movq %r(1906), %r(2062)
	addq %rbx, %r12		# addq %r(2061), %r(2062)
	movq (%r12), %rbx		# movq (%r(2062)), %r(2063)
	movq %rbx, %r13		# movq %r(2063), %r(1908)
	movq $1, %rbx		# movq $1, %r(2064)
	movq %rbx, %r12		# movq %r(2064), %r(1909)
	movq $8, %r14		# movq $8, %r(2065)
	movq %r13, %rbx		# movq %r(1908), %r(2128)
	movq %rbx, -16(%rbp)		# movq %r(2128), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2129)
	subq %r14, %rbx		# subq %r(2065), %r(2129)
	movq %rbx, -16(%rbp)		# movq %r(2129), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2130)
	movq (%rbx), %rbx		# movq (%r(2130)), %r(2067)
	cmpq %rbx, %r12		# cmpq %r(2067), %r(1909)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(1909), %r(2068)
	salq $3, %rbx		# salq $3, %r(2068)
	movq %r13, %r12		# movq %r(1908), %r(2069)
	addq %rbx, %r12		# addq %r(2068), %r(2069)
	movq (%r12), %rbx		# movq (%r(2069)), %r(2070)
	movq $53, %r12		# movq $53, %r(2071)
	cmpq %r12, %rbx		# cmpq %r(2071), %r(2070)
	je .L321		# je .L321
	.L322:		# .L322:
	movq $0, %r12		# movq $0, %r(2072)
	movq %r12, -104(%rbp)		# movq %r(2131), -104(%rbp)
	.L321:		# .L321:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2132)
	movq %rbx, %rdi		# movq %r(2132), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2073)
	movq %r12, -112(%rbp)		# movq %r(2133), -112(%rbp)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(2134)
	movq $0, %r12		# movq $0, %r(2074)
	movq %r12, %r14		# movq %r(2074), %r(1912)
	movq $8, %r12		# movq $8, %r(2075)
	movq %r15, %r13		# movq %r(1911), %r(2076)
	subq %r12, %r13		# subq %r(2075), %r(2076)
	movq (%r13), %r12		# movq (%r(2076)), %r(2077)
	cmpq %r12, %r14		# cmpq %r(2077), %r(1912)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1912), %r(2078)
	salq $3, %r12		# salq $3, %r(2078)
	movq %r15, %rbx		# movq %r(1911), %r(2079)
	addq %r12, %rbx		# addq %r(2078), %r(2079)
	movq (%rbx), %r15		# movq (%r(2079)), %r(2080)
	movq $2, %r12		# movq $2, %r(2081)
	movq %r12, %r14		# movq %r(2081), %r(1914)
	movq $8, %r12		# movq $8, %r(2082)
	movq %r15, %r13		# movq %r(1913), %r(2083)
	subq %r12, %r13		# subq %r(2082), %r(2083)
	movq (%r13), %r12		# movq (%r(2083)), %r(2084)
	cmpq %r12, %r14		# cmpq %r(2084), %r(1914)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1914), %r(2085)
	salq $3, %r12		# salq $3, %r(2085)
	movq %r15, %rbx		# movq %r(1913), %r(2086)
	addq %r12, %rbx		# addq %r(2085), %r(2086)
	movq (%rbx), %rbx		# movq (%r(2086)), %r(2087)
	movq $51, %r12		# movq $51, %r(2088)
	cmpq %r12, %rbx		# cmpq %r(2088), %r(2087)
	je .L327		# je .L327
	.L328:		# .L328:
	movq $0, %r12		# movq $0, %r(2089)
	movq %r12, -112(%rbp)		# movq %r(2135), -112(%rbp)
	.L327:		# .L327:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(2136)
	movq %rbx, %rdi		# movq %r(2136), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L304:		# .L304:
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
	movq %rdi, %rbx		# movq %rdi, %r(2179)
	movq %rbx, -88(%rbp)		# movq %r(2179), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(2137)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(2180)
	subq %rbx, %r13		# subq %r(2137), %r(2138)
	movq (%r13), %r12		# movq (%r(2138)), %r(2139)
	movq %r12, -32(%rbp)		# movq %r(2181), -32(%rbp)
	movq $1, %r12		# movq $1, %r(2140)
	movq %r12, -48(%rbp)		# movq %r(2182), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(2141)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2183)
	cmpq %rbx, %r12		# cmpq %r(2141), %r(2183)
	jne .L248		# jne .L248
	.L249:		# .L249:
	movq $0, %rbx		# movq $0, %r(2142)
	movq %rbx, %rax		# movq %r(2142), %rax
	jmp .L250		# jmp .L250
	.L250:		# .L250:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $160, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L248:		# .L248:
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2184)
	salq $3, %r12		# salq $3, %r(2143)
	movq %r12, %rdi		# movq %r(2143), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1924)
	movq $1, %r13		# movq $1, %r(2144)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2185)
	movq %rbx, -56(%rbp)		# movq %r(2186), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2187)
	subq %r13, %r12		# subq %r(2144), %r(2187)
	movq %r12, -56(%rbp)		# movq %r(2187), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2188)
	movq %r12, (%r14)		# movq %r(2188), (%r(1142))
	movq $8, %r12		# movq $8, %r(2146)
	addq %r12, %r14		# addq %r(2146), %r(2147)
	movq %r14, -64(%rbp)		# movq %r(2189), -64(%rbp)
	.L251:		# .L251:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2190)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2191)
	cmpq %rbx, %r12		# cmpq %r(2190), %r(2191)
	jge .L252		# jge .L252
	.L253:		# .L253:
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2192)
	movq %r12, -40(%rbp)		# movq %r(2193), -40(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2194)
	movq %r12, -144(%rbp)		# movq %r(2195), -144(%rbp)
	movq $8, %rbx		# movq $8, %r(2148)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2196)
	subq %rbx, %r13		# subq %r(2148), %r(2149)
	movq (%r13), %rbx		# movq (%r(2149)), %r(2150)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2197)
	cmpq %rbx, %r12		# cmpq %r(2150), %r(2197)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2198)
	movq %r12, -24(%rbp)		# movq %r(2199), -24(%rbp)
	movq $1, %rbx		# movq $1, %r(2151)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(2200)
	subq %rbx, %r14		# subq %r(2151), %r(2152)
	movq $8, %r13		# movq $8, %r(2153)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2201)
	movq %r12, -120(%rbp)		# movq %r(2202), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2203)
	subq %r13, %rbx		# subq %r(2153), %r(2203)
	movq %rbx, -120(%rbp)		# movq %r(2203), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2204)
	movq (%rbx), %rbx		# movq (%r(2204)), %r(2155)
	cmpq %rbx, %r14		# cmpq %r(2155), %r(1147)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(2156)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2205)
	movq %r12, -136(%rbp)		# movq %r(2206), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(2207)
	addq %r14, %rbx		# addq %r(2156), %r(2207)
	movq %rbx, -136(%rbp)		# movq %r(2207), -136(%rbp)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(2208)
	salq $3, %r13		# salq $3, %r(2158)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2209)
	addq %r13, %rbx		# addq %r(2158), %r(2159)
	movq (%rbx), %rbx		# movq (%r(2159)), %r(2160)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(2210)
	movq %rbx, (%r12)		# movq %r(2160), (%r(2210))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2211)
	incq %rbx		# incq %r(2211)
	movq %rbx, -48(%rbp)		# movq %r(2211), -48(%rbp)
	jmp .L251		# jmp .L251
	.L252:		# .L252:
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2212)
	movq %r12, -128(%rbp)		# movq %r(2213), -128(%rbp)
	movq $0, %rbx		# movq $0, %r(2161)
	movq $8, %r13		# movq $8, %r(2162)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(2214)
	movq %r14, -8(%rbp)		# movq %r(2215), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2216)
	subq %r13, %r12		# subq %r(2162), %r(2216)
	movq %r12, -8(%rbp)		# movq %r(2216), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2217)
	movq (%r12), %r12		# movq (%r(2217)), %r(2164)
	cmpq %r12, %rbx		# cmpq %r(2164), %r(1149)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2165)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(2218)
	addq %rbx, %r13		# addq %r(2165), %r(2166)
	movq (%r13), %r12		# movq (%r(2166)), %r(2167)
	movq %r12, -48(%rbp)		# movq %r(2219), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(2168)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2220)
	addq %rbx, %r12		# addq %r(2168), %r(2169)
	salq $3, %r12		# salq $3, %r(2170)
	movq %r12, %rdi		# movq %r(2170), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1925)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2221)
	movq %r12, (%rbx)		# movq %r(2221), (%r(1151))
	movq $8, %r12		# movq $8, %r(2171)
	addq %r12, %rbx		# addq %r(2171), %r(2172)
	movq %rbx, -96(%rbp)		# movq %r(2222), -96(%rbp)
	.L257:		# .L257:
	movq $0, %rbx		# movq $0, %r(2173)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2223)
	cmpq %rbx, %r12		# cmpq %r(2173), %r(2223)
	jle .L258		# jle .L258
	.L259:		# .L259:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2224)
	decq %rbx		# decq %r(2224)
	movq %rbx, -48(%rbp)		# movq %r(2224), -48(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2225)
	movq %rbx, %rdi		# movq %r(2225), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1926)
	movq %rbx, -16(%rbp)		# movq %r(2226), -16(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2227)
	movq %r12, -72(%rbp)		# movq %r(2228), -72(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2229)
	movq %r12, -80(%rbp)		# movq %r(2230), -80(%rbp)
	movq $8, %r12		# movq $8, %r(2174)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(2231)
	movq %r13, -112(%rbp)		# movq %r(2232), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(2233)
	subq %r12, %rbx		# subq %r(2174), %r(2233)
	movq %rbx, -112(%rbp)		# movq %r(2233), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(2234)
	movq (%rbx), %rbx		# movq (%r(2234)), %r(2176)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2235)
	cmpq %rbx, %r12		# cmpq %r(2176), %r(2235)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2236)
	movq %r12, -104(%rbp)		# movq %r(2237), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2238)
	salq $3, %rbx		# salq $3, %r(2238)
	movq %rbx, -104(%rbp)		# movq %r(2238), -104(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(2239)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2240)
	addq %r12, %r13		# addq %r(2240), %r(2178)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2241)
	movq %r12, (%r13)		# movq %r(2241), (%r(2178))
	jmp .L257		# jmp .L257
	.L258:		# .L258:
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2242)
	movq %rbx, %rax		# movq %r(2242), %rax
	jmp .L250		# jmp .L250
	
error_outofbounds:
call _I_outOfBounds_p
