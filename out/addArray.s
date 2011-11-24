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
	movq $32, %rbx		# movq $32, %r(2738)
	movq %rbx, %rdi		# movq %r(2738), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2728)
	movq $3, %r12		# movq $3, %r(2739)
	movq %r12, (%r14)		# movq %r(2739), (%r(2728))
	movq $8, %r12		# movq $8, %r(2740)
	addq %r12, %r14		# addq %r(2740), %r(2741)
	movq $0, %r12		# movq $0, %r(2742)
	movq %r14, %rbx		# movq %r(2721), %r(2743)
	addq %r12, %rbx		# addq %r(2742), %r(2743)
	movq $65, %r12		# movq $65, %r(2744)
	movq %r12, (%rbx)		# movq %r(2744), (%r(2743))
	movq $8, %r12		# movq $8, %r(2745)
	movq %r14, %rbx		# movq %r(2721), %r(2746)
	addq %r12, %rbx		# addq %r(2745), %r(2746)
	movq $66, %r12		# movq $66, %r(2747)
	movq %r12, (%rbx)		# movq %r(2747), (%r(2746))
	movq $16, %r12		# movq $16, %r(2748)
	movq %r14, %rbx		# movq %r(2721), %r(2749)
	addq %r12, %rbx		# addq %r(2748), %r(2749)
	movq $67, %r12		# movq $67, %r(2750)
	movq %r12, (%rbx)		# movq %r(2750), (%r(2749))
	leaq .L590(%rip), %rdi		# leaq .L590(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2729)
	movq %r12, %rdi		# movq %r(2729), %rdi
	movq %r14, %rsi		# movq %r(2721), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(2730)
	movq $32, %rbx		# movq $32, %r(2752)
	movq %rbx, %rdi		# movq %r(2752), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2731)
	movq $3, %rbx		# movq $3, %r(2753)
	movq %rbx, (%r13)		# movq %r(2753), (%r(2731))
	movq $8, %rbx		# movq $8, %r(2754)
	addq %rbx, %r13		# addq %r(2754), %r(2755)
	movq %r13, %r15		# movq %r(2755), %r(2724)
	movq $0, %rbx		# movq $0, %r(2756)
	movq %r15, %r13		# movq %r(2724), %r(2757)
	addq %rbx, %r13		# addq %r(2756), %r(2757)
	movq $70, %rbx		# movq $70, %r(2758)
	movq %rbx, (%r13)		# movq %r(2758), (%r(2757))
	movq $8, %rbx		# movq $8, %r(2759)
	movq %r15, %r13		# movq %r(2724), %r(2760)
	addq %rbx, %r13		# addq %r(2759), %r(2760)
	movq $71, %rbx		# movq $71, %r(2761)
	movq %rbx, (%r13)		# movq %r(2761), (%r(2760))
	movq $16, %rbx		# movq $16, %r(2762)
	movq %r15, %r12		# movq %r(2724), %r(2763)
	addq %rbx, %r12		# addq %r(2762), %r(2763)
	movq $72, %rbx		# movq $72, %r(2764)
	movq %rbx, (%r12)		# movq %r(2764), (%r(2763))
	movq %r14, %rdi		# movq %r(2730), %rdi
	movq %r15, %rsi		# movq %r(2724), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(2732)
	movq $32, %rbx		# movq $32, %r(2765)
	movq %rbx, %rdi		# movq %r(2765), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2733)
	movq $3, %rbx		# movq $3, %r(2766)
	movq %rbx, (%r13)		# movq %r(2766), (%r(2733))
	movq $8, %rbx		# movq $8, %r(2767)
	addq %rbx, %r13		# addq %r(2767), %r(2768)
	movq %r13, %r15		# movq %r(2768), %r(2726)
	movq $0, %rbx		# movq $0, %r(2769)
	movq %r15, %r13		# movq %r(2726), %r(2770)
	addq %rbx, %r13		# addq %r(2769), %r(2770)
	movq $73, %rbx		# movq $73, %r(2771)
	movq %rbx, (%r13)		# movq %r(2771), (%r(2770))
	movq $8, %rbx		# movq $8, %r(2772)
	movq %r15, %r13		# movq %r(2726), %r(2773)
	addq %rbx, %r13		# addq %r(2772), %r(2773)
	movq $74, %rbx		# movq $74, %r(2774)
	movq %rbx, (%r13)		# movq %r(2774), (%r(2773))
	movq $16, %rbx		# movq $16, %r(2775)
	movq %r15, %r12		# movq %r(2726), %r(2776)
	addq %rbx, %r12		# addq %r(2775), %r(2776)
	movq $75, %rbx		# movq $75, %r(2777)
	movq %rbx, (%r12)		# movq %r(2777), (%r(2776))
	movq %r14, %rdi		# movq %r(2732), %rdi
	movq %r15, %rsi		# movq %r(2726), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(2734)
	movq %rbx, %rdi		# movq %r(2734), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L589		# jmp .L589
	.L589:		# .L589:
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
	movq %rdi, %rbx		# movq %rdi, %r(2790)
	movq %rbx, -16(%rbp)		# movq %r(2790), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2791)
	movq (%rbx), %rbx		# movq (%r(2791)), %r(2778)
	movq %rbx, %r14		# movq %r(2778), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(2779)
	salq $3, %rbx		# salq $3, %r(2779)
	movq $8, %r12		# movq $8, %r(2780)
	addq %r12, %rbx		# addq %r(2780), %r(2781)
	movq %rbx, %rdi		# movq %r(2781), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(2736)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(2782)
	salq $3, %rbx		# salq $3, %r(2782)
	movq %r12, %r13		# movq %r(2736), %r(2783)
	addq %rbx, %r13		# addq %r(2782), %r(2783)
	movq %r14, %r15		# movq %r(t10), %r(2784)
	salq $3, %r15		# salq $3, %r(2784)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2792)
	movq %rbx, -8(%rbp)		# movq %r(2793), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2794)
	addq %r15, %rbx		# addq %r(2784), %r(2794)
	movq %rbx, -8(%rbp)		# movq %r(2794), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2795)
	movq (%rbx), %rbx		# movq (%r(2795)), %r(2786)
	movq %rbx, (%r13)		# movq %r(2786), (%r(2783))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(2787)
	cmpq %rbx, %r14		# cmpq %r(2787), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2788)
	addq %rbx, %r12		# addq %r(2788), %r(2789)
	movq %r12, %rax		# movq %r(2789), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(2819)
	movq %rbx, -48(%rbp)		# movq %r(2819), -48(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2820)
	movq %rbx, -72(%rbp)		# movq %r(2820), -72(%rbp)
	movq $0, %r12		# movq $0, %r(2796)
	movq %r12, -16(%rbp)		# movq %r(2821), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(2797)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(2822)
	subq %rbx, %r13		# subq %r(2797), %r(2798)
	movq (%r13), %r12		# movq (%r(2798)), %r(2799)
	movq %r12, -56(%rbp)		# movq %r(2823), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(2800)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(2824)
	subq %rbx, %r13		# subq %r(2800), %r(2801)
	movq (%r13), %rbx		# movq (%r(2801)), %r(2802)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2825)
	addq %rbx, %r12		# addq %r(2802), %r(2803)
	movq %r12, -8(%rbp)		# movq %r(2826), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(2804)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2827)
	addq %rbx, %r13		# addq %r(2804), %r(2805)
	movq %r13, %rdi		# movq %r(2805), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(2737)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2828)
	movq %r12, (%rbx)		# movq %r(2828), (%r(2737))
	movq $8, %r12		# movq $8, %r(2806)
	addq %r12, %rbx		# addq %r(2806), %r(2807)
	movq %rbx, -64(%rbp)		# movq %r(2829), -64(%rbp)
	jmp .L158		# jmp .L158
	.L158:		# .L158:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2830)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(2831)
	cmpq %r12, %rbx		# cmpq %r(2831), %r(2830)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2832)
	salq $3, %r13		# salq $3, %r(2808)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2833)
	movq %rbx, -40(%rbp)		# movq %r(2834), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2835)
	addq %r13, %r12		# addq %r(2808), %r(2835)
	movq %r12, -40(%rbp)		# movq %r(2835), -40(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2836)
	salq $3, %r13		# salq $3, %r(2810)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(2837)
	movq %rbx, -32(%rbp)		# movq %r(2838), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2839)
	addq %r13, %r12		# addq %r(2810), %r(2839)
	movq %r12, -32(%rbp)		# movq %r(2839), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2840)
	movq (%rbx), %rbx		# movq (%r(2840)), %r(2812)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2841)
	movq %rbx, (%r12)		# movq %r(2812), (%r(2841))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2842)
	incq %rbx		# incq %r(2842)
	movq %rbx, -16(%rbp)		# movq %r(2842), -16(%rbp)
	jmp .L158		# jmp .L158
	.L160:		# .L160:
	jmp .L161		# jmp .L161
	.L161:		# .L161:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2843)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2844)
	cmpq %rbx, %r12		# cmpq %r(2843), %r(2844)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2845)
	salq $3, %r13		# salq $3, %r(2813)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(2846)
	addq %r13, %r14		# addq %r(2813), %r(2814)
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(2847)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(2848)
	subq %r13, %r15		# subq %r(2848), %r(2815)
	salq $3, %r15		# salq $3, %r(2816)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(2849)
	movq %rbx, -24(%rbp)		# movq %r(2850), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(2851)
	addq %r15, %r13		# addq %r(2816), %r(2851)
	movq %r13, -24(%rbp)		# movq %r(2851), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2852)
	movq (%rbx), %rbx		# movq (%r(2852)), %r(2818)
	movq %rbx, (%r14)		# movq %r(2818), (%r(2814))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2853)
	incq %rbx		# incq %r(2853)
	movq %rbx, -16(%rbp)		# movq %r(2853), -16(%rbp)
	jmp .L161		# jmp .L161
	.L163:		# .L163:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(2854)
	movq %rbx, %rax		# movq %r(2854), %rax
	jmp .L164		# jmp .L164
	.L164:		# .L164:
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
.L590:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

