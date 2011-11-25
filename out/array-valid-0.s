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
	movq $40, %rbx		# movq $40, %r(2405)
	movq %rbx, %rdi		# movq %r(2405), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2400)
	movq $4, %rbx		# movq $4, %r(2406)
	movq %rbx, (%r14)		# movq %r(2406), (%r(2400))
	movq $8, %rbx		# movq $8, %r(2407)
	movq %r14, %r13		# movq %r(2400), %r(2408)
	addq %rbx, %r13		# addq %r(2407), %r(2408)
	movq %r13, %r12		# movq %r(2408), %r(2430)
	movq %r12, -8(%rbp)		# movq %r(2430), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(2409)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2431)
	movq %r14, %r12		# movq %r(2431), %r(2410)
	addq %rbx, %r12		# addq %r(2409), %r(2410)
	movq $0, %rbx		# movq $0, %r(2411)
	movq %rbx, (%r12)		# movq %r(2411), (%r(2410))
	movq $8, %rbx		# movq $8, %r(2412)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2432)
	movq %r14, %r12		# movq %r(2432), %r(2413)
	addq %rbx, %r12		# addq %r(2412), %r(2413)
	movq $0, %rbx		# movq $0, %r(2414)
	movq %rbx, (%r12)		# movq %r(2414), (%r(2413))
	movq $16, %rbx		# movq $16, %r(2415)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2433)
	movq %r14, %r12		# movq %r(2433), %r(2416)
	addq %rbx, %r12		# addq %r(2415), %r(2416)
	movq $0, %rbx		# movq $0, %r(2417)
	movq %rbx, (%r12)		# movq %r(2417), (%r(2416))
	movq $24, %rbx		# movq $24, %r(2418)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2434)
	movq %r14, %r12		# movq %r(2434), %r(2419)
	addq %rbx, %r12		# addq %r(2418), %r(2419)
	movq $0, %rbx		# movq $0, %r(2420)
	movq %rbx, (%r12)		# movq %r(2420), (%r(2419))
	movq $0, %r13		# movq $0, %r(2421)
	movq $8, %rbx		# movq $8, %r(2422)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2435)
	movq %r12, %r14		# movq %r(2435), %r(2423)
	subq %rbx, %r14		# subq %r(2422), %r(2423)
	movq (%r14), %rbx		# movq (%r(2423)), %r(2424)
	cmpq %rbx, %r13		# cmpq %r(2424), %r(2421)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(2425)
	movq %r13, %r14		# movq %r(2425), %r(2426)
	salq $3, %r14		# salq $3, %r(2426)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2436)
	movq %r12, %r15		# movq %r(2436), %r(2427)
	addq %r14, %r15		# addq %r(2426), %r(2427)
	movq $42, %rbx		# movq $42, %r(2428)
	movq %rbx, (%r15)		# movq %r(2428), (%r(2427))
	leaq .L464(%rip), %rdi		# leaq .L464(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2401)
	movq %rbx, %rdi		# movq %r(2401), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L461		# jmp .L461
	.L461:		# .L461:
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
	movq %rdi, %rbx		# movq %rdi, %r(2449)
	movq %rbx, -24(%rbp)		# movq %r(2449), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2450)
	movq (%rbx), %r13		# movq (%r(2450)), %r(2437)
	movq %r13, %r12		# movq %r(2437), %r(2451)
	movq %r12, -16(%rbp)		# movq %r(2451), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2452)
	movq %r12, %r13		# movq %r(2452), %r(2438)
	salq $3, %r13		# salq $3, %r(2438)
	movq $8, %rbx		# movq $8, %r(2439)
	movq %r13, %r14		# movq %r(2438), %r(2440)
	addq %rbx, %r14		# addq %r(2439), %r(2440)
	movq %r14, %rdi		# movq %r(2440), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2403)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2453)
	movq %r13, %rbx		# movq %r(2453), %r(2441)
	salq $3, %rbx		# salq $3, %r(2441)
	movq %r15, %r13		# movq %r(2403), %r(2442)
	addq %rbx, %r13		# addq %r(2441), %r(2442)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2454)
	movq %rbx, %r12		# movq %r(2454), %r(2443)
	salq $3, %r12		# salq $3, %r(2443)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2455)
	movq %rbx, %r14		# movq %r(2455), %r(2456)
	movq %r14, -8(%rbp)		# movq %r(2456), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2457)
	addq %r12, %rbx		# addq %r(2443), %r(2457)
	movq %rbx, -8(%rbp)		# movq %r(2457), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2458)
	movq (%rbx), %r12		# movq (%r(2458)), %r(2445)
	movq %r12, (%r13)		# movq %r(2445), (%r(2442))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2459)
	decq %rbx		# decq %r(2459)
	movq %rbx, -16(%rbp)		# movq %r(2459), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(2446)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2460)
	cmpq %rbx, %r12		# cmpq %r(2446), %r(2460)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2447)
	movq %r15, %r13		# movq %r(2403), %r(2448)
	addq %rbx, %r13		# addq %r(2447), %r(2448)
	movq %r13, %rax		# movq %r(2448), %rax
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
.L464:
	.quad 8
	.quad 78
	.quad 111
	.quad 32
	.quad 99
	.quad 114
	.quad 97
	.quad 115
	.quad 104
	.text

error_outofbounds:
call _I_outOfBounds_p
