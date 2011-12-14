.att_syntax prefix
.text
.globl _Isqr_ii
_Isqr_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(2668)
	movq %r13, %rbx		# movq %r(2668), %r(2693)
	imulq %r13, %rbx		# imulq %r(2668), %r(2693)
	movq %rbx, %rax		# movq %r(2693), %rax
	jmp .L484		# jmp .L484
	.L484:		# .L484:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ihypo_iii
_Ihypo_iii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2669)
	movq %rsi, %r12		# movq %rsi, %r(2670)
	movq %rbx, %rdi		# movq %r(2669), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r14		# movq %rax, %r(2678)
	movq %r12, %rdi		# movq %r(2670), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %rbx		# movq %rax, %r(2679)
	movq %r14, %r12		# movq %r(2678), %r(2694)
	addq %rbx, %r12		# addq %r(2679), %r(2694)
	movq %r12, %r15		# movq %r(2694), %r(2671)
	movq $0, %r12		# movq $0, %r(2695)
	movq %r12, %r14		# movq %r(2695), %r(2672)
	jmp .L486		# jmp .L486
	.L486:		# .L486:
	movq %r14, %rdi		# movq %r(2672), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %rbx		# movq %rax, %r(2680)
	cmpq %r15, %rbx		# cmpq %r(2671), %r(2680)
	jge .L488		# jge .L488
	.L487:		# .L487:
	incq %r14		# incq %r(2672)
	jmp .L486		# jmp .L486
	.L488:		# .L488:
	movq %r14, %rdi		# movq %r(2672), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %rbx		# movq %rax, %r(2681)
	cmpq %r15, %rbx		# cmpq %r(2671), %r(2681)
	jne .L490		# jne .L490
	.L489:		# .L489:
	movq %r14, %rax		# movq %r(2672), %rax
	jmp .L485		# jmp .L485
	.L485:		# .L485:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L490:		# .L490:
	movq $1, %rbx		# movq $1, %r(2696)
	movq %r14, %r13		# movq %r(2672), %r(2697)
	subq %rbx, %r13		# subq %r(2696), %r(2697)
	movq %r13, %rax		# movq %r(2697), %rax
	jmp .L485		# jmp .L485
	
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
	movq %rdi, %rbx		# movq %rdi, %r(2673)
	movq %rsi, %r12		# movq %rsi, %r(2674)
	leaq .L493(%rip), %rdi		# leaq .L493(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2682)
	movq %r13, %rdi		# movq %r(2682), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(2673), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(2674), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L492		# jmp .L492
	.L492:		# .L492:
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2675)
	leaq .L495(%rip), %rdi		# leaq .L495(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2686)
	movq $1, %r12		# movq $1, %r(2700)
	movq %r12, %rbx		# movq %r(2700), %r(2676)
	movq $3, %r12		# movq $3, %r(2701)
	movq $4, %r14		# movq $4, %r(2702)
	movq %r12, %rdi		# movq %r(2701), %rdi
	movq %r14, %rsi		# movq %r(2702), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %r12		# movq %rax, %r(2687)
	movq $5, %r14		# movq $5, %r(2703)
	cmpq %r14, %r12		# cmpq %r(2703), %r(2687)
	je .L496		# je .L496
	.L497:		# .L497:
	movq $0, %r12		# movq $0, %r(2704)
	movq %r12, %rbx		# movq %r(2704), %r(2676)
	jmp .L496		# jmp .L496
	.L496:		# .L496:
	movq %r13, %rdi		# movq %r(2686), %rdi
	movq %rbx, %rsi		# movq %r(2676), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L498(%rip), %rdi		# leaq .L498(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2689)
	movq $1, %r12		# movq $1, %r(2706)
	movq %r12, %rbx		# movq %r(2706), %r(2677)
	movq $21, %r12		# movq $21, %r(2707)
	movq $15, %r14		# movq $15, %r(2708)
	movq %r12, %rdi		# movq %r(2707), %rdi
	movq %r14, %rsi		# movq %r(2708), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %r12		# movq %rax, %r(2690)
	movq $25, %r14		# movq $25, %r(2709)
	cmpq %r14, %r12		# cmpq %r(2709), %r(2690)
	je .L499		# je .L499
	.L500:		# .L500:
	movq $0, %r12		# movq $0, %r(2710)
	movq %r12, %rbx		# movq %r(2710), %r(2677)
	jmp .L499		# jmp .L499
	.L499:		# .L499:
	movq %r13, %rdi		# movq %r(2689), %rdi
	movq %rbx, %rsi		# movq %r(2677), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L494		# jmp .L494
	.L494:		# .L494:
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
	movq %rdi, %rbx		# movq %rdi, %r(2723)
	movq %rbx, -24(%rbp)		# movq %r(2723), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2724)
	movq (%rbx), %r13		# movq (%r(2724)), %r(2711)
	movq %r13, %r12		# movq %r(2711), %r(2725)
	movq %r12, -8(%rbp)		# movq %r(2725), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2726)
	movq %r12, %r13		# movq %r(2726), %r(2712)
	salq $3, %r13		# salq $3, %r(2712)
	movq $8, %rbx		# movq $8, %r(2713)
	movq %r13, %r14		# movq %r(2712), %r(2714)
	addq %rbx, %r14		# addq %r(2713), %r(2714)
	movq %r14, %rdi		# movq %r(2714), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2692)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2727)
	movq %r13, %rbx		# movq %r(2727), %r(2715)
	salq $3, %rbx		# salq $3, %r(2715)
	movq %r15, %r13		# movq %r(2692), %r(2716)
	addq %rbx, %r13		# addq %r(2715), %r(2716)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2728)
	movq %rbx, %r12		# movq %r(2728), %r(2717)
	salq $3, %r12		# salq $3, %r(2717)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2729)
	movq %rbx, %r14		# movq %r(2729), %r(2730)
	movq %r14, -16(%rbp)		# movq %r(2730), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2731)
	addq %r12, %rbx		# addq %r(2717), %r(2731)
	movq %rbx, -16(%rbp)		# movq %r(2731), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2732)
	movq (%rbx), %r12		# movq (%r(2732)), %r(2719)
	movq %r12, (%r13)		# movq %r(2719), (%r(2716))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2733)
	decq %rbx		# decq %r(2733)
	movq %rbx, -8(%rbp)		# movq %r(2733), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(2720)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2734)
	cmpq %rbx, %r12		# cmpq %r(2720), %r(2734)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(2721)
	movq %r15, %r13		# movq %r(2692), %r(2722)
	addq %rbx, %r13		# addq %r(2721), %r(2722)
	movq %r13, %rax		# movq %r(2722), %rax
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
	
#.section .rodata
.align 8
.L498:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L495:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L493:
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

