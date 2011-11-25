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
	leaq .L427(%rip), %rdi		# leaq .L427(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2332)
	movq %r13, %rdi		# movq %r(2332), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L426		# jmp .L426
	.L426:		# .L426:
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
	leaq .L429(%rip), %rdi		# leaq .L429(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2336)
	.L430:		# .L430:
	.L432:		# .L432:
	movq $1, %r12		# movq $1, %r(2351)
	movq %rbx, %rdi		# movq %r(2336), %rdi
	movq %r12, %rsi		# movq %r(2351), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L434(%rip), %rdi		# leaq .L434(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2338)
	.L435:		# .L435:
	.L437:		# .L437:
	movq $1, %r12		# movq $1, %r(2353)
	movq %rbx, %rdi		# movq %r(2338), %rdi
	movq %r12, %rsi		# movq %r(2353), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L439(%rip), %rdi		# leaq .L439(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2340)
	movq $1, %r12		# movq $1, %r(2355)
	movq %r12, %r13		# movq %r(2355), %r(2327)
	.L441:		# .L441:
	movq $0, %r12		# movq $0, %r(2356)
	movq %r12, %r14		# movq %r(2356), %r(2326)
	jmp .L440		# jmp .L440
	.L440:		# .L440:
	movq $0, %r12		# movq $0, %r(2357)
	cmpq %r12, %r14		# cmpq %r(2357), %r(2326)
	je .L442		# je .L442
	.L443:		# .L443:
	movq $0, %r12		# movq $0, %r(2358)
	movq %r12, %r13		# movq %r(2358), %r(2327)
	jmp .L442		# jmp .L442
	.L442:		# .L442:
	movq %rbx, %rdi		# movq %r(2340), %rdi
	movq %r13, %rsi		# movq %r(2327), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L444(%rip), %rdi		# leaq .L444(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2342)
	movq $1, %r12		# movq $1, %r(2360)
	movq %r12, %r13		# movq %r(2360), %r(2329)
	.L446:		# .L446:
	movq $0, %r12		# movq $0, %r(2361)
	movq %r12, %r14		# movq %r(2361), %r(2328)
	jmp .L445		# jmp .L445
	.L445:		# .L445:
	movq $0, %r12		# movq $0, %r(2362)
	cmpq %r12, %r14		# cmpq %r(2362), %r(2328)
	je .L447		# je .L447
	.L448:		# .L448:
	movq $0, %r12		# movq $0, %r(2363)
	movq %r12, %r13		# movq %r(2363), %r(2329)
	jmp .L447		# jmp .L447
	.L447:		# .L447:
	movq %rbx, %rdi		# movq %r(2342), %rdi
	movq %r13, %rsi		# movq %r(2329), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L449(%rip), %rdi		# leaq .L449(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2344)
	.L451:		# .L451:
	movq $0, %r12		# movq $0, %r(2365)
	movq %r12, %r15		# movq %r(2365), %r(2330)
	jmp .L450		# jmp .L450
	.L450:		# .L450:
	movq $1, %r12		# movq $1, %r(2366)
	movq %r15, %r13		# movq %r(2330), %r(2367)
	xorq %r12, %r13		# xorq %r(2366), %r(2367)
	movq %rbx, %rdi		# movq %r(2344), %rdi
	movq %r13, %rsi		# movq %r(2367), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L452(%rip), %rdi		# leaq .L452(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2346)
	.L453:		# .L453:
	movq $1, %r12		# movq $1, %r(2369)
	movq %rbx, %rdi		# movq %r(2346), %rdi
	movq %r12, %rsi		# movq %r(2369), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L428		# jmp .L428
	.L428:		# .L428:
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
	movq %rdi, %rbx		# movq %rdi, %r(2382)
	movq %rbx, -24(%rbp)		# movq %r(2382), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2383)
	movq (%rbx), %r13		# movq (%r(2383)), %r(2370)
	movq %r13, %r12		# movq %r(2370), %r(2384)
	movq %r12, -8(%rbp)		# movq %r(2384), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2385)
	movq %r12, %r13		# movq %r(2385), %r(2371)
	salq $3, %r13		# salq $3, %r(2371)
	movq $8, %rbx		# movq $8, %r(2372)
	movq %r13, %r14		# movq %r(2371), %r(2373)
	addq %rbx, %r14		# addq %r(2372), %r(2373)
	movq %r14, %rdi		# movq %r(2373), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2348)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2386)
	movq %r13, %rbx		# movq %r(2386), %r(2374)
	salq $3, %rbx		# salq $3, %r(2374)
	movq %r15, %r13		# movq %r(2348), %r(2375)
	addq %rbx, %r13		# addq %r(2374), %r(2375)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2387)
	movq %rbx, %r12		# movq %r(2387), %r(2376)
	salq $3, %r12		# salq $3, %r(2376)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2388)
	movq %rbx, %r14		# movq %r(2388), %r(2389)
	movq %r14, -16(%rbp)		# movq %r(2389), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2390)
	addq %r12, %rbx		# addq %r(2376), %r(2390)
	movq %rbx, -16(%rbp)		# movq %r(2390), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2391)
	movq (%rbx), %r12		# movq (%r(2391)), %r(2378)
	movq %r12, (%r13)		# movq %r(2378), (%r(2375))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2392)
	decq %rbx		# decq %r(2392)
	movq %rbx, -8(%rbp)		# movq %r(2392), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(2379)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2393)
	cmpq %rbx, %r12		# cmpq %r(2379), %r(2393)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2380)
	movq %r15, %r13		# movq %r(2348), %r(2381)
	addq %rbx, %r13		# addq %r(2380), %r(2381)
	movq %r13, %rax		# movq %r(2381), %rax
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
.L439:
	.quad 1
	.quad 62
	.text

#.section .rodata
.align 8
.L434:
	.quad 2
	.quad 60
	.quad 61
	.text

#.section .rodata
.align 8
.L444:
	.quad 2
	.quad 62
	.quad 61
	.text

#.section .rodata
.align 8
.L429:
	.quad 1
	.quad 60
	.text

#.section .rodata
.align 8
.L452:
	.quad 2
	.quad 33
	.quad 61
	.text

#.section .rodata
.align 8
.L449:
	.quad 2
	.quad 61
	.quad 61
	.text

#.section .rodata
.align 8
.L427:
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

