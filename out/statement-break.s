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
	movq %rax, %r13		# movq %rax, %r(2371)
	movq %r13, %rdi		# movq %r(2371), %rdi
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
	movq $0, %rbx		# movq $0, %r(2383)
	movq %rbx, %r14		# movq %r(2383), %r(c)
	jmp .L510		# jmp .L510
	.L510:		# .L510:
	movq $10, %rbx		# movq $10, %r(2384)
	cmpq %rbx, %r14		# cmpq %r(2384), %r(c)
	jge .L512		# jge .L512
	.L511:		# .L511:
	movq $5, %rbx		# movq $5, %r(2385)
	cmpq %rbx, %r14		# cmpq %r(2385), %r(c)
	jne .L514		# jne .L514
	.L513:		# .L513:
	jmp .L512		# jmp .L512
	.L512:		# .L512:
	leaq .L515(%rip), %rdi		# leaq .L515(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2375)
	movq $1, %r15		# movq $1, %r(2387)
	movq $5, %r13		# movq $5, %r(2388)
	cmpq %r13, %r14		# cmpq %r(2388), %r(c)
	je .L516		# je .L516
	.L517:		# .L517:
	movq $0, %r15		# movq $0, %r(2389)
	jmp .L516		# jmp .L516
	.L516:		# .L516:
	movq %r12, %rdi		# movq %r(2375), %rdi
	movq %r15, %rsi		# movq %r(2367), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %rbx		# movq $0, %r(2390)
	movq %rbx, %r13		# movq %r(2390), %r(d)
	movq $0, %rbx		# movq $0, %r(2391)
	movq %rbx, %r14		# movq %r(2391), %r(c)
	jmp .L518		# jmp .L518
	.L518:		# .L518:
	movq $10, %rbx		# movq $10, %r(2392)
	cmpq %rbx, %r14		# cmpq %r(2392), %r(c)
	jge .L520		# jge .L520
	.L519:		# .L519:
	jmp .L521		# jmp .L521
	.L521:		# .L521:
	movq $10, %rbx		# movq $10, %r(2393)
	cmpq %rbx, %r13		# cmpq %r(2393), %r(d)
	jge .L523		# jge .L523
	.L522:		# .L522:
	movq $5, %rbx		# movq $5, %r(2394)
	cmpq %rbx, %r13		# cmpq %r(2394), %r(d)
	jne .L525		# jne .L525
	.L524:		# .L524:
	jmp .L523		# jmp .L523
	.L523:		# .L523:
	incq %r14		# incq %r(c)
	jmp .L518		# jmp .L518
	.L525:		# .L525:
	incq %r13		# incq %r(d)
	jmp .L521		# jmp .L521
	.L520:		# .L520:
	leaq .L526(%rip), %rdi		# leaq .L526(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2377)
	movq $1, %rbx		# movq $1, %r(2396)
	movq $5, %r15		# movq $5, %r(2397)
	cmpq %r15, %r13		# cmpq %r(2397), %r(d)
	je .L527		# je .L527
	.L528:		# .L528:
	movq $0, %rbx		# movq $0, %r(2398)
	jmp .L527		# jmp .L527
	.L527:		# .L527:
	movq %r12, %rdi		# movq %r(2377), %rdi
	movq %rbx, %rsi		# movq %r(2369), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L529(%rip), %rdi		# leaq .L529(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2379)
	movq $1, %r15		# movq $1, %r(2400)
	movq $10, %r13		# movq $10, %r(2401)
	cmpq %r13, %r14		# cmpq %r(2401), %r(c)
	je .L530		# je .L530
	.L531:		# .L531:
	movq $0, %r15		# movq $0, %r(2402)
	jmp .L530		# jmp .L530
	.L530:		# .L530:
	movq %r12, %rdi		# movq %r(2379), %rdi
	movq %r15, %rsi		# movq %r(2370), %rsi
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
	incq %r14		# incq %r(c)
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
	movq %rdi, %rbx		# movq %rdi, %r(2415)
	movq %rbx, -8(%rbp)		# movq %r(2415), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2416)
	movq (%rbx), %rbx		# movq (%r(2416)), %r(2403)
	movq %rbx, %r14		# movq %r(2403), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(2404)
	salq $3, %rbx		# salq $3, %r(2404)
	movq $8, %r12		# movq $8, %r(2405)
	addq %r12, %rbx		# addq %r(2405), %r(2406)
	movq %rbx, %rdi		# movq %r(2406), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(2381)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(2407)
	salq $3, %rbx		# salq $3, %r(2407)
	movq %r12, %r13		# movq %r(2381), %r(2408)
	addq %rbx, %r13		# addq %r(2407), %r(2408)
	movq %r14, %r15		# movq %r(t10), %r(2409)
	salq $3, %r15		# salq $3, %r(2409)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2417)
	movq %rbx, -16(%rbp)		# movq %r(2418), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2419)
	addq %r15, %rbx		# addq %r(2409), %r(2419)
	movq %rbx, -16(%rbp)		# movq %r(2419), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2420)
	movq (%rbx), %rbx		# movq (%r(2420)), %r(2411)
	movq %rbx, (%r13)		# movq %r(2411), (%r(2408))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(2412)
	cmpq %rbx, %r14		# cmpq %r(2412), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2413)
	addq %rbx, %r12		# addq %r(2413), %r(2414)
	movq %r12, %rax		# movq %r(2414), %rax
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
.L529:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L526:
	.quad 2
	.quad 35
	.quad 50
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

