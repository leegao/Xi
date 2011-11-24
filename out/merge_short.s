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
	movq $168, %rbx		# movq $168, %r(2570)
	movq %rbx, %rdi		# movq %r(2570), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2557)
	movq $20, %r12		# movq $20, %r(2571)
	movq %r12, (%r13)		# movq %r(2571), (%r(2557))
	movq $8, %r12		# movq $8, %r(2572)
	addq %r12, %r13		# addq %r(2572), %r(2573)
	movq %r13, %r14		# movq %r(2573), %r(2507)
	movq $0, %rbx		# movq $0, %r(2574)
	movq %r14, %r13		# movq %r(2507), %r(2575)
	addq %rbx, %r13		# addq %r(2574), %r(2575)
	movq $20, %rbx		# movq $20, %r(2576)
	movq %rbx, (%r13)		# movq %r(2576), (%r(2575))
	movq $8, %rbx		# movq $8, %r(2577)
	movq %r14, %r13		# movq %r(2507), %r(2578)
	addq %rbx, %r13		# addq %r(2577), %r(2578)
	movq $19, %rbx		# movq $19, %r(2579)
	movq %rbx, (%r13)		# movq %r(2579), (%r(2578))
	movq $16, %rbx		# movq $16, %r(2580)
	movq %r14, %r13		# movq %r(2507), %r(2581)
	addq %rbx, %r13		# addq %r(2580), %r(2581)
	movq $18, %rbx		# movq $18, %r(2582)
	movq %rbx, (%r13)		# movq %r(2582), (%r(2581))
	movq $24, %rbx		# movq $24, %r(2583)
	movq %r14, %r13		# movq %r(2507), %r(2584)
	addq %rbx, %r13		# addq %r(2583), %r(2584)
	movq $14, %rbx		# movq $14, %r(2585)
	movq %rbx, (%r13)		# movq %r(2585), (%r(2584))
	movq $32, %rbx		# movq $32, %r(2586)
	movq %r14, %r13		# movq %r(2507), %r(2587)
	addq %rbx, %r13		# addq %r(2586), %r(2587)
	movq $2, %rbx		# movq $2, %r(2588)
	movq %rbx, (%r13)		# movq %r(2588), (%r(2587))
	movq $40, %rbx		# movq $40, %r(2589)
	movq %r14, %r13		# movq %r(2507), %r(2590)
	addq %rbx, %r13		# addq %r(2589), %r(2590)
	movq $3, %rbx		# movq $3, %r(2591)
	movq %rbx, (%r13)		# movq %r(2591), (%r(2590))
	movq $48, %rbx		# movq $48, %r(2592)
	movq %r14, %r13		# movq %r(2507), %r(2593)
	addq %rbx, %r13		# addq %r(2592), %r(2593)
	movq $6, %rbx		# movq $6, %r(2594)
	movq %rbx, (%r13)		# movq %r(2594), (%r(2593))
	movq $56, %rbx		# movq $56, %r(2595)
	movq %r14, %r13		# movq %r(2507), %r(2596)
	addq %rbx, %r13		# addq %r(2595), %r(2596)
	movq $5, %rbx		# movq $5, %r(2597)
	movq %rbx, (%r13)		# movq %r(2597), (%r(2596))
	movq $64, %rbx		# movq $64, %r(2598)
	movq %r14, %r13		# movq %r(2507), %r(2599)
	addq %rbx, %r13		# addq %r(2598), %r(2599)
	movq $1, %rbx		# movq $1, %r(2600)
	movq %rbx, (%r13)		# movq %r(2600), (%r(2599))
	movq $72, %rbx		# movq $72, %r(2601)
	movq %r14, %r13		# movq %r(2507), %r(2602)
	addq %rbx, %r13		# addq %r(2601), %r(2602)
	movq $15, %rbx		# movq $15, %r(2603)
	movq %rbx, (%r13)		# movq %r(2603), (%r(2602))
	movq $80, %rbx		# movq $80, %r(2604)
	movq %r14, %r13		# movq %r(2507), %r(2605)
	addq %rbx, %r13		# addq %r(2604), %r(2605)
	movq $16, %rbx		# movq $16, %r(2606)
	movq %rbx, (%r13)		# movq %r(2606), (%r(2605))
	movq $88, %rbx		# movq $88, %r(2607)
	movq %r14, %r13		# movq %r(2507), %r(2608)
	addq %rbx, %r13		# addq %r(2607), %r(2608)
	movq $11, %rbx		# movq $11, %r(2609)
	movq %rbx, (%r13)		# movq %r(2609), (%r(2608))
	movq $96, %rbx		# movq $96, %r(2610)
	movq %r14, %r13		# movq %r(2507), %r(2611)
	addq %rbx, %r13		# addq %r(2610), %r(2611)
	movq $13, %rbx		# movq $13, %r(2612)
	movq %rbx, (%r13)		# movq %r(2612), (%r(2611))
	movq $104, %rbx		# movq $104, %r(2613)
	movq %r14, %r13		# movq %r(2507), %r(2614)
	addq %rbx, %r13		# addq %r(2613), %r(2614)
	movq $12, %rbx		# movq $12, %r(2615)
	movq %rbx, (%r13)		# movq %r(2615), (%r(2614))
	movq $112, %rbx		# movq $112, %r(2616)
	movq %r14, %r13		# movq %r(2507), %r(2617)
	addq %rbx, %r13		# addq %r(2616), %r(2617)
	movq $7, %rbx		# movq $7, %r(2618)
	movq %rbx, (%r13)		# movq %r(2618), (%r(2617))
	movq $120, %rbx		# movq $120, %r(2619)
	movq %r14, %r13		# movq %r(2507), %r(2620)
	addq %rbx, %r13		# addq %r(2619), %r(2620)
	movq $8, %rbx		# movq $8, %r(2621)
	movq %rbx, (%r13)		# movq %r(2621), (%r(2620))
	movq $128, %rbx		# movq $128, %r(2622)
	movq %r14, %r13		# movq %r(2507), %r(2623)
	addq %rbx, %r13		# addq %r(2622), %r(2623)
	movq $9, %rbx		# movq $9, %r(2624)
	movq %rbx, (%r13)		# movq %r(2624), (%r(2623))
	movq $136, %rbx		# movq $136, %r(2625)
	movq %r14, %r13		# movq %r(2507), %r(2626)
	addq %rbx, %r13		# addq %r(2625), %r(2626)
	movq $17, %rbx		# movq $17, %r(2627)
	movq %rbx, (%r13)		# movq %r(2627), (%r(2626))
	movq $144, %rbx		# movq $144, %r(2628)
	movq %r14, %r13		# movq %r(2507), %r(2629)
	addq %rbx, %r13		# addq %r(2628), %r(2629)
	movq $10, %rbx		# movq $10, %r(2630)
	movq %rbx, (%r13)		# movq %r(2630), (%r(2629))
	movq $152, %rbx		# movq $152, %r(2631)
	movq %r14, %r13		# movq %r(2507), %r(2632)
	addq %rbx, %r13		# addq %r(2631), %r(2632)
	movq $4, %rbx		# movq $4, %r(2633)
	movq %rbx, (%r13)		# movq %r(2633), (%r(2632))
	movq $168, %rbx		# movq $168, %r(2634)
	movq %rbx, %rdi		# movq %r(2634), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2558)
	movq $20, %rbx		# movq $20, %r(2635)
	movq %rbx, (%r13)		# movq %r(2635), (%r(2558))
	movq $8, %rbx		# movq $8, %r(2636)
	addq %rbx, %r13		# addq %r(2636), %r(2637)
	movq %r13, %r15		# movq %r(2637), %r(2510)
	movq $0, %rbx		# movq $0, %r(2638)
	movq %r15, %r13		# movq %r(2510), %r(2639)
	addq %rbx, %r13		# addq %r(2638), %r(2639)
	movq $1, %rbx		# movq $1, %r(2640)
	movq %rbx, (%r13)		# movq %r(2640), (%r(2639))
	movq $8, %rbx		# movq $8, %r(2641)
	movq %r15, %r13		# movq %r(2510), %r(2642)
	addq %rbx, %r13		# addq %r(2641), %r(2642)
	movq $2, %rbx		# movq $2, %r(2643)
	movq %rbx, (%r13)		# movq %r(2643), (%r(2642))
	movq $16, %rbx		# movq $16, %r(2644)
	movq %r15, %r13		# movq %r(2510), %r(2645)
	addq %rbx, %r13		# addq %r(2644), %r(2645)
	movq $3, %rbx		# movq $3, %r(2646)
	movq %rbx, (%r13)		# movq %r(2646), (%r(2645))
	movq $24, %rbx		# movq $24, %r(2647)
	movq %r15, %r13		# movq %r(2510), %r(2648)
	addq %rbx, %r13		# addq %r(2647), %r(2648)
	movq $4, %rbx		# movq $4, %r(2649)
	movq %rbx, (%r13)		# movq %r(2649), (%r(2648))
	movq $32, %rbx		# movq $32, %r(2650)
	movq %r15, %r13		# movq %r(2510), %r(2651)
	addq %rbx, %r13		# addq %r(2650), %r(2651)
	movq $5, %rbx		# movq $5, %r(2652)
	movq %rbx, (%r13)		# movq %r(2652), (%r(2651))
	movq $40, %rbx		# movq $40, %r(2653)
	movq %r15, %r13		# movq %r(2510), %r(2654)
	addq %rbx, %r13		# addq %r(2653), %r(2654)
	movq $6, %rbx		# movq $6, %r(2655)
	movq %rbx, (%r13)		# movq %r(2655), (%r(2654))
	movq $48, %rbx		# movq $48, %r(2656)
	movq %r15, %r13		# movq %r(2510), %r(2657)
	addq %rbx, %r13		# addq %r(2656), %r(2657)
	movq $7, %rbx		# movq $7, %r(2658)
	movq %rbx, (%r13)		# movq %r(2658), (%r(2657))
	movq $56, %rbx		# movq $56, %r(2659)
	movq %r15, %r13		# movq %r(2510), %r(2660)
	addq %rbx, %r13		# addq %r(2659), %r(2660)
	movq $8, %rbx		# movq $8, %r(2661)
	movq %rbx, (%r13)		# movq %r(2661), (%r(2660))
	movq $64, %rbx		# movq $64, %r(2662)
	movq %r15, %r13		# movq %r(2510), %r(2663)
	addq %rbx, %r13		# addq %r(2662), %r(2663)
	movq $9, %rbx		# movq $9, %r(2664)
	movq %rbx, (%r13)		# movq %r(2664), (%r(2663))
	movq $72, %rbx		# movq $72, %r(2665)
	movq %r15, %r13		# movq %r(2510), %r(2666)
	addq %rbx, %r13		# addq %r(2665), %r(2666)
	movq $10, %rbx		# movq $10, %r(2667)
	movq %rbx, (%r13)		# movq %r(2667), (%r(2666))
	movq $80, %rbx		# movq $80, %r(2668)
	movq %r15, %r13		# movq %r(2510), %r(2669)
	addq %rbx, %r13		# addq %r(2668), %r(2669)
	movq $11, %rbx		# movq $11, %r(2670)
	movq %rbx, (%r13)		# movq %r(2670), (%r(2669))
	movq $88, %rbx		# movq $88, %r(2671)
	movq %r15, %r13		# movq %r(2510), %r(2672)
	addq %rbx, %r13		# addq %r(2671), %r(2672)
	movq $12, %rbx		# movq $12, %r(2673)
	movq %rbx, (%r13)		# movq %r(2673), (%r(2672))
	movq $96, %rbx		# movq $96, %r(2674)
	movq %r15, %r13		# movq %r(2510), %r(2675)
	addq %rbx, %r13		# addq %r(2674), %r(2675)
	movq $13, %rbx		# movq $13, %r(2676)
	movq %rbx, (%r13)		# movq %r(2676), (%r(2675))
	movq $104, %rbx		# movq $104, %r(2677)
	movq %r15, %r13		# movq %r(2510), %r(2678)
	addq %rbx, %r13		# addq %r(2677), %r(2678)
	movq $14, %rbx		# movq $14, %r(2679)
	movq %rbx, (%r13)		# movq %r(2679), (%r(2678))
	movq $112, %rbx		# movq $112, %r(2680)
	movq %r15, %r13		# movq %r(2510), %r(2681)
	addq %rbx, %r13		# addq %r(2680), %r(2681)
	movq $15, %rbx		# movq $15, %r(2682)
	movq %rbx, (%r13)		# movq %r(2682), (%r(2681))
	movq $120, %rbx		# movq $120, %r(2683)
	movq %r15, %r13		# movq %r(2510), %r(2684)
	addq %rbx, %r13		# addq %r(2683), %r(2684)
	movq $16, %rbx		# movq $16, %r(2685)
	movq %rbx, (%r13)		# movq %r(2685), (%r(2684))
	movq $128, %rbx		# movq $128, %r(2686)
	movq %r15, %r13		# movq %r(2510), %r(2687)
	addq %rbx, %r13		# addq %r(2686), %r(2687)
	movq $17, %rbx		# movq $17, %r(2688)
	movq %rbx, (%r13)		# movq %r(2688), (%r(2687))
	movq $136, %rbx		# movq $136, %r(2689)
	movq %r15, %r13		# movq %r(2510), %r(2690)
	addq %rbx, %r13		# addq %r(2689), %r(2690)
	movq $18, %rbx		# movq $18, %r(2691)
	movq %rbx, (%r13)		# movq %r(2691), (%r(2690))
	movq $144, %rbx		# movq $144, %r(2692)
	movq %r15, %r13		# movq %r(2510), %r(2693)
	addq %rbx, %r13		# addq %r(2692), %r(2693)
	movq $19, %rbx		# movq $19, %r(2694)
	movq %rbx, (%r13)		# movq %r(2694), (%r(2693))
	movq $152, %rbx		# movq $152, %r(2695)
	movq %r15, %r12		# movq %r(2510), %r(2696)
	addq %rbx, %r12		# addq %r(2695), %r(2696)
	movq $20, %rbx		# movq $20, %r(2697)
	movq %rbx, (%r12)		# movq %r(2697), (%r(2696))
	movq $0, %rbx		# movq $0, %r(2698)
	movq $19, %r13		# movq $19, %r(2699)
	movq %r14, %rdi		# movq %r(2507), %rdi
	movq %rbx, %rsi		# movq %r(2698), %rsi
	movq %r13, %rdx		# movq %r(2699), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq %r14, %rdi		# movq %r(2507), %rdi
	movq %r15, %rsi		# movq %r(2510), %rsi
	call _IassertEqual_paiai		# call _IassertEqual_paiai
	jmp .L505		# jmp .L505
	.L505:		# .L505:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imerge_paiii
