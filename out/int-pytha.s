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
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %r13, %rbx		# movq %r(a), %r(2469)
	imulq %r13, %rbx		# imulq %r(a), %r(2469)
	movq %rbx, %rax		# movq %r(2469), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq %rbx, %rdi		# movq %r(a), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r14		# movq %rax, %r(2454)
	movq %r12, %rdi		# movq %r(b), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r12		# movq %rax, %r(2455)
	addq %r12, %r14		# addq %r(2455), %r(2470)
	movq $0, %r12		# movq $0, %r(2471)
	jmp .L486		# jmp .L486
	.L486:		# .L486:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(2456)
	cmpq %r14, %r13		# cmpq %r(goal), %r(2456)
	jge .L488		# jge .L488
	.L487:		# .L487:
	incq %r12		# incq %r(h)
	jmp .L486		# jmp .L486
	.L488:		# .L488:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(2457)
	cmpq %r14, %r13		# cmpq %r(goal), %r(2457)
	jne .L490		# jne .L490
	.L489:		# .L489:
	movq %r12, %rax		# movq %r(h), %rax
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
	movq $1, %rbx		# movq $1, %r(2472)
	movq %r12, %r14		# movq %r(h), %r(2473)
	subq %rbx, %r14		# subq %r(2472), %r(2473)
	movq %r14, %rax		# movq %r(2473), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L493(%rip), %rdi		# leaq .L493(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2458)
	movq %r13, %rdi		# movq %r(2458), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L495(%rip), %rdi		# leaq .L495(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(2462)
	movq $1, %rbx		# movq $1, %r(2476)
	movq %rbx, %r12		# movq %r(2476), %r(2452)
	movq $3, %rbx		# movq $3, %r(2477)
	movq $4, %r13		# movq $4, %r(2478)
	movq %rbx, %rdi		# movq %r(2477), %rdi
	movq %r13, %rsi		# movq %r(2478), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(2463)
	movq $5, %r13		# movq $5, %r(2479)
	cmpq %r13, %rbx		# cmpq %r(2479), %r(2463)
	je .L496		# je .L496
	.L497:		# .L497:
	movq $0, %rbx		# movq $0, %r(2480)
	movq %rbx, %r12		# movq %r(2480), %r(2452)
	jmp .L496		# jmp .L496
	.L496:		# .L496:
	movq %r14, %rdi		# movq %r(2462), %rdi
	movq %r12, %rsi		# movq %r(2452), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L498(%rip), %rdi		# leaq .L498(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(2465)
	movq $1, %rbx		# movq $1, %r(2482)
	movq %rbx, %r12		# movq %r(2482), %r(2453)
	movq $21, %rbx		# movq $21, %r(2483)
	movq $15, %r13		# movq $15, %r(2484)
	movq %rbx, %rdi		# movq %r(2483), %rdi
	movq %r13, %rsi		# movq %r(2484), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(2466)
	movq $25, %r13		# movq $25, %r(2485)
	cmpq %r13, %rbx		# cmpq %r(2485), %r(2466)
	je .L499		# je .L499
	.L500:		# .L500:
	movq $0, %rbx		# movq $0, %r(2486)
	movq %rbx, %r12		# movq %r(2486), %r(2453)
	jmp .L499		# jmp .L499
	.L499:		# .L499:
	movq %r14, %rdi		# movq %r(2465), %rdi
	movq %r12, %rsi		# movq %r(2453), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(2499)
	movq %rbx, -16(%rbp)		# movq %r(2499), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2500)
	movq (%rbx), %rbx		# movq (%r(2500)), %r(2487)
	movq %rbx, %r14		# movq %r(2487), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(2488)
	salq $3, %rbx		# salq $3, %r(2488)
	movq $8, %r12		# movq $8, %r(2489)
	addq %r12, %rbx		# addq %r(2489), %r(2490)
	movq %rbx, %rdi		# movq %r(2490), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(2468)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(2491)
	salq $3, %rbx		# salq $3, %r(2491)
	movq %r12, %r13		# movq %r(2468), %r(2492)
	addq %rbx, %r13		# addq %r(2491), %r(2492)
	movq %r14, %r15		# movq %r(t10), %r(2493)
	salq $3, %r15		# salq $3, %r(2493)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2501)
	movq %rbx, -8(%rbp)		# movq %r(2502), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2503)
	addq %r15, %rbx		# addq %r(2493), %r(2503)
	movq %rbx, -8(%rbp)		# movq %r(2503), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2504)
	movq (%rbx), %rbx		# movq (%r(2504)), %r(2495)
	movq %rbx, (%r13)		# movq %r(2495), (%r(2492))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(2496)
	cmpq %rbx, %r14		# cmpq %r(2496), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(2497)
	addq %rbx, %r12		# addq %r(2497), %r(2498)
	movq %r12, %rax		# movq %r(2498), %rax
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

#.section .rodata
.align 8
.L495:
	.quad 2
	.quad 35
	.quad 49
	.text

