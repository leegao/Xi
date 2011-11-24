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
	movq $0, %r12		# movq $0, %r(2297)
	movq %r12, -80(%rbp)		# movq %r(2339), -80(%rbp)
	leaq .L340(%rip), %rdi		# leaq .L340(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2285)
	movq %r12, -72(%rbp)		# movq %r(2340), -72(%rbp)
	movq $16, %rbx		# movq $16, %r(2299)
	movq %rbx, %rdi		# movq %r(2299), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2286)
	movq $1, %r12		# movq $1, %r(2300)
	movq %r12, (%rbx)		# movq %r(2300), (%r(2270))
	movq $8, %r12		# movq $8, %r(2301)
	addq %r12, %rbx		# addq %r(2301), %r(2302)
	movq %rbx, %r14		# movq %r(2302), %r(2269)
	movq $0, %rbx		# movq $0, %r(2303)
	movq %r14, %r13		# movq %r(2269), %r(2304)
	addq %rbx, %r13		# addq %r(2303), %r(2304)
	movq $8, %r12		# movq $8, %r(2305)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2341)
	movq %rbx, -88(%rbp)		# movq %r(2342), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2343)
	subq %r12, %rbx		# subq %r(2305), %r(2343)
	movq %rbx, -88(%rbp)		# movq %r(2343), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2344)
	movq (%rbx), %rbx		# movq (%r(2344)), %r(2307)
	movq %rbx, (%r13)		# movq %r(2307), (%r(2304))
	movq %r14, %rdi		# movq %r(2269), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(2287)
	movq %r12, -56(%rbp)		# movq %r(2345), -56(%rbp)
	.L342:		# .L342:
	movq $8, %rbx		# movq $8, %r(2308)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(2346)
	subq %rbx, %r13		# subq %r(2308), %r(2309)
	movq (%r13), %rbx		# movq (%r(2309)), %r(2310)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2347)
	cmpq %rbx, %r12		# cmpq %r(2310), %r(2347)
	jge .L344		# jge .L344
	.L343:		# .L343:
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2348)
	movq %r12, -8(%rbp)		# movq %r(2349), -8(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2350)
	movq %r12, -16(%rbp)		# movq %r(2351), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(2311)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2352)
	subq %rbx, %r13		# subq %r(2311), %r(2312)
	movq (%r13), %rbx		# movq (%r(2312)), %r(2313)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2353)
	cmpq %rbx, %r12		# cmpq %r(2313), %r(2353)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2354)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2355)
	movq %r13, -64(%rbp)		# movq %r(2356), -64(%rbp)
	movq $8, %r13		# movq $8, %r(2314)
	movq %rbx, %r14		# movq %r(2271), %r(2357)
	movq %r14, -32(%rbp)		# movq %r(2357), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2358)
	subq %r13, %r12		# subq %r(2314), %r(2358)
	movq %r12, -32(%rbp)		# movq %r(2358), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2359)
	movq (%r12), %r12		# movq (%r(2359)), %r(2316)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2360)
	cmpq %r12, %r13		# cmpq %r(2316), %r(2360)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2361)
	salq $3, %r13		# salq $3, %r(2317)
	movq %rbx, -40(%rbp)		# movq %r(2362), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2363)
	addq %r13, %rbx		# addq %r(2317), %r(2363)
	movq %rbx, -40(%rbp)		# movq %r(2363), -40(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2364)
	salq $3, %r13		# salq $3, %r(2319)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2365)
	addq %r13, %rbx		# addq %r(2319), %r(2320)
	movq (%rbx), %rbx		# movq (%r(2320)), %r(2321)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2366)
	movq %rbx, (%r12)		# movq %r(2321), (%r(2366))
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2367)
	incq %rbx		# incq %r(2367)
	movq %rbx, -80(%rbp)		# movq %r(2367), -80(%rbp)
	jmp .L342		# jmp .L342
	.L344:		# .L344:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2368)
	movq %rbx, %r14		# movq %r(2368), %r(2275)
	movq $0, %rbx		# movq $0, %r(2322)
	movq %rbx, %r12		# movq %r(2322), %r(2276)
	movq $8, %r13		# movq $8, %r(2323)
	movq %r14, %rbx		# movq %r(2275), %r(2369)
	movq %rbx, -24(%rbp)		# movq %r(2369), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2370)
	subq %r13, %rbx		# subq %r(2323), %r(2370)
	movq %rbx, -24(%rbp)		# movq %r(2370), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2371)
	movq (%rbx), %rbx		# movq (%r(2371)), %r(2325)
	cmpq %rbx, %r12		# cmpq %r(2325), %r(2276)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(2276), %r(2326)
	salq $3, %rbx		# salq $3, %r(2326)
	movq %r14, %r12		# movq %r(2275), %r(2327)
	addq %rbx, %r12		# addq %r(2326), %r(2327)
	movq $66, %rbx		# movq $66, %r(2328)
	movq %rbx, (%r12)		# movq %r(2328), (%r(2327))
	movq $1, %rbx		# movq $1, %r(2329)
	movq %rbx, %r15		# movq %r(2329), %r(2279)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2372)
	movq %rbx, %r13		# movq %r(2372), %r(2277)
	movq $0, %rbx		# movq $0, %r(2330)
	movq %rbx, %r12		# movq %r(2330), %r(2278)
	movq $8, %r14		# movq $8, %r(2331)
	movq %r13, %rbx		# movq %r(2277), %r(2373)
	movq %rbx, -48(%rbp)		# movq %r(2373), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2374)
	subq %r14, %rbx		# subq %r(2331), %r(2374)
	movq %rbx, -48(%rbp)		# movq %r(2374), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2375)
	movq (%rbx), %rbx		# movq (%r(2375)), %r(2333)
	cmpq %rbx, %r12		# cmpq %r(2333), %r(2278)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(2334)
	movq %r13, %rbx		# movq %r(2277), %r(2335)
	addq %r12, %rbx		# addq %r(2334), %r(2335)
	movq (%rbx), %rbx		# movq (%r(2335)), %r(2336)
	movq $66, %r12		# movq $66, %r(2337)
	cmpq %r12, %rbx		# cmpq %r(2337), %r(2336)
	je .L353		# je .L353
	.L354:		# .L354:
	movq $0, %rbx		# movq $0, %r(2338)
	movq %rbx, %r15		# movq %r(2338), %r(2279)
	.L353:		# .L353:
	movq %r15, %rdi		# movq %r(2279), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2376)
	movq %rbx, %rax		# movq %r(2376), %rax
	jmp .L339		# jmp .L339
	.L339:		# .L339:
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
	movq %rax, %r13		# movq %rax, %r(2290)
	movq $1, %r12		# movq $1, %r(2377)
	movq %r12, %r15		# movq %r(2377), %r(2284)
	movq $0, %rbx		# movq $0, %r(2378)
	movq %rbx, %r12		# movq %r(2378), %r(2283)
	movq $8, %rbx		# movq $8, %r(2379)
	movq %r13, %r14		# movq %r(2282), %r(2380)
	subq %rbx, %r14		# subq %r(2379), %r(2380)
	movq (%r14), %rbx		# movq (%r(2380)), %r(2381)
	cmpq %rbx, %r12		# cmpq %r(2381), %r(2283)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(2382)
	movq %r13, %rbx		# movq %r(2282), %r(2383)
	addq %r12, %rbx		# addq %r(2382), %r(2383)
	movq (%rbx), %rbx		# movq (%r(2383)), %r(2384)
	movq $72, %r12		# movq $72, %r(2385)
	cmpq %r12, %rbx		# cmpq %r(2385), %r(2384)
	je .L358		# je .L358
	.L359:		# .L359:
	movq $0, %rbx		# movq $0, %r(2386)
	movq %rbx, %r15		# movq %r(2386), %r(2284)
	.L358:		# .L358:
	movq %r15, %rdi		# movq %r(2284), %rdi
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
	subq $160, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2429)
	movq %rbx, -104(%rbp)		# movq %r(2429), -104(%rbp)
	movq $8, %rbx		# movq $8, %r(2387)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(2430)
	subq %rbx, %r13		# subq %r(2387), %r(2388)
	movq (%r13), %r12		# movq (%r(2388)), %r(2389)
	movq %r12, -48(%rbp)		# movq %r(2431), -48(%rbp)
	movq $1, %r12		# movq $1, %r(2390)
	movq %r12, -72(%rbp)		# movq %r(2432), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(2391)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2433)
	cmpq %rbx, %r12		# cmpq %r(2391), %r(2433)
	jne .L248		# jne .L248
	.L249:		# .L249:
	movq $0, %rbx		# movq $0, %r(2392)
	movq %rbx, %rax		# movq %r(2392), %rax
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
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2434)
	salq $3, %r12		# salq $3, %r(2393)
	movq %r12, %rdi		# movq %r(2393), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2292)
	movq $1, %r13		# movq $1, %r(2394)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2435)
	movq %rbx, -8(%rbp)		# movq %r(2436), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2437)
	subq %r13, %r12		# subq %r(2394), %r(2437)
	movq %r12, -8(%rbp)		# movq %r(2437), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2438)
	movq %r12, (%r14)		# movq %r(2438), (%r(1142))
	movq $8, %r12		# movq $8, %r(2396)
	addq %r12, %r14		# addq %r(2396), %r(2397)
	movq %r14, -80(%rbp)		# movq %r(2439), -80(%rbp)
	.L251:		# .L251:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2440)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2441)
	cmpq %rbx, %r12		# cmpq %r(2440), %r(2441)
	jge .L252		# jge .L252
	.L253:		# .L253:
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2442)
	movq %r12, -56(%rbp)		# movq %r(2443), -56(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2444)
	movq %r12, -144(%rbp)		# movq %r(2445), -144(%rbp)
	movq $8, %rbx		# movq $8, %r(2398)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2446)
	subq %rbx, %r13		# subq %r(2398), %r(2399)
	movq (%r13), %rbx		# movq (%r(2399)), %r(2400)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2447)
	cmpq %rbx, %r12		# cmpq %r(2400), %r(2447)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2448)
	movq %r12, -32(%rbp)		# movq %r(2449), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(2401)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(2450)
	subq %rbx, %r14		# subq %r(2401), %r(2402)
	movq $8, %r13		# movq $8, %r(2403)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2451)
	movq %r12, -64(%rbp)		# movq %r(2452), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2453)
	subq %r13, %rbx		# subq %r(2403), %r(2453)
	movq %rbx, -64(%rbp)		# movq %r(2453), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2454)
	movq (%rbx), %rbx		# movq (%r(2454)), %r(2405)
	cmpq %rbx, %r14		# cmpq %r(2405), %r(1147)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(2406)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2455)
	movq %r12, -128(%rbp)		# movq %r(2456), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(2457)
	addq %r14, %rbx		# addq %r(2406), %r(2457)
	movq %rbx, -128(%rbp)		# movq %r(2457), -128(%rbp)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(2458)
	salq $3, %r13		# salq $3, %r(2408)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2459)
	addq %r13, %rbx		# addq %r(2408), %r(2409)
	movq (%rbx), %rbx		# movq (%r(2409)), %r(2410)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(2460)
	movq %rbx, (%r12)		# movq %r(2410), (%r(2460))
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2461)
	incq %rbx		# incq %r(2461)
	movq %rbx, -72(%rbp)		# movq %r(2461), -72(%rbp)
	jmp .L251		# jmp .L251
	.L252:		# .L252:
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2462)
	movq %r12, -136(%rbp)		# movq %r(2463), -136(%rbp)
	movq $0, %rbx		# movq $0, %r(2411)
	movq $8, %r13		# movq $8, %r(2412)
	movq -136(%rbp), %r14		# movq -136(%rbp), %r(2464)
	movq %r14, -40(%rbp)		# movq %r(2465), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2466)
	subq %r13, %r12		# subq %r(2412), %r(2466)
	movq %r12, -40(%rbp)		# movq %r(2466), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2467)
	movq (%r12), %r12		# movq (%r(2467)), %r(2414)
	cmpq %r12, %rbx		# cmpq %r(2414), %r(1149)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(2415)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(2468)
	addq %rbx, %r13		# addq %r(2415), %r(2416)
	movq (%r13), %r12		# movq (%r(2416)), %r(2417)
	movq %r12, -72(%rbp)		# movq %r(2469), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(2418)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2470)
	addq %rbx, %r12		# addq %r(2418), %r(2419)
	salq $3, %r12		# salq $3, %r(2420)
	movq %r12, %rdi		# movq %r(2420), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2293)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2471)
	movq %r12, (%rbx)		# movq %r(2471), (%r(1151))
	movq $8, %r12		# movq $8, %r(2421)
	addq %r12, %rbx		# addq %r(2421), %r(2422)
	movq %rbx, -120(%rbp)		# movq %r(2472), -120(%rbp)
	.L257:		# .L257:
	movq $0, %rbx		# movq $0, %r(2423)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2473)
	cmpq %rbx, %r12		# cmpq %r(2423), %r(2473)
	jle .L258		# jle .L258
	.L259:		# .L259:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2474)
	decq %rbx		# decq %r(2474)
	movq %rbx, -72(%rbp)		# movq %r(2474), -72(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2475)
	movq %rbx, %rdi		# movq %r(2475), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2294)
	movq %rbx, -16(%rbp)		# movq %r(2476), -16(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(2477)
	movq %r12, -88(%rbp)		# movq %r(2478), -88(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2479)
	movq %r12, -96(%rbp)		# movq %r(2480), -96(%rbp)
	movq $8, %r12		# movq $8, %r(2424)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(2481)
	movq %r13, -24(%rbp)		# movq %r(2482), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2483)
	subq %r12, %rbx		# subq %r(2424), %r(2483)
	movq %rbx, -24(%rbp)		# movq %r(2483), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2484)
	movq (%rbx), %rbx		# movq (%r(2484)), %r(2426)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2485)
	cmpq %rbx, %r12		# cmpq %r(2426), %r(2485)
	jae error_outofbounds		# jae error_outofbounds
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2486)
	movq %r12, -112(%rbp)		# movq %r(2487), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(2488)
	salq $3, %rbx		# salq $3, %r(2488)
	movq %rbx, -112(%rbp)		# movq %r(2488), -112(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(2489)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2490)
	addq %r12, %r13		# addq %r(2490), %r(2428)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2491)
	movq %r12, (%r13)		# movq %r(2491), (%r(2428))
	jmp .L257		# jmp .L257
	.L258:		# .L258:
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2492)
	movq %rbx, %rax		# movq %r(2492), %rax
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(2493)
	movq %r12, -16(%rbp)		# movq %r(2505), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2506)
	salq $3, %rbx		# salq $3, %r(2494)
	movq $8, %r12		# movq $8, %r(2495)
	addq %r12, %rbx		# addq %r(2495), %r(2496)
	movq %rbx, %rdi		# movq %r(2496), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2295)
	movq %rbx, %r13		# movq %r(2295), %r(t27)
	.L165:		# .L165:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2507)
	salq $3, %r12		# salq $3, %r(2497)
	movq %r13, %r15		# movq %r(t27), %r(2498)
	addq %r12, %r15		# addq %r(2497), %r(2498)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2508)
	movq %rbx, %r12		# movq %r(2508), %r(2499)
	salq $3, %r12		# salq $3, %r(2499)
	movq %r14, %rbx		# movq %r(p0), %r(2509)
	movq %rbx, -8(%rbp)		# movq %r(2509), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2510)
	addq %r12, %rbx		# addq %r(2499), %r(2510)
	movq %rbx, -8(%rbp)		# movq %r(2510), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2511)
	movq (%rbx), %rbx		# movq (%r(2511)), %r(2501)
	movq %rbx, (%r15)		# movq %r(2501), (%r(2498))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2512)
	decq %rbx		# decq %r(2512)
	movq %rbx, -16(%rbp)		# movq %r(2512), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(2502)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2513)
	cmpq %rbx, %r12		# cmpq %r(2502), %r(2513)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq $8, %rbx		# movq $8, %r(2503)
	movq %r13, %r12		# movq %r(t27), %r(2504)
	addq %rbx, %r12		# addq %r(2503), %r(2504)
	movq %r12, %rax		# movq %r(2504), %rax
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
