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
	movq $0, %rbx		# movq $0, %r(2253)
	movq %rbx, %r15		# movq %r(2253), %r(i)
	movq $88, %rbx		# movq $88, %r(2254)
	movq %rbx, %rdi		# movq %r(2254), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(2240)
	movq $10, %rbx		# movq $10, %r(2255)
	movq %rbx, (%r12)		# movq %r(2255), (%r(2240))
	movq $8, %rbx		# movq $8, %r(2256)
	addq %rbx, %r12		# addq %r(2256), %r(2257)
	movq %r12, -8(%rbp)		# movq %r(2312), -8(%rbp)
	movq $0, %r12		# movq $0, %r(2258)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2313)
	addq %r12, %r13		# addq %r(2258), %r(2259)
	movq $0, %r12		# movq $0, %r(2260)
	movq %r12, (%r13)		# movq %r(2260), (%r(2259))
	movq $8, %r12		# movq $8, %r(2261)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2314)
	addq %r12, %r13		# addq %r(2261), %r(2262)
	movq $0, %r12		# movq $0, %r(2263)
	movq %r12, (%r13)		# movq %r(2263), (%r(2262))
	movq $16, %r12		# movq $16, %r(2264)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2315)
	addq %r12, %r13		# addq %r(2264), %r(2265)
	movq $0, %r12		# movq $0, %r(2266)
	movq %r12, (%r13)		# movq %r(2266), (%r(2265))
	movq $24, %r12		# movq $24, %r(2267)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2316)
	addq %r12, %r13		# addq %r(2267), %r(2268)
	movq $0, %r12		# movq $0, %r(2269)
	movq %r12, (%r13)		# movq %r(2269), (%r(2268))
	movq $32, %r12		# movq $32, %r(2270)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2317)
	addq %r12, %r13		# addq %r(2270), %r(2271)
	movq $0, %r12		# movq $0, %r(2272)
	movq %r12, (%r13)		# movq %r(2272), (%r(2271))
	movq $40, %r12		# movq $40, %r(2273)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2318)
	addq %r12, %r13		# addq %r(2273), %r(2274)
	movq $0, %r12		# movq $0, %r(2275)
	movq %r12, (%r13)		# movq %r(2275), (%r(2274))
	movq $48, %r12		# movq $48, %r(2276)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2319)
	addq %r12, %r13		# addq %r(2276), %r(2277)
	movq $0, %r12		# movq $0, %r(2278)
	movq %r12, (%r13)		# movq %r(2278), (%r(2277))
	movq $56, %r12		# movq $56, %r(2279)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2320)
	addq %r12, %r13		# addq %r(2279), %r(2280)
	movq $0, %r12		# movq $0, %r(2281)
	movq %r12, (%r13)		# movq %r(2281), (%r(2280))
	movq $64, %r12		# movq $64, %r(2282)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2321)
	addq %r12, %r13		# addq %r(2282), %r(2283)
	movq $0, %r12		# movq $0, %r(2284)
	movq %r12, (%r13)		# movq %r(2284), (%r(2283))
	movq $72, %r12		# movq $72, %r(2285)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2322)
	addq %r12, %r13		# addq %r(2285), %r(2286)
	movq $0, %r12		# movq $0, %r(2287)
	movq %r12, (%r13)		# movq %r(2287), (%r(2286))
	jmp .L438		# jmp .L438
	.L438:		# .L438:
	movq $1, %r12		# movq $1, %r(2288)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(2241)
	testq $1, %rbx		# testq $1, %r(2241)
	jne .L441		# jne .L441
	.L443:		# .L443:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(2242)
	testq $1, %rbx		# testq $1, %r(2242)
	jne .L441		# jne .L441
	.L442:		# .L442:
	movq $0, %r12		# movq $0, %r(2289)
	jmp .L441		# jmp .L441
	.L441:		# .L441:
	movq $1, %rbx		# movq $1, %r(2290)
	xorq %rbx, %r12		# xorq %r(2290), %r(2291)
	testq $1, %r12		# testq $1, %r(2291)
	jne .L440		# jne .L440
	.L446:		# .L446:
	movq $1, %r12		# movq $1, %r(2292)
	movq $20, %rbx		# movq $20, %r(2293)
	cmpq %rbx, %r15		# cmpq %r(2293), %r(i)
	jl .L444		# jl .L444
	.L445:		# .L445:
	movq $0, %r12		# movq $0, %r(2294)
	jmp .L444		# jmp .L444
	.L444:		# .L444:
	movq $1, %rbx		# movq $1, %r(2295)
	xorq %rbx, %r12		# xorq %r(2295), %r(2296)
	testq $1, %r12		# testq $1, %r(2296)
	jne .L440		# jne .L440
	.L439:		# .L439:
	movq $8, %r12		# movq $8, %r(2297)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2323)
	subq %r12, %r13		# subq %r(2297), %r(2298)
	movq (%r13), %rbx		# movq (%r(2298)), %r(2299)
	cmpq %rbx, %r15		# cmpq %r(2299), %r(i)
	jge .L448		# jge .L448
	.L447:		# .L447:
	movq $8, %r12		# movq $8, %r(2300)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2324)
	subq %r12, %r13		# subq %r(2300), %r(2301)
	movq (%r13), %rbx		# movq (%r(2301)), %r(2302)
	cmpq %rbx, %r15		# cmpq %r(2302), %r(i)
	jae error_outofbounds		# jae error_outofbounds
	movq %r15, %r13		# movq %r(i), %r(2303)
	salq $3, %r13		# salq $3, %r(2303)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2325)
	addq %r13, %r14		# addq %r(2303), %r(2304)
	movq $10, %r12		# movq $10, %r(2305)
	imulq %r15, %r12		# imulq %r(i), %r(2306)
	movq $-8, %r13		# movq $-8, %r(2307)
	addq %r13, %r12		# addq %r(2307), %r(2308)
	movq %r12, (%r14)		# movq %r(2308), (%r(2304))
	jmp .L448		# jmp .L448
	.L448:		# .L448:
	incq %r15		# incq %r(i)
	jmp .L438		# jmp .L438
	.L440:		# .L440:
	movq $50, %rbx		# movq $50, %r(2309)
	movq %rbx, %rdi		# movq %r(2309), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L451(%rip), %rdi		# leaq .L451(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2244)
	leaq .L452(%rip), %rdi		# leaq .L452(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2245)
	movq %rbx, %rdi		# movq %r(2244), %rdi
	movq %r12, %rsi		# movq %r(2245), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(2246)
	movq %rbx, %rdi		# movq %r(2244), %rdi
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
	movq $0, %r12		# movq $0, %r(2326)
	cmpq %r12, %r13		# cmpq %r(2326), %r(x)
	jge .L455		# jge .L455
	.L454:		# .L454:
	movq $1, %r12		# movq $1, %r(2327)
	subq %r12, %r13		# subq %r(2327), %r(2328)
	movq %r13, %rdi		# movq %r(2328), %rdi
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
	movq $1, %r12		# movq $1, %r(2329)
	subq %r12, %r13		# subq %r(2329), %r(2330)
	movq %r13, %rdi		# movq %r(2330), %rdi
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
	movq $1, %rbx		# movq $1, %r(2331)
	movq %rbx, %rax		# movq %r(2331), %rax
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
	movq $0, %rbx		# movq $0, %r(2332)
	movq %rbx, %rax		# movq %r(2332), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(2345)
	movq %rbx, -8(%rbp)		# movq %r(2345), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2346)
	movq (%rbx), %rbx		# movq (%r(2346)), %r(2333)
	movq %rbx, %r14		# movq %r(2333), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(2334)
	salq $3, %rbx		# salq $3, %r(2334)
	movq $8, %r12		# movq $8, %r(2335)
	addq %r12, %rbx		# addq %r(2335), %r(2336)
	movq %rbx, %rdi		# movq %r(2336), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(2250)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(2337)
	salq $3, %rbx		# salq $3, %r(2337)
	movq %r12, %r13		# movq %r(2250), %r(2338)
	addq %rbx, %r13		# addq %r(2337), %r(2338)
	movq %r14, %r15		# movq %r(t10), %r(2339)
	salq $3, %r15		# salq $3, %r(2339)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2347)
	movq %rbx, -16(%rbp)		# movq %r(2348), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2349)
	addq %r15, %rbx		# addq %r(2339), %r(2349)
	movq %rbx, -16(%rbp)		# movq %r(2349), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2350)
	movq (%rbx), %rbx		# movq (%r(2350)), %r(2341)
	movq %rbx, (%r13)		# movq %r(2341), (%r(2338))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(2342)
	cmpq %rbx, %r14		# cmpq %r(2342), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(2343)
	addq %rbx, %r12		# addq %r(2343), %r(2344)
	movq %r12, %rax		# movq %r(2344), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(2374)
	movq %rbx, -16(%rbp)		# movq %r(2374), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2375)
	movq %rbx, -56(%rbp)		# movq %r(2375), -56(%rbp)
	movq $0, %r12		# movq $0, %r(2351)
	movq %r12, -32(%rbp)		# movq %r(2376), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(2352)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2377)
	subq %rbx, %r13		# subq %r(2352), %r(2353)
	movq (%r13), %r12		# movq (%r(2353)), %r(2354)
	movq %r12, -72(%rbp)		# movq %r(2378), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(2355)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2379)
	subq %rbx, %r13		# subq %r(2355), %r(2356)
	movq (%r13), %rbx		# movq (%r(2356)), %r(2357)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2380)
	addq %rbx, %r12		# addq %r(2357), %r(2358)
	movq %r12, -64(%rbp)		# movq %r(2381), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(2359)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(2382)
	addq %rbx, %r13		# addq %r(2359), %r(2360)
	movq %r13, %rdi		# movq %r(2360), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2251)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2383)
	movq %r12, (%rbx)		# movq %r(2383), (%r(2251))
	movq $8, %r12		# movq $8, %r(2361)
	addq %r12, %rbx		# addq %r(2361), %r(2362)
	movq %rbx, -24(%rbp)		# movq %r(2384), -24(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2385)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2386)
	cmpq %r12, %rbx		# cmpq %r(2386), %r(2385)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2387)
	salq $3, %r13		# salq $3, %r(2363)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2388)
	movq %rbx, -40(%rbp)		# movq %r(2389), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2390)
	addq %r13, %r12		# addq %r(2363), %r(2390)
	movq %r12, -40(%rbp)		# movq %r(2390), -40(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2391)
	salq $3, %r13		# salq $3, %r(2365)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2392)
	movq %rbx, -48(%rbp)		# movq %r(2393), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(2394)
	addq %r13, %r12		# addq %r(2365), %r(2394)
	movq %r12, -48(%rbp)		# movq %r(2394), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2395)
	movq (%rbx), %rbx		# movq (%r(2395)), %r(2367)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2396)
	movq %rbx, (%r12)		# movq %r(2367), (%r(2396))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2397)
	incq %rbx		# incq %r(2397)
	movq %rbx, -32(%rbp)		# movq %r(2397), -32(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2398)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2399)
	cmpq %r12, %rbx		# cmpq %r(2399), %r(2398)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2400)
	salq $3, %r13		# salq $3, %r(2368)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2401)
	addq %r13, %r14		# addq %r(2368), %r(2369)
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(2402)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(2403)
	subq %r13, %r15		# subq %r(2403), %r(2370)
	salq $3, %r15		# salq $3, %r(2371)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2404)
	movq %rbx, -8(%rbp)		# movq %r(2405), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2406)
	addq %r15, %r13		# addq %r(2371), %r(2406)
	movq %r13, -8(%rbp)		# movq %r(2406), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2407)
	movq (%rbx), %rbx		# movq (%r(2407)), %r(2373)
	movq %rbx, (%r14)		# movq %r(2373), (%r(2369))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2408)
	incq %rbx		# incq %r(2408)
	movq %rbx, -32(%rbp)		# movq %r(2408), -32(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2409)
	movq %rbx, %rax		# movq %r(2409), %rax
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
.L451:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

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

error_outofbounds:
call _I_outOfBounds_p
