.att_syntax prefix
.text
.globl _IprintNum_pi
_IprintNum_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(x)
	movq $24, %rbx		# movq $24, %r(1951)
	movq %rbx, %rdi		# movq %r(1951), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1942)
	movq $2, %rbx		# movq $2, %r(1952)
	movq %rbx, (%r15)		# movq %r(1952), (%r(1942))
	movq $8, %rbx		# movq $8, %r(1953)
	addq %rbx, %r15		# addq %r(1953), %r(1954)
	movq $0, %rbx		# movq $0, %r(1955)
	movq %r15, %r13		# movq %r(1903), %r(1956)
	addq %rbx, %r13		# addq %r(1955), %r(1956)
	movq $48, %rbx		# movq $48, %r(1957)
	addq %rbx, %r12		# addq %r(1957), %r(1958)
	movq %r12, (%r13)		# movq %r(1958), (%r(1956))
	movq $8, %rbx		# movq $8, %r(1959)
	movq %r15, %r12		# movq %r(1903), %r(1960)
	addq %rbx, %r12		# addq %r(1959), %r(1960)
	movq $46, %rbx		# movq $46, %r(1961)
	movq %rbx, (%r12)		# movq %r(1961), (%r(1960))
	movq %r15, %rdi		# movq %r(1903), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L373		# jmp .L373
	.L373:		# .L373:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IbubbleSort_aiai