_Imerge_paiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $336, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2793)
	movq %rbx, -152(%rbp)		# movq %r(2793), -152(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2794)
	movq %rbx, -24(%rbp)		# movq %r(2794), -24(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(2795)
	movq %rbx, -8(%rbp)		# movq %r(2795), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2796)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2797)
	cmpq %rbx, %r12		# cmpq %r(2796), %r(2797)
	jl .L508		# jl .L508
	.L507:		# .L507:
	jmp .L506		# jmp .L506
	.L506:		# .L506:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $336, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L508:		# .L508:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2798)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2799)
	addq %r12, %r13		# addq %r(2799), %r(2700)
	movq $2, %r12		# movq $2, %r(2701)
	movq %r13, %rax		# movq %r(2700), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2701)
	movq %rax, %r12		# movq %rax, %r(2702)
	movq %r12, -192(%rbp)		# movq %r(2800), -192(%rbp)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2801)
	movq %rbx, %rdi		# movq %r(2801), %rdi
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2802)
	movq %rbx, %rsi		# movq %r(2802), %rsi
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(2803)
	movq %rbx, %rdx		# movq %r(2803), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq $1, %rbx		# movq $1, %r(2703)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(2804)
	addq %rbx, %r13		# addq %r(2703), %r(2704)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2805)
	movq %rbx, %rdi		# movq %r(2805), %rdi
	movq %r13, %rsi		# movq %r(2704), %rsi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2806)
	movq %rbx, %rdx		# movq %r(2806), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq $16, %rbx		# movq $16, %r(2705)
	movq %rbx, %rdi		# movq %r(2705), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2563)
	movq $1, %r12		# movq $1, %r(2706)
	movq %r12, (%rbx)		# movq %r(2706), (%r(2563))
	movq $8, %r12		# movq $8, %r(2807)
	movq %r12, -120(%rbp)		# movq %r(2807), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(2808)
	addq %r12, %rbx		# addq %r(2808), %r(2708)
	movq %rbx, -32(%rbp)		# movq %r(2809), -32(%rbp)
	movq $0, %r12		# movq $0, %r(2709)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2810)
	movq %r13, -224(%rbp)		# movq %r(2811), -224(%rbp)
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(2812)
	addq %r12, %rbx		# addq %r(2709), %r(2812)
	movq %rbx, -224(%rbp)		# movq %r(2812), -224(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2813)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2814)
	subq %r12, %r13		# subq %r(2814), %r(2711)
	movq $1, %r12		# movq $1, %r(2815)
	movq %r12, -296(%rbp)		# movq %r(2815), -296(%rbp)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(2816)
	addq %r12, %r13		# addq %r(2816), %r(2713)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(2817)
	movq %r13, (%r12)		# movq %r(2713), (%r(2817))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2818)
	movq %rbx, %rdi		# movq %r(2818), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2819)
	movq %rbx, -320(%rbp)		# movq %r(2819), -320(%rbp)
	movq $0, %r12		# movq $0, %r(2714)
	movq %r12, -272(%rbp)		# movq %r(2820), -272(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2821)
	movq %r12, -96(%rbp)		# movq %r(2822), -96(%rbp)
	movq $1, %r12		# movq $1, %r(2715)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(2823)
	movq %r13, -80(%rbp)		# movq %r(2824), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2825)
	addq %r12, %rbx		# addq %r(2715), %r(2825)
	movq %rbx, -80(%rbp)		# movq %r(2825), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2826)
	movq %r12, -208(%rbp)		# movq %r(2827), -208(%rbp)
	jmp .L510		# jmp .L510
	.L510:		# .L510:
	movq $1, %r13		# movq $1, %r(2717)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2828)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(2829)
	cmpq %r12, %rbx		# cmpq %r(2829), %r(2828)
	jle .L513		# jle .L513
	.L514:		# .L514:
	movq $0, %r13		# movq $0, %r(2718)
	jmp .L513		# jmp .L513
	.L513:		# .L513:
	movq $1, %rbx		# movq $1, %r(2830)
	movq %rbx, -248(%rbp)		# movq %r(2830), -248(%rbp)
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(2831)
	xorq %rbx, %r13		# xorq %r(2831), %r(2720)
	testq $1, %r13		# testq $1, %r(2720)
	jne .L512		# jne .L512
	.L517:		# .L517:
	movq $1, %r13		# movq $1, %r(2721)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2832)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(2833)
	cmpq %rbx, %r12		# cmpq %r(2832), %r(2833)
	jle .L515		# jle .L515
	.L516:		# .L516:
	movq $0, %r13		# movq $0, %r(2722)
	jmp .L515		# jmp .L515
	.L515:		# .L515:
	movq $1, %rbx		# movq $1, %r(2834)
	movq %rbx, -304(%rbp)		# movq %r(2834), -304(%rbp)
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(2835)
	xorq %rbx, %r13		# xorq %r(2835), %r(2724)
	testq $1, %r13		# testq $1, %r(2724)
	jne .L512		# jne .L512
	.L511:		# .L511:
	movq $8, %r12		# movq $8, %r(2725)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(2836)
	movq %r13, -16(%rbp)		# movq %r(2837), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2838)
	subq %r12, %rbx		# subq %r(2725), %r(2838)
	movq %rbx, -16(%rbp)		# movq %r(2838), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2839)
	movq (%rbx), %rbx		# movq (%r(2839)), %r(2727)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2840)
	cmpq %rbx, %r12		# cmpq %r(2727), %r(2840)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2728)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(2841)
	movq %r13, -256(%rbp)		# movq %r(2842), -256(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(2843)
	subq %r12, %rbx		# subq %r(2728), %r(2843)
	movq %rbx, -256(%rbp)		# movq %r(2843), -256(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(2844)
	movq (%rbx), %rbx		# movq (%r(2844)), %r(2730)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(2845)
	cmpq %rbx, %r12		# cmpq %r(2730), %r(2845)
	jae error_outofbounds		# jae error_outofbounds
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(2846)
	salq $3, %r13		# salq $3, %r(2731)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2847)
	movq %rbx, -200(%rbp)		# movq %r(2848), -200(%rbp)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(2849)
	addq %r13, %r12		# addq %r(2731), %r(2849)
	movq %r12, -200(%rbp)		# movq %r(2849), -200(%rbp)
	movq -200(%rbp), %rbx		# movq -200(%rbp), %r(2850)
	movq (%rbx), %rbx		# movq (%r(2850)), %r(2851)
	movq %rbx, -232(%rbp)		# movq %r(2851), -232(%rbp)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(2852)
	salq $3, %r13		# salq $3, %r(2734)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2853)
	movq %rbx, -136(%rbp)		# movq %r(2854), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(2855)
	addq %r13, %r12		# addq %r(2734), %r(2855)
	movq %r12, -136(%rbp)		# movq %r(2855), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(2856)
	movq (%rbx), %rbx		# movq (%r(2856)), %r(2736)
	movq -232(%rbp), %r12		# movq -232(%rbp), %r(2857)
	cmpq %rbx, %r12		# cmpq %r(2736), %r(2857)
	jg .L523		# jg .L523
	.L522:		# .L522:
	movq $8, %r12		# movq $8, %r(2737)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(2858)
	movq %r13, -184(%rbp)		# movq %r(2859), -184(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(2860)
	subq %r12, %rbx		# subq %r(2737), %r(2860)
	movq %rbx, -184(%rbp)		# movq %r(2860), -184(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(2861)
	movq (%rbx), %rbx		# movq (%r(2861)), %r(2739)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2862)
	cmpq %rbx, %r12		# cmpq %r(2739), %r(2862)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2740)
	movq -320(%rbp), %r13		# movq -320(%rbp), %r(2863)
	movq %r13, -88(%rbp)		# movq %r(2864), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2865)
	subq %r12, %rbx		# subq %r(2740), %r(2865)
	movq %rbx, -88(%rbp)		# movq %r(2865), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2866)
	movq (%rbx), %rbx		# movq (%r(2866)), %r(2742)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2867)
	cmpq %rbx, %r12		# cmpq %r(2742), %r(2867)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2868)
	salq $3, %r13		# salq $3, %r(2743)
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(2869)
	movq %rbx, -312(%rbp)		# movq %r(2870), -312(%rbp)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(2871)
	addq %r13, %r12		# addq %r(2743), %r(2871)
	movq %r12, -312(%rbp)		# movq %r(2871), -312(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(2872)
	salq $3, %r13		# salq $3, %r(2745)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2873)
	movq %rbx, -264(%rbp)		# movq %r(2874), -264(%rbp)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(2875)
	addq %r13, %r12		# addq %r(2745), %r(2875)
	movq %r12, -264(%rbp)		# movq %r(2875), -264(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(2876)
	movq (%rbx), %rbx		# movq (%r(2876)), %r(2747)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(2877)
	movq %rbx, (%r12)		# movq %r(2747), (%r(2877))
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2878)
	incq %rbx		# incq %r(2878)
	movq %rbx, -96(%rbp)		# movq %r(2878), -96(%rbp)
	jmp .L528		# jmp .L528
	.L528:		# .L528:
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(2879)
	incq %rbx		# incq %r(2879)
	movq %rbx, -272(%rbp)		# movq %r(2879), -272(%rbp)
	jmp .L510		# jmp .L510
	.L523:		# .L523:
	movq $8, %r12		# movq $8, %r(2748)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(2880)
	movq %r13, -168(%rbp)		# movq %r(2881), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(2882)
	subq %r12, %rbx		# subq %r(2748), %r(2882)
	movq %rbx, -168(%rbp)		# movq %r(2882), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(2883)
	movq (%rbx), %rbx		# movq (%r(2883)), %r(2750)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(2884)
	cmpq %rbx, %r12		# cmpq %r(2750), %r(2884)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2751)
	movq -320(%rbp), %r13		# movq -320(%rbp), %r(2885)
	movq %r13, -48(%rbp)		# movq %r(2886), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2887)
	subq %r12, %rbx		# subq %r(2751), %r(2887)
	movq %rbx, -48(%rbp)		# movq %r(2887), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2888)
	movq (%rbx), %rbx		# movq (%r(2888)), %r(2753)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2889)
	cmpq %rbx, %r12		# cmpq %r(2753), %r(2889)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2890)
	salq $3, %r13		# salq $3, %r(2754)
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(2891)
	movq %rbx, -72(%rbp)		# movq %r(2892), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2893)
	addq %r13, %r12		# addq %r(2754), %r(2893)
	movq %r12, -72(%rbp)		# movq %r(2893), -72(%rbp)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(2894)
	salq $3, %r13		# salq $3, %r(2756)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2895)
	movq %rbx, -288(%rbp)		# movq %r(2896), -288(%rbp)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(2897)
	addq %r13, %r12		# addq %r(2756), %r(2897)
	movq %r12, -288(%rbp)		# movq %r(2897), -288(%rbp)
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(2898)
	movq (%rbx), %rbx		# movq (%r(2898)), %r(2758)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(2899)
	movq %rbx, (%r12)		# movq %r(2758), (%r(2899))
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(2900)
	incq %rbx		# incq %r(2900)
	movq %rbx, -208(%rbp)		# movq %r(2900), -208(%rbp)
	jmp .L528		# jmp .L528
	.L512:		# .L512:
	jmp .L533		# jmp .L533
	.L533:		# .L533:
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2901)
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(2902)
	cmpq %r12, %rbx		# cmpq %r(2902), %r(2901)
	jg .L535		# jg .L535
	.L534:		# .L534:
	movq $8, %r12		# movq $8, %r(2759)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(2903)
	movq %r13, -216(%rbp)		# movq %r(2904), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(2905)
	subq %r12, %rbx		# subq %r(2759), %r(2905)
	movq %rbx, -216(%rbp)		# movq %r(2905), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(2906)
	movq (%rbx), %rbx		# movq (%r(2906)), %r(2761)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(2907)
	cmpq %rbx, %r12		# cmpq %r(2761), %r(2907)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2762)
	movq -320(%rbp), %r13		# movq -320(%rbp), %r(2908)
	movq %r13, -176(%rbp)		# movq %r(2909), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(2910)
	subq %r12, %rbx		# subq %r(2762), %r(2910)
	movq %rbx, -176(%rbp)		# movq %r(2910), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(2911)
	movq (%rbx), %rbx		# movq (%r(2911)), %r(2764)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2912)
	cmpq %rbx, %r12		# cmpq %r(2764), %r(2912)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2913)
	salq $3, %r13		# salq $3, %r(2765)
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(2914)
	movq %rbx, -64(%rbp)		# movq %r(2915), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2916)
	addq %r13, %r12		# addq %r(2765), %r(2916)
	movq %r12, -64(%rbp)		# movq %r(2916), -64(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(2917)
	salq $3, %r13		# salq $3, %r(2767)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2918)
	movq %rbx, -128(%rbp)		# movq %r(2919), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(2920)
	addq %r13, %r12		# addq %r(2767), %r(2920)
	movq %r12, -128(%rbp)		# movq %r(2920), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(2921)
	movq (%rbx), %rbx		# movq (%r(2921)), %r(2769)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2922)
	movq %rbx, (%r12)		# movq %r(2769), (%r(2922))
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2923)
	incq %rbx		# incq %r(2923)
	movq %rbx, -96(%rbp)		# movq %r(2923), -96(%rbp)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(2924)
	incq %rbx		# incq %r(2924)
	movq %rbx, -272(%rbp)		# movq %r(2924), -272(%rbp)
	jmp .L533		# jmp .L533
	.L535:		# .L535:
	jmp .L540		# jmp .L540
	.L540:		# .L540:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2925)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(2926)
	cmpq %rbx, %r12		# cmpq %r(2925), %r(2926)
	jg .L542		# jg .L542
	.L541:		# .L541:
	movq $8, %r12		# movq $8, %r(2770)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(2927)
	movq %r13, -104(%rbp)		# movq %r(2928), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2929)
	subq %r12, %rbx		# subq %r(2770), %r(2929)
	movq %rbx, -104(%rbp)		# movq %r(2929), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2930)
	movq (%rbx), %rbx		# movq (%r(2930)), %r(2772)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(2931)
	cmpq %rbx, %r12		# cmpq %r(2772), %r(2931)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2773)
	movq -320(%rbp), %r13		# movq -320(%rbp), %r(2932)
	movq %r13, -144(%rbp)		# movq %r(2933), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2934)
	subq %r12, %rbx		# subq %r(2773), %r(2934)
	movq %rbx, -144(%rbp)		# movq %r(2934), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(2935)
	movq (%rbx), %rbx		# movq (%r(2935)), %r(2775)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2936)
	cmpq %rbx, %r12		# cmpq %r(2775), %r(2936)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2937)
	salq $3, %r13		# salq $3, %r(2776)
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(2938)
	movq %rbx, -280(%rbp)		# movq %r(2939), -280(%rbp)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(2940)
	addq %r13, %r12		# addq %r(2776), %r(2940)
	movq %r12, -280(%rbp)		# movq %r(2940), -280(%rbp)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(2941)
	salq $3, %r13		# salq $3, %r(2778)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2942)
	movq %rbx, -112(%rbp)		# movq %r(2943), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2944)
	addq %r13, %r12		# addq %r(2778), %r(2944)
	movq %r12, -112(%rbp)		# movq %r(2944), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(2945)
	movq (%rbx), %rbx		# movq (%r(2945)), %r(2780)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(2946)
	movq %rbx, (%r12)		# movq %r(2780), (%r(2946))
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(2947)
	incq %rbx		# incq %r(2947)
	movq %rbx, -208(%rbp)		# movq %r(2947), -208(%rbp)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(2948)
	incq %rbx		# incq %r(2948)
	movq %rbx, -272(%rbp)		# movq %r(2948), -272(%rbp)
	jmp .L540		# jmp .L540
	.L542:		# .L542:
	movq $0, %r12		# movq $0, %r(2781)
	movq %r12, -272(%rbp)		# movq %r(2949), -272(%rbp)
	jmp .L547		# jmp .L547
	.L547:		# .L547:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2950)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2951)
	cmpq %rbx, %r12		# cmpq %r(2950), %r(2951)
	jg .L549		# jg .L549
	.L548:		# .L548:
	movq $8, %r12		# movq $8, %r(2782)
	movq -320(%rbp), %r13		# movq -320(%rbp), %r(2952)
	movq %r13, -240(%rbp)		# movq %r(2953), -240(%rbp)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(2954)
	subq %r12, %rbx		# subq %r(2782), %r(2954)
	movq %rbx, -240(%rbp)		# movq %r(2954), -240(%rbp)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(2955)
	movq (%rbx), %rbx		# movq (%r(2955)), %r(2784)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2956)
	cmpq %rbx, %r12		# cmpq %r(2784), %r(2956)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2785)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(2957)
	movq %r13, -40(%rbp)		# movq %r(2958), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2959)
	subq %r12, %rbx		# subq %r(2785), %r(2959)
	movq %rbx, -40(%rbp)		# movq %r(2959), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2960)
	movq (%rbx), %rbx		# movq (%r(2960)), %r(2787)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2961)
	cmpq %rbx, %r12		# cmpq %r(2787), %r(2961)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2962)
	salq $3, %r13		# salq $3, %r(2788)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2963)
	movq %rbx, -56(%rbp)		# movq %r(2964), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2965)
	addq %r13, %r12		# addq %r(2788), %r(2965)
	movq %r12, -56(%rbp)		# movq %r(2965), -56(%rbp)
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2966)
	salq $3, %r13		# salq $3, %r(2790)
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(2967)
	movq %rbx, -160(%rbp)		# movq %r(2968), -160(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(2969)
	addq %r13, %r12		# addq %r(2790), %r(2969)
	movq %r12, -160(%rbp)		# movq %r(2969), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(2970)
	movq (%rbx), %rbx		# movq (%r(2970)), %r(2792)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2971)
	movq %rbx, (%r12)		# movq %r(2792), (%r(2971))
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(2972)
	incq %rbx		# incq %r(2972)
	movq %rbx, -272(%rbp)		# movq %r(2972), -272(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2973)
	incq %rbx		# incq %r(2973)
	movq %rbx, -24(%rbp)		# movq %r(2973), -24(%rbp)
	jmp .L547		# jmp .L547
	.L549:		# .L549:
	jmp .L506		# jmp .L506
	
