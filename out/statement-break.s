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
	leaq .L508(%rip), %rdi		# leaq .L508(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2567)
	movq %r13, %rdi		# movq %r(2567), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L507		# jmp .L507
	.L507:		# .L507:
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
	movq $0, %r12		# movq $0, %r(2579)
	movq %r12, %r15		# movq %r(2579), %r(c)
	jmp .L510		# jmp .L510
	.L510:		# .L510:
	movq $10, %rbx		# movq $10, %r(2580)
	cmpq %rbx, %r15		# cmpq %r(2580), %r(c)
	jge .L512		# jge .L512
	.L511:		# .L511:
	movq $5, %rbx		# movq $5, %r(2581)
	cmpq %rbx, %r15		# cmpq %r(2581), %r(c)
	jne .L514		# jne .L514
	.L513:		# .L513:
	jmp .L512		# jmp .L512
	.L512:		# .L512:
	leaq .L515(%rip), %rdi		# leaq .L515(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2571)
	movq $1, %r12		# movq $1, %r(2583)
	movq %r12, %r14		# movq %r(2583), %r(2563)
	movq $5, %r12		# movq $5, %r(2584)
	cmpq %r12, %r15		# cmpq %r(2584), %r(c)
	je .L516		# je .L516
	.L517:		# .L517:
	movq $0, %r12		# movq $0, %r(2585)
	movq %r12, %r14		# movq %r(2585), %r(2563)
	jmp .L516		# jmp .L516
	.L516:		# .L516:
	movq %rbx, %rdi		# movq %r(2571), %rdi
	movq %r14, %rsi		# movq %r(2563), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r12		# movq $0, %r(2586)
	movq %r12, %r14		# movq %r(2586), %r(d)
	movq $0, %r12		# movq $0, %r(2587)
	movq %r12, %r15		# movq %r(2587), %r(c)
	jmp .L518		# jmp .L518
	.L518:		# .L518:
	movq $10, %rbx		# movq $10, %r(2588)
	cmpq %rbx, %r15		# cmpq %r(2588), %r(c)
	jge .L520		# jge .L520
	.L519:		# .L519:
	jmp .L521		# jmp .L521
	.L521:		# .L521:
	movq $10, %rbx		# movq $10, %r(2589)
	cmpq %rbx, %r14		# cmpq %r(2589), %r(d)
	jge .L523		# jge .L523
	.L522:		# .L522:
	movq $5, %rbx		# movq $5, %r(2590)
	cmpq %rbx, %r14		# cmpq %r(2590), %r(d)
	jne .L525		# jne .L525
	.L524:		# .L524:
	jmp .L523		# jmp .L523
	.L523:		# .L523:
	incq %r15		# incq %r(c)
	jmp .L518		# jmp .L518
	.L525:		# .L525:
	incq %r14		# incq %r(d)
	jmp .L521		# jmp .L521
	.L520:		# .L520:
	leaq .L526(%rip), %rdi		# leaq .L526(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2573)
	movq $1, %rbx		# movq $1, %r(2592)
	movq %rbx, %r13		# movq %r(2592), %r(2565)
	movq $5, %rbx		# movq $5, %r(2593)
	cmpq %rbx, %r14		# cmpq %r(2593), %r(d)
	je .L527		# je .L527
	.L528:		# .L528:
	movq $0, %rbx		# movq $0, %r(2594)
	movq %rbx, %r13		# movq %r(2594), %r(2565)
	jmp .L527		# jmp .L527
	.L527:		# .L527:
	movq %r12, %rdi		# movq %r(2573), %rdi
	movq %r13, %rsi		# movq %r(2565), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L529(%rip), %rdi		# leaq .L529(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(2575)
	movq $1, %rbx		# movq $1, %r(2596)
	movq %rbx, %r12		# movq %r(2596), %r(2566)
	movq $10, %rbx		# movq $10, %r(2597)
	cmpq %rbx, %r15		# cmpq %r(2597), %r(c)
	je .L530		# je .L530
	.L531:		# .L531:
	movq $0, %rbx		# movq $0, %r(2598)
	movq %rbx, %r12		# movq %r(2598), %r(2566)
	jmp .L530		# jmp .L530
	.L530:		# .L530:
	movq %r14, %rdi		# movq %r(2575), %rdi
	movq %r12, %rsi		# movq %r(2566), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L509		# jmp .L509
	.L509:		# .L509:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L514:		# .L514:
	incq %r15		# incq %r(c)
	jmp .L510		# jmp .L510
	
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
	movq %rdi, %rbx		# movq %rdi, %r(2611)
	movq %rbx, -24(%rbp)		# movq %r(2611), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2612)
	movq (%rbx), %r13		# movq (%r(2612)), %r(2599)
	movq %r13, %r12		# movq %r(2599), %r(2613)
	movq %r12, -8(%rbp)		# movq %r(2613), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2614)
	movq %r12, %r13		# movq %r(2614), %r(2600)
	salq $3, %r13		# salq $3, %r(2600)
	movq $8, %rbx		# movq $8, %r(2601)
	movq %r13, %r14		# movq %r(2600), %r(2602)
	addq %rbx, %r14		# addq %r(2601), %r(2602)
	movq %r14, %rdi		# movq %r(2602), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2577)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2615)
	movq %r13, %rbx		# movq %r(2615), %r(2603)
	salq $3, %rbx		# salq $3, %r(2603)
	movq %r15, %r13		# movq %r(2577), %r(2604)
	addq %rbx, %r13		# addq %r(2603), %r(2604)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2616)
	movq %rbx, %r12		# movq %r(2616), %r(2605)
	salq $3, %r12		# salq $3, %r(2605)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2617)
	movq %rbx, %r14		# movq %r(2617), %r(2618)
	movq %r14, -16(%rbp)		# movq %r(2618), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2619)
	addq %r12, %rbx		# addq %r(2605), %r(2619)
	movq %rbx, -16(%rbp)		# movq %r(2619), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2620)
	movq (%rbx), %r12		# movq (%r(2620)), %r(2607)
	movq %r12, (%r13)		# movq %r(2607), (%r(2604))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2621)
	decq %rbx		# decq %r(2621)
	movq %rbx, -8(%rbp)		# movq %r(2621), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(2608)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2622)
	cmpq %rbx, %r12		# cmpq %r(2608), %r(2622)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2609)
	movq %r15, %r13		# movq %r(2577), %r(2610)
	addq %rbx, %r13		# addq %r(2609), %r(2610)
	movq %r13, %rax		# movq %r(2610), %rax
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
.L526:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L529:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L515:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L508:
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

