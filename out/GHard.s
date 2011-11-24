.att_syntax prefix
.text
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
	movq $0, %rbx		# movq $0, %r(2265)
	movq %rbx, %r15		# movq %r(2265), %r(i)
	movq $88, %rbx		# movq $88, %r(2266)
	movq %rbx, %rdi		# movq %r(2266), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2252)
	movq $10, %rbx		# movq $10, %r(2267)
	movq %rbx, (%r13)		# movq %r(2267), (%r(2252))
	movq $8, %rbx		# movq $8, %r(2268)
	addq %rbx, %r13		# addq %r(2268), %r(2269)
	movq %r13, %r12		# movq %r(2269), %r(2241)
	movq $0, %rbx		# movq $0, %r(2270)
	movq %r12, %r13		# movq %r(2241), %r(2271)
	addq %rbx, %r13		# addq %r(2270), %r(2271)
	movq $0, %rbx		# movq $0, %r(2272)
	movq %rbx, (%r13)		# movq %r(2272), (%r(2271))
	movq $8, %rbx		# movq $8, %r(2273)
	movq %r12, %r13		# movq %r(2241), %r(2274)
	addq %rbx, %r13		# addq %r(2273), %r(2274)
	movq $0, %rbx		# movq $0, %r(2275)
	movq %rbx, (%r13)		# movq %r(2275), (%r(2274))
	movq $16, %rbx		# movq $16, %r(2276)
	movq %r12, %r13		# movq %r(2241), %r(2277)
	addq %rbx, %r13		# addq %r(2276), %r(2277)
	movq $0, %rbx		# movq $0, %r(2278)
	movq %rbx, (%r13)		# movq %r(2278), (%r(2277))
	movq $24, %rbx		# movq $24, %r(2279)
	movq %r12, %r13		# movq %r(2241), %r(2280)
	addq %rbx, %r13		# addq %r(2279), %r(2280)
	movq $0, %rbx		# movq $0, %r(2281)
	movq %rbx, (%r13)		# movq %r(2281), (%r(2280))
	movq $32, %rbx		# movq $32, %r(2282)
	movq %r12, %r13		# movq %r(2241), %r(2283)
	addq %rbx, %r13		# addq %r(2282), %r(2283)
	movq $0, %rbx		# movq $0, %r(2284)
	movq %rbx, (%r13)		# movq %r(2284), (%r(2283))
	movq $40, %rbx		# movq $40, %r(2285)
	movq %r12, %r13		# movq %r(2241), %r(2286)
	addq %rbx, %r13		# addq %r(2285), %r(2286)
	movq $0, %rbx		# movq $0, %r(2287)
	movq %rbx, (%r13)		# movq %r(2287), (%r(2286))
	movq $48, %rbx		# movq $48, %r(2288)
	movq %r12, %r13		# movq %r(2241), %r(2289)
	addq %rbx, %r13		# addq %r(2288), %r(2289)
	movq $0, %rbx		# movq $0, %r(2290)
	movq %rbx, (%r13)		# movq %r(2290), (%r(2289))
	movq $56, %rbx		# movq $56, %r(2291)
	movq %r12, %r13		# movq %r(2241), %r(2292)
	addq %rbx, %r13		# addq %r(2291), %r(2292)
	movq $0, %rbx		# movq $0, %r(2293)
	movq %rbx, (%r13)		# movq %r(2293), (%r(2292))
	movq $64, %rbx		# movq $64, %r(2294)
	movq %r12, %r13		# movq %r(2241), %r(2295)
	addq %rbx, %r13		# addq %r(2294), %r(2295)
	movq $0, %rbx		# movq $0, %r(2296)
	movq %rbx, (%r13)		# movq %r(2296), (%r(2295))
	movq $72, %rbx		# movq $72, %r(2297)
	movq %r12, %r13		# movq %r(2241), %r(2298)
	addq %rbx, %r13		# addq %r(2297), %r(2298)
	movq $0, %rbx		# movq $0, %r(2299)
	movq %rbx, (%r13)		# movq %r(2299), (%r(2298))
	jmp .L438		# jmp .L438
	.L438:		# .L438:
	movq $1, %rbx		# movq $1, %r(2300)
	movq %rbx, %r13		# movq %r(2300), %r(2243)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(2253)
	testq $1, %rbx		# testq $1, %r(2253)
	jne .L441		# jne .L441
	.L443:		# .L443:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(2254)
	testq $1, %rbx		# testq $1, %r(2254)
	jne .L441		# jne .L441
	.L442:		# .L442:
	movq $0, %rbx		# movq $0, %r(2301)
	movq %rbx, %r13		# movq %r(2301), %r(2243)
	jmp .L441		# jmp .L441
	.L441:		# .L441:
	movq $1, %r14		# movq $1, %r(2302)
	movq %r13, %rbx		# movq %r(2243), %r(2303)
	xorq %r14, %rbx		# xorq %r(2302), %r(2303)
	testq $1, %rbx		# testq $1, %r(2303)
	jne .L440		# jne .L440
	.L446:		# .L446:
	movq $1, %rbx		# movq $1, %r(2304)
	movq %rbx, %r13		# movq %r(2304), %r(2244)
	movq $20, %rbx		# movq $20, %r(2305)
	cmpq %rbx, %r15		# cmpq %r(2305), %r(i)
	jl .L444		# jl .L444
	.L445:		# .L445:
	movq $0, %rbx		# movq $0, %r(2306)
	movq %rbx, %r13		# movq %r(2306), %r(2244)
	jmp .L444		# jmp .L444
	.L444:		# .L444:
	movq $1, %r14		# movq $1, %r(2307)
	movq %r13, %rbx		# movq %r(2244), %r(2308)
	xorq %r14, %rbx		# xorq %r(2307), %r(2308)
	testq $1, %rbx		# testq $1, %r(2308)
	jne .L440		# jne .L440
	.L439:		# .L439:
	movq $8, %rbx		# movq $8, %r(2309)
	movq %r12, %r13		# movq %r(2241), %r(2310)
	subq %rbx, %r13		# subq %r(2309), %r(2310)
	movq (%r13), %rbx		# movq (%r(2310)), %r(2311)
	cmpq %rbx, %r15		# cmpq %r(2311), %r(i)
	jge .L448		# jge .L448
	.L447:		# .L447:
	movq $8, %rbx		# movq $8, %r(2312)
	movq %r12, %r13		# movq %r(2241), %r(2313)
	subq %rbx, %r13		# subq %r(2312), %r(2313)
	movq (%r13), %rbx		# movq (%r(2313)), %r(2314)
	cmpq %rbx, %r15		# cmpq %r(2314), %r(i)
	jae error_outofbounds		# jae error_outofbounds
	movq %r15, %rbx		# movq %r(i), %r(2315)
	salq $3, %rbx		# salq $3, %r(2315)
	movq %r12, %r13		# movq %r(2241), %r(2316)
	addq %rbx, %r13		# addq %r(2315), %r(2316)
	movq $10, %rbx		# movq $10, %r(2317)
	imulq %r15, %rbx		# imulq %r(i), %r(2318)
	movq $-8, %r14		# movq $-8, %r(2319)
	addq %r14, %rbx		# addq %r(2319), %r(2320)
	movq %rbx, (%r13)		# movq %r(2320), (%r(2316))
	jmp .L448		# jmp .L448
	.L448:		# .L448:
	incq %r15		# incq %r(i)
	jmp .L438		# jmp .L438
	.L440:		# .L440:
	movq $50, %rbx		# movq $50, %r(2321)
	movq %rbx, %rdi		# movq %r(2321), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L451(%rip), %rdi		# leaq .L451(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2256)
	leaq .L452(%rip), %rdi		# leaq .L452(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2257)
	movq %rbx, %rdi		# movq %r(2256), %rdi
	movq %r12, %rsi		# movq %r(2257), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(2258)
	movq %rbx, %rdi		# movq %r(2256), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L437		# jmp .L437
	.L437:		# .L437:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ifoo_pi
