.att_syntax prefix
.text
.globl _IprintNum_pi
_IprintNum_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2111)
	movq %rbx, -8(%rbp)		# movq %r(2111), -8(%rbp)
	movq $24, %rbx		# movq $24, %r(2100)
	movq %rbx, %rdi		# movq %r(2100), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2091)
	movq $2, %rbx		# movq $2, %r(2101)
	movq %rbx, (%r14)		# movq %r(2101), (%r(2091))
	movq $8, %rbx		# movq $8, %r(2102)
	movq %r14, %r13		# movq %r(2091), %r(2103)
	addq %rbx, %r13		# addq %r(2102), %r(2103)
	movq %r13, %r12		# movq %r(2103), %r(2113)
	movq %r12, -24(%rbp)		# movq %r(2113), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(2104)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2114)
	movq %r13, %r12		# movq %r(2114), %r(2105)
	addq %rbx, %r12		# addq %r(2104), %r(2105)
	movq $48, %r13		# movq $48, %r(2106)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2115)
	movq %rbx, -32(%rbp)		# movq %r(2115), -32(%rbp)
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(2116)
	movq %r15, %rbx		# movq %r(2116), %r(2117)
	movq %rbx, -16(%rbp)		# movq %r(2117), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2118)
	addq %r13, %rbx		# addq %r(2106), %r(2118)
	movq %rbx, -16(%rbp)		# movq %r(2118), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2119)
	movq %rbx, (%r12)		# movq %r(2119), (%r(2105))
	movq $8, %rbx		# movq $8, %r(2108)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2120)
	movq %r14, %r12		# movq %r(2120), %r(2109)
	addq %rbx, %r12		# addq %r(2108), %r(2109)
	movq $46, %rbx		# movq $46, %r(2110)
	movq %rbx, (%r12)		# movq %r(2110), (%r(2109))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2121)
	movq %rbx, %rdi		# movq %r(2121), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L373		# jmp .L373
	.L373:		# .L373:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(2171)
	movq %rbx, -8(%rbp)		# movq %r(2171), -8(%rbp)
	movq $0, %r13		# movq $0, %r(2122)
	movq %r13, %rbx		# movq %r(2122), %r(2172)
	movq %rbx, -32(%rbp)		# movq %r(2172), -32(%rbp)
	jmp .L375		# jmp .L375
	.L375:		# .L375:
	movq $8, %rbx		# movq $8, %r(2123)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2173)
	movq %r14, %r15		# movq %r(2173), %r(2124)
	subq %rbx, %r15		# subq %r(2123), %r(2124)
	movq (%r15), %r14		# movq (%r(2124)), %r(2125)
	movq $1, %rbx		# movq $1, %r(2126)
	movq %r14, %r12		# movq %r(2125), %r(2127)
	subq %rbx, %r12		# subq %r(2126), %r(2127)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2174)
	cmpq %r12, %rbx		# cmpq %r(2127), %r(2174)
	jge .L377		# jge .L377
	.L376:		# .L376:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2175)
	movq %r13, %rbx		# movq %r(2175), %r(2176)
	movq %rbx, -56(%rbp)		# movq %r(2176), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(2128)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2177)
	movq %r14, %r12		# movq %r(2177), %r(2129)
	subq %rbx, %r12		# subq %r(2128), %r(2129)
	movq (%r12), %rbx		# movq (%r(2129)), %r(2130)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2178)
	cmpq %rbx, %r12		# cmpq %r(2130), %r(2178)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2179)
	movq %r13, %r14		# movq %r(2179), %r(2131)
	salq $3, %r14		# salq $3, %r(2131)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2180)
	movq %r12, %r15		# movq %r(2180), %r(2132)
	addq %r14, %r15		# addq %r(2131), %r(2132)
	movq (%r15), %r13		# movq (%r(2132)), %r(2133)
	movq %r13, %rbx		# movq %r(2133), %r(2181)
	movq %rbx, -24(%rbp)		# movq %r(2181), -24(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2182)
	movq %r13, %rbx		# movq %r(2182), %r(2183)
	movq %rbx, -16(%rbp)		# movq %r(2183), -16(%rbp)
	jmp .L380		# jmp .L380
	.L380:		# .L380:
	movq $8, %r13		# movq $8, %r(2134)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2184)
	movq %r14, %rbx		# movq %r(2184), %r(2185)
	movq %rbx, -64(%rbp)		# movq %r(2185), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2186)
	subq %r13, %rbx		# subq %r(2134), %r(2186)
	movq %rbx, -64(%rbp)		# movq %r(2186), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2187)
	movq (%rbx), %r12		# movq (%r(2187)), %r(2136)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2188)
	cmpq %r12, %rbx		# cmpq %r(2136), %r(2188)
	jge .L382		# jge .L382
	.L381:		# .L381:
	movq $8, %r13		# movq $8, %r(2137)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2189)
	movq %r14, %rbx		# movq %r(2189), %r(2190)
	movq %rbx, -48(%rbp)		# movq %r(2190), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2191)
	subq %r13, %rbx		# subq %r(2137), %r(2191)
	movq %rbx, -48(%rbp)		# movq %r(2191), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2192)
	movq (%rbx), %r12		# movq (%r(2192)), %r(2139)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2193)
	cmpq %r12, %rbx		# cmpq %r(2139), %r(2193)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2194)
	movq %r12, %r14		# movq %r(2194), %r(2140)
	salq $3, %r14		# salq $3, %r(2140)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2195)
	movq %r13, %rbx		# movq %r(2195), %r(2196)
	movq %rbx, -72(%rbp)		# movq %r(2196), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2197)
	addq %r14, %rbx		# addq %r(2140), %r(2197)
	movq %rbx, -72(%rbp)		# movq %r(2197), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2198)
	movq (%rbx), %r12		# movq (%r(2198)), %r(2142)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2199)
	cmpq %rbx, %r12		# cmpq %r(2199), %r(2142)
	jge .L386		# jge .L386
	.L385:		# .L385:
	movq $8, %rbx		# movq $8, %r(2143)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2200)
	movq %r14, %r12		# movq %r(2200), %r(2144)
	subq %rbx, %r12		# subq %r(2143), %r(2144)
	movq (%r12), %rbx		# movq (%r(2144)), %r(2145)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2201)
	cmpq %rbx, %r12		# cmpq %r(2145), %r(2201)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2202)
	movq %r13, %r14		# movq %r(2202), %r(2146)
	salq $3, %r14		# salq $3, %r(2146)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2203)
	movq %r12, %r15		# movq %r(2203), %r(2147)
	addq %r14, %r15		# addq %r(2146), %r(2147)
	movq (%r15), %r13		# movq (%r(2147)), %r(2148)
	movq %r13, %rbx		# movq %r(2148), %r(2204)
	movq %rbx, -24(%rbp)		# movq %r(2204), -24(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2205)
	movq %r13, %rbx		# movq %r(2205), %r(2206)
	movq %rbx, -16(%rbp)		# movq %r(2206), -16(%rbp)
	jmp .L386		# jmp .L386
	.L386:		# .L386:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2207)
	incq %rbx		# incq %r(2207)
	movq %rbx, -56(%rbp)		# movq %r(2207), -56(%rbp)
	jmp .L380		# jmp .L380
	.L382:		# .L382:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2208)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2209)
	cmpq %r12, %rbx		# cmpq %r(2209), %r(2208)
	je .L390		# je .L390
	.L389:		# .L389:
	movq $8, %rbx		# movq $8, %r(2149)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2210)
	movq %r14, %r12		# movq %r(2210), %r(2150)
	subq %rbx, %r12		# subq %r(2149), %r(2150)
	movq (%r12), %rbx		# movq (%r(2150)), %r(2151)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2211)
	cmpq %rbx, %r12		# cmpq %r(2151), %r(2211)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2212)
	movq %r13, %r14		# movq %r(2212), %r(2152)
	salq $3, %r14		# salq $3, %r(2152)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2213)
	movq %r12, %r15		# movq %r(2213), %r(2153)
	addq %r14, %r15		# addq %r(2152), %r(2153)
	movq (%r15), %r13		# movq (%r(2153)), %r(2154)
	movq %r13, %rbx		# movq %r(2154), %r(2231)
	movq %rbx, -80(%rbp)		# movq %r(2231), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(2155)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2214)
	movq %r14, %r12		# movq %r(2214), %r(2156)
	subq %rbx, %r12		# subq %r(2155), %r(2156)
	movq (%r12), %rbx		# movq (%r(2156)), %r(2157)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2215)
	cmpq %rbx, %r12		# cmpq %r(2157), %r(2215)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(2158)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2216)
	movq %r14, %r12		# movq %r(2216), %r(2159)
	subq %rbx, %r12		# subq %r(2158), %r(2159)
	movq (%r12), %rbx		# movq (%r(2159)), %r(2160)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2217)
	cmpq %rbx, %r12		# cmpq %r(2160), %r(2217)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2218)
	movq %r13, %r14		# movq %r(2218), %r(2161)
	salq $3, %r14		# salq $3, %r(2161)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2219)
	movq %r12, %r15		# movq %r(2219), %r(2162)
	addq %r14, %r15		# addq %r(2161), %r(2162)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2220)
	movq %r13, %rbx		# movq %r(2220), %r(2233)
	movq %rbx, -88(%rbp)		# movq %r(2233), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2234)
	salq $3, %rbx		# salq $3, %r(2234)
	movq %rbx, -88(%rbp)		# movq %r(2234), -88(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2221)
	movq %r13, %rbx		# movq %r(2221), %r(2222)
	movq %rbx, -40(%rbp)		# movq %r(2222), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2223)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2235)
	addq %r12, %rbx		# addq %r(2235), %r(2223)
	movq %rbx, -40(%rbp)		# movq %r(2223), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2224)
	movq (%rbx), %r12		# movq (%r(2224)), %r(2165)
	movq %r12, (%r15)		# movq %r(2165), (%r(2162))
	movq $8, %rbx		# movq $8, %r(2166)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2225)
	movq %r14, %r12		# movq %r(2225), %r(2167)
	subq %rbx, %r12		# subq %r(2166), %r(2167)
	movq (%r12), %rbx		# movq (%r(2167)), %r(2168)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2226)
	cmpq %rbx, %r12		# cmpq %r(2168), %r(2226)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2227)
	movq %r13, %r14		# movq %r(2227), %r(2169)
	salq $3, %r14		# salq $3, %r(2169)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2228)
	movq %r12, %r15		# movq %r(2228), %r(2170)
	addq %r14, %r15		# addq %r(2169), %r(2170)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2232)
	movq %rbx, (%r15)		# movq %r(2232), (%r(2170))
	jmp .L390		# jmp .L390
	.L390:		# .L390:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2229)
	incq %rbx		# incq %r(2229)
	movq %rbx, -32(%rbp)		# movq %r(2229), -32(%rbp)
	jmp .L375		# jmp .L375
	.L377:		# .L377:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2230)
	movq %rbx, %rax		# movq %r(2230), %rax
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $40, %rbx		# movq $40, %r(2236)
	movq %rbx, %rdi		# movq %r(2236), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2093)
	movq $4, %rbx		# movq $4, %r(2237)
	movq %rbx, (%r14)		# movq %r(2237), (%r(2093))
	movq $8, %rbx		# movq $8, %r(2238)
	movq %r14, %r13		# movq %r(2093), %r(2239)
	addq %rbx, %r13		# addq %r(2238), %r(2239)
	movq %r13, %r15		# movq %r(2239), %r(2076)
	movq $0, %rbx		# movq $0, %r(2240)
	movq %r15, %r13		# movq %r(2076), %r(2241)
	addq %rbx, %r13		# addq %r(2240), %r(2241)
	movq $6, %rbx		# movq $6, %r(2242)
	movq %rbx, (%r13)		# movq %r(2242), (%r(2241))
	movq $8, %rbx		# movq $8, %r(2243)
	movq %r15, %r13		# movq %r(2076), %r(2244)
	addq %rbx, %r13		# addq %r(2243), %r(2244)
	movq $3, %rbx		# movq $3, %r(2245)
	movq %rbx, (%r13)		# movq %r(2245), (%r(2244))
	movq $16, %rbx		# movq $16, %r(2246)
	movq %r15, %r13		# movq %r(2076), %r(2247)
	addq %rbx, %r13		# addq %r(2246), %r(2247)
	movq $4, %rbx		# movq $4, %r(2248)
	movq %rbx, (%r13)		# movq %r(2248), (%r(2247))
	movq $24, %rbx		# movq $24, %r(2249)
	movq %r15, %r13		# movq %r(2076), %r(2250)
	addq %rbx, %r13		# addq %r(2249), %r(2250)
	movq $7, %rbx		# movq $7, %r(2251)
	movq %rbx, (%r13)		# movq %r(2251), (%r(2250))
	movq %r15, %rdi		# movq %r(2076), %rdi
	call _IbubbleSort_aiai		# call _IbubbleSort_aiai
	movq %rax, %rbx		# movq %rax, %r(2296)
	movq %rbx, -8(%rbp)		# movq %r(2296), -8(%rbp)
	movq $1, %r13		# movq $1, %r(2252)
	movq %r13, %rbx		# movq %r(2252), %r(2305)
	movq %rbx, -16(%rbp)		# movq %r(2305), -16(%rbp)
	movq $0, %r13		# movq $0, %r(2253)
	movq $8, %rbx		# movq $8, %r(2254)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2297)
	movq %r12, %r14		# movq %r(2297), %r(2255)
	subq %rbx, %r14		# subq %r(2254), %r(2255)
	movq (%r14), %rbx		# movq (%r(2255)), %r(2256)
	cmpq %rbx, %r13		# cmpq %r(2256), %r(2253)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(2257)
	movq %r13, %r14		# movq %r(2257), %r(2258)
	salq $3, %r14		# salq $3, %r(2258)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2298)
	movq %r12, %r15		# movq %r(2298), %r(2259)
	addq %r14, %r15		# addq %r(2258), %r(2259)
	movq (%r15), %rbx		# movq (%r(2259)), %r(2260)
	movq $3, %r12		# movq $3, %r(2261)
	cmpq %r12, %rbx		# cmpq %r(2261), %r(2260)
	je .L402		# je .L402
	.L403:		# .L403:
	movq $0, %r13		# movq $0, %r(2262)
	movq %r13, %rbx		# movq %r(2262), %r(2306)
	movq %rbx, -16(%rbp)		# movq %r(2306), -16(%rbp)
	jmp .L402		# jmp .L402
	.L402:		# .L402:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2307)
	movq %rbx, %rdi		# movq %r(2307), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2263)
	movq %r13, %rbx		# movq %r(2263), %r(2308)
	movq %rbx, -40(%rbp)		# movq %r(2308), -40(%rbp)
	movq $1, %r13		# movq $1, %r(2264)
	movq $8, %rbx		# movq $8, %r(2265)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2299)
	movq %r12, %r14		# movq %r(2299), %r(2266)
	subq %rbx, %r14		# subq %r(2265), %r(2266)
	movq (%r14), %rbx		# movq (%r(2266)), %r(2267)
	cmpq %rbx, %r13		# cmpq %r(2267), %r(2264)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(2268)
	movq %r13, %r14		# movq %r(2268), %r(2269)
	salq $3, %r14		# salq $3, %r(2269)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2300)
	movq %r12, %r15		# movq %r(2300), %r(2270)
	addq %r14, %r15		# addq %r(2269), %r(2270)
	movq (%r15), %rbx		# movq (%r(2270)), %r(2271)
	movq $4, %r12		# movq $4, %r(2272)
	cmpq %r12, %rbx		# cmpq %r(2272), %r(2271)
	je .L406		# je .L406
	.L407:		# .L407:
	movq $0, %r13		# movq $0, %r(2273)
	movq %r13, %rbx		# movq %r(2273), %r(2309)
	movq %rbx, -40(%rbp)		# movq %r(2309), -40(%rbp)
	jmp .L406		# jmp .L406
	.L406:		# .L406:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2310)
	movq %rbx, %rdi		# movq %r(2310), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2274)
	movq %r13, %rbx		# movq %r(2274), %r(2311)
	movq %rbx, -32(%rbp)		# movq %r(2311), -32(%rbp)
	movq $2, %r13		# movq $2, %r(2275)
	movq $8, %rbx		# movq $8, %r(2276)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2301)
	movq %r12, %r14		# movq %r(2301), %r(2277)
	subq %rbx, %r14		# subq %r(2276), %r(2277)
	movq (%r14), %rbx		# movq (%r(2277)), %r(2278)
	cmpq %rbx, %r13		# cmpq %r(2278), %r(2275)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(2279)
	movq %r13, %r14		# movq %r(2279), %r(2280)
	salq $3, %r14		# salq $3, %r(2280)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2302)
	movq %r12, %r15		# movq %r(2302), %r(2281)
	addq %r14, %r15		# addq %r(2280), %r(2281)
	movq (%r15), %rbx		# movq (%r(2281)), %r(2282)
	movq $6, %r12		# movq $6, %r(2283)
	cmpq %r12, %rbx		# cmpq %r(2283), %r(2282)
	je .L410		# je .L410
	.L411:		# .L411:
	movq $0, %r13		# movq $0, %r(2284)
	movq %r13, %rbx		# movq %r(2284), %r(2312)
	movq %rbx, -32(%rbp)		# movq %r(2312), -32(%rbp)
	jmp .L410		# jmp .L410
	.L410:		# .L410:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2313)
	movq %rbx, %rdi		# movq %r(2313), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2285)
	movq %r13, %rbx		# movq %r(2285), %r(2314)
	movq %rbx, -24(%rbp)		# movq %r(2314), -24(%rbp)
	movq $3, %r13		# movq $3, %r(2286)
	movq $8, %rbx		# movq $8, %r(2287)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2303)
	movq %r12, %r14		# movq %r(2303), %r(2288)
	subq %rbx, %r14		# subq %r(2287), %r(2288)
	movq (%r14), %rbx		# movq (%r(2288)), %r(2289)
	cmpq %rbx, %r13		# cmpq %r(2289), %r(2286)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(2290)
	movq %r13, %r14		# movq %r(2290), %r(2291)
	salq $3, %r14		# salq $3, %r(2291)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2304)
	movq %r12, %r15		# movq %r(2304), %r(2292)
	addq %r14, %r15		# addq %r(2291), %r(2292)
	movq (%r15), %rbx		# movq (%r(2292)), %r(2293)
	movq $7, %r12		# movq $7, %r(2294)
	cmpq %r12, %rbx		# cmpq %r(2294), %r(2293)
	je .L414		# je .L414
	.L415:		# .L415:
	movq $0, %r13		# movq $0, %r(2295)
	movq %r13, %rbx		# movq %r(2295), %r(2315)
	movq %rbx, -24(%rbp)		# movq %r(2315), -24(%rbp)
	jmp .L414		# jmp .L414
	.L414:		# .L414:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2316)
	movq %rbx, %rdi		# movq %r(2316), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L399		# jmp .L399
	.L399:		# .L399:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
