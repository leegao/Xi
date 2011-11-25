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
	leaq .L481(%rip), %rdi		# leaq .L481(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2484)
	movq %r13, %rdi		# movq %r(2484), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L480		# jmp .L480
	.L480:		# .L480:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L483(%rip), %rdi		# leaq .L483(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2524)
	movq %rbx, -32(%rbp)		# movq %r(2524), -32(%rbp)
	leaq .L484(%rip), %rdi		# leaq .L484(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2489)
	movq $16, %rbx		# movq $16, %r(2506)
	movq %rbx, %rdi		# movq %r(2506), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2490)
	movq %r15, %r13		# movq %r(2490), %r(2473)
	movq %r13, %rdi		# movq %r(2473), %rdi
	movq %r12, %rsi		# movq %r(2489), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r15), %r14		# movq 0(%r(2490)), %r(n)
	movq 8(%r15), %rbx		# movq 8(%r(2490)), %r(2525)
	movq %rbx, -8(%rbp)		# movq %r(2525), -8(%rbp)
	leaq .L485(%rip), %rdi		# leaq .L485(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2526)
	movq %rbx, -16(%rbp)		# movq %r(2526), -16(%rbp)
	movq $1, %r13		# movq $1, %r(2508)
	movq %r13, %rbx		# movq %r(2508), %r(2527)
	movq %rbx, -24(%rbp)		# movq %r(2527), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(2509)
	cmpq %rbx, %r14		# cmpq %r(2509), %r(n)
	je .L486		# je .L486
	.L487:		# .L487:
	movq $0, %r13		# movq $0, %r(2510)
	movq %r13, %rbx		# movq %r(2510), %r(2528)
	movq %rbx, -24(%rbp)		# movq %r(2528), -24(%rbp)
	jmp .L486		# jmp .L486
	.L486:		# .L486:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2529)
	movq %rbx, %rdi		# movq %r(2529), %rdi
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2530)
	movq %rbx, %rsi		# movq %r(2530), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L488(%rip), %rdi		# leaq .L488(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2494)
	movq $1, %r12		# movq $1, %r(2512)
	movq %r12, %r15		# movq %r(2512), %r(2477)
	movq $0, %rbx		# movq $0, %r(2513)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2531)
	cmpq %rbx, %r12		# cmpq %r(2513), %r(2531)
	je .L489		# je .L489
	.L490:		# .L490:
	movq $0, %r12		# movq $0, %r(2514)
	movq %r12, %r15		# movq %r(2514), %r(2477)
	jmp .L489		# jmp .L489
	.L489:		# .L489:
	movq %r13, %rdi		# movq %r(2494), %rdi
	movq %r15, %rsi		# movq %r(2477), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $16, %rbx		# movq $16, %r(2515)
	movq %rbx, %rdi		# movq %r(2515), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2496)
	movq %r13, %r12		# movq %r(2496), %r(2479)
	movq %r12, %rdi		# movq %r(2479), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(2532)
	movq %rbx, %rsi		# movq %r(2532), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r13), %r14		# movq 0(%r(2496)), %r(n2)
	movq 8(%r13), %rbx		# movq 8(%r(2496)), %r(2533)
	movq %rbx, -40(%rbp)		# movq %r(2533), -40(%rbp)
	leaq .L491(%rip), %rdi		# leaq .L491(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2498)
	movq $1, %r12		# movq $1, %r(2517)
	movq %r12, %r13		# movq %r(2517), %r(2482)
	movq $42, %r12		# movq $42, %r(2518)
	cmpq %r12, %r14		# cmpq %r(2518), %r(n2)
	je .L492		# je .L492
	.L493:		# .L493:
	movq $0, %r12		# movq $0, %r(2519)
	movq %r12, %r13		# movq %r(2519), %r(2482)
	jmp .L492		# jmp .L492
	.L492:		# .L492:
	movq %rbx, %rdi		# movq %r(2498), %rdi
	movq %r13, %rsi		# movq %r(2482), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L494(%rip), %rdi		# leaq .L494(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2500)
	movq $1, %r12		# movq $1, %r(2521)
	movq %r12, %r15		# movq %r(2521), %r(2483)
	movq $1, %rbx		# movq $1, %r(2522)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(2534)
	cmpq %rbx, %r12		# cmpq %r(2522), %r(2534)
	je .L495		# je .L495
	.L496:		# .L496:
	movq $0, %r12		# movq $0, %r(2523)
	movq %r12, %r15		# movq %r(2523), %r(2483)
	jmp .L495		# jmp .L495
	.L495:		# .L495:
	movq %r13, %rdi		# movq %r(2500), %rdi
	movq %r15, %rsi		# movq %r(2483), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L482		# jmp .L482
	.L482:		# .L482:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(2547)
	movq %rbx, -24(%rbp)		# movq %r(2547), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2548)
	movq (%rbx), %r13		# movq (%r(2548)), %r(2535)
	movq %r13, %r12		# movq %r(2535), %r(2549)
	movq %r12, -8(%rbp)		# movq %r(2549), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2550)
	movq %r12, %r13		# movq %r(2550), %r(2536)
	salq $3, %r13		# salq $3, %r(2536)
	movq $8, %rbx		# movq $8, %r(2537)
	movq %r13, %r14		# movq %r(2536), %r(2538)
	addq %rbx, %r14		# addq %r(2537), %r(2538)
	movq %r14, %rdi		# movq %r(2538), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2502)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2551)
	movq %r13, %rbx		# movq %r(2551), %r(2539)
	salq $3, %rbx		# salq $3, %r(2539)
	movq %r15, %r13		# movq %r(2502), %r(2540)
	addq %rbx, %r13		# addq %r(2539), %r(2540)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2552)
	movq %rbx, %r12		# movq %r(2552), %r(2541)
	salq $3, %r12		# salq $3, %r(2541)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2553)
	movq %rbx, %r14		# movq %r(2553), %r(2554)
	movq %r14, -16(%rbp)		# movq %r(2554), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2555)
	addq %r12, %rbx		# addq %r(2541), %r(2555)
	movq %rbx, -16(%rbp)		# movq %r(2555), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2556)
	movq (%rbx), %r12		# movq (%r(2556)), %r(2543)
	movq %r12, (%r13)		# movq %r(2543), (%r(2540))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2557)
	decq %rbx		# decq %r(2557)
	movq %rbx, -8(%rbp)		# movq %r(2557), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(2544)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2558)
	cmpq %rbx, %r12		# cmpq %r(2544), %r(2558)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2545)
	movq %r15, %r13		# movq %r(2502), %r(2546)
	addq %rbx, %r13		# addq %r(2545), %r(2546)
	movq %r13, %rax		# movq %r(2546), %rax
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
.L494:
	.quad 1
	.quad 51
	.text

#.section .rodata
.align 8
.L483:
	.quad 2
	.quad 52
	.quad 50
	.text

#.section .rodata
.align 8
.L484:
	.quad 2
	.quad 63
	.quad 63
	.text

#.section .rodata
.align 8
.L481:
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
.L491:
	.quad 1
	.quad 50
	.text

#.section .rodata
.align 8
.L488:
	.quad 1
	.quad 49
	.text

#.section .rodata
.align 8
.L485:
	.quad 1
	.quad 48
	.text