_Ifoo_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $0, %r12		# movq $0, %r(2324)
	cmpq %r12, %r13		# cmpq %r(2324), %r(x)
	jge .L455		# jge .L455
	.L454:		# .L454:
	movq $1, %r12		# movq $1, %r(2325)
	subq %r12, %r13		# subq %r(2325), %r(2326)
	movq %r13, %rdi		# movq %r(2326), %rdi
	call _Ibar_pi		# call _Ibar_pi
	jmp .L455		# jmp .L455
	.L455:		# .L455:
	.L453:		# .L453:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ibar_pi
_Ibar_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $1, %r12		# movq $1, %r(2327)
	subq %r12, %r13		# subq %r(2327), %r(2328)
	movq %r13, %rdi		# movq %r(2328), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	jmp .L456		# jmp .L456
	.L456:		# .L456:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IretTrue_b
_IretTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(2329)
	movq %rbx, %rax		# movq %r(2329), %rax
	jmp .L457		# jmp .L457
	.L457:		# .L457:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IretFalse_b
_IretFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %rbx		# movq $0, %r(2330)
	movq %rbx, %rax		# movq %r(2330), %rax
	jmp .L458		# jmp .L458
	.L458:		# .L458:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(2343)
	movq %rbx, -16(%rbp)		# movq %r(2343), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2344)
	movq (%rbx), %r12		# movq (%r(2344)), %r(2331)
	movq %r12, -24(%rbp)		# movq %r(2345), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2346)
	salq $3, %rbx		# salq $3, %r(2332)
	movq $8, %r12		# movq $8, %r(2333)
	addq %r12, %rbx		# addq %r(2333), %r(2334)
	movq %rbx, %rdi		# movq %r(2334), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2262)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2347)
	salq $3, %r12		# salq $3, %r(2335)
	movq %r14, %r13		# movq %r(2262), %r(2336)
	addq %r12, %r13		# addq %r(2335), %r(2336)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2348)
	movq %rbx, %r12		# movq %r(2348), %r(2337)
	salq $3, %r12		# salq $3, %r(2337)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2349)
	movq %rbx, -8(%rbp)		# movq %r(2350), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2351)
	addq %r12, %rbx		# addq %r(2337), %r(2351)
	movq %rbx, -8(%rbp)		# movq %r(2351), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2352)
	movq (%rbx), %rbx		# movq (%r(2352)), %r(2339)
	movq %rbx, (%r13)		# movq %r(2339), (%r(2336))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2353)
	decq %rbx		# decq %r(2353)
	movq %rbx, -24(%rbp)		# movq %r(2353), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(2340)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2354)
	cmpq %rbx, %r12		# cmpq %r(2340), %r(2354)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(2341)
	movq %r14, %r12		# movq %r(2262), %r(2342)
	addq %rbx, %r12		# addq %r(2341), %r(2342)
	movq %r12, %rax		# movq %r(2342), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2378)
	movq %rbx, -32(%rbp)		# movq %r(2378), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2379)
	movq %rbx, -56(%rbp)		# movq %r(2379), -56(%rbp)
	movq $0, %r12		# movq $0, %r(2355)
	movq %r12, -8(%rbp)		# movq %r(2380), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(2356)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2381)
	subq %rbx, %r13		# subq %r(2356), %r(2357)
	movq (%r13), %r12		# movq (%r(2357)), %r(2358)
	movq %r12, -48(%rbp)		# movq %r(2382), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(2359)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2383)
	subq %rbx, %r13		# subq %r(2359), %r(2360)
	movq (%r13), %rbx		# movq (%r(2360)), %r(2361)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2384)
	addq %rbx, %r12		# addq %r(2361), %r(2362)
	movq %r12, -64(%rbp)		# movq %r(2385), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(2363)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2386)
	addq %rbx, %r13		# addq %r(2363), %r(2364)
	movq %r13, %rdi		# movq %r(2364), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2263)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2387)
	movq %r12, (%rbx)		# movq %r(2387), (%r(2263))
	movq $8, %r12		# movq $8, %r(2365)
	addq %r12, %rbx		# addq %r(2365), %r(2366)
	movq %rbx, -16(%rbp)		# movq %r(2388), -16(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2389)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2390)
	cmpq %r12, %rbx		# cmpq %r(2390), %r(2389)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2391)
	salq $3, %r13		# salq $3, %r(2367)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2392)
	movq %rbx, -72(%rbp)		# movq %r(2393), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2394)
	addq %r13, %r12		# addq %r(2367), %r(2394)
	movq %r12, -72(%rbp)		# movq %r(2394), -72(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2395)
	salq $3, %r13		# salq $3, %r(2369)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2396)
	movq %rbx, -40(%rbp)		# movq %r(2397), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2398)
	addq %r13, %r12		# addq %r(2369), %r(2398)
	movq %r12, -40(%rbp)		# movq %r(2398), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2399)
	movq (%rbx), %rbx		# movq (%r(2399)), %r(2371)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2400)
	movq %rbx, (%r12)		# movq %r(2371), (%r(2400))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2401)
	incq %rbx		# incq %r(2401)
	movq %rbx, -8(%rbp)		# movq %r(2401), -8(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2402)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2403)
	cmpq %r12, %rbx		# cmpq %r(2403), %r(2402)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2404)
	salq $3, %r13		# salq $3, %r(2372)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(2405)
	addq %r13, %r14		# addq %r(2372), %r(2373)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(2406)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2407)
	subq %r13, %r15		# subq %r(2407), %r(2374)
	salq $3, %r15		# salq $3, %r(2375)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2408)
	movq %rbx, -24(%rbp)		# movq %r(2409), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2410)
	addq %r15, %r13		# addq %r(2375), %r(2410)
	movq %r13, -24(%rbp)		# movq %r(2410), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2411)
	movq (%rbx), %rbx		# movq (%r(2411)), %r(2377)
	movq %rbx, (%r14)		# movq %r(2377), (%r(2373))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2412)
	incq %rbx		# incq %r(2412)
	movq %rbx, -8(%rbp)		# movq %r(2412), -8(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2413)
	movq %rbx, %rax		# movq %r(2413), %rax
	jmp .L23		# jmp .L23
	.L23:		# .L23:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L452:
	.quad 5
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L451:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

error_outofbounds:
call _I_outOfBounds_p
