.att_syntax prefix
.text
.globl _Ia_ai
_Ia_ai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %r12		# movq $0, %r(2303)
	movq %r12, -40(%rbp)		# movq %r(2345), -40(%rbp)
	leaq .L339(%rip), %rdi		# leaq .L339(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2291)
	movq %r12, -80(%rbp)		# movq %r(2346), -80(%rbp)
	movq $16, %rbx		# movq $16, %r(2305)
	movq %rbx, %rdi		# movq %r(2305), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2292)
	movq $1, %r12		# movq $1, %r(2306)
	movq %r12, (%rbx)		# movq %r(2306), (%r(2276))
	movq $8, %r12		# movq $8, %r(2307)
	addq %r12, %rbx		# addq %r(2307), %r(2308)
	movq %rbx, %r14		# movq %r(2308), %r(2275)
	movq $0, %rbx		# movq $0, %r(2309)
	movq %r14, %r12		# movq %r(2275), %r(2310)
	addq %rbx, %r12		# addq %r(2309), %r(2310)
	movq $8, %r13		# movq $8, %r(2311)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2347)
	movq %rbx, -64(%rbp)		# movq %r(2348), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2349)
	subq %r13, %rbx		# subq %r(2311), %r(2349)
	movq %rbx, -64(%rbp)		# movq %r(2349), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2350)
	movq (%rbx), %rbx		# movq (%r(2350)), %r(2313)
	movq %rbx, (%r12)		# movq %r(2313), (%r(2310))
	movq %r14, %rdi		# movq %r(2275), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(2293)
	movq %r12, -24(%rbp)		# movq %r(2351), -24(%rbp)
	.L341:		# .L341:
	movq $8, %rbx		# movq $8, %r(2314)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2352)
	subq %rbx, %r13		# subq %r(2314), %r(2315)
	movq (%r13), %rbx		# movq (%r(2315)), %r(2316)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2353)
	cmpq %rbx, %r12		# cmpq %r(2316), %r(2353)
	jge .L343		# jge .L343
	.L342:		# .L342:
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2354)
	movq %r12, -48(%rbp)		# movq %r(2355), -48(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2356)
	movq %r12, -88(%rbp)		# movq %r(2357), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(2317)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2358)
	subq %rbx, %r13		# subq %r(2317), %r(2318)
	movq (%r13), %rbx		# movq (%r(2318)), %r(2319)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2359)
	cmpq %rbx, %r12		# cmpq %r(2319), %r(2359)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2360)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2361)
	movq %r13, -16(%rbp)		# movq %r(2362), -16(%rbp)
	movq $8, %r13		# movq $8, %r(2320)
	movq %rbx, %r14		# movq %r(2277), %r(2363)
	movq %r14, -8(%rbp)		# movq %r(2363), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2364)
	subq %r13, %r12		# subq %r(2320), %r(2364)
	movq %r12, -8(%rbp)		# movq %r(2364), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2365)
	movq (%r12), %r12		# movq (%r(2365)), %r(2322)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2366)
	cmpq %r12, %r13		# cmpq %r(2322), %r(2366)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2367)
	salq $3, %r13		# salq $3, %r(2323)
	movq %rbx, -72(%rbp)		# movq %r(2368), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2369)
	addq %r13, %rbx		# addq %r(2323), %r(2369)
	movq %rbx, -72(%rbp)		# movq %r(2369), -72(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(2370)
	salq $3, %r13		# salq $3, %r(2325)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2371)
	addq %r13, %rbx		# addq %r(2325), %r(2326)
	movq (%rbx), %rbx		# movq (%r(2326)), %r(2327)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2372)
	movq %rbx, (%r12)		# movq %r(2327), (%r(2372))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2373)
	incq %rbx		# incq %r(2373)
	movq %rbx, -40(%rbp)		# movq %r(2373), -40(%rbp)
	jmp .L341		# jmp .L341
	.L343:		# .L343:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2374)
	movq %rbx, %r15		# movq %r(2374), %r(2281)
	movq $0, %rbx		# movq $0, %r(2328)
	movq %rbx, %r13		# movq %r(2328), %r(2282)
	movq $8, %r14		# movq $8, %r(2329)
	movq %r15, %rbx		# movq %r(2281), %r(2375)
	movq %rbx, -32(%rbp)		# movq %r(2375), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2376)
	subq %r14, %rbx		# subq %r(2329), %r(2376)
	movq %rbx, -32(%rbp)		# movq %r(2376), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2377)
	movq (%rbx), %rbx		# movq (%r(2377)), %r(2331)
	cmpq %rbx, %r13		# cmpq %r(2331), %r(2282)
	jae error_outofbounds		# jae error_outofbounds
	movq %r13, %rbx		# movq %r(2282), %r(2332)
	salq $3, %rbx		# salq $3, %r(2332)
	movq %r15, %r12		# movq %r(2281), %r(2333)
	addq %rbx, %r12		# addq %r(2332), %r(2333)
	movq $66, %rbx		# movq $66, %r(2334)
	movq %rbx, (%r12)		# movq %r(2334), (%r(2333))
	movq $1, %rbx		# movq $1, %r(2335)
	movq %rbx, %r15		# movq %r(2335), %r(2285)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2378)
	movq %rbx, %r13		# movq %r(2378), %r(2283)
	movq $0, %rbx		# movq $0, %r(2336)
	movq %rbx, %r12		# movq %r(2336), %r(2284)
	movq $8, %r14		# movq $8, %r(2337)
	movq %r13, %rbx		# movq %r(2283), %r(2379)
	movq %rbx, -56(%rbp)		# movq %r(2379), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2380)
	subq %r14, %rbx		# subq %r(2337), %r(2380)
	movq %rbx, -56(%rbp)		# movq %r(2380), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2381)
	movq (%rbx), %rbx		# movq (%r(2381)), %r(2339)
	cmpq %rbx, %r12		# cmpq %r(2339), %r(2284)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(2340)
	movq %r13, %rbx		# movq %r(2283), %r(2341)
	addq %r12, %rbx		# addq %r(2340), %r(2341)
	movq (%rbx), %rbx		# movq (%r(2341)), %r(2342)
	movq $66, %r12		# movq $66, %r(2343)
	cmpq %r12, %rbx		# cmpq %r(2343), %r(2342)
	je .L352		# je .L352
	.L353:		# .L353:
	movq $0, %rbx		# movq $0, %r(2344)
	movq %rbx, %r15		# movq %r(2344), %r(2285)
	.L352:		# .L352:
	movq %r15, %rdi		# movq %r(2285), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2382)
	movq %rbx, %rax		# movq %r(2382), %rax
	jmp .L338		# jmp .L338
	.L338:		# .L338:
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
	call _Ia_ai		# call _Ia_ai
	call _Ia_ai		# call _Ia_ai
	movq %rax, %r13		# movq %rax, %r(2296)
	movq $1, %r12		# movq $1, %r(2383)
	movq %r12, %r15		# movq %r(2383), %r(2290)
	movq $0, %rbx		# movq $0, %r(2384)
	movq %rbx, %r12		# movq %r(2384), %r(2289)
	movq $8, %rbx		# movq $8, %r(2385)
	movq %r13, %r14		# movq %r(2288), %r(2386)
	subq %rbx, %r14		# subq %r(2385), %r(2386)
	movq (%r14), %rbx		# movq (%r(2386)), %r(2387)
	cmpq %rbx, %r12		# cmpq %r(2387), %r(2289)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(2388)
	movq %r13, %rbx		# movq %r(2288), %r(2389)
	addq %r12, %rbx		# addq %r(2388), %r(2389)
	movq (%rbx), %rbx		# movq (%r(2389)), %r(2390)
	movq $72, %r12		# movq $72, %r(2391)
	cmpq %r12, %rbx		# cmpq %r(2391), %r(2390)
	je .L357		# je .L357
	.L358:		# .L358:
	movq $0, %rbx		# movq $0, %r(2392)
	movq %rbx, %r15		# movq %r(2392), %r(2290)
	.L357:		# .L357:
	movq %r15, %rdi		# movq %r(2290), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L354:		# .L354:
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
	movq %rdi, %rbx		# movq %rdi, %r(2433)
	movq %rbx, -112(%rbp)		# movq %r(2433), -112(%rbp)
	movq $8, %rbx		# movq $8, %r(2393)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(2434)
	subq %rbx, %r13		# subq %r(2393), %r(2394)
	movq (%r13), %r12		# movq (%r(2394)), %r(2395)
	movq %r12, -144(%rbp)		# movq %r(2435), -144(%rbp)
	movq $1, %r12		# movq $1, %r(2396)
	movq %r12, -48(%rbp)		# movq %r(2436), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(2397)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2437)
	cmpq %rbx, %r12		# cmpq %r(2397), %r(2437)
	jne .L247		# jne .L247
	.L248:		# .L248:
	movq $0, %rbx		# movq $0, %r(2398)
	movq %rbx, %rax		# movq %r(2398), %rax
	jmp .L249		# jmp .L249
	.L247:		# .L247:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2438)
	movq %rbx, %rdi		# movq %r(2438), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2298)
	movq $1, %r13		# movq $1, %r(2399)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2439)
	movq %rbx, -88(%rbp)		# movq %r(2440), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2441)
	subq %r13, %r12		# subq %r(2399), %r(2441)
	movq %r12, -88(%rbp)		# movq %r(2441), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(2442)
	movq %r12, (%r14)		# movq %r(2442), (%r(1136))
	movq $8, %r12		# movq $8, %r(2401)
	addq %r12, %r14		# addq %r(2401), %r(2402)
	movq %r14, -32(%rbp)		# movq %r(2443), -32(%rbp)
	.L250:		# .L250:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2444)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2445)
	cmpq %r12, %rbx		# cmpq %r(2445), %r(2444)
	jge .L251		# jge .L251
	.L252:		# .L252:
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2446)
	movq %r12, -136(%rbp)		# movq %r(2447), -136(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2448)
	movq %r12, -40(%rbp)		# movq %r(2449), -40(%rbp)
	movq $8, %r12		# movq $8, %r(2403)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(2450)
	movq %r13, -96(%rbp)		# movq %r(2451), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2452)
	subq %r12, %rbx		# subq %r(2403), %r(2452)
	movq %rbx, -96(%rbp)		# movq %r(2452), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2453)
	movq (%rbx), %rbx		# movq (%r(2453)), %r(2405)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2454)
	cmpq %rbx, %r12		# cmpq %r(2405), %r(2454)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2455)
	movq %r12, -104(%rbp)		# movq %r(2456), -104(%rbp)
	movq $1, %r12		# movq $1, %r(2406)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2457)
	movq %r13, -24(%rbp)		# movq %r(2458), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2459)
	subq %r12, %rbx		# subq %r(2406), %r(2459)
	movq %rbx, -24(%rbp)		# movq %r(2459), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2460)
	movq %r12, -16(%rbp)		# movq %r(2461), -16(%rbp)
	movq $8, %r12		# movq $8, %r(2408)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(2462)
	movq %r13, -56(%rbp)		# movq %r(2463), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2464)
	subq %r12, %rbx		# subq %r(2408), %r(2464)
	movq %rbx, -56(%rbp)		# movq %r(2464), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2465)
	movq (%rbx), %rbx		# movq (%r(2465)), %r(2410)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2466)
	cmpq %rbx, %r12		# cmpq %r(2410), %r(2466)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2467)
	salq $3, %r13		# salq $3, %r(2411)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2468)
	movq %rbx, -8(%rbp)		# movq %r(2469), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2470)
	addq %r13, %r12		# addq %r(2411), %r(2470)
	movq %r12, -8(%rbp)		# movq %r(2470), -8(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2471)
	movq %r12, -64(%rbp)		# movq %r(2472), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2473)
	salq $3, %rbx		# salq $3, %r(2473)
	movq %rbx, -64(%rbp)		# movq %r(2473), -64(%rbp)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(2474)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2475)
	addq %r12, %r13		# addq %r(2475), %r(2414)
	movq (%r13), %rbx		# movq (%r(2414)), %r(2415)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2476)
	movq %rbx, (%r12)		# movq %r(2415), (%r(2476))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2477)
	incq %rbx		# incq %r(2477)
	movq %rbx, -48(%rbp)		# movq %r(2477), -48(%rbp)
	jmp .L250		# jmp .L250
	.L251:		# .L251:
	movq -112(%rbp), %r15		# movq -112(%rbp), %r(2478)
	movq $0, %r12		# movq $0, %r(2416)
	movq %r12, %r14		# movq %r(2416), %r(1143)
	movq $8, %r12		# movq $8, %r(2417)
	movq %r15, %r13		# movq %r(1142), %r(2418)
	subq %r12, %r13		# subq %r(2417), %r(2418)
	movq (%r13), %r12		# movq (%r(2418)), %r(2419)
	cmpq %r12, %r14		# cmpq %r(2419), %r(1143)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1143), %r(2420)
	salq $3, %r12		# salq $3, %r(2420)
	movq %r15, %rbx		# movq %r(1142), %r(2421)
	addq %r12, %rbx		# addq %r(2420), %r(2421)
	movq (%rbx), %r12		# movq (%r(2421)), %r(2422)
	movq %r12, -48(%rbp)		# movq %r(2479), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(2423)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2480)
	addq %rbx, %r13		# addq %r(2423), %r(2424)
	movq %r13, %rdi		# movq %r(2424), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2299)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2481)
	movq %r12, (%rbx)		# movq %r(2481), (%r(1145))
	movq $8, %r12		# movq $8, %r(2425)
	addq %r12, %rbx		# addq %r(2425), %r(2426)
	movq %rbx, -120(%rbp)		# movq %r(2482), -120(%rbp)
	.L256:		# .L256:
	movq $0, %rbx		# movq $0, %r(2427)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2483)
	cmpq %rbx, %r12		# cmpq %r(2427), %r(2483)
	jle .L257		# jle .L257
	.L258:		# .L258:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2484)
	decq %rbx		# decq %r(2484)
	movq %rbx, -48(%rbp)		# movq %r(2484), -48(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2485)
	movq %rbx, %rdi		# movq %r(2485), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2300)
	movq %rbx, -80(%rbp)		# movq %r(2486), -80(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(2487)
	movq %r12, -72(%rbp)		# movq %r(2488), -72(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2489)
	movq $8, %r13		# movq $8, %r(2428)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(2490)
	movq %r14, -128(%rbp)		# movq %r(2491), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(2492)
	subq %r13, %r12		# subq %r(2428), %r(2492)
	movq %r12, -128(%rbp)		# movq %r(2492), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(2493)
	movq (%r12), %r12		# movq (%r(2493)), %r(2430)
	cmpq %r12, %rbx		# cmpq %r(2430), %r(1150)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2431)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(2494)
	addq %rbx, %r13		# addq %r(2431), %r(2432)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2495)
	movq %rbx, (%r13)		# movq %r(2495), (%r(2432))
	jmp .L256		# jmp .L256
	.L257:		# .L257:
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2496)
	movq %rbx, %rax		# movq %r(2496), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(2509)
	movq %rbx, -16(%rbp)		# movq %r(2509), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2510)
	movq (%rbx), %rbx		# movq (%r(2510)), %r(2497)
	movq %rbx, %r14		# movq %r(2497), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(2498)
	salq $3, %rbx		# salq $3, %r(2498)
	movq $8, %r12		# movq $8, %r(2499)
	addq %r12, %rbx		# addq %r(2499), %r(2500)
	movq %rbx, %rdi		# movq %r(2500), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2301)
	movq %rbx, %r13		# movq %r(2301), %r(t27)
	.L165:		# .L165:
	movq %r14, %rbx		# movq %r(t10), %r(2501)
	salq $3, %rbx		# salq $3, %r(2501)
	movq %r13, %r12		# movq %r(t27), %r(2502)
	addq %rbx, %r12		# addq %r(2501), %r(2502)
	movq %r14, %r15		# movq %r(t10), %r(2503)
	salq $3, %r15		# salq $3, %r(2503)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2511)
	movq %rbx, -8(%rbp)		# movq %r(2512), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2513)
	addq %r15, %rbx		# addq %r(2503), %r(2513)
	movq %rbx, -8(%rbp)		# movq %r(2513), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2514)
	movq (%rbx), %rbx		# movq (%r(2514)), %r(2505)
	movq %rbx, (%r12)		# movq %r(2505), (%r(2502))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(2506)
	cmpq %rbx, %r14		# cmpq %r(2506), %r(t10)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq $8, %rbx		# movq $8, %r(2507)
	movq %r13, %r12		# movq %r(t27), %r(2508)
	addq %rbx, %r12		# addq %r(2507), %r(2508)
	movq %r12, %rax		# movq %r(2508), %rax
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
.L339:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

error_outofbounds:
call _I_outOfBounds_p
