.att_syntax prefix
.text
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L543(%rip), %rdi		# leaq .L543(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2649)
	movq %r13, %rdi		# movq %r(2649), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L542		# jmp .L542
	.L542:		# .L542:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $16, %rbx		# movq $16, %r(2673)
	movq %rbx, %rdi		# movq %r(2673), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2653)
	movq $1, %rbx		# movq $1, %r(2674)
	movq %rbx, (%r14)		# movq %r(2674), (%r(2653))
	movq $8, %rbx		# movq $8, %r(2675)
	movq %r14, %r13		# movq %r(2653), %r(2676)
	addq %rbx, %r13		# addq %r(2675), %r(2676)
	movq %r13, %r14		# movq %r(2676), %r(2628)
	movq $0, %rbx		# movq $0, %r(2677)
	movq %r14, %r13		# movq %r(2628), %r(2678)
	addq %rbx, %r13		# addq %r(2677), %r(2678)
	movq $10, %rbx		# movq $10, %r(2679)
	movq %rbx, (%r13)		# movq %r(2679), (%r(2678))
	movq %r14, %rdi		# movq %r(2628), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2757)
	movq %rbx, -24(%rbp)		# movq %r(2757), -24(%rbp)
	leaq .L546(%rip), %rdi		# leaq .L546(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2758)
	movq %rbx, -16(%rbp)		# movq %r(2758), -16(%rbp)
	movq $1, %r13		# movq $1, %r(2681)
	movq %r13, %rbx		# movq %r(2681), %r(2759)
	movq %rbx, -88(%rbp)		# movq %r(2759), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(2682)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2760)
	movq %r14, %r12		# movq %r(2760), %r(2683)
	subq %rbx, %r12		# subq %r(2682), %r(2683)
	movq (%r12), %rbx		# movq (%r(2683)), %r(2684)
	movq $10, %r12		# movq $10, %r(2685)
	cmpq %r12, %rbx		# cmpq %r(2685), %r(2684)
	je .L547		# je .L547
	.L548:		# .L548:
	movq $0, %r13		# movq $0, %r(2686)
	movq %r13, %rbx		# movq %r(2686), %r(2761)
	movq %rbx, -88(%rbp)		# movq %r(2761), -88(%rbp)
	jmp .L547		# jmp .L547
	.L547:		# .L547:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2762)
	movq %rbx, %rdi		# movq %r(2762), %rdi
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2763)
	movq %rbx, %rsi		# movq %r(2763), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r13		# movq $0, %r(2687)
	movq $8, %rbx		# movq $8, %r(2688)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2764)
	movq %r12, %r14		# movq %r(2764), %r(2689)
	subq %rbx, %r14		# subq %r(2688), %r(2689)
	movq (%r14), %rbx		# movq (%r(2689)), %r(2690)
	cmpq %rbx, %r13		# cmpq %r(2690), %r(2687)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(2691)
	movq %r13, %r14		# movq %r(2691), %r(2692)
	salq $3, %r14		# salq $3, %r(2692)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2765)
	movq %r12, %r15		# movq %r(2765), %r(2693)
	addq %r14, %r15		# addq %r(2692), %r(2693)
	movq $42, %rbx		# movq $42, %r(2694)
	movq %rbx, (%r15)		# movq %r(2694), (%r(2693))
	movq $1, %r13		# movq $1, %r(2695)
	movq $8, %rbx		# movq $8, %r(2696)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2766)
	movq %r12, %r14		# movq %r(2766), %r(2697)
	subq %rbx, %r14		# subq %r(2696), %r(2697)
	movq (%r14), %rbx		# movq (%r(2697)), %r(2698)
	cmpq %rbx, %r13		# cmpq %r(2698), %r(2695)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(2699)
	movq %r13, %r14		# movq %r(2699), %r(2700)
	salq $3, %r14		# salq $3, %r(2700)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2767)
	movq %r12, %r15		# movq %r(2767), %r(2701)
	addq %r14, %r15		# addq %r(2700), %r(2701)
	movq $52, %rbx		# movq $52, %r(2702)
	movq %rbx, (%r15)		# movq %r(2702), (%r(2701))
	movq $2, %r13		# movq $2, %r(2703)
	movq $8, %rbx		# movq $8, %r(2704)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2768)
	movq %r12, %r14		# movq %r(2768), %r(2705)
	subq %rbx, %r14		# subq %r(2704), %r(2705)
	movq (%r14), %rbx		# movq (%r(2705)), %r(2706)
	cmpq %rbx, %r13		# cmpq %r(2706), %r(2703)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(2707)
	movq %r13, %r14		# movq %r(2707), %r(2708)
	salq $3, %r14		# salq $3, %r(2708)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2769)
	movq %r12, %r15		# movq %r(2769), %r(2709)
	addq %r14, %r15		# addq %r(2708), %r(2709)
	movq $62, %rbx		# movq $62, %r(2710)
	movq %rbx, (%r15)		# movq %r(2710), (%r(2709))
	leaq .L555(%rip), %rdi		# leaq .L555(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2770)
	movq %rbx, -40(%rbp)		# movq %r(2770), -40(%rbp)
	movq $1, %r13		# movq $1, %r(2712)
	movq %r13, %rbx		# movq %r(2712), %r(2771)
	movq %rbx, -8(%rbp)		# movq %r(2771), -8(%rbp)
	movq $0, %r14		# movq $0, %r(2713)
	movq $8, %r12		# movq $8, %r(2714)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2772)
	movq %rbx, %r13		# movq %r(2772), %r(2773)
	movq %r13, -32(%rbp)		# movq %r(2773), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2774)
	subq %r12, %rbx		# subq %r(2714), %r(2774)
	movq %rbx, -32(%rbp)		# movq %r(2774), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2775)
	movq (%rbx), %r12		# movq (%r(2775)), %r(2716)
	cmpq %r12, %r14		# cmpq %r(2716), %r(2713)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(2717)
	movq %r13, %r14		# movq %r(2717), %r(2718)
	salq $3, %r14		# salq $3, %r(2718)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2776)
	movq %r12, %r15		# movq %r(2776), %r(2719)
	addq %r14, %r15		# addq %r(2718), %r(2719)
	movq (%r15), %rbx		# movq (%r(2719)), %r(2720)
	movq $42, %r12		# movq $42, %r(2721)
	cmpq %r12, %rbx		# cmpq %r(2721), %r(2720)
	je .L558		# je .L558
	.L559:		# .L559:
	movq $0, %r13		# movq $0, %r(2722)
	movq %r13, %rbx		# movq %r(2722), %r(2777)
	movq %rbx, -8(%rbp)		# movq %r(2777), -8(%rbp)
	jmp .L558		# jmp .L558
	.L558:		# .L558:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(2778)
	movq %rbx, %rdi		# movq %r(2778), %rdi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2779)
	movq %rbx, %rsi		# movq %r(2779), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L560(%rip), %rdi		# leaq .L560(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2780)
	movq %rbx, -56(%rbp)		# movq %r(2780), -56(%rbp)
	movq $1, %r13		# movq $1, %r(2724)
	movq %r13, %rbx		# movq %r(2724), %r(2781)
	movq %rbx, -64(%rbp)		# movq %r(2781), -64(%rbp)
	movq $1, %r14		# movq $1, %r(2725)
	movq $8, %r12		# movq $8, %r(2726)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2782)
	movq %rbx, %r13		# movq %r(2782), %r(2783)
	movq %r13, -80(%rbp)		# movq %r(2783), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2784)
	subq %r12, %rbx		# subq %r(2726), %r(2784)
	movq %rbx, -80(%rbp)		# movq %r(2784), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(2785)
	movq (%rbx), %r12		# movq (%r(2785)), %r(2728)
	cmpq %r12, %r14		# cmpq %r(2728), %r(2725)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(2729)
	movq %r13, %r14		# movq %r(2729), %r(2730)
	salq $3, %r14		# salq $3, %r(2730)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2786)
	movq %r12, %r15		# movq %r(2786), %r(2731)
	addq %r14, %r15		# addq %r(2730), %r(2731)
	movq (%r15), %rbx		# movq (%r(2731)), %r(2732)
	movq $52, %r12		# movq $52, %r(2733)
	cmpq %r12, %rbx		# cmpq %r(2733), %r(2732)
	je .L563		# je .L563
	.L564:		# .L564:
	movq $0, %r13		# movq $0, %r(2734)
	movq %r13, %rbx		# movq %r(2734), %r(2787)
	movq %rbx, -64(%rbp)		# movq %r(2787), -64(%rbp)
	jmp .L563		# jmp .L563
	.L563:		# .L563:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2788)
	movq %rbx, %rdi		# movq %r(2788), %rdi
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2789)
	movq %rbx, %rsi		# movq %r(2789), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L565(%rip), %rdi		# leaq .L565(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2790)
	movq %rbx, -72(%rbp)		# movq %r(2790), -72(%rbp)
	movq $1, %r12		# movq $1, %r(2736)
	movq %r12, %r13		# movq %r(2736), %r(2645)
	movq $2, %r15		# movq $2, %r(2737)
	movq $8, %r12		# movq $8, %r(2738)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2791)
	movq %rbx, %r14		# movq %r(2791), %r(2792)
	movq %r14, -48(%rbp)		# movq %r(2792), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2793)
	subq %r12, %rbx		# subq %r(2738), %r(2793)
	movq %rbx, -48(%rbp)		# movq %r(2793), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2794)
	movq (%rbx), %r12		# movq (%r(2794)), %r(2740)
	cmpq %r12, %r15		# cmpq %r(2740), %r(2737)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r12		# movq $2, %r(2741)
	movq %r12, %rbx		# movq %r(2741), %r(2742)
	salq $3, %rbx		# salq $3, %r(2742)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2795)
	movq %r14, %r15		# movq %r(2795), %r(2743)
	addq %rbx, %r15		# addq %r(2742), %r(2743)
	movq (%r15), %r12		# movq (%r(2743)), %r(2744)
	movq $62, %rbx		# movq $62, %r(2745)
	cmpq %rbx, %r12		# cmpq %r(2745), %r(2744)
	je .L568		# je .L568
	.L569:		# .L569:
	movq $0, %r12		# movq $0, %r(2746)
	movq %r12, %r13		# movq %r(2746), %r(2645)
	jmp .L568		# jmp .L568
	.L568:		# .L568:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2796)
	movq %rbx, %rdi		# movq %r(2796), %rdi
	movq %r13, %rsi		# movq %r(2645), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L570(%rip), %rdi		# leaq .L570(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2663)
	movq $1, %r14		# movq $1, %r(2748)
	movq %r14, %rbx		# movq %r(2748), %r(2799)
	movq %rbx, -96(%rbp)		# movq %r(2799), -96(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2797)
	cmpq %rbx, %rbx		# cmpq %r(2797), %r(2797)
	je .L571		# je .L571
	.L572:		# .L572:
	movq $0, %r14		# movq $0, %r(2749)
	movq %r14, %rbx		# movq %r(2749), %r(2800)
	movq %rbx, -96(%rbp)		# movq %r(2800), -96(%rbp)
	jmp .L571		# jmp .L571
	.L571:		# .L571:
	movq %r13, %rdi		# movq %r(2663), %rdi
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2801)
	movq %rbx, %rsi		# movq %r(2801), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L573(%rip), %rdi		# leaq .L573(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2665)
	movq $1, %r12		# movq $1, %r(2751)
	movq %r12, %r14		# movq %r(2751), %r(2648)
	movq $8, %rbx		# movq $8, %r(2752)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2798)
	movq %r12, %r15		# movq %r(2798), %r(2753)
	subq %rbx, %r15		# subq %r(2752), %r(2753)
	movq (%r15), %rbx		# movq (%r(2753)), %r(2754)
	movq $10, %r12		# movq $10, %r(2755)
	cmpq %r12, %rbx		# cmpq %r(2755), %r(2754)
	je .L574		# je .L574
	.L575:		# .L575:
	movq $0, %r12		# movq $0, %r(2756)
	movq %r12, %r14		# movq %r(2756), %r(2648)
	jmp .L574		# jmp .L574
	.L574:		# .L574:
	movq %r13, %rdi		# movq %r(2665), %rdi
	movq %r14, %rsi		# movq %r(2648), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L544		# jmp .L544
	.L544:		# .L544:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2845)
	movq %rbx, -32(%rbp)		# movq %r(2845), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(2802)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2846)
	movq %r14, %r12		# movq %r(2846), %r(2803)
	subq %rbx, %r12		# subq %r(2802), %r(2803)
	movq (%r12), %r13		# movq (%r(2803)), %r(2804)
	movq %r13, %rbx		# movq %r(2804), %r(2847)
	movq %rbx, -40(%rbp)		# movq %r(2847), -40(%rbp)
	movq $1, %r13		# movq $1, %r(2805)
	movq %r13, %rbx		# movq %r(2805), %r(2848)
	movq %rbx, -24(%rbp)		# movq %r(2848), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(2806)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2849)
	cmpq %rbx, %r12		# cmpq %r(2806), %r(2849)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(2807)
	movq %rbx, %rax		# movq %r(2807), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L69:		# .L69:
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(2850)
	movq %r13, %rbx		# movq %r(2850), %r(2808)
	salq $3, %rbx		# salq $3, %r(2808)
	movq %rbx, %rdi		# movq %r(2808), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2851)
	movq %rbx, -48(%rbp)		# movq %r(2851), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(2809)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(2852)
	movq %r14, %r12		# movq %r(2852), %r(2810)
	subq %rbx, %r12		# subq %r(2809), %r(2810)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2853)
	movq %r12, (%rbx)		# movq %r(2810), (%r(2853))
	movq $8, %rbx		# movq $8, %r(2811)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(2854)
	movq %r14, %r13		# movq %r(2854), %r(2812)
	addq %rbx, %r13		# addq %r(2811), %r(2812)
	movq %r13, %r12		# movq %r(2812), %r(2855)
	movq %r12, -8(%rbp)		# movq %r(2855), -8(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2856)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2857)
	cmpq %r12, %rbx		# cmpq %r(2857), %r(2856)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(2813)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(2858)
	movq %r14, %r12		# movq %r(2858), %r(2814)
	subq %rbx, %r12		# subq %r(2813), %r(2814)
	movq (%r12), %rbx		# movq (%r(2814)), %r(2815)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2859)
	cmpq %rbx, %r12		# cmpq %r(2815), %r(2859)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(2816)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2860)
	movq %r14, %r13		# movq %r(2860), %r(2817)
	subq %rbx, %r13		# subq %r(2816), %r(2817)
	movq %r13, %r12		# movq %r(2817), %r(2861)
	movq %r12, -80(%rbp)		# movq %r(2861), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(2818)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2862)
	movq %r14, %r12		# movq %r(2862), %r(2819)
	subq %rbx, %r12		# subq %r(2818), %r(2819)
	movq (%r12), %rbx		# movq (%r(2819)), %r(2820)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(2863)
	cmpq %rbx, %r12		# cmpq %r(2820), %r(2863)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(2864)
	movq %r13, %r14		# movq %r(2864), %r(2821)
	salq $3, %r14		# salq $3, %r(2821)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2865)
	movq %r12, %r15		# movq %r(2865), %r(2822)
	addq %r14, %r15		# addq %r(2821), %r(2822)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2866)
	movq %r13, %rbx		# movq %r(2866), %r(2897)
	movq %rbx, -104(%rbp)		# movq %r(2897), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(2898)
	salq $3, %rbx		# salq $3, %r(2898)
	movq %rbx, -104(%rbp)		# movq %r(2898), -104(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2867)
	movq %r13, %rbx		# movq %r(2867), %r(2868)
	movq %rbx, -72(%rbp)		# movq %r(2868), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2869)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(2899)
	addq %r12, %rbx		# addq %r(2899), %r(2869)
	movq %rbx, -72(%rbp)		# movq %r(2869), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2870)
	movq (%rbx), %r12		# movq (%r(2870)), %r(2825)
	movq %r12, (%r15)		# movq %r(2825), (%r(2822))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2871)
	incq %rbx		# incq %r(2871)
	movq %rbx, -24(%rbp)		# movq %r(2871), -24(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(2826)
	movq $8, %rbx		# movq $8, %r(2827)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2872)
	movq %r12, %r14		# movq %r(2872), %r(2828)
	subq %rbx, %r14		# subq %r(2827), %r(2828)
	movq (%r14), %rbx		# movq (%r(2828)), %r(2829)
	cmpq %rbx, %r13		# cmpq %r(2829), %r(2826)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(2830)
	movq %r13, %r14		# movq %r(2830), %r(2831)
	salq $3, %r14		# salq $3, %r(2831)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2873)
	movq %r12, %r15		# movq %r(2873), %r(2832)
	addq %r14, %r15		# addq %r(2831), %r(2832)
	movq (%r15), %r13		# movq (%r(2832)), %r(2833)
	movq %r13, %rbx		# movq %r(2833), %r(2874)
	movq %rbx, -24(%rbp)		# movq %r(2874), -24(%rbp)
	movq $1, %rbx		# movq $1, %r(2834)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2875)
	movq %r14, %r13		# movq %r(2875), %r(2835)
	addq %rbx, %r13		# addq %r(2834), %r(2835)
	movq %r13, %r12		# movq %r(2835), %r(2836)
	salq $3, %r12		# salq $3, %r(2836)
	movq %r12, %rdi		# movq %r(2836), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2668)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2876)
	movq %rbx, (%r14)		# movq %r(2876), (%r(2668))
	movq $8, %r13		# movq $8, %r(2837)
	movq %r14, %r12		# movq %r(2668), %r(2877)
	movq %r12, -96(%rbp)		# movq %r(2877), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(2878)
	addq %r13, %rbx		# addq %r(2837), %r(2878)
	movq %rbx, -96(%rbp)		# movq %r(2878), -96(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(2879)
	movq %r13, %rbx		# movq %r(2879), %r(2880)
	movq %rbx, -88(%rbp)		# movq %r(2880), -88(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(2839)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2881)
	cmpq %rbx, %r12		# cmpq %r(2839), %r(2881)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2882)
	decq %rbx		# decq %r(2882)
	movq %rbx, -24(%rbp)		# movq %r(2882), -24(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2883)
	movq %rbx, %rdi		# movq %r(2883), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(2884)
	movq %rbx, -16(%rbp)		# movq %r(2884), -16(%rbp)
	movq $8, %r13		# movq $8, %r(2840)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(2885)
	movq %r14, %rbx		# movq %r(2885), %r(2886)
	movq %rbx, -56(%rbp)		# movq %r(2886), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2887)
	subq %r13, %rbx		# subq %r(2840), %r(2887)
	movq %rbx, -56(%rbp)		# movq %r(2887), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(2888)
	movq (%rbx), %r12		# movq (%r(2888)), %r(2842)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2889)
	cmpq %r12, %rbx		# cmpq %r(2842), %r(2889)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2890)
	movq %r12, %r14		# movq %r(2890), %r(2843)
	salq $3, %r14		# salq $3, %r(2843)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(2891)
	movq %r13, %rbx		# movq %r(2891), %r(2892)
	movq %rbx, -64(%rbp)		# movq %r(2892), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2893)
	addq %r14, %rbx		# addq %r(2843), %r(2893)
	movq %rbx, -64(%rbp)		# movq %r(2893), -64(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2894)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(2895)
	movq %rbx, (%r12)		# movq %r(2894), (%r(2895))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(2896)
	movq %rbx, %rax		# movq %r(2896), %rax
	jmp .L71		# jmp .L71
	
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
	movq %rdi, %rbx		# movq %rdi, %r(2912)
	movq %rbx, -24(%rbp)		# movq %r(2912), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2913)
	movq (%rbx), %r13		# movq (%r(2913)), %r(2900)
	movq %r13, %r12		# movq %r(2900), %r(2914)
	movq %r12, -16(%rbp)		# movq %r(2914), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2915)
	movq %r12, %r13		# movq %r(2915), %r(2901)
	salq $3, %r13		# salq $3, %r(2901)
	movq $8, %rbx		# movq $8, %r(2902)
	movq %r13, %r14		# movq %r(2901), %r(2903)
	addq %rbx, %r14		# addq %r(2902), %r(2903)
	movq %r14, %rdi		# movq %r(2903), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2670)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2916)
	movq %r13, %rbx		# movq %r(2916), %r(2904)
	salq $3, %rbx		# salq $3, %r(2904)
	movq %r15, %r13		# movq %r(2670), %r(2905)
	addq %rbx, %r13		# addq %r(2904), %r(2905)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2917)
	movq %rbx, %r12		# movq %r(2917), %r(2906)
	salq $3, %r12		# salq $3, %r(2906)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2918)
	movq %rbx, %r14		# movq %r(2918), %r(2919)
	movq %r14, -8(%rbp)		# movq %r(2919), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2920)
	addq %r12, %rbx		# addq %r(2906), %r(2920)
	movq %rbx, -8(%rbp)		# movq %r(2920), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2921)
	movq (%rbx), %r12		# movq (%r(2921)), %r(2908)
	movq %r12, (%r13)		# movq %r(2908), (%r(2905))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2922)
	decq %rbx		# decq %r(2922)
	movq %rbx, -16(%rbp)		# movq %r(2922), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(2909)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2923)
	cmpq %rbx, %r12		# cmpq %r(2909), %r(2923)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2910)
	movq %r15, %r13		# movq %r(2670), %r(2911)
	addq %rbx, %r13		# addq %r(2910), %r(2911)
	movq %r13, %rax		# movq %r(2911), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
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
.L570:
	.quad 2
	.quad 35
	.quad 53
	.text

#.section .rodata
.align 8
.L560:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L555:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L543:
	.quad 8
	.quad 84
	.quad 101
	.quad 115
	.quad 116
	.quad 105
	.quad 110
	.quad 103
	.quad 58
	.text

#.section .rodata
.align 8
.L546:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L573:
	.quad 2
	.quad 35
	.quad 54
	.text

#.section .rodata
.align 8
.L565:
	.quad 2
	.quad 35
	.quad 52
	.text

error_outofbounds:
call _I_outOfBounds_p
