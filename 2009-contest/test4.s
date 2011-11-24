.att_syntax prefix
.text
.globl _Ia_ai
_Ia_ai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %r12		# movq $0, %r(2089)
	movq %r12, -32(%rbp)		# movq %r(2133), -32(%rbp)
	leaq .L340(%rip), %rdi		# leaq .L340(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2134)
	movq %rbx, -24(%rbp)		# movq %r(2134), -24(%rbp)
	movq $16, %rbx		# movq $16, %r(2091)
	movq %rbx, %rdi		# movq %r(2091), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2078)
	movq $1, %r12		# movq $1, %r(2092)
	movq %r12, (%r13)		# movq %r(2092), (%r(2078))
	movq $8, %r12		# movq $8, %r(2093)
	addq %r12, %r13		# addq %r(2093), %r(2094)
	movq %r13, %r15		# movq %r(2094), %r(2061)
	movq $0, %rbx		# movq $0, %r(2095)
	movq %r15, %r14		# movq %r(2061), %r(2096)
	addq %rbx, %r14		# addq %r(2095), %r(2096)
	movq $8, %r13		# movq $8, %r(2097)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2135)
	movq %rbx, -16(%rbp)		# movq %r(2136), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2137)
	subq %r13, %rbx		# subq %r(2097), %r(2137)
	movq %rbx, -16(%rbp)		# movq %r(2137), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2138)
	movq (%rbx), %rbx		# movq (%r(2138)), %r(2099)
	movq %rbx, (%r14)		# movq %r(2099), (%r(2096))
	movq %r15, %rdi		# movq %r(2061), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2139)
	movq %rbx, -8(%rbp)		# movq %r(2139), -8(%rbp)
	.L342:		# .L342:
	movq $8, %rbx		# movq $8, %r(2100)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2140)
	subq %rbx, %r13		# subq %r(2100), %r(2101)
	movq (%r13), %rbx		# movq (%r(2101)), %r(2102)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2141)
	cmpq %rbx, %r12		# cmpq %r(2102), %r(2141)
	jge .L344		# jge .L344
	.L343:		# .L343:
	movq $8, %rbx		# movq $8, %r(2103)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2142)
	subq %rbx, %r13		# subq %r(2103), %r(2104)
	movq (%r13), %rbx		# movq (%r(2104)), %r(2105)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2143)
	cmpq %rbx, %r12		# cmpq %r(2105), %r(2143)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(2106)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2144)
	subq %rbx, %r13		# subq %r(2106), %r(2107)
	movq (%r13), %rbx		# movq (%r(2107)), %r(2108)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2145)
	cmpq %rbx, %r12		# cmpq %r(2108), %r(2145)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2146)
	salq $3, %r13		# salq $3, %r(2109)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(2147)
	addq %r13, %r15		# addq %r(2109), %r(2110)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2148)
	salq $3, %r14		# salq $3, %r(2111)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2149)
	addq %r14, %rbx		# addq %r(2111), %r(2112)
	movq (%rbx), %rbx		# movq (%r(2112)), %r(2113)
	movq %rbx, (%r15)		# movq %r(2113), (%r(2110))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2150)
	incq %rbx		# incq %r(2150)
	movq %rbx, -32(%rbp)		# movq %r(2150), -32(%rbp)
	jmp .L342		# jmp .L342
	.L344:		# .L344:
	movq $0, %r13		# movq $0, %r(2114)
	movq $8, %r12		# movq $8, %r(2115)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2151)
	subq %r12, %r14		# subq %r(2115), %r(2116)
	movq (%r14), %rbx		# movq (%r(2116)), %r(2117)
	cmpq %rbx, %r13		# cmpq %r(2117), %r(2114)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(2118)
	salq $3, %r13		# salq $3, %r(2119)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2152)
	addq %r13, %r14		# addq %r(2119), %r(2120)
	movq $66, %rbx		# movq $66, %r(2121)
	movq %rbx, (%r14)		# movq %r(2121), (%r(2120))
	movq $1, %rbx		# movq $1, %r(2122)
	movq %rbx, %r13		# movq %r(2122), %r(2071)
	movq $0, %r12		# movq $0, %r(2123)
	movq $8, %r14		# movq $8, %r(2124)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2153)
	subq %r14, %rbx		# subq %r(2124), %r(2125)
	movq (%rbx), %rbx		# movq (%r(2125)), %r(2126)
	cmpq %rbx, %r12		# cmpq %r(2126), %r(2123)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(2127)
	salq $3, %r14		# salq $3, %r(2128)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2154)
	addq %r14, %rbx		# addq %r(2128), %r(2129)
	movq (%rbx), %rbx		# movq (%r(2129)), %r(2130)
	movq $66, %r12		# movq $66, %r(2131)
	cmpq %r12, %rbx		# cmpq %r(2131), %r(2130)
	je .L353		# je .L353
	.L354:		# .L354:
	movq $0, %r13		# movq $0, %r(2132)
	.L353:		# .L353:
	movq %r13, %rdi		# movq %r(2071), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2155)
	movq %rbx, %rax		# movq %r(2155), %rax
	jmp .L339		# jmp .L339
	.L339:		# .L339:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	call _Ia_ai		# call _Ia_ai
	call _Ia_ai		# call _Ia_ai
	movq %rax, %r14		# movq %rax, %r(2082)
	movq $1, %rbx		# movq $1, %r(2156)
	movq %rbx, %r15		# movq %r(2156), %r(2076)
	movq $0, %r12		# movq $0, %r(2157)
	movq $8, %rbx		# movq $8, %r(2158)
	movq %r14, %r13		# movq %r(2082), %r(2159)
	subq %rbx, %r13		# subq %r(2158), %r(2159)
	movq (%r13), %rbx		# movq (%r(2159)), %r(2160)
	cmpq %rbx, %r12		# cmpq %r(2160), %r(2157)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(2161)
	salq $3, %r13		# salq $3, %r(2162)
	movq %r14, %r12		# movq %r(2082), %r(2163)
	addq %r13, %r12		# addq %r(2162), %r(2163)
	movq (%r12), %rbx		# movq (%r(2163)), %r(2164)
	movq $72, %r12		# movq $72, %r(2165)
	cmpq %r12, %rbx		# cmpq %r(2165), %r(2164)
	je .L358		# je .L358
	.L359:		# .L359:
	movq $0, %rbx		# movq $0, %r(2166)
	movq %rbx, %r15		# movq %r(2166), %r(2076)
	.L358:		# .L358:
	movq %r15, %rdi		# movq %r(2076), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L355:		# .L355:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(2210)
	movq %rbx, -40(%rbp)		# movq %r(2210), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(2167)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2211)
	subq %rbx, %r13		# subq %r(2167), %r(2168)
	movq (%r13), %r12		# movq (%r(2168)), %r(2169)
	movq %r12, -16(%rbp)		# movq %r(2212), -16(%rbp)
	movq $1, %r12		# movq $1, %r(2170)
	movq %r12, -88(%rbp)		# movq %r(2213), -88(%rbp)
	movq $0, %rbx		# movq $0, %r(2171)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2214)
	cmpq %rbx, %r12		# cmpq %r(2171), %r(2214)
	jne .L248		# jne .L248
	.L249:		# .L249:
	movq $0, %rbx		# movq $0, %r(2172)
	movq %rbx, %rax		# movq %r(2172), %rax
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
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2215)
	salq $3, %r12		# salq $3, %r(2173)
	movq %r12, %rdi		# movq %r(2173), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2084)
	movq $1, %r12		# movq $1, %r(2174)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(2216)
	movq %r14, -80(%rbp)		# movq %r(2217), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2218)
	subq %r12, %rbx		# subq %r(2174), %r(2218)
	movq %rbx, -80(%rbp)		# movq %r(2218), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2219)
	movq %rbx, (%r13)		# movq %r(2219), (%r(2084))
	movq $8, %rbx		# movq $8, %r(2176)
	addq %rbx, %r13		# addq %r(2176), %r(2177)
	movq %r13, -72(%rbp)		# movq %r(2220), -72(%rbp)
	.L251:		# .L251:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2221)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2222)
	cmpq %rbx, %r12		# cmpq %r(2221), %r(2222)
	jge .L252		# jge .L252
	.L253:		# .L253:
	movq $8, %rbx		# movq $8, %r(2178)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2223)
	subq %rbx, %r13		# subq %r(2178), %r(2179)
	movq (%r13), %rbx		# movq (%r(2179)), %r(2180)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2224)
	cmpq %rbx, %r12		# cmpq %r(2180), %r(2224)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(2181)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(2225)
	subq %rbx, %r14		# subq %r(2181), %r(2182)
	movq $8, %r13		# movq $8, %r(2183)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2226)
	movq %r12, -8(%rbp)		# movq %r(2227), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2228)
	subq %r13, %rbx		# subq %r(2183), %r(2228)
	movq %rbx, -8(%rbp)		# movq %r(2228), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2229)
	movq (%rbx), %rbx		# movq (%r(2229)), %r(2185)
	cmpq %rbx, %r14		# cmpq %r(2185), %r(1080)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(2186)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2230)
	addq %r14, %rbx		# addq %r(2186), %r(2187)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(2231)
	salq $3, %r14		# salq $3, %r(2188)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2232)
	movq %r12, -56(%rbp)		# movq %r(2233), -56(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2234)
	addq %r14, %r13		# addq %r(2188), %r(2234)
	movq %r13, -56(%rbp)		# movq %r(2234), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2235)
	movq (%r12), %r12		# movq (%r(2235)), %r(2190)
	movq %r12, (%rbx)		# movq %r(2190), (%r(2187))
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2236)
	incq %rbx		# incq %r(2236)
	movq %rbx, -88(%rbp)		# movq %r(2236), -88(%rbp)
	jmp .L251		# jmp .L251
	.L252:		# .L252:
	movq $0, %r13		# movq $0, %r(2191)
	movq $8, %r12		# movq $8, %r(2192)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(2237)
	subq %r12, %r14		# subq %r(2192), %r(2193)
	movq (%r14), %rbx		# movq (%r(2193)), %r(2194)
	cmpq %rbx, %r13		# cmpq %r(2194), %r(2191)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(2195)
	salq $3, %r13		# salq $3, %r(2196)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2238)
	addq %r13, %rbx		# addq %r(2196), %r(2197)
	movq (%rbx), %r12		# movq (%r(2197)), %r(2198)
	movq %r12, -88(%rbp)		# movq %r(2239), -88(%rbp)
	movq $1, %rbx		# movq $1, %r(2199)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2240)
	addq %rbx, %r12		# addq %r(2199), %r(2200)
	salq $3, %r12		# salq $3, %r(2201)
	movq %r12, %rdi		# movq %r(2201), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2085)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2241)
	movq %r12, (%rbx)		# movq %r(2241), (%r(2085))
	movq $8, %r12		# movq $8, %r(2202)
	addq %r12, %rbx		# addq %r(2202), %r(2203)
	movq %rbx, -24(%rbp)		# movq %r(2242), -24(%rbp)
	.L257:		# .L257:
	movq $0, %rbx		# movq $0, %r(2204)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2243)
	cmpq %rbx, %r12		# cmpq %r(2204), %r(2243)
	jle .L258		# jle .L258
	.L259:		# .L259:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2244)
	decq %rbx		# decq %r(2244)
	movq %rbx, -88(%rbp)		# movq %r(2244), -88(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2245)
	movq %rbx, %rdi		# movq %r(2245), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2246)
	movq %rbx, -32(%rbp)		# movq %r(2246), -32(%rbp)
	movq $8, %r12		# movq $8, %r(2205)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2247)
	movq %r13, -48(%rbp)		# movq %r(2248), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2249)
	subq %r12, %rbx		# subq %r(2205), %r(2249)
	movq %rbx, -48(%rbp)		# movq %r(2249), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2250)
	movq (%rbx), %rbx		# movq (%r(2250)), %r(2207)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2251)
	cmpq %rbx, %r12		# cmpq %r(2207), %r(2251)
	jae error_outofbounds		# jae error_outofbounds
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(2252)
	salq $3, %r13		# salq $3, %r(2208)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2253)
	movq %rbx, -64(%rbp)		# movq %r(2254), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2255)
	addq %r13, %r12		# addq %r(2208), %r(2255)
	movq %r12, -64(%rbp)		# movq %r(2255), -64(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2256)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2257)
	movq %rbx, (%r12)		# movq %r(2256), (%r(2257))
	jmp .L257		# jmp .L257
	.L258:		# .L258:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2258)
	movq %rbx, %rax		# movq %r(2258), %rax
	jmp .L250		# jmp .L250
	
