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
	movq %rdi, %rbx		# movq %rdi, %r(1979)
	movq %rbx, -64(%rbp)		# movq %r(1979), -64(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1980)
	movq %rbx, -40(%rbp)		# movq %r(1980), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(1936)
	movq %rbx, %rdi		# movq %r(1936), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1924)
	movq $0, %r12		# movq $0, %r(1937)
	movq %r12, (%rbx)		# movq %r(1937), (%r(1892))
	movq $8, %r12		# movq $8, %r(1938)
	addq %r12, %rbx		# addq %r(1938), %r(1939)
	movq %rbx, -80(%rbp)		# movq %r(1981), -80(%rbp)
	.L288:		# .L288:
	jmp .L289		# jmp .L289
	.L289:		# .L289:
	movq $16, %rbx		# movq $16, %r(1940)
	movq %rbx, %rdi		# movq %r(1940), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1925)
	movq $1, %r12		# movq $1, %r(1941)
	movq %r12, (%r13)		# movq %r(1941), (%r(1895))
	movq $8, %r12		# movq $8, %r(1942)
	addq %r12, %r13		# addq %r(1942), %r(1943)
	movq %r13, -88(%rbp)		# movq %r(1982), -88(%rbp)
	movq $0, %r12		# movq $0, %r(1944)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1983)
	movq %r13, -56(%rbp)		# movq %r(1984), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1985)
	addq %r12, %rbx		# addq %r(1944), %r(1985)
	movq %rbx, -56(%rbp)		# movq %r(1985), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(1946)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1986)
	subq %rbx, %r13		# subq %r(1946), %r(1947)
	movq (%r13), %r13		# movq (%r(1947)), %r(1948)
	movq $1, %r12		# movq $1, %r(1949)
	addq %r12, %r13		# addq %r(1949), %r(1950)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1987)
	movq %r13, (%r12)		# movq %r(1950), (%r(1987))
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1988)
	movq %rbx, %rdi		# movq %r(1988), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(1926)
	movq %r12, -104(%rbp)		# movq %r(1989), -104(%rbp)
	movq $0, %r12		# movq $0, %r(1951)
	movq %r12, -24(%rbp)		# movq %r(1990), -24(%rbp)
	.L292:		# .L292:
	movq $8, %rbx		# movq $8, %r(1952)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1991)
	subq %rbx, %r13		# subq %r(1952), %r(1953)
	movq (%r13), %rbx		# movq (%r(1953)), %r(1954)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1992)
	cmpq %rbx, %r12		# cmpq %r(1954), %r(1992)
	jge .L294		# jge .L294
	.L293:		# .L293:
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1993)
	movq %r12, -32(%rbp)		# movq %r(1994), -32(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1995)
	movq %r12, -96(%rbp)		# movq %r(1996), -96(%rbp)
	movq $8, %rbx		# movq $8, %r(1955)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1997)
	subq %rbx, %r13		# subq %r(1955), %r(1956)
	movq (%r13), %rbx		# movq (%r(1956)), %r(1957)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1998)
	cmpq %rbx, %r12		# cmpq %r(1957), %r(1998)
	jae error_outofbounds		# jae error_outofbounds
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1999)
	movq %r12, -72(%rbp)		# movq %r(2000), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(1958)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2001)
	addq %rbx, %r14		# addq %r(1958), %r(1959)
	movq $8, %r13		# movq $8, %r(1960)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2002)
	movq %r12, -48(%rbp)		# movq %r(2003), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2004)
	subq %r13, %rbx		# subq %r(1960), %r(2004)
	movq %rbx, -48(%rbp)		# movq %r(2004), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2005)
	movq (%rbx), %rbx		# movq (%r(2005)), %r(1962)
	cmpq %rbx, %r14		# cmpq %r(1962), %r(1898)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1963)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2006)
	movq %r12, -8(%rbp)		# movq %r(2007), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2008)
	addq %r14, %rbx		# addq %r(1963), %r(2008)
	movq %rbx, -8(%rbp)		# movq %r(2008), -8(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(2009)
	salq $3, %r13		# salq $3, %r(1965)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2010)
	addq %r13, %rbx		# addq %r(1965), %r(1966)
	movq (%rbx), %rbx		# movq (%r(1966)), %r(1967)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2011)
	movq %rbx, (%r12)		# movq %r(1967), (%r(2011))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2012)
	incq %rbx		# incq %r(2012)
	movq %rbx, -24(%rbp)		# movq %r(2012), -24(%rbp)
	jmp .L292		# jmp .L292
	.L294:		# .L294:
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2013)
	movq %r12, -80(%rbp)		# movq %r(2014), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2015)
	movq %rbx, %r13		# movq %r(2015), %r(1901)
	movq $0, %rbx		# movq $0, %r(1968)
	movq %rbx, %r12		# movq %r(1968), %r(1902)
	movq $8, %r14		# movq $8, %r(1969)
	movq %r13, %rbx		# movq %r(1901), %r(2016)
	movq %rbx, -16(%rbp)		# movq %r(2016), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2017)
	subq %r14, %rbx		# subq %r(1969), %r(2017)
	movq %rbx, -16(%rbp)		# movq %r(2017), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2018)
	movq (%rbx), %rbx		# movq (%r(2018)), %r(1971)
	cmpq %rbx, %r12		# cmpq %r(1971), %r(1902)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(1902), %r(1972)
	salq $3, %rbx		# salq $3, %r(1972)
	addq %rbx, %r13		# addq %r(1972), %r(1973)
	movq $48, %r14		# movq $48, %r(1974)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2019)
	movq %rbx, %rax		# movq %r(2019), %rax
	cltq		# cltq
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2020)
	idivq %rbx		# idivq %r(2020)
	movq %rdx, %rbx		# movq %rdx, %r(1975)
	addq %rbx, %r14		# addq %r(1975), %r(1976)
	movq %r14, (%r13)		# movq %r(1976), (%r(1973))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2021)
	movq %rbx, %rax		# movq %r(2021), %rax
	cltq		# cltq
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2022)
	idivq %rbx		# idivq %r(2022)
	movq %rax, %r12		# movq %rax, %r(1977)
	movq %r12, -64(%rbp)		# movq %r(2023), -64(%rbp)
	movq $0, %rbx		# movq $0, %r(1978)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2024)
	cmpq %rbx, %r12		# cmpq %r(1978), %r(2024)
	jne .L302		# jne .L302
	.L301:		# .L301:
	jmp .L290		# jmp .L290
	.L302:		# .L302:
	jmp .L288		# jmp .L288
	.L290:		# .L290:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2025)
	movq %rbx, %rax		# movq %r(2025), %rax
	jmp .L287		# jmp .L287
	.L287:		# .L287:
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
	movq %rdi, %rbx		# movq %rdi, %r(2098)
	movq %rbx, -56(%rbp)		# movq %r(2098), -56(%rbp)
	movq $153, %rbx		# movq $153, %r(2026)
	movq $10, %r12		# movq $10, %r(2027)
	movq %rbx, %rdi		# movq %r(2026), %rdi
	movq %r12, %rsi		# movq %r(2027), %rsi
	call _Iitoa_aiii		# call _Iitoa_aiii
	movq %rax, %rbx		# movq %rax, %r(2099)
	movq %rbx, -96(%rbp)		# movq %r(2099), -96(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2100)
	movq %r12, -64(%rbp)		# movq %r(2101), -64(%rbp)
	movq $0, %rbx		# movq $0, %r(2028)
	movq $8, %r13		# movq $8, %r(2029)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(2102)
	movq %r14, -112(%rbp)		# movq %r(2103), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2104)
	subq %r13, %r12		# subq %r(2029), %r(2104)
	movq %r12, -112(%rbp)		# movq %r(2104), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2105)
	movq (%r12), %r12		# movq (%r(2105)), %r(2031)
	cmpq %r12, %rbx		# cmpq %r(2031), %r(1905)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2032)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2106)
	addq %rbx, %r13		# addq %r(2032), %r(2033)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2107)
	movq %rbx, (%r13)		# movq %r(2107), (%r(2033))
	movq $1, %r12		# movq $1, %r(2034)
	movq %r12, -24(%rbp)		# movq %r(2108), -24(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2109)
	movq %r12, -80(%rbp)		# movq %r(2110), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(2035)
	movq $8, %r13		# movq $8, %r(2036)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(2111)
	movq %r14, -120(%rbp)		# movq %r(2112), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(2113)
	subq %r13, %r12		# subq %r(2036), %r(2113)
	movq %r12, -120(%rbp)		# movq %r(2113), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(2114)
	movq (%r12), %r12		# movq (%r(2114)), %r(2038)
	cmpq %r12, %rbx		# cmpq %r(2038), %r(1907)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2039)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2115)
	addq %rbx, %r13		# addq %r(2039), %r(2040)
	movq (%r13), %r13		# movq (%r(2040)), %r(2041)
	movq $8, %r12		# movq $8, %r(2042)
	subq %r12, %r13		# subq %r(2042), %r(2043)
	movq (%r13), %rbx		# movq (%r(2043)), %r(2044)
	movq $3, %r12		# movq $3, %r(2045)
	cmpq %r12, %rbx		# cmpq %r(2045), %r(2044)
	je .L308		# je .L308
	.L309:		# .L309:
	movq $0, %r12		# movq $0, %r(2046)
	movq %r12, -24(%rbp)		# movq %r(2116), -24(%rbp)
	.L308:		# .L308:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2117)
	movq %rbx, %rdi		# movq %r(2117), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2047)
	movq %r12, -48(%rbp)		# movq %r(2118), -48(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2119)
	movq %r12, -32(%rbp)		# movq %r(2120), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(2048)
	movq $8, %r13		# movq $8, %r(2049)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2121)
	movq %r14, -40(%rbp)		# movq %r(2122), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2123)
	subq %r13, %r12		# subq %r(2049), %r(2123)
	movq %r12, -40(%rbp)		# movq %r(2123), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2124)
	movq (%r12), %r12		# movq (%r(2124)), %r(2051)
	cmpq %r12, %rbx		# cmpq %r(2051), %r(1910)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2052)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2125)
	addq %rbx, %r13		# addq %r(2052), %r(2053)
	movq (%r13), %rbx		# movq (%r(2053)), %r(2054)
	movq %rbx, %r14		# movq %r(2054), %r(1911)
	movq $0, %rbx		# movq $0, %r(2055)
	movq %rbx, %r12		# movq %r(2055), %r(1912)
	movq $8, %r13		# movq $8, %r(2056)
	movq %r14, %rbx		# movq %r(1911), %r(2126)
	movq %rbx, -88(%rbp)		# movq %r(2126), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2127)
	subq %r13, %rbx		# subq %r(2056), %r(2127)
	movq %rbx, -88(%rbp)		# movq %r(2127), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2128)
	movq (%rbx), %rbx		# movq (%r(2128)), %r(2058)
	cmpq %rbx, %r12		# cmpq %r(2058), %r(1912)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(1912), %r(2059)
	salq $3, %rbx		# salq $3, %r(2059)
	movq %r14, %r12		# movq %r(1911), %r(2060)
	addq %rbx, %r12		# addq %r(2059), %r(2060)
	movq (%r12), %rbx		# movq (%r(2060)), %r(2061)
	movq $49, %r12		# movq $49, %r(2062)
	cmpq %r12, %rbx		# cmpq %r(2062), %r(2061)
	je .L314		# je .L314
	.L315:		# .L315:
	movq $0, %r12		# movq $0, %r(2063)
	movq %r12, -48(%rbp)		# movq %r(2129), -48(%rbp)
	.L314:		# .L314:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2130)
	movq %rbx, %rdi		# movq %r(2130), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2064)
	movq %r12, -72(%rbp)		# movq %r(2131), -72(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2132)
	movq %rbx, %r13		# movq %r(2132), %r(1914)
	movq $0, %rbx		# movq $0, %r(2065)
	movq %rbx, %r12		# movq %r(2065), %r(1915)
	movq $8, %r14		# movq $8, %r(2066)
	movq %r13, %rbx		# movq %r(1914), %r(2133)
	movq %rbx, -8(%rbp)		# movq %r(2133), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2134)
	subq %r14, %rbx		# subq %r(2066), %r(2134)
	movq %rbx, -8(%rbp)		# movq %r(2134), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2135)
	movq (%rbx), %rbx		# movq (%r(2135)), %r(2068)
	cmpq %rbx, %r12		# cmpq %r(2068), %r(1915)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(1915), %r(2069)
	salq $3, %rbx		# salq $3, %r(2069)
	movq %r13, %r12		# movq %r(1914), %r(2070)
	addq %rbx, %r12		# addq %r(2069), %r(2070)
	movq (%r12), %rbx		# movq (%r(2070)), %r(2071)
	movq %rbx, %r15		# movq %r(2071), %r(1916)
	movq $1, %rbx		# movq $1, %r(2072)
	movq %rbx, %r14		# movq %r(2072), %r(1917)
	movq $8, %r13		# movq $8, %r(2073)
	movq %r15, %rbx		# movq %r(1916), %r(2136)
	movq %rbx, -16(%rbp)		# movq %r(2136), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2137)
	subq %r13, %rbx		# subq %r(2073), %r(2137)
	movq %rbx, -16(%rbp)		# movq %r(2137), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2138)
	movq (%rbx), %rbx		# movq (%r(2138)), %r(2075)
	cmpq %rbx, %r14		# cmpq %r(2075), %r(1917)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %rbx		# movq %r(1917), %r(2076)
	salq $3, %rbx		# salq $3, %r(2076)
	movq %r15, %r12		# movq %r(1916), %r(2077)
	addq %rbx, %r12		# addq %r(2076), %r(2077)
	movq (%r12), %rbx		# movq (%r(2077)), %r(2078)
	movq $53, %r12		# movq $53, %r(2079)
	cmpq %r12, %rbx		# cmpq %r(2079), %r(2078)
	je .L320		# je .L320
	.L321:		# .L321:
	movq $0, %r12		# movq $0, %r(2080)
	movq %r12, -72(%rbp)		# movq %r(2139), -72(%rbp)
	.L320:		# .L320:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2140)
	movq %rbx, %rdi		# movq %r(2140), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2081)
	movq %r12, -104(%rbp)		# movq %r(2141), -104(%rbp)
	movq -56(%rbp), %r15		# movq -56(%rbp), %r(2142)
	movq $0, %r12		# movq $0, %r(2082)
	movq %r12, %r14		# movq %r(2082), %r(1920)
	movq $8, %r12		# movq $8, %r(2083)
	movq %r15, %r13		# movq %r(1919), %r(2084)
	subq %r12, %r13		# subq %r(2083), %r(2084)
	movq (%r13), %r12		# movq (%r(2084)), %r(2085)
	cmpq %r12, %r14		# cmpq %r(2085), %r(1920)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1920), %r(2086)
	salq $3, %r12		# salq $3, %r(2086)
	movq %r15, %rbx		# movq %r(1919), %r(2087)
	addq %r12, %rbx		# addq %r(2086), %r(2087)
	movq (%rbx), %r15		# movq (%r(2087)), %r(2088)
	movq $2, %r12		# movq $2, %r(2089)
	movq %r12, %r14		# movq %r(2089), %r(1922)
	movq $8, %r12		# movq $8, %r(2090)
	movq %r15, %r13		# movq %r(1921), %r(2091)
	subq %r12, %r13		# subq %r(2090), %r(2091)
	movq (%r13), %r12		# movq (%r(2091)), %r(2092)
	cmpq %r12, %r14		# cmpq %r(2092), %r(1922)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1922), %r(2093)
	salq $3, %r12		# salq $3, %r(2093)
	movq %r15, %rbx		# movq %r(1921), %r(2094)
	addq %r12, %rbx		# addq %r(2093), %r(2094)
	movq (%rbx), %rbx		# movq (%r(2094)), %r(2095)
	movq $51, %r12		# movq $51, %r(2096)
	cmpq %r12, %rbx		# cmpq %r(2096), %r(2095)
	je .L326		# je .L326
	.L327:		# .L327:
	movq $0, %r12		# movq $0, %r(2097)
	movq %r12, -104(%rbp)		# movq %r(2143), -104(%rbp)
	.L326:		# .L326:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2144)
	movq %rbx, %rdi		# movq %r(2144), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L303:		# .L303:
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
	movq %rdi, %rbx		# movq %rdi, %r(2185)
	movq %rbx, -104(%rbp)		# movq %r(2185), -104(%rbp)
	movq $8, %rbx		# movq $8, %r(2145)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(2186)
	subq %rbx, %r13		# subq %r(2145), %r(2146)
	movq (%r13), %r12		# movq (%r(2146)), %r(2147)
	movq %r12, -144(%rbp)		# movq %r(2187), -144(%rbp)
	movq $1, %r12		# movq $1, %r(2148)
	movq %r12, -48(%rbp)		# movq %r(2188), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(2149)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2189)
	cmpq %rbx, %r12		# cmpq %r(2149), %r(2189)
	jne .L247		# jne .L247
	.L248:		# .L248:
	movq $0, %rbx		# movq $0, %r(2150)
	movq %rbx, %rax		# movq %r(2150), %rax
	jmp .L249		# jmp .L249
	.L247:		# .L247:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2190)
	movq %rbx, %rdi		# movq %r(2190), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1932)
	movq $1, %r13		# movq $1, %r(2151)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2191)
	movq %rbx, -88(%rbp)		# movq %r(2192), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2193)
	subq %r13, %r12		# subq %r(2151), %r(2193)
	movq %r12, -88(%rbp)		# movq %r(2193), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2194)
	movq %r12, (%r14)		# movq %r(2194), (%r(1136))
	movq $8, %r12		# movq $8, %r(2153)
	addq %r12, %r14		# addq %r(2153), %r(2154)
	movq %r14, -32(%rbp)		# movq %r(2195), -32(%rbp)
	.L250:		# .L250:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2196)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2197)
	cmpq %r12, %rbx		# cmpq %r(2197), %r(2196)
	jge .L251		# jge .L251
	.L252:		# .L252:
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2198)
	movq %r12, -136(%rbp)		# movq %r(2199), -136(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2200)
	movq %r12, -40(%rbp)		# movq %r(2201), -40(%rbp)
	movq $8, %r12		# movq $8, %r(2155)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(2202)
	movq %r13, -8(%rbp)		# movq %r(2203), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2204)
	subq %r12, %rbx		# subq %r(2155), %r(2204)
	movq %rbx, -8(%rbp)		# movq %r(2204), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2205)
	movq (%rbx), %rbx		# movq (%r(2205)), %r(2157)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2206)
	cmpq %rbx, %r12		# cmpq %r(2157), %r(2206)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2207)
	movq %r12, -80(%rbp)		# movq %r(2208), -80(%rbp)
	movq $1, %r12		# movq $1, %r(2158)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2209)
	movq %r13, -72(%rbp)		# movq %r(2210), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2211)
	subq %r12, %rbx		# subq %r(2158), %r(2211)
	movq %rbx, -72(%rbp)		# movq %r(2211), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2212)
	movq %r12, -16(%rbp)		# movq %r(2213), -16(%rbp)
	movq $8, %r12		# movq $8, %r(2160)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2214)
	movq %r13, -24(%rbp)		# movq %r(2215), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2216)
	subq %r12, %rbx		# subq %r(2160), %r(2216)
	movq %rbx, -24(%rbp)		# movq %r(2216), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2217)
	movq (%rbx), %rbx		# movq (%r(2217)), %r(2162)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2218)
	cmpq %rbx, %r12		# cmpq %r(2162), %r(2218)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2219)
	salq $3, %r13		# salq $3, %r(2163)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2220)
	movq %rbx, -128(%rbp)		# movq %r(2221), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(2222)
	addq %r13, %r12		# addq %r(2163), %r(2222)
	movq %r12, -128(%rbp)		# movq %r(2222), -128(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2223)
	movq %r12, -96(%rbp)		# movq %r(2224), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2225)
	salq $3, %rbx		# salq $3, %r(2225)
	movq %rbx, -96(%rbp)		# movq %r(2225), -96(%rbp)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(2226)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2227)
	addq %r12, %r13		# addq %r(2227), %r(2166)
	movq (%r13), %rbx		# movq (%r(2166)), %r(2167)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(2228)
	movq %rbx, (%r12)		# movq %r(2167), (%r(2228))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2229)
	incq %rbx		# incq %r(2229)
	movq %rbx, -48(%rbp)		# movq %r(2229), -48(%rbp)
	jmp .L250		# jmp .L250
	.L251:		# .L251:
	movq -104(%rbp), %r15		# movq -104(%rbp), %r(2230)
	movq $0, %r12		# movq $0, %r(2168)
	movq %r12, %r14		# movq %r(2168), %r(1143)
	movq $8, %r12		# movq $8, %r(2169)
	movq %r15, %r13		# movq %r(1142), %r(2170)
	subq %r12, %r13		# subq %r(2169), %r(2170)
	movq (%r13), %r12		# movq (%r(2170)), %r(2171)
	cmpq %r12, %r14		# cmpq %r(2171), %r(1143)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1143), %r(2172)
	salq $3, %r12		# salq $3, %r(2172)
	movq %r15, %rbx		# movq %r(1142), %r(2173)
	addq %r12, %rbx		# addq %r(2172), %r(2173)
	movq (%rbx), %r12		# movq (%r(2173)), %r(2174)
	movq %r12, -48(%rbp)		# movq %r(2231), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(2175)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2232)
	addq %rbx, %r13		# addq %r(2175), %r(2176)
	movq %r13, %rdi		# movq %r(2176), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1933)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2233)
	movq %r12, (%rbx)		# movq %r(2233), (%r(1145))
	movq $8, %r12		# movq $8, %r(2177)
	addq %r12, %rbx		# addq %r(2177), %r(2178)
	movq %rbx, -120(%rbp)		# movq %r(2234), -120(%rbp)
	.L256:		# .L256:
	movq $0, %rbx		# movq $0, %r(2179)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2235)
	cmpq %rbx, %r12		# cmpq %r(2179), %r(2235)
	jle .L257		# jle .L257
	.L258:		# .L258:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2236)
	decq %rbx		# decq %r(2236)
	movq %rbx, -48(%rbp)		# movq %r(2236), -48(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2237)
	movq %rbx, %rdi		# movq %r(2237), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1934)
	movq %rbx, -64(%rbp)		# movq %r(2238), -64(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(2239)
	movq %r12, -56(%rbp)		# movq %r(2240), -56(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2241)
	movq $8, %r13		# movq $8, %r(2180)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(2242)
	movq %r14, -112(%rbp)		# movq %r(2243), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2244)
	subq %r13, %r12		# subq %r(2180), %r(2244)
	movq %r12, -112(%rbp)		# movq %r(2244), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2245)
	movq (%r12), %r12		# movq (%r(2245)), %r(2182)
	cmpq %r12, %rbx		# cmpq %r(2182), %r(1150)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2183)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2246)
	addq %rbx, %r13		# addq %r(2183), %r(2184)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2247)
	movq %rbx, (%r13)		# movq %r(2247), (%r(2184))
	jmp .L256		# jmp .L256
	.L257:		# .L257:
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2248)
	movq %rbx, %rax		# movq %r(2248), %rax
	jmp .L249		# jmp .L249
	.L249:		# .L249:
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