.globl _IassertEqual_paiai
_IassertEqual_paiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2992)
	movq %rbx, -56(%rbp)		# movq %r(2992), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2993)
	movq %rbx, -24(%rbp)		# movq %r(2993), -24(%rbp)
	movq $0, %r12		# movq $0, %r(2974)
	movq %r12, -8(%rbp)		# movq %r(2994), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(2975)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2995)
	subq %rbx, %r13		# subq %r(2975), %r(2976)
	movq (%r13), %r12		# movq (%r(2976)), %r(2977)
	movq %r12, -32(%rbp)		# movq %r(2996), -32(%rbp)
	jmp .L555		# jmp .L555
	.L555:		# .L555:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2997)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2998)
	cmpq %r12, %rbx		# cmpq %r(2998), %r(2997)
	jge .L557		# jge .L557
	.L556:		# .L556:
	movq $1, %r12		# movq $1, %r(2978)
	movq %r12, -80(%rbp)		# movq %r(2999), -80(%rbp)
	movq $8, %r12		# movq $8, %r(2979)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(3000)
	movq %r13, -16(%rbp)		# movq %r(3001), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3002)
	subq %r12, %rbx		# subq %r(2979), %r(3002)
	movq %rbx, -16(%rbp)		# movq %r(3002), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3003)
	movq (%rbx), %rbx		# movq (%r(3003)), %r(2981)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3004)
	cmpq %rbx, %r12		# cmpq %r(2981), %r(3004)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2982)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3005)
	movq %r13, -48(%rbp)		# movq %r(3006), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3007)
	subq %r12, %rbx		# subq %r(2982), %r(3007)
	movq %rbx, -48(%rbp)		# movq %r(3007), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3008)
	movq (%rbx), %rbx		# movq (%r(3008)), %r(2984)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3009)
	cmpq %rbx, %r12		# cmpq %r(2984), %r(3009)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3010)
	salq $3, %r13		# salq $3, %r(2985)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3011)
	movq %rbx, -72(%rbp)		# movq %r(3012), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3013)
	addq %r13, %r12		# addq %r(2985), %r(3013)
	movq %r12, -72(%rbp)		# movq %r(3013), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3014)
	movq (%rbx), %rbx		# movq (%r(3014)), %r(3015)
	movq %rbx, -40(%rbp)		# movq %r(3015), -40(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3016)
	salq $3, %r13		# salq $3, %r(2988)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3017)
	movq %rbx, -64(%rbp)		# movq %r(3018), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3019)
	addq %r13, %r12		# addq %r(2988), %r(3019)
	movq %r12, -64(%rbp)		# movq %r(3019), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3020)
	movq (%rbx), %rbx		# movq (%r(3020)), %r(2990)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3021)
	cmpq %rbx, %r12		# cmpq %r(2990), %r(3021)
	je .L562		# je .L562
	.L563:		# .L563:
	movq $0, %r12		# movq $0, %r(2991)
	movq %r12, -80(%rbp)		# movq %r(3022), -80(%rbp)
	jmp .L562		# jmp .L562
	.L562:		# .L562:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3023)
	movq %rbx, %rdi		# movq %r(3023), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3024)
	incq %rbx		# incq %r(3024)
	movq %rbx, -8(%rbp)		# movq %r(3024), -8(%rbp)
	jmp .L555		# jmp .L555
	.L557:		# .L557:
	jmp .L554		# jmp .L554
	.L554:		# .L554:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(3068)
	movq %rbx, -72(%rbp)		# movq %r(3068), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(3025)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(3069)
	subq %rbx, %r13		# subq %r(3025), %r(3026)
	movq (%r13), %r12		# movq (%r(3026)), %r(3027)
	movq %r12, -48(%rbp)		# movq %r(3070), -48(%rbp)
	movq $1, %r12		# movq $1, %r(3028)
	movq %r12, -8(%rbp)		# movq %r(3071), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(3029)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3072)
	cmpq %rbx, %r12		# cmpq %r(3029), %r(3072)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(3030)
	movq %rbx, %rax		# movq %r(3030), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L318:		# .L318:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3073)
	salq $3, %r12		# salq $3, %r(3031)
	movq %r12, %rdi		# movq %r(3031), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2566)
	movq $1, %r12		# movq $1, %r(3032)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(3074)
	movq %r14, -64(%rbp)		# movq %r(3075), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3076)
	subq %r12, %rbx		# subq %r(3032), %r(3076)
	movq %rbx, -64(%rbp)		# movq %r(3076), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3077)
	movq %rbx, (%r13)		# movq %r(3077), (%r(2566))
	movq $8, %rbx		# movq $8, %r(3034)
	addq %rbx, %r13		# addq %r(3034), %r(3035)
	movq %r13, -32(%rbp)		# movq %r(3078), -32(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3079)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3080)
	cmpq %r12, %rbx		# cmpq %r(3080), %r(3079)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(3036)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(3081)
	subq %rbx, %r13		# subq %r(3036), %r(3037)
	movq (%r13), %rbx		# movq (%r(3037)), %r(3038)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3082)
	cmpq %rbx, %r12		# cmpq %r(3038), %r(3082)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(3039)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3083)
	subq %rbx, %r14		# subq %r(3039), %r(3040)
	movq $8, %r13		# movq $8, %r(3041)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3084)
	movq %r12, -40(%rbp)		# movq %r(3085), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3086)
	subq %r13, %rbx		# subq %r(3041), %r(3086)
	movq %rbx, -40(%rbp)		# movq %r(3086), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3087)
	movq (%rbx), %rbx		# movq (%r(3087)), %r(3043)
	cmpq %rbx, %r14		# cmpq %r(3043), %r(1728)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(3044)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3088)
	addq %r14, %rbx		# addq %r(3044), %r(3045)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3089)
	salq $3, %r14		# salq $3, %r(3046)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3090)
	movq %r12, -88(%rbp)		# movq %r(3091), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(3092)
	addq %r14, %r13		# addq %r(3046), %r(3092)
	movq %r13, -88(%rbp)		# movq %r(3092), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(3093)
	movq (%r12), %r12		# movq (%r(3093)), %r(3048)
	movq %r12, (%rbx)		# movq %r(3048), (%r(3045))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3094)
	incq %rbx		# incq %r(3094)
	movq %rbx, -8(%rbp)		# movq %r(3094), -8(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(3049)
	movq $8, %r12		# movq $8, %r(3050)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(3095)
	subq %r12, %r14		# subq %r(3050), %r(3051)
	movq (%r14), %rbx		# movq (%r(3051)), %r(3052)
	cmpq %rbx, %r13		# cmpq %r(3052), %r(3049)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3053)
	salq $3, %r13		# salq $3, %r(3054)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3096)
	addq %r13, %rbx		# addq %r(3054), %r(3055)
	movq (%rbx), %r12		# movq (%r(3055)), %r(3056)
	movq %r12, -8(%rbp)		# movq %r(3097), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(3057)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3098)
	addq %rbx, %r12		# addq %r(3057), %r(3058)
	salq $3, %r12		# salq $3, %r(3059)
	movq %r12, %rdi		# movq %r(3059), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2567)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3099)
	movq %r12, (%rbx)		# movq %r(3099), (%r(2567))
	movq $8, %r12		# movq $8, %r(3060)
	addq %r12, %rbx		# addq %r(3060), %r(3061)
	movq %rbx, -24(%rbp)		# movq %r(3100), -24(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(3062)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3101)
	cmpq %rbx, %r12		# cmpq %r(3062), %r(3101)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3102)
	decq %rbx		# decq %r(3102)
	movq %rbx, -8(%rbp)		# movq %r(3102), -8(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3103)
	movq %rbx, %rdi		# movq %r(3103), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(3104)
	movq %rbx, -56(%rbp)		# movq %r(3104), -56(%rbp)
	movq $8, %r12		# movq $8, %r(3063)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3105)
	movq %r13, -80(%rbp)		# movq %r(3106), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3107)
	subq %r12, %rbx		# subq %r(3063), %r(3107)
	movq %rbx, -80(%rbp)		# movq %r(3107), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3108)
	movq (%rbx), %rbx		# movq (%r(3108)), %r(3065)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3109)
	cmpq %rbx, %r12		# cmpq %r(3065), %r(3109)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3110)
	salq $3, %r13		# salq $3, %r(3066)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3111)
	movq %rbx, -16(%rbp)		# movq %r(3112), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3113)
	addq %r13, %r12		# addq %r(3066), %r(3113)
	movq %r12, -16(%rbp)		# movq %r(3113), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3114)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3115)
	movq %r12, (%rbx)		# movq %r(3115), (%r(3114))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3116)
	movq %rbx, %rax		# movq %r(3116), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