.globl _I_c_internal_strdup_aii
_I_c_internal_strdup_aii:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2271)
	movq %rbx, -24(%rbp)		# movq %r(2271), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2272)
	movq (%rbx), %r12		# movq (%r(2272)), %r(2259)
	movq %r12, -16(%rbp)		# movq %r(2273), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2274)
	salq $3, %rbx		# salq $3, %r(2260)
	movq $8, %r12		# movq $8, %r(2261)
	addq %r12, %rbx		# addq %r(2261), %r(2262)
	movq %rbx, %rdi		# movq %r(2262), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2087)
	.L165:		# .L165:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2275)
	salq $3, %r12		# salq $3, %r(2263)
	movq %r14, %r13		# movq %r(2087), %r(2264)
	addq %r12, %r13		# addq %r(2263), %r(2264)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2276)
	movq %rbx, %r12		# movq %r(2276), %r(2265)
	salq $3, %r12		# salq $3, %r(2265)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2277)
	movq %rbx, -8(%rbp)		# movq %r(2278), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2279)
	addq %r12, %rbx		# addq %r(2265), %r(2279)
	movq %rbx, -8(%rbp)		# movq %r(2279), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2280)
	movq (%rbx), %rbx		# movq (%r(2280)), %r(2267)
	movq %rbx, (%r13)		# movq %r(2267), (%r(2264))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2281)
	decq %rbx		# decq %r(2281)
	movq %rbx, -16(%rbp)		# movq %r(2281), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(2268)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2282)
	cmpq %rbx, %r12		# cmpq %r(2268), %r(2282)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq $8, %rbx		# movq $8, %r(2269)
	movq %r14, %r12		# movq %r(2087), %r(2270)
	addq %rbx, %r12		# addq %r(2269), %r(2270)
	movq %r12, %rax		# movq %r(2270), %rax
	.L167:		# .L167:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L340:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

error_outofbounds:
call _I_outOfBounds_p