_IbubbleSort_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2011)
	movq %rbx, -32(%rbp)		# movq %r(2011), -32(%rbp)
	movq $0, %r12		# movq $0, %r(1962)
	movq %r12, -24(%rbp)		# movq %r(2012), -24(%rbp)
	jmp .L375		# jmp .L375
	.L375:		# .L375:
	movq $8, %rbx		# movq $8, %r(1963)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2013)
	subq %rbx, %r13		# subq %r(1963), %r(1964)
	movq (%r13), %r13		# movq (%r(1964)), %r(1965)
	movq $1, %r12		# movq $1, %r(1966)
	subq %r12, %r13		# subq %r(1966), %r(1967)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2014)
	cmpq %r13, %r12		# cmpq %r(1967), %r(2014)
	jge .L377		# jge .L377
	.L376:		# .L376:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2015)
	movq %r12, -8(%rbp)		# movq %r(2016), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(1968)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2017)
	subq %rbx, %r13		# subq %r(1968), %r(1969)
	movq (%r13), %rbx		# movq (%r(1969)), %r(1970)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2018)
	cmpq %rbx, %r12		# cmpq %r(1970), %r(2018)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2019)
	salq $3, %r13		# salq $3, %r(1971)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2020)
	addq %r13, %rbx		# addq %r(1971), %r(1972)
	movq (%rbx), %r12		# movq (%r(1972)), %r(1973)
	movq %r12, -48(%rbp)		# movq %r(2021), -48(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2022)
	movq %r12, -56(%rbp)		# movq %r(2023), -56(%rbp)
	jmp .L380		# jmp .L380
	.L380:		# .L380:
	movq $8, %r12		# movq $8, %r(1974)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2024)
	movq %r13, -40(%rbp)		# movq %r(2025), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2026)
	subq %r12, %rbx		# subq %r(1974), %r(2026)
	movq %rbx, -40(%rbp)		# movq %r(2026), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2027)
	movq (%rbx), %rbx		# movq (%r(2027)), %r(1976)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2028)
	cmpq %rbx, %r12		# cmpq %r(1976), %r(2028)
	jge .L382		# jge .L382
	.L381:		# .L381:
	movq $8, %r12		# movq $8, %r(1977)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2029)
	movq %r13, -72(%rbp)		# movq %r(2030), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2031)
	subq %r12, %rbx		# subq %r(1977), %r(2031)
	movq %rbx, -72(%rbp)		# movq %r(2031), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2032)
	movq (%rbx), %rbx		# movq (%r(2032)), %r(1979)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2033)
	cmpq %rbx, %r12		# cmpq %r(1979), %r(2033)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2034)
	salq $3, %r13		# salq $3, %r(1980)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2035)
	movq %rbx, -16(%rbp)		# movq %r(2036), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2037)
	addq %r13, %r12		# addq %r(1980), %r(2037)
	movq %r12, -16(%rbp)		# movq %r(2037), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2038)
	movq (%rbx), %rbx		# movq (%r(2038)), %r(1982)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2039)
	cmpq %r12, %rbx		# cmpq %r(2039), %r(1982)
	jge .L386		# jge .L386
	.L385:		# .L385:
	movq $8, %rbx		# movq $8, %r(1983)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2040)
	subq %rbx, %r13		# subq %r(1983), %r(1984)
	movq (%r13), %rbx		# movq (%r(1984)), %r(1985)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2041)
	cmpq %rbx, %r12		# cmpq %r(1985), %r(2041)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2042)
	salq $3, %r13		# salq $3, %r(1986)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2043)
	addq %r13, %rbx		# addq %r(1986), %r(1987)
	movq (%rbx), %r12		# movq (%r(1987)), %r(1988)
	movq %r12, -48(%rbp)		# movq %r(2044), -48(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2045)
	movq %r12, -56(%rbp)		# movq %r(2046), -56(%rbp)
	jmp .L386		# jmp .L386
	.L386:		# .L386:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2047)
	incq %rbx		# incq %r(2047)
	movq %rbx, -8(%rbp)		# movq %r(2047), -8(%rbp)
	jmp .L380		# jmp .L380
	.L382:		# .L382:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2048)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2049)
	cmpq %rbx, %r12		# cmpq %r(2048), %r(2049)
	je .L390		# je .L390
	.L389:		# .L389:
	movq $8, %rbx		# movq $8, %r(1989)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2050)
	subq %rbx, %r13		# subq %r(1989), %r(1990)
	movq (%r13), %rbx		# movq (%r(1990)), %r(1991)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2051)
	cmpq %rbx, %r12		# cmpq %r(1991), %r(2051)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2052)
	salq $3, %r13		# salq $3, %r(1992)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2053)
	addq %r13, %rbx		# addq %r(1992), %r(1993)
	movq (%rbx), %rbx		# movq (%r(1993)), %r(1994)
	movq $8, %r13		# movq $8, %r(1995)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2054)
	subq %r13, %r14		# subq %r(1995), %r(1996)
	movq (%r14), %r12		# movq (%r(1996)), %r(1997)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2055)
	cmpq %r12, %r13		# cmpq %r(1997), %r(2055)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r13		# movq $8, %r(1998)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2056)
	subq %r13, %r14		# subq %r(1998), %r(1999)
	movq (%r14), %r12		# movq (%r(1999)), %r(2000)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2057)
	cmpq %r12, %r13		# cmpq %r(2000), %r(2057)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(2058)
	salq $3, %r15		# salq $3, %r(2001)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2071)
	movq %r13, -80(%rbp)		# movq %r(2071), -80(%rbp)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(2072)
	movq %r14, -88(%rbp)		# movq %r(2073), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(2074)
	addq %r15, %r13		# addq %r(2001), %r(2074)
	movq %r13, -88(%rbp)		# movq %r(2074), -88(%rbp)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(2060)
	salq $3, %r14		# salq $3, %r(2003)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2061)
	movq %r12, -64(%rbp)		# movq %r(2062), -64(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2063)
	addq %r14, %r13		# addq %r(2003), %r(2063)
	movq %r13, -64(%rbp)		# movq %r(2063), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2064)
	movq (%r12), %r12		# movq (%r(2064)), %r(2005)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(2075)
	movq %r12, (%r13)		# movq %r(2005), (%r(2075))
	movq $8, %r13		# movq $8, %r(2006)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2065)
	subq %r13, %r14		# subq %r(2006), %r(2007)
	movq (%r14), %r12		# movq (%r(2007)), %r(2008)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2066)
	cmpq %r12, %r13		# cmpq %r(2008), %r(2066)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(2067)
	salq $3, %r14		# salq $3, %r(2009)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2068)
	addq %r14, %r12		# addq %r(2009), %r(2010)
	movq %rbx, (%r12)		# movq %r(tmp), (%r(2010))
	jmp .L390		# jmp .L390
	.L390:		# .L390:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2069)
	incq %rbx		# incq %r(2069)
	movq %rbx, -24(%rbp)		# movq %r(2069), -24(%rbp)
	jmp .L375		# jmp .L375
	.L377:		# .L377:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2070)
	movq %rbx, %rax		# movq %r(2070), %rax
	jmp .L374		# jmp .L374
	.L374:		# .L374:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $40, %rbx		# movq $40, %r(2076)
	movq %rbx, %rdi		# movq %r(2076), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1944)
	movq $4, %r12		# movq $4, %r(2077)
	movq %r12, (%r14)		# movq %r(2077), (%r(1944))
	movq $8, %r12		# movq $8, %r(2078)
	addq %r12, %r14		# addq %r(2078), %r(2079)
	movq $0, %r12		# movq $0, %r(2080)
	movq %r14, %rbx		# movq %r(1927), %r(2081)
	addq %r12, %rbx		# addq %r(2080), %r(2081)
	movq $6, %r12		# movq $6, %r(2082)
	movq %r12, (%rbx)		# movq %r(2082), (%r(2081))
	movq $8, %r12		# movq $8, %r(2083)
	movq %r14, %rbx		# movq %r(1927), %r(2084)
	addq %r12, %rbx		# addq %r(2083), %r(2084)
	movq $3, %r12		# movq $3, %r(2085)
	movq %r12, (%rbx)		# movq %r(2085), (%r(2084))
	movq $16, %r12		# movq $16, %r(2086)
	movq %r14, %rbx		# movq %r(1927), %r(2087)
	addq %r12, %rbx		# addq %r(2086), %r(2087)
	movq $4, %r12		# movq $4, %r(2088)
	movq %r12, (%rbx)		# movq %r(2088), (%r(2087))
	movq $24, %r12		# movq $24, %r(2089)
	movq %r14, %rbx		# movq %r(1927), %r(2090)
	addq %r12, %rbx		# addq %r(2089), %r(2090)
	movq $7, %r12		# movq $7, %r(2091)
	movq %r12, (%rbx)		# movq %r(2091), (%r(2090))
	movq %r14, %rdi		# movq %r(1927), %rdi
	call _IbubbleSort_aiai		# call _IbubbleSort_aiai
	movq %rax, %rbx		# movq %rax, %r(2136)
	movq %rbx, -8(%rbp)		# movq %r(2136), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(2092)
	movq %rbx, %r13		# movq %r(2092), %r(1932)
	movq $0, %r12		# movq $0, %r(2093)
	movq $8, %r14		# movq $8, %r(2094)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2137)
	subq %r14, %rbx		# subq %r(2094), %r(2095)
	movq (%rbx), %rbx		# movq (%r(2095)), %r(2096)
	cmpq %rbx, %r12		# cmpq %r(2096), %r(2093)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(2097)
	salq $3, %r14		# salq $3, %r(2098)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2138)
	addq %r14, %rbx		# addq %r(2098), %r(2099)
	movq (%rbx), %rbx		# movq (%r(2099)), %r(2100)
	movq $3, %r12		# movq $3, %r(2101)
	cmpq %r12, %rbx		# cmpq %r(2101), %r(2100)
	je .L402		# je .L402
	.L403:		# .L403:
	movq $0, %r13		# movq $0, %r(2102)
	jmp .L402		# jmp .L402
	.L402:		# .L402:
	movq %r13, %rdi		# movq %r(1932), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(2103)
	movq %rbx, %r13		# movq %r(2103), %r(1935)
	movq $1, %r14		# movq $1, %r(2104)
	movq $8, %r12		# movq $8, %r(2105)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2139)
	subq %r12, %rbx		# subq %r(2105), %r(2106)
	movq (%rbx), %rbx		# movq (%r(2106)), %r(2107)
	cmpq %rbx, %r14		# cmpq %r(2107), %r(2104)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(2108)
	salq $3, %r14		# salq $3, %r(2109)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2140)
	addq %r14, %rbx		# addq %r(2109), %r(2110)
	movq (%rbx), %rbx		# movq (%r(2110)), %r(2111)
	movq $4, %r12		# movq $4, %r(2112)
	cmpq %r12, %rbx		# cmpq %r(2112), %r(2111)
	je .L406		# je .L406
	.L407:		# .L407:
	movq $0, %r13		# movq $0, %r(2113)
	jmp .L406		# jmp .L406
	.L406:		# .L406:
	movq %r13, %rdi		# movq %r(1935), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(2114)
	movq %rbx, %r13		# movq %r(2114), %r(1938)
	movq $2, %r12		# movq $2, %r(2115)
	movq $8, %r14		# movq $8, %r(2116)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2141)
	subq %r14, %rbx		# subq %r(2116), %r(2117)
	movq (%rbx), %rbx		# movq (%r(2117)), %r(2118)
	cmpq %rbx, %r12		# cmpq %r(2118), %r(2115)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r14		# movq $2, %r(2119)
	salq $3, %r14		# salq $3, %r(2120)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2142)
	addq %r14, %rbx		# addq %r(2120), %r(2121)
	movq (%rbx), %rbx		# movq (%r(2121)), %r(2122)
	movq $6, %r12		# movq $6, %r(2123)
	cmpq %r12, %rbx		# cmpq %r(2123), %r(2122)
	je .L410		# je .L410
	.L411:		# .L411:
	movq $0, %r13		# movq $0, %r(2124)
	jmp .L410		# jmp .L410
	.L410:		# .L410:
	movq %r13, %rdi		# movq %r(1938), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(2125)
	movq %rbx, %r13		# movq %r(2125), %r(1941)
	movq $3, %r12		# movq $3, %r(2126)
	movq $8, %r14		# movq $8, %r(2127)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2143)
	subq %r14, %rbx		# subq %r(2127), %r(2128)
	movq (%rbx), %rbx		# movq (%r(2128)), %r(2129)
	cmpq %rbx, %r12		# cmpq %r(2129), %r(2126)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r14		# movq $3, %r(2130)
	salq $3, %r14		# salq $3, %r(2131)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2144)
	addq %r14, %rbx		# addq %r(2131), %r(2132)
	movq (%rbx), %rbx		# movq (%r(2132)), %r(2133)
	movq $7, %r12		# movq $7, %r(2134)
	cmpq %r12, %rbx		# cmpq %r(2134), %r(2133)
	je .L414		# je .L414
	.L415:		# .L415:
	movq $0, %r13		# movq $0, %r(2135)
	jmp .L414		# jmp .L414
	.L414:		# .L414:
	movq %r13, %rdi		# movq %r(1941), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L399		# jmp .L399
	.L399:		# .L399:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
