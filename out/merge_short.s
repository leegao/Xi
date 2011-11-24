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
	movq $168, %rbx		# movq $168, %r(2580)
	movq %rbx, %rdi		# movq %r(2580), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2567)
	movq $20, %r12		# movq $20, %r(2581)
	movq %r12, (%r13)		# movq %r(2581), (%r(2567))
	movq $8, %r12		# movq $8, %r(2582)
	addq %r12, %r13		# addq %r(2582), %r(2583)
	movq %r13, %r14		# movq %r(2583), %r(2517)
	movq $0, %rbx		# movq $0, %r(2584)
	movq %r14, %r13		# movq %r(2517), %r(2585)
	addq %rbx, %r13		# addq %r(2584), %r(2585)
	movq $20, %rbx		# movq $20, %r(2586)
	movq %rbx, (%r13)		# movq %r(2586), (%r(2585))
	movq $8, %rbx		# movq $8, %r(2587)
	movq %r14, %r13		# movq %r(2517), %r(2588)
	addq %rbx, %r13		# addq %r(2587), %r(2588)
	movq $19, %rbx		# movq $19, %r(2589)
	movq %rbx, (%r13)		# movq %r(2589), (%r(2588))
	movq $16, %rbx		# movq $16, %r(2590)
	movq %r14, %r13		# movq %r(2517), %r(2591)
	addq %rbx, %r13		# addq %r(2590), %r(2591)
	movq $18, %rbx		# movq $18, %r(2592)
	movq %rbx, (%r13)		# movq %r(2592), (%r(2591))
	movq $24, %rbx		# movq $24, %r(2593)
	movq %r14, %r13		# movq %r(2517), %r(2594)
	addq %rbx, %r13		# addq %r(2593), %r(2594)
	movq $14, %rbx		# movq $14, %r(2595)
	movq %rbx, (%r13)		# movq %r(2595), (%r(2594))
	movq $32, %rbx		# movq $32, %r(2596)
	movq %r14, %r13		# movq %r(2517), %r(2597)
	addq %rbx, %r13		# addq %r(2596), %r(2597)
	movq $2, %rbx		# movq $2, %r(2598)
	movq %rbx, (%r13)		# movq %r(2598), (%r(2597))
	movq $40, %rbx		# movq $40, %r(2599)
	movq %r14, %r13		# movq %r(2517), %r(2600)
	addq %rbx, %r13		# addq %r(2599), %r(2600)
	movq $3, %rbx		# movq $3, %r(2601)
	movq %rbx, (%r13)		# movq %r(2601), (%r(2600))
	movq $48, %rbx		# movq $48, %r(2602)
	movq %r14, %r13		# movq %r(2517), %r(2603)
	addq %rbx, %r13		# addq %r(2602), %r(2603)
	movq $6, %rbx		# movq $6, %r(2604)
	movq %rbx, (%r13)		# movq %r(2604), (%r(2603))
	movq $56, %rbx		# movq $56, %r(2605)
	movq %r14, %r13		# movq %r(2517), %r(2606)
	addq %rbx, %r13		# addq %r(2605), %r(2606)
	movq $5, %rbx		# movq $5, %r(2607)
	movq %rbx, (%r13)		# movq %r(2607), (%r(2606))
	movq $64, %rbx		# movq $64, %r(2608)
	movq %r14, %r13		# movq %r(2517), %r(2609)
	addq %rbx, %r13		# addq %r(2608), %r(2609)
	movq $1, %rbx		# movq $1, %r(2610)
	movq %rbx, (%r13)		# movq %r(2610), (%r(2609))
	movq $72, %rbx		# movq $72, %r(2611)
	movq %r14, %r13		# movq %r(2517), %r(2612)
	addq %rbx, %r13		# addq %r(2611), %r(2612)
	movq $15, %rbx		# movq $15, %r(2613)
	movq %rbx, (%r13)		# movq %r(2613), (%r(2612))
	movq $80, %rbx		# movq $80, %r(2614)
	movq %r14, %r13		# movq %r(2517), %r(2615)
	addq %rbx, %r13		# addq %r(2614), %r(2615)
	movq $16, %rbx		# movq $16, %r(2616)
	movq %rbx, (%r13)		# movq %r(2616), (%r(2615))
	movq $88, %rbx		# movq $88, %r(2617)
	movq %r14, %r13		# movq %r(2517), %r(2618)
	addq %rbx, %r13		# addq %r(2617), %r(2618)
	movq $11, %rbx		# movq $11, %r(2619)
	movq %rbx, (%r13)		# movq %r(2619), (%r(2618))
	movq $96, %rbx		# movq $96, %r(2620)
	movq %r14, %r13		# movq %r(2517), %r(2621)
	addq %rbx, %r13		# addq %r(2620), %r(2621)
	movq $13, %rbx		# movq $13, %r(2622)
	movq %rbx, (%r13)		# movq %r(2622), (%r(2621))
	movq $104, %rbx		# movq $104, %r(2623)
	movq %r14, %r13		# movq %r(2517), %r(2624)
	addq %rbx, %r13		# addq %r(2623), %r(2624)
	movq $12, %rbx		# movq $12, %r(2625)
	movq %rbx, (%r13)		# movq %r(2625), (%r(2624))
	movq $112, %rbx		# movq $112, %r(2626)
	movq %r14, %r13		# movq %r(2517), %r(2627)
	addq %rbx, %r13		# addq %r(2626), %r(2627)
	movq $7, %rbx		# movq $7, %r(2628)
	movq %rbx, (%r13)		# movq %r(2628), (%r(2627))
	movq $120, %rbx		# movq $120, %r(2629)
	movq %r14, %r13		# movq %r(2517), %r(2630)
	addq %rbx, %r13		# addq %r(2629), %r(2630)
	movq $8, %rbx		# movq $8, %r(2631)
	movq %rbx, (%r13)		# movq %r(2631), (%r(2630))
	movq $128, %rbx		# movq $128, %r(2632)
	movq %r14, %r13		# movq %r(2517), %r(2633)
	addq %rbx, %r13		# addq %r(2632), %r(2633)
	movq $9, %rbx		# movq $9, %r(2634)
	movq %rbx, (%r13)		# movq %r(2634), (%r(2633))
	movq $136, %rbx		# movq $136, %r(2635)
	movq %r14, %r13		# movq %r(2517), %r(2636)
	addq %rbx, %r13		# addq %r(2635), %r(2636)
	movq $17, %rbx		# movq $17, %r(2637)
	movq %rbx, (%r13)		# movq %r(2637), (%r(2636))
	movq $144, %rbx		# movq $144, %r(2638)
	movq %r14, %r13		# movq %r(2517), %r(2639)
	addq %rbx, %r13		# addq %r(2638), %r(2639)
	movq $10, %rbx		# movq $10, %r(2640)
	movq %rbx, (%r13)		# movq %r(2640), (%r(2639))
	movq $152, %rbx		# movq $152, %r(2641)
	movq %r14, %r13		# movq %r(2517), %r(2642)
	addq %rbx, %r13		# addq %r(2641), %r(2642)
	movq $4, %rbx		# movq $4, %r(2643)
	movq %rbx, (%r13)		# movq %r(2643), (%r(2642))
	movq $168, %rbx		# movq $168, %r(2644)
	movq %rbx, %rdi		# movq %r(2644), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2568)
	movq $20, %rbx		# movq $20, %r(2645)
	movq %rbx, (%r13)		# movq %r(2645), (%r(2568))
	movq $8, %rbx		# movq $8, %r(2646)
	addq %rbx, %r13		# addq %r(2646), %r(2647)
	movq %r13, %r15		# movq %r(2647), %r(2520)
	movq $0, %rbx		# movq $0, %r(2648)
	movq %r15, %r13		# movq %r(2520), %r(2649)
	addq %rbx, %r13		# addq %r(2648), %r(2649)
	movq $1, %rbx		# movq $1, %r(2650)
	movq %rbx, (%r13)		# movq %r(2650), (%r(2649))
	movq $8, %rbx		# movq $8, %r(2651)
	movq %r15, %r13		# movq %r(2520), %r(2652)
	addq %rbx, %r13		# addq %r(2651), %r(2652)
	movq $2, %rbx		# movq $2, %r(2653)
	movq %rbx, (%r13)		# movq %r(2653), (%r(2652))
	movq $16, %rbx		# movq $16, %r(2654)
	movq %r15, %r13		# movq %r(2520), %r(2655)
	addq %rbx, %r13		# addq %r(2654), %r(2655)
	movq $3, %rbx		# movq $3, %r(2656)
	movq %rbx, (%r13)		# movq %r(2656), (%r(2655))
	movq $24, %rbx		# movq $24, %r(2657)
	movq %r15, %r13		# movq %r(2520), %r(2658)
	addq %rbx, %r13		# addq %r(2657), %r(2658)
	movq $4, %rbx		# movq $4, %r(2659)
	movq %rbx, (%r13)		# movq %r(2659), (%r(2658))
	movq $32, %rbx		# movq $32, %r(2660)
	movq %r15, %r13		# movq %r(2520), %r(2661)
	addq %rbx, %r13		# addq %r(2660), %r(2661)
	movq $5, %rbx		# movq $5, %r(2662)
	movq %rbx, (%r13)		# movq %r(2662), (%r(2661))
	movq $40, %rbx		# movq $40, %r(2663)
	movq %r15, %r13		# movq %r(2520), %r(2664)
	addq %rbx, %r13		# addq %r(2663), %r(2664)
	movq $6, %rbx		# movq $6, %r(2665)
	movq %rbx, (%r13)		# movq %r(2665), (%r(2664))
	movq $48, %rbx		# movq $48, %r(2666)
	movq %r15, %r13		# movq %r(2520), %r(2667)
	addq %rbx, %r13		# addq %r(2666), %r(2667)
	movq $7, %rbx		# movq $7, %r(2668)
	movq %rbx, (%r13)		# movq %r(2668), (%r(2667))
	movq $56, %rbx		# movq $56, %r(2669)
	movq %r15, %r13		# movq %r(2520), %r(2670)
	addq %rbx, %r13		# addq %r(2669), %r(2670)
	movq $8, %rbx		# movq $8, %r(2671)
	movq %rbx, (%r13)		# movq %r(2671), (%r(2670))
	movq $64, %rbx		# movq $64, %r(2672)
	movq %r15, %r13		# movq %r(2520), %r(2673)
	addq %rbx, %r13		# addq %r(2672), %r(2673)
	movq $9, %rbx		# movq $9, %r(2674)
	movq %rbx, (%r13)		# movq %r(2674), (%r(2673))
	movq $72, %rbx		# movq $72, %r(2675)
	movq %r15, %r13		# movq %r(2520), %r(2676)
	addq %rbx, %r13		# addq %r(2675), %r(2676)
	movq $10, %rbx		# movq $10, %r(2677)
	movq %rbx, (%r13)		# movq %r(2677), (%r(2676))
	movq $80, %rbx		# movq $80, %r(2678)
	movq %r15, %r13		# movq %r(2520), %r(2679)
	addq %rbx, %r13		# addq %r(2678), %r(2679)
	movq $11, %rbx		# movq $11, %r(2680)
	movq %rbx, (%r13)		# movq %r(2680), (%r(2679))
	movq $88, %rbx		# movq $88, %r(2681)
	movq %r15, %r13		# movq %r(2520), %r(2682)
	addq %rbx, %r13		# addq %r(2681), %r(2682)
	movq $12, %rbx		# movq $12, %r(2683)
	movq %rbx, (%r13)		# movq %r(2683), (%r(2682))
	movq $96, %rbx		# movq $96, %r(2684)
	movq %r15, %r13		# movq %r(2520), %r(2685)
	addq %rbx, %r13		# addq %r(2684), %r(2685)
	movq $13, %rbx		# movq $13, %r(2686)
	movq %rbx, (%r13)		# movq %r(2686), (%r(2685))
	movq $104, %rbx		# movq $104, %r(2687)
	movq %r15, %r13		# movq %r(2520), %r(2688)
	addq %rbx, %r13		# addq %r(2687), %r(2688)
	movq $14, %rbx		# movq $14, %r(2689)
	movq %rbx, (%r13)		# movq %r(2689), (%r(2688))
	movq $112, %rbx		# movq $112, %r(2690)
	movq %r15, %r13		# movq %r(2520), %r(2691)
	addq %rbx, %r13		# addq %r(2690), %r(2691)
	movq $15, %rbx		# movq $15, %r(2692)
	movq %rbx, (%r13)		# movq %r(2692), (%r(2691))
	movq $120, %rbx		# movq $120, %r(2693)
	movq %r15, %r13		# movq %r(2520), %r(2694)
	addq %rbx, %r13		# addq %r(2693), %r(2694)
	movq $16, %rbx		# movq $16, %r(2695)
	movq %rbx, (%r13)		# movq %r(2695), (%r(2694))
	movq $128, %rbx		# movq $128, %r(2696)
	movq %r15, %r13		# movq %r(2520), %r(2697)
	addq %rbx, %r13		# addq %r(2696), %r(2697)
	movq $17, %rbx		# movq $17, %r(2698)
	movq %rbx, (%r13)		# movq %r(2698), (%r(2697))
	movq $136, %rbx		# movq $136, %r(2699)
	movq %r15, %r13		# movq %r(2520), %r(2700)
	addq %rbx, %r13		# addq %r(2699), %r(2700)
	movq $18, %rbx		# movq $18, %r(2701)
	movq %rbx, (%r13)		# movq %r(2701), (%r(2700))
	movq $144, %rbx		# movq $144, %r(2702)
	movq %r15, %r13		# movq %r(2520), %r(2703)
	addq %rbx, %r13		# addq %r(2702), %r(2703)
	movq $19, %rbx		# movq $19, %r(2704)
	movq %rbx, (%r13)		# movq %r(2704), (%r(2703))
	movq $152, %rbx		# movq $152, %r(2705)
	movq %r15, %r12		# movq %r(2520), %r(2706)
	addq %rbx, %r12		# addq %r(2705), %r(2706)
	movq $20, %rbx		# movq $20, %r(2707)
	movq %rbx, (%r12)		# movq %r(2707), (%r(2706))
	movq $0, %rbx		# movq $0, %r(2708)
	movq $19, %r13		# movq $19, %r(2709)
	movq %r14, %rdi		# movq %r(2517), %rdi
	movq %rbx, %rsi		# movq %r(2708), %rsi
	movq %r13, %rdx		# movq %r(2709), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq %r14, %rdi		# movq %r(2517), %rdi
	movq %r15, %rsi		# movq %r(2520), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(2803)
	movq %rbx, -296(%rbp)		# movq %r(2803), -296(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2804)
	movq %rbx, -304(%rbp)		# movq %r(2804), -304(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(2805)
	movq %rbx, -104(%rbp)		# movq %r(2805), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2806)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(2807)
	cmpq %rbx, %r12		# cmpq %r(2806), %r(2807)
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
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(2808)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(2809)
	addq %r12, %r13		# addq %r(2809), %r(2710)
	movq $2, %r12		# movq $2, %r(2711)
	movq %r13, %rax		# movq %r(2710), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2711)
	movq %rax, %r12		# movq %rax, %r(2712)
	movq %r12, -80(%rbp)		# movq %r(2810), -80(%rbp)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(2811)
	movq %rbx, %rdi		# movq %r(2811), %rdi
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(2812)
	movq %rbx, %rsi		# movq %r(2812), %rsi
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2813)
	movq %rbx, %rdx		# movq %r(2813), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq $1, %rbx		# movq $1, %r(2713)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2814)
	addq %rbx, %r13		# addq %r(2713), %r(2714)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(2815)
	movq %rbx, %rdi		# movq %r(2815), %rdi
	movq %r13, %rsi		# movq %r(2714), %rsi
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2816)
	movq %rbx, %rdx		# movq %r(2816), %rdx
	call _Imerge_paiii		# call _Imerge_paiii
	movq $16, %rbx		# movq $16, %r(2715)
	movq %rbx, %rdi		# movq %r(2715), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2573)
	movq $1, %r12		# movq $1, %r(2716)
	movq %r12, (%rbx)		# movq %r(2716), (%r(2573))
	movq $8, %r12		# movq $8, %r(2817)
	movq %r12, -224(%rbp)		# movq %r(2817), -224(%rbp)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(2818)
	addq %r12, %rbx		# addq %r(2818), %r(2718)
	movq %rbx, -200(%rbp)		# movq %r(2819), -200(%rbp)
	movq $0, %r12		# movq $0, %r(2719)
	movq -200(%rbp), %r13		# movq -200(%rbp), %r(2820)
	movq %r13, -240(%rbp)		# movq %r(2821), -240(%rbp)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(2822)
	addq %r12, %rbx		# addq %r(2719), %r(2822)
	movq %rbx, -240(%rbp)		# movq %r(2822), -240(%rbp)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(2823)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(2824)
	subq %r12, %r13		# subq %r(2824), %r(2721)
	movq $1, %r12		# movq $1, %r(2825)
	movq %r12, -128(%rbp)		# movq %r(2825), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(2826)
	addq %r12, %r13		# addq %r(2826), %r(2723)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(2827)
	movq %r13, (%r12)		# movq %r(2723), (%r(2827))
	movq -200(%rbp), %rbx		# movq -200(%rbp), %r(2828)
	movq %rbx, %rdi		# movq %r(2828), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2829)
	movq %rbx, -40(%rbp)		# movq %r(2829), -40(%rbp)
	movq $0, %r12		# movq $0, %r(2724)
	movq %r12, -272(%rbp)		# movq %r(2830), -272(%rbp)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(2831)
	movq %r12, -24(%rbp)		# movq %r(2832), -24(%rbp)
	movq $1, %r12		# movq $1, %r(2725)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2833)
	movq %r13, -64(%rbp)		# movq %r(2834), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2835)
	addq %r12, %rbx		# addq %r(2725), %r(2835)
	movq %rbx, -64(%rbp)		# movq %r(2835), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2836)
	movq %r12, -16(%rbp)		# movq %r(2837), -16(%rbp)
	jmp .L510		# jmp .L510
	.L510:		# .L510:
	movq $1, %r13		# movq $1, %r(2727)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2838)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2839)
	cmpq %rbx, %r12		# cmpq %r(2838), %r(2839)
	jle .L513		# jle .L513
	.L514:		# .L514:
	movq $0, %r13		# movq $0, %r(2728)
	jmp .L513		# jmp .L513
	.L513:		# .L513:
	movq $1, %rbx		# movq $1, %r(2840)
	movq %rbx, -288(%rbp)		# movq %r(2840), -288(%rbp)
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(2841)
	xorq %rbx, %r13		# xorq %r(2841), %r(2730)
	testq $1, %r13		# testq $1, %r(2730)
	jne .L512		# jne .L512
	.L517:		# .L517:
	movq $1, %r13		# movq $1, %r(2731)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2842)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2843)
	cmpq %rbx, %r12		# cmpq %r(2842), %r(2843)
	jle .L515		# jle .L515
	.L516:		# .L516:
	movq $0, %r13		# movq $0, %r(2732)
	jmp .L515		# jmp .L515
	.L515:		# .L515:
	movq $1, %rbx		# movq $1, %r(2844)
	movq %rbx, -192(%rbp)		# movq %r(2844), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(2845)
	xorq %rbx, %r13		# xorq %r(2845), %r(2734)
	testq $1, %r13		# testq $1, %r(2734)
	jne .L512		# jne .L512
	.L511:		# .L511:
	movq $8, %r12		# movq $8, %r(2735)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(2846)
	movq %r13, -232(%rbp)		# movq %r(2847), -232(%rbp)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(2848)
	subq %r12, %rbx		# subq %r(2735), %r(2848)
	movq %rbx, -232(%rbp)		# movq %r(2848), -232(%rbp)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(2849)
	movq (%rbx), %rbx		# movq (%r(2849)), %r(2737)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2850)
	cmpq %rbx, %r12		# cmpq %r(2737), %r(2850)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2738)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(2851)
	movq %r13, -280(%rbp)		# movq %r(2852), -280(%rbp)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(2853)
	subq %r12, %rbx		# subq %r(2738), %r(2853)
	movq %rbx, -280(%rbp)		# movq %r(2853), -280(%rbp)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(2854)
	movq (%rbx), %rbx		# movq (%r(2854)), %r(2740)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2855)
	cmpq %rbx, %r12		# cmpq %r(2740), %r(2855)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2856)
	salq $3, %r13		# salq $3, %r(2741)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(2857)
	movq %rbx, -248(%rbp)		# movq %r(2858), -248(%rbp)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(2859)
	addq %r13, %r12		# addq %r(2741), %r(2859)
	movq %r12, -248(%rbp)		# movq %r(2859), -248(%rbp)
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(2860)
	movq (%rbx), %rbx		# movq (%r(2860)), %r(2861)
	movq %rbx, -208(%rbp)		# movq %r(2861), -208(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2862)
	salq $3, %r13		# salq $3, %r(2744)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(2863)
	movq %rbx, -160(%rbp)		# movq %r(2864), -160(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(2865)
	addq %r13, %r12		# addq %r(2744), %r(2865)
	movq %r12, -160(%rbp)		# movq %r(2865), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(2866)
	movq (%rbx), %rbx		# movq (%r(2866)), %r(2746)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(2867)
	cmpq %rbx, %r12		# cmpq %r(2746), %r(2867)
	jg .L523		# jg .L523
	.L522:		# .L522:
	movq $8, %r12		# movq $8, %r(2747)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(2868)
	movq %r13, -216(%rbp)		# movq %r(2869), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(2870)
	subq %r12, %rbx		# subq %r(2747), %r(2870)
	movq %rbx, -216(%rbp)		# movq %r(2870), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(2871)
	movq (%rbx), %rbx		# movq (%r(2871)), %r(2749)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2872)
	cmpq %rbx, %r12		# cmpq %r(2749), %r(2872)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2750)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2873)
	movq %r13, -72(%rbp)		# movq %r(2874), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2875)
	subq %r12, %rbx		# subq %r(2750), %r(2875)
	movq %rbx, -72(%rbp)		# movq %r(2875), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2876)
	movq (%rbx), %rbx		# movq (%r(2876)), %r(2752)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2877)
	cmpq %rbx, %r12		# cmpq %r(2752), %r(2877)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2878)
	salq $3, %r13		# salq $3, %r(2753)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2879)
	movq %rbx, -144(%rbp)		# movq %r(2880), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2881)
	addq %r13, %r12		# addq %r(2753), %r(2881)
	movq %r12, -144(%rbp)		# movq %r(2881), -144(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2882)
	salq $3, %r13		# salq $3, %r(2755)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(2883)
	movq %rbx, -264(%rbp)		# movq %r(2884), -264(%rbp)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(2885)
	addq %r13, %r12		# addq %r(2755), %r(2885)
	movq %r12, -264(%rbp)		# movq %r(2885), -264(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(2886)
	movq (%rbx), %rbx		# movq (%r(2886)), %r(2757)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(2887)
	movq %rbx, (%r12)		# movq %r(2757), (%r(2887))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2888)
	incq %rbx		# incq %r(2888)
	movq %rbx, -24(%rbp)		# movq %r(2888), -24(%rbp)
	jmp .L528		# jmp .L528
	.L528:		# .L528:
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(2889)
	incq %rbx		# incq %r(2889)
	movq %rbx, -272(%rbp)		# movq %r(2889), -272(%rbp)
	jmp .L510		# jmp .L510
	.L523:		# .L523:
	movq $8, %r12		# movq $8, %r(2758)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(2890)
	movq %r13, -48(%rbp)		# movq %r(2891), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2892)
	subq %r12, %rbx		# subq %r(2758), %r(2892)
	movq %rbx, -48(%rbp)		# movq %r(2892), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2893)
	movq (%rbx), %rbx		# movq (%r(2893)), %r(2760)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2894)
	cmpq %rbx, %r12		# cmpq %r(2760), %r(2894)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2761)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2895)
	movq %r13, -88(%rbp)		# movq %r(2896), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2897)
	subq %r12, %rbx		# subq %r(2761), %r(2897)
	movq %rbx, -88(%rbp)		# movq %r(2897), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2898)
	movq (%rbx), %rbx		# movq (%r(2898)), %r(2763)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2899)
	cmpq %rbx, %r12		# cmpq %r(2763), %r(2899)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2900)
	salq $3, %r13		# salq $3, %r(2764)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2901)
	movq %rbx, -184(%rbp)		# movq %r(2902), -184(%rbp)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(2903)
	addq %r13, %r12		# addq %r(2764), %r(2903)
	movq %r12, -184(%rbp)		# movq %r(2903), -184(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2904)
	salq $3, %r13		# salq $3, %r(2766)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(2905)
	movq %rbx, -176(%rbp)		# movq %r(2906), -176(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(2907)
	addq %r13, %r12		# addq %r(2766), %r(2907)
	movq %r12, -176(%rbp)		# movq %r(2907), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(2908)
	movq (%rbx), %rbx		# movq (%r(2908)), %r(2768)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(2909)
	movq %rbx, (%r12)		# movq %r(2768), (%r(2909))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2910)
	incq %rbx		# incq %r(2910)
	movq %rbx, -16(%rbp)		# movq %r(2910), -16(%rbp)
	jmp .L528		# jmp .L528
	.L512:		# .L512:
	jmp .L533		# jmp .L533
	.L533:		# .L533:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2911)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2912)
	cmpq %rbx, %r12		# cmpq %r(2911), %r(2912)
	jg .L535		# jg .L535
	.L534:		# .L534:
	movq $8, %r12		# movq $8, %r(2769)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(2913)
	movq %r13, -320(%rbp)		# movq %r(2914), -320(%rbp)
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(2915)
	subq %r12, %rbx		# subq %r(2769), %r(2915)
	movq %rbx, -320(%rbp)		# movq %r(2915), -320(%rbp)
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(2916)
	movq (%rbx), %rbx		# movq (%r(2916)), %r(2771)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2917)
	cmpq %rbx, %r12		# cmpq %r(2771), %r(2917)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2772)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2918)
	movq %r13, -136(%rbp)		# movq %r(2919), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(2920)
	subq %r12, %rbx		# subq %r(2772), %r(2920)
	movq %rbx, -136(%rbp)		# movq %r(2920), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(2921)
	movq (%rbx), %rbx		# movq (%r(2921)), %r(2774)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2922)
	cmpq %rbx, %r12		# cmpq %r(2774), %r(2922)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2923)
	salq $3, %r13		# salq $3, %r(2775)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2924)
	movq %rbx, -112(%rbp)		# movq %r(2925), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2926)
	addq %r13, %r12		# addq %r(2775), %r(2926)
	movq %r12, -112(%rbp)		# movq %r(2926), -112(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2927)
	salq $3, %r13		# salq $3, %r(2777)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(2928)
	movq %rbx, -312(%rbp)		# movq %r(2929), -312(%rbp)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(2930)
	addq %r13, %r12		# addq %r(2777), %r(2930)
	movq %r12, -312(%rbp)		# movq %r(2930), -312(%rbp)
	movq -312(%rbp), %rbx		# movq -312(%rbp), %r(2931)
	movq (%rbx), %rbx		# movq (%r(2931)), %r(2779)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(2932)
	movq %rbx, (%r12)		# movq %r(2779), (%r(2932))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2933)
	incq %rbx		# incq %r(2933)
	movq %rbx, -24(%rbp)		# movq %r(2933), -24(%rbp)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(2934)
	incq %rbx		# incq %r(2934)
	movq %rbx, -272(%rbp)		# movq %r(2934), -272(%rbp)
	jmp .L533		# jmp .L533
	.L535:		# .L535:
	jmp .L540		# jmp .L540
	.L540:		# .L540:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2935)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2936)
	cmpq %rbx, %r12		# cmpq %r(2935), %r(2936)
	jg .L542		# jg .L542
	.L541:		# .L541:
	movq $8, %r12		# movq $8, %r(2780)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(2937)
	movq %r13, -152(%rbp)		# movq %r(2938), -152(%rbp)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2939)
	subq %r12, %rbx		# subq %r(2780), %r(2939)
	movq %rbx, -152(%rbp)		# movq %r(2939), -152(%rbp)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(2940)
	movq (%rbx), %rbx		# movq (%r(2940)), %r(2782)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2941)
	cmpq %rbx, %r12		# cmpq %r(2782), %r(2941)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2783)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2942)
	movq %r13, -96(%rbp)		# movq %r(2943), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2944)
	subq %r12, %rbx		# subq %r(2783), %r(2944)
	movq %rbx, -96(%rbp)		# movq %r(2944), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2945)
	movq (%rbx), %rbx		# movq (%r(2945)), %r(2785)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2946)
	cmpq %rbx, %r12		# cmpq %r(2785), %r(2946)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2947)
	salq $3, %r13		# salq $3, %r(2786)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2948)
	movq %rbx, -56(%rbp)		# movq %r(2949), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2950)
	addq %r13, %r12		# addq %r(2786), %r(2950)
	movq %r12, -56(%rbp)		# movq %r(2950), -56(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2951)
	salq $3, %r13		# salq $3, %r(2788)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(2952)
	movq %rbx, -256(%rbp)		# movq %r(2953), -256(%rbp)
	movq -256(%rbp), %r12		# movq -256(%rbp), %r(2954)
	addq %r13, %r12		# addq %r(2788), %r(2954)
	movq %r12, -256(%rbp)		# movq %r(2954), -256(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(2955)
	movq (%rbx), %rbx		# movq (%r(2955)), %r(2790)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2956)
	movq %rbx, (%r12)		# movq %r(2790), (%r(2956))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2957)
	incq %rbx		# incq %r(2957)
	movq %rbx, -16(%rbp)		# movq %r(2957), -16(%rbp)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(2958)
	incq %rbx		# incq %r(2958)
	movq %rbx, -272(%rbp)		# movq %r(2958), -272(%rbp)
	jmp .L540		# jmp .L540
	.L542:		# .L542:
	movq $0, %r12		# movq $0, %r(2791)
	movq %r12, -272(%rbp)		# movq %r(2959), -272(%rbp)
	jmp .L547		# jmp .L547
	.L547:		# .L547:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2960)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(2961)
	cmpq %rbx, %r12		# cmpq %r(2960), %r(2961)
	jg .L549		# jg .L549
	.L548:		# .L548:
	movq $8, %r12		# movq $8, %r(2792)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2962)
	movq %r13, -8(%rbp)		# movq %r(2963), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2964)
	subq %r12, %rbx		# subq %r(2792), %r(2964)
	movq %rbx, -8(%rbp)		# movq %r(2964), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2965)
	movq (%rbx), %rbx		# movq (%r(2965)), %r(2794)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(2966)
	cmpq %rbx, %r12		# cmpq %r(2794), %r(2966)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2795)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(2967)
	movq %r13, -120(%rbp)		# movq %r(2968), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2969)
	subq %r12, %rbx		# subq %r(2795), %r(2969)
	movq %rbx, -120(%rbp)		# movq %r(2969), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(2970)
	movq (%rbx), %rbx		# movq (%r(2970)), %r(2797)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(2971)
	cmpq %rbx, %r12		# cmpq %r(2797), %r(2971)
	jae error_outofbounds		# jae error_outofbounds
	movq -304(%rbp), %r13		# movq -304(%rbp), %r(2972)
	salq $3, %r13		# salq $3, %r(2798)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(2973)
	movq %rbx, -32(%rbp)		# movq %r(2974), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2975)
	addq %r13, %r12		# addq %r(2798), %r(2975)
	movq %r12, -32(%rbp)		# movq %r(2975), -32(%rbp)
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(2976)
	salq $3, %r13		# salq $3, %r(2800)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2977)
	movq %rbx, -168(%rbp)		# movq %r(2978), -168(%rbp)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(2979)
	addq %r13, %r12		# addq %r(2800), %r(2979)
	movq %r12, -168(%rbp)		# movq %r(2979), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(2980)
	movq (%rbx), %rbx		# movq (%r(2980)), %r(2802)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2981)
	movq %rbx, (%r12)		# movq %r(2802), (%r(2981))
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(2982)
	incq %rbx		# incq %r(2982)
	movq %rbx, -272(%rbp)		# movq %r(2982), -272(%rbp)
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(2983)
	incq %rbx		# incq %r(2983)
	movq %rbx, -304(%rbp)		# movq %r(2983), -304(%rbp)
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
	movq %rdi, %rbx		# movq %rdi, %r(3002)
	movq %rbx, -16(%rbp)		# movq %r(3002), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3003)
	movq %rbx, -8(%rbp)		# movq %r(3003), -8(%rbp)
	movq $0, %r12		# movq $0, %r(2984)
	movq %r12, -56(%rbp)		# movq %r(3004), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(2985)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3005)
	subq %rbx, %r13		# subq %r(2985), %r(2986)
	movq (%r13), %r12		# movq (%r(2986)), %r(2987)
	movq %r12, -64(%rbp)		# movq %r(3006), -64(%rbp)
	jmp .L555		# jmp .L555
	.L555:		# .L555:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3007)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3008)
	cmpq %r12, %rbx		# cmpq %r(3008), %r(3007)
	jge .L557		# jge .L557
	.L556:		# .L556:
	movq $1, %r12		# movq $1, %r(2988)
	movq %r12, -40(%rbp)		# movq %r(3009), -40(%rbp)
	movq $8, %r12		# movq $8, %r(2989)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3010)
	movq %r13, -80(%rbp)		# movq %r(3011), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3012)
	subq %r12, %rbx		# subq %r(2989), %r(3012)
	movq %rbx, -80(%rbp)		# movq %r(3012), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3013)
	movq (%rbx), %rbx		# movq (%r(3013)), %r(2991)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3014)
	cmpq %rbx, %r12		# cmpq %r(2991), %r(3014)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(2992)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3015)
	movq %r13, -32(%rbp)		# movq %r(3016), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3017)
	subq %r12, %rbx		# subq %r(2992), %r(3017)
	movq %rbx, -32(%rbp)		# movq %r(3017), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3018)
	movq (%rbx), %rbx		# movq (%r(3018)), %r(2994)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3019)
	cmpq %rbx, %r12		# cmpq %r(2994), %r(3019)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(3020)
	salq $3, %r13		# salq $3, %r(2995)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3021)
	movq %rbx, -48(%rbp)		# movq %r(3022), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3023)
	addq %r13, %r12		# addq %r(2995), %r(3023)
	movq %r12, -48(%rbp)		# movq %r(3023), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3024)
	movq (%rbx), %rbx		# movq (%r(3024)), %r(3025)
	movq %rbx, -72(%rbp)		# movq %r(3025), -72(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(3026)
	salq $3, %r13		# salq $3, %r(2998)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3027)
	movq %rbx, -24(%rbp)		# movq %r(3028), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3029)
	addq %r13, %r12		# addq %r(2998), %r(3029)
	movq %r12, -24(%rbp)		# movq %r(3029), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3030)
	movq (%rbx), %rbx		# movq (%r(3030)), %r(3000)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3031)
	cmpq %rbx, %r12		# cmpq %r(3000), %r(3031)
	je .L562		# je .L562
	.L563:		# .L563:
	movq $0, %r12		# movq $0, %r(3001)
	movq %r12, -40(%rbp)		# movq %r(3032), -40(%rbp)
	jmp .L562		# jmp .L562
	.L562:		# .L562:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3033)
	movq %rbx, %rdi		# movq %r(3033), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3034)
	incq %rbx		# incq %r(3034)
	movq %rbx, -56(%rbp)		# movq %r(3034), -56(%rbp)
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
	movq %rdi, %rbx		# movq %rdi, %r(3078)
	movq %rbx, -8(%rbp)		# movq %r(3078), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(3035)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3079)
	subq %rbx, %r13		# subq %r(3035), %r(3036)
	movq (%r13), %r12		# movq (%r(3036)), %r(3037)
	movq %r12, -80(%rbp)		# movq %r(3080), -80(%rbp)
	movq $1, %r12		# movq $1, %r(3038)
	movq %r12, -48(%rbp)		# movq %r(3081), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(3039)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3082)
	cmpq %rbx, %r12		# cmpq %r(3039), %r(3082)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(3040)
	movq %rbx, %rax		# movq %r(3040), %rax
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
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3083)
	salq $3, %r12		# salq $3, %r(3041)
	movq %r12, %rdi		# movq %r(3041), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2576)
	movq $1, %r12		# movq $1, %r(3042)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(3084)
	movq %r14, -24(%rbp)		# movq %r(3085), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3086)
	subq %r12, %rbx		# subq %r(3042), %r(3086)
	movq %rbx, -24(%rbp)		# movq %r(3086), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3087)
	movq %rbx, (%r13)		# movq %r(3087), (%r(2576))
	movq $8, %rbx		# movq $8, %r(3044)
	addq %rbx, %r13		# addq %r(3044), %r(3045)
	movq %r13, -72(%rbp)		# movq %r(3088), -72(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3089)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3090)
	cmpq %r12, %rbx		# cmpq %r(3090), %r(3089)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(3046)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3091)
	subq %rbx, %r13		# subq %r(3046), %r(3047)
	movq (%r13), %rbx		# movq (%r(3047)), %r(3048)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3092)
	cmpq %rbx, %r12		# cmpq %r(3048), %r(3092)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(3049)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(3093)
	subq %rbx, %r14		# subq %r(3049), %r(3050)
	movq $8, %r13		# movq $8, %r(3051)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3094)
	movq %r12, -32(%rbp)		# movq %r(3095), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3096)
	subq %r13, %rbx		# subq %r(3051), %r(3096)
	movq %rbx, -32(%rbp)		# movq %r(3096), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3097)
	movq (%rbx), %rbx		# movq (%r(3097)), %r(3053)
	cmpq %rbx, %r14		# cmpq %r(3053), %r(1740)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(3054)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3098)
	addq %r14, %rbx		# addq %r(3054), %r(3055)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(3099)
	salq $3, %r14		# salq $3, %r(3056)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3100)
	movq %r12, -88(%rbp)		# movq %r(3101), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(3102)
	addq %r14, %r13		# addq %r(3056), %r(3102)
	movq %r13, -88(%rbp)		# movq %r(3102), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(3103)
	movq (%r12), %r12		# movq (%r(3103)), %r(3058)
	movq %r12, (%rbx)		# movq %r(3058), (%r(3055))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3104)
	incq %rbx		# incq %r(3104)
	movq %rbx, -48(%rbp)		# movq %r(3104), -48(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(3059)
	movq $8, %r12		# movq $8, %r(3060)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3105)
	subq %r12, %r14		# subq %r(3060), %r(3061)
	movq (%r14), %rbx		# movq (%r(3061)), %r(3062)
	cmpq %rbx, %r13		# cmpq %r(3062), %r(3059)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3063)
	salq $3, %r13		# salq $3, %r(3064)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3106)
	addq %r13, %rbx		# addq %r(3064), %r(3065)
	movq (%rbx), %r12		# movq (%r(3065)), %r(3066)
	movq %r12, -48(%rbp)		# movq %r(3107), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(3067)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3108)
	addq %rbx, %r12		# addq %r(3067), %r(3068)
	salq $3, %r12		# salq $3, %r(3069)
	movq %r12, %rdi		# movq %r(3069), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2577)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3109)
	movq %r12, (%rbx)		# movq %r(3109), (%r(2577))
	movq $8, %r12		# movq $8, %r(3070)
	addq %r12, %rbx		# addq %r(3070), %r(3071)
	movq %rbx, -56(%rbp)		# movq %r(3110), -56(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(3072)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3111)
	cmpq %rbx, %r12		# cmpq %r(3072), %r(3111)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3112)
	decq %rbx		# decq %r(3112)
	movq %rbx, -48(%rbp)		# movq %r(3112), -48(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3113)
	movq %rbx, %rdi		# movq %r(3113), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(3114)
	movq %rbx, -40(%rbp)		# movq %r(3114), -40(%rbp)
	movq $8, %r12		# movq $8, %r(3073)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(3115)
	movq %r13, -16(%rbp)		# movq %r(3116), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3117)
	subq %r12, %rbx		# subq %r(3073), %r(3117)
	movq %rbx, -16(%rbp)		# movq %r(3117), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3118)
	movq (%rbx), %rbx		# movq (%r(3118)), %r(3075)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3119)
	cmpq %rbx, %r12		# cmpq %r(3075), %r(3119)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(3120)
	salq $3, %r13		# salq $3, %r(3076)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3121)
	movq %rbx, -64(%rbp)		# movq %r(3122), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3123)
	addq %r13, %r12		# addq %r(3076), %r(3123)
	movq %r12, -64(%rbp)		# movq %r(3123), -64(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3124)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3125)
	movq %rbx, (%r12)		# movq %r(3124), (%r(3125))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3126)
	movq %rbx, %rax		# movq %r(3126), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
