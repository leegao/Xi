.att_syntax prefix
.text
.globl _Ia_ai
_Ia_ai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %r12		# movq $0, %r(2256)
	movq %r12, %r12		# movq %r(2256), %r(2298)
	movq %r12, -16(%rbp)		# movq %r(2298), -16(%rbp)
	leaq .L321(%rip), %rdi		# leaq .L321(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2244)
	movq %r12, %r12		# movq %r(2244), %r(2299)
	movq %r12, -24(%rbp)		# movq %r(2299), -24(%rbp)
	movq $16, %rbx		# movq $16, %r(2258)
	movq %rbx, %rdi		# movq %r(2258), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2245)
	movq %rbx, %rbx		# movq %r(2245), %r(2229)
	movq $1, %r12		# movq $1, %r(2259)
	movq %r12, (%rbx)		# movq %r(2259), (%r(2229))
	movq $8, %r12		# movq $8, %r(2260)
	movq %rbx, %rbx		# movq %r(2229), %r(2261)
	addq %r12, %rbx		# addq %r(2260), %r(2261)
	movq %rbx, %r13		# movq %r(2261), %r(2228)
	movq $0, %rbx		# movq $0, %r(2262)
	movq %r13, %r14		# movq %r(2228), %r(2263)
	addq %rbx, %r14		# addq %r(2262), %r(2263)
	movq $8, %r12		# movq $8, %r(2264)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2300)
	movq %rbx, %rbx		# movq %r(2300), %r(2301)
	movq %rbx, -88(%rbp)		# movq %r(2301), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2302)
	subq %r12, %rbx		# subq %r(2264), %r(2302)
	movq %rbx, -88(%rbp)		# movq %r(2302), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2303)
	movq (%rbx), %rbx		# movq (%r(2303)), %r(2266)
	movq %rbx, (%r14)		# movq %r(2266), (%r(2263))
	movq %r13, %rdi		# movq %r(2228), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(2246)
	movq %r12, %r12		# movq %r(2246), %r(2304)
	movq %r12, -48(%rbp)		# movq %r(2304), -48(%rbp)
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(2267)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2305)
	movq %r13, %r13		# movq %r(2305), %r(2268)
	subq %rbx, %r13		# subq %r(2267), %r(2268)
	movq (%r13), %rbx		# movq (%r(2268)), %r(2269)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2306)
	cmpq %rbx, %r12		# cmpq %r(2269), %r(2306)
	jge .L325		# jge .L325
	.L324:		# .L324:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2307)
	movq %r12, %r12		# movq %r(2307), %r(2308)
	movq %r12, -80(%rbp)		# movq %r(2308), -80(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2309)
	movq %r12, %r12		# movq %r(2309), %r(2310)
	movq %r12, -72(%rbp)		# movq %r(2310), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(2270)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2311)
	movq %r13, %r13		# movq %r(2311), %r(2271)
	subq %rbx, %r13		# subq %r(2270), %r(2271)
	movq (%r13), %rbx		# movq (%r(2271)), %r(2272)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2312)
	cmpq %rbx, %r12		# cmpq %r(2272), %r(2312)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2313)
	movq %rbx, %rbx		# movq %r(2313), %r(2230)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2314)
	movq %r13, %r13		# movq %r(2314), %r(2315)
	movq %r13, -64(%rbp)		# movq %r(2315), -64(%rbp)
	movq $8, %r13		# movq $8, %r(2273)
	movq %rbx, %r14		# movq %r(2230), %r(2316)
	movq %r14, -56(%rbp)		# movq %r(2316), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2317)
	subq %r13, %r12		# subq %r(2273), %r(2317)
	movq %r12, -56(%rbp)		# movq %r(2317), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2318)
	movq (%r12), %r12		# movq (%r(2318)), %r(2275)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2319)
	cmpq %r12, %r13		# cmpq %r(2275), %r(2319)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2320)
	movq %r13, %r13		# movq %r(2320), %r(2276)
	salq $3, %r13		# salq $3, %r(2276)
	movq %rbx, %rbx		# movq %r(2230), %r(2321)
	movq %rbx, -32(%rbp)		# movq %r(2321), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2322)
	addq %r13, %rbx		# addq %r(2276), %r(2322)
	movq %rbx, -32(%rbp)		# movq %r(2322), -32(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(2323)
	movq %r13, %r13		# movq %r(2323), %r(2278)
	salq $3, %r13		# salq $3, %r(2278)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2324)
	movq %rbx, %rbx		# movq %r(2324), %r(2279)
	addq %r13, %rbx		# addq %r(2278), %r(2279)
	movq (%rbx), %rbx		# movq (%r(2279)), %r(2280)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2325)
	movq %rbx, (%r12)		# movq %r(2280), (%r(2325))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2326)
	incq %rbx		# incq %r(2326)
	movq %rbx, -16(%rbp)		# movq %r(2326), -16(%rbp)
	jmp .L323		# jmp .L323
	.L325:		# .L325:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2327)
	movq %rbx, %r13		# movq %r(2327), %r(2234)
	movq $0, %rbx		# movq $0, %r(2281)
	movq %rbx, %r14		# movq %r(2281), %r(2235)
	movq $8, %r12		# movq $8, %r(2282)
	movq %r13, %rbx		# movq %r(2234), %r(2328)
	movq %rbx, -8(%rbp)		# movq %r(2328), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2329)
	subq %r12, %rbx		# subq %r(2282), %r(2329)
	movq %rbx, -8(%rbp)		# movq %r(2329), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2330)
	movq (%rbx), %rbx		# movq (%r(2330)), %r(2284)
	cmpq %rbx, %r14		# cmpq %r(2284), %r(2235)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %rbx		# movq %r(2235), %r(2285)
	salq $3, %rbx		# salq $3, %r(2285)
	movq %r13, %r12		# movq %r(2234), %r(2286)
	addq %rbx, %r12		# addq %r(2285), %r(2286)
	movq $66, %rbx		# movq $66, %r(2287)
	movq %rbx, (%r12)		# movq %r(2287), (%r(2286))
	movq $1, %r12		# movq $1, %r(2288)
	movq %r12, %r12		# movq %r(2288), %r(2336)
	movq %r12, -96(%rbp)		# movq %r(2336), -96(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2331)
	movq %rbx, %r14		# movq %r(2331), %r(2236)
	movq $0, %rbx		# movq $0, %r(2289)
	movq %rbx, %r12		# movq %r(2289), %r(2237)
	movq $8, %r13		# movq $8, %r(2290)
	movq %r14, %rbx		# movq %r(2236), %r(2332)
	movq %rbx, -40(%rbp)		# movq %r(2332), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2333)
	subq %r13, %rbx		# subq %r(2290), %r(2333)
	movq %rbx, -40(%rbp)		# movq %r(2333), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2334)
	movq (%rbx), %rbx		# movq (%r(2334)), %r(2292)
	cmpq %rbx, %r12		# cmpq %r(2292), %r(2237)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(2237), %r(2293)
	salq $3, %rbx		# salq $3, %r(2293)
	movq %r14, %r12		# movq %r(2236), %r(2294)
	addq %rbx, %r12		# addq %r(2293), %r(2294)
	movq (%r12), %rbx		# movq (%r(2294)), %r(2295)
	movq $66, %r12		# movq $66, %r(2296)
	cmpq %r12, %rbx		# cmpq %r(2296), %r(2295)
	je .L334		# je .L334
	.L335:		# .L335:
	movq $0, %r12		# movq $0, %r(2297)
	movq %r12, %r12		# movq %r(2297), %r(2337)
	movq %r12, -96(%rbp)		# movq %r(2337), -96(%rbp)
	.L334:		# .L334:
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2338)
	movq %rbx, %rdi		# movq %r(2338), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2335)
	movq %rbx, %rax		# movq %r(2335), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	call _Ia_ai		# call _Ia_ai
	call _Ia_ai		# call _Ia_ai
	movq %rax, %r13		# movq %rax, %r(2249)
	movq %r13, %r13		# movq %r(2249), %r(b)
	movq $1, %r12		# movq $1, %r(2339)
	movq %r12, %r15		# movq %r(2339), %r(2243)
	movq %r13, %r13		# movq %r(b), %r(2241)
	movq $0, %rbx		# movq $0, %r(2340)
	movq %rbx, %r12		# movq %r(2340), %r(2242)
	movq $8, %rbx		# movq $8, %r(2341)
	movq %r13, %r14		# movq %r(2241), %r(2342)
	subq %rbx, %r14		# subq %r(2341), %r(2342)
	movq (%r14), %rbx		# movq (%r(2342)), %r(2343)
	cmpq %rbx, %r12		# cmpq %r(2343), %r(2242)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %r12		# movq %r(2242), %r(2344)
	salq $3, %r12		# salq $3, %r(2344)
	movq %r13, %rbx		# movq %r(2241), %r(2345)
	addq %r12, %rbx		# addq %r(2344), %r(2345)
	movq (%rbx), %rbx		# movq (%r(2345)), %r(2346)
	movq $72, %r12		# movq $72, %r(2347)
	cmpq %r12, %rbx		# cmpq %r(2347), %r(2346)
	je .L339		# je .L339
	.L340:		# .L340:
	movq $0, %rbx		# movq $0, %r(2348)
	movq %rbx, %r15		# movq %r(2348), %r(2243)
	.L339:		# .L339:
	movq %r15, %rdi		# movq %r(2243), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L336:		# .L336:
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
	subq $160, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2389)
	movq %rbx, -96(%rbp)		# movq %r(2389), -96(%rbp)
	movq $8, %rbx		# movq $8, %r(2349)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(2390)
	movq %r13, %r13		# movq %r(2390), %r(2350)
	subq %rbx, %r13		# subq %r(2349), %r(2350)
	movq (%r13), %r12		# movq (%r(2350)), %r(2351)
	movq %r12, %r12		# movq %r(2351), %r(2391)
	movq %r12, -40(%rbp)		# movq %r(2391), -40(%rbp)
	movq $1, %r12		# movq $1, %r(2352)
	movq %r12, %r12		# movq %r(2352), %r(2392)
	movq %r12, -136(%rbp)		# movq %r(2392), -136(%rbp)
	movq $0, %rbx		# movq $0, %r(2353)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2393)
	cmpq %rbx, %r12		# cmpq %r(2353), %r(2393)
	jne .L227		# jne .L227
	.L228:		# .L228:
	movq $0, %rbx		# movq $0, %r(2354)
	movq %rbx, %rax		# movq %r(2354), %rax
	jmp .L229		# jmp .L229
	.L227:		# .L227:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2394)
	movq %rbx, %rdi		# movq %r(2394), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2251)
	movq %r14, %r14		# movq %r(2251), %r(1078)
	movq %r14, %r14		# movq %r(1078), %r(1079)
	movq $1, %r13		# movq $1, %r(2355)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2395)
	movq %rbx, %rbx		# movq %r(2395), %r(2396)
	movq %rbx, -128(%rbp)		# movq %r(2396), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(2397)
	subq %r13, %r12		# subq %r(2355), %r(2397)
	movq %r12, -128(%rbp)		# movq %r(2397), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(2398)
	movq %r12, (%r14)		# movq %r(2398), (%r(1079))
	movq $8, %r12		# movq $8, %r(2357)
	movq %r14, %r14		# movq %r(1079), %r(2358)
	addq %r12, %r14		# addq %r(2357), %r(2358)
	movq %r14, %r14		# movq %r(2358), %r(2399)
	movq %r14, -8(%rbp)		# movq %r(2399), -8(%rbp)
	.L230:		# .L230:
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(2400)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2401)
	cmpq %r12, %rbx		# cmpq %r(2401), %r(2400)
	jge .L231		# jge .L231
	.L232:		# .L232:
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2402)
	movq %r12, %r12		# movq %r(2402), %r(2403)
	movq %r12, -24(%rbp)		# movq %r(2403), -24(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(2404)
	movq %r12, %r12		# movq %r(2404), %r(2405)
	movq %r12, -32(%rbp)		# movq %r(2405), -32(%rbp)
	movq $8, %r12		# movq $8, %r(2359)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2406)
	movq %r13, %r13		# movq %r(2406), %r(2407)
	movq %r13, -104(%rbp)		# movq %r(2407), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2408)
	subq %r12, %rbx		# subq %r(2359), %r(2408)
	movq %rbx, -104(%rbp)		# movq %r(2408), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2409)
	movq (%rbx), %rbx		# movq (%r(2409)), %r(2361)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2410)
	cmpq %rbx, %r12		# cmpq %r(2361), %r(2410)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2411)
	movq %r12, %r12		# movq %r(2411), %r(2412)
	movq %r12, -112(%rbp)		# movq %r(2412), -112(%rbp)
	movq $1, %r12		# movq $1, %r(2362)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(2413)
	movq %r13, %r13		# movq %r(2413), %r(2414)
	movq %r13, -144(%rbp)		# movq %r(2414), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2415)
	subq %r12, %rbx		# subq %r(2362), %r(2415)
	movq %rbx, -144(%rbp)		# movq %r(2415), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2416)
	movq %r12, %r12		# movq %r(2416), %r(2417)
	movq %r12, -48(%rbp)		# movq %r(2417), -48(%rbp)
	movq $8, %r12		# movq $8, %r(2364)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(2418)
	movq %r13, %r13		# movq %r(2418), %r(2419)
	movq %r13, -88(%rbp)		# movq %r(2419), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2420)
	subq %r12, %rbx		# subq %r(2364), %r(2420)
	movq %rbx, -88(%rbp)		# movq %r(2420), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2421)
	movq (%rbx), %rbx		# movq (%r(2421)), %r(2366)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2422)
	cmpq %rbx, %r12		# cmpq %r(2366), %r(2422)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2423)
	movq %r13, %r13		# movq %r(2423), %r(2367)
	salq $3, %r13		# salq $3, %r(2367)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(2424)
	movq %rbx, %rbx		# movq %r(2424), %r(2425)
	movq %rbx, -72(%rbp)		# movq %r(2425), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2426)
	addq %r13, %r12		# addq %r(2367), %r(2426)
	movq %r12, -72(%rbp)		# movq %r(2426), -72(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2427)
	movq %r12, %r12		# movq %r(2427), %r(2428)
	movq %r12, -56(%rbp)		# movq %r(2428), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2429)
	salq $3, %rbx		# salq $3, %r(2429)
	movq %rbx, -56(%rbp)		# movq %r(2429), -56(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2430)
	movq %r13, %r13		# movq %r(2430), %r(2370)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2431)
	addq %r12, %r13		# addq %r(2431), %r(2370)
	movq (%r13), %rbx		# movq (%r(2370)), %r(2371)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2432)
	movq %rbx, (%r12)		# movq %r(2371), (%r(2432))
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(2433)
	incq %rbx		# incq %r(2433)
	movq %rbx, -136(%rbp)		# movq %r(2433), -136(%rbp)
	jmp .L230		# jmp .L230
	.L231:		# .L231:
	movq -96(%rbp), %r15		# movq -96(%rbp), %r(2434)
	movq %r15, %r15		# movq %r(2434), %r(1085)
	movq $0, %r12		# movq $0, %r(2372)
	movq %r12, %r14		# movq %r(2372), %r(1086)
	movq $8, %r12		# movq $8, %r(2373)
	movq %r15, %r13		# movq %r(1085), %r(2374)
	subq %r12, %r13		# subq %r(2373), %r(2374)
	movq (%r13), %r12		# movq (%r(2374)), %r(2375)
	cmpq %r12, %r14		# cmpq %r(2375), %r(1086)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1086), %r(2376)
	salq $3, %r12		# salq $3, %r(2376)
	movq %r15, %rbx		# movq %r(1085), %r(2377)
	addq %r12, %rbx		# addq %r(2376), %r(2377)
	movq (%rbx), %r12		# movq (%r(2377)), %r(2378)
	movq %r12, %r12		# movq %r(2378), %r(2435)
	movq %r12, -136(%rbp)		# movq %r(2435), -136(%rbp)
	movq $1, %rbx		# movq $1, %r(2379)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(2436)
	movq %r13, %r13		# movq %r(2436), %r(2380)
	addq %rbx, %r13		# addq %r(2379), %r(2380)
	movq %r13, %rdi		# movq %r(2380), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2252)
	movq %rbx, %rbx		# movq %r(2252), %r(1087)
	movq %rbx, %rbx		# movq %r(1087), %r(1088)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(2437)
	movq %r12, (%rbx)		# movq %r(2437), (%r(1088))
	movq $8, %r12		# movq $8, %r(2381)
	movq %rbx, %rbx		# movq %r(1088), %r(2382)
	addq %r12, %rbx		# addq %r(2381), %r(2382)
	movq %rbx, %rbx		# movq %r(2382), %r(2438)
	movq %rbx, -64(%rbp)		# movq %r(2438), -64(%rbp)
	.L236:		# .L236:
	movq $0, %rbx		# movq $0, %r(2383)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(2439)
	cmpq %rbx, %r12		# cmpq %r(2383), %r(2439)
	jle .L237		# jle .L237
	.L238:		# .L238:
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(2440)
	decq %rbx		# decq %r(2440)
	movq %rbx, -136(%rbp)		# movq %r(2440), -136(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2441)
	movq %rbx, %rdi		# movq %r(2441), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2253)
	movq %rbx, %rbx		# movq %r(2253), %r(1090)
	movq %rbx, %rbx		# movq %r(1090), %r(2442)
	movq %rbx, -120(%rbp)		# movq %r(2442), -120(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2443)
	movq %r12, %r12		# movq %r(2443), %r(2444)
	movq %r12, -16(%rbp)		# movq %r(2444), -16(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(2445)
	movq %rbx, %rbx		# movq %r(2445), %r(1093)
	movq $8, %r13		# movq $8, %r(2384)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(2446)
	movq %r14, %r14		# movq %r(2446), %r(2447)
	movq %r14, -80(%rbp)		# movq %r(2447), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2448)
	subq %r13, %r12		# subq %r(2384), %r(2448)
	movq %r12, -80(%rbp)		# movq %r(2448), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2449)
	movq (%r12), %r12		# movq (%r(2449)), %r(2386)
	cmpq %r12, %rbx		# cmpq %r(2386), %r(1093)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1093), %r(2387)
	salq $3, %rbx		# salq $3, %r(2387)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2450)
	movq %r13, %r13		# movq %r(2450), %r(2388)
	addq %rbx, %r13		# addq %r(2387), %r(2388)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2451)
	movq %rbx, (%r13)		# movq %r(2451), (%r(2388))
	jmp .L236		# jmp .L236
	.L237:		# .L237:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2452)
	movq %rbx, %rax		# movq %r(2452), %rax
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(2453)
	movq %r12, %r12		# movq %r(2453), %r(2465)
	movq %r12, -16(%rbp)		# movq %r(2465), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2466)
	movq %rbx, %rbx		# movq %r(2466), %r(2454)
	salq $3, %rbx		# salq $3, %r(2454)
	movq $8, %r12		# movq $8, %r(2455)
	movq %rbx, %rbx		# movq %r(2454), %r(2456)
	addq %r12, %rbx		# addq %r(2455), %r(2456)
	movq %rbx, %rdi		# movq %r(2456), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2254)
	movq %rbx, %r13		# movq %r(2254), %r(t27)
	.L264:		# .L264:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2467)
	movq %r12, %r12		# movq %r(2467), %r(2457)
	salq $3, %r12		# salq $3, %r(2457)
	movq %r13, %r15		# movq %r(t27), %r(2458)
	addq %r12, %r15		# addq %r(2457), %r(2458)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2468)
	movq %rbx, %r12		# movq %r(2468), %r(2459)
	salq $3, %r12		# salq $3, %r(2459)
	movq %r14, %rbx		# movq %r(p0), %r(2469)
	movq %rbx, -8(%rbp)		# movq %r(2469), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2470)
	addq %r12, %rbx		# addq %r(2459), %r(2470)
	movq %rbx, -8(%rbp)		# movq %r(2470), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2471)
	movq (%rbx), %rbx		# movq (%r(2471)), %r(2461)
	movq %rbx, (%r15)		# movq %r(2461), (%r(2458))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2472)
	decq %rbx		# decq %r(2472)
	movq %rbx, -16(%rbp)		# movq %r(2472), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(2462)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2473)
	cmpq %rbx, %r12		# cmpq %r(2462), %r(2473)
	jge .L264		# jge .L264
	.L265:		# .L265:
	movq $8, %rbx		# movq $8, %r(2463)
	movq %r13, %r12		# movq %r(t27), %r(2464)
	addq %rbx, %r12		# addq %r(2463), %r(2464)
	movq %r12, %rax		# movq %r(2464), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L321:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

error_outofbounds:
call _I_outOfBounds_p
