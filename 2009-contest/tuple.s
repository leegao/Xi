.att_syntax prefix
.text
.globl _IretTuple_t4iiiii
_IretTuple_t4iiiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(_tuple)
	movq %rsi, %rbx		# movq %rsi, %r(2510)
	movq %rbx, -8(%rbp)		# movq %r(2510), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(2494)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(2511)
	movq %r14, %r14		# movq %r(2511), %r(2495)
	addq %rbx, %r14		# addq %r(2494), %r(2495)
	movq $1, %r13		# movq $1, %r(2496)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2512)
	movq %r12, %r12		# movq %r(2512), %r(2497)
	addq %r13, %r12		# addq %r(2496), %r(2497)
	movq %r12, (%r14)		# movq %r(2497), (%r(2495))
	movq $8, %rbx		# movq $8, %r(2498)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(2513)
	movq %r14, %r14		# movq %r(2513), %r(2499)
	addq %rbx, %r14		# addq %r(2498), %r(2499)
	movq $2, %r13		# movq $2, %r(2500)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2514)
	movq %r12, %r12		# movq %r(2514), %r(2501)
	addq %r13, %r12		# addq %r(2500), %r(2501)
	movq %r12, (%r14)		# movq %r(2501), (%r(2499))
	movq $16, %rbx		# movq $16, %r(2502)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(2515)
	movq %r14, %r14		# movq %r(2515), %r(2503)
	addq %rbx, %r14		# addq %r(2502), %r(2503)
	movq $3, %r13		# movq $3, %r(2504)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2516)
	movq %r12, %r12		# movq %r(2516), %r(2505)
	addq %r13, %r12		# addq %r(2504), %r(2505)
	movq %r12, (%r14)		# movq %r(2505), (%r(2503))
	movq $24, %rbx		# movq $24, %r(2506)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(2517)
	movq %r14, %r14		# movq %r(2517), %r(2507)
	addq %rbx, %r14		# addq %r(2506), %r(2507)
	movq $4, %r13		# movq $4, %r(2508)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2518)
	movq %r12, %r12		# movq %r(2518), %r(2509)
	addq %r13, %r12		# addq %r(2508), %r(2509)
	movq %r12, (%r14)		# movq %r(2509), (%r(2507))
	jmp .L344		# jmp .L344
	.L344:		# .L344:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $32, %rbx		# movq $32, %r(2519)
	movq %rbx, %rdi		# movq %r(2519), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2488)
	movq %r15, %r15		# movq %r(2488), %r(2479)
	movq $1, %r12		# movq $1, %r(2520)
	movq %r15, %rdi		# movq %r(2479), %rdi
	movq %r12, %rsi		# movq %r(2520), %rsi
	call _IretTuple_t4iiiii		# call _IretTuple_t4iiiii
	movq 0(%r15), %r14		# movq 0(%r(2479)), %r(a)
	movq 8(%r15), %r13		# movq 8(%r(2479)), %r(b)
	movq 16(%r15), %r12		# movq 16(%r(2479)), %r(2533)
	movq %r12, -16(%rbp)		# movq %r(2533), -16(%rbp)
	movq 24(%r15), %rbx		# movq 24(%r(2479)), %r(2534)
	movq %rbx, -8(%rbp)		# movq %r(2534), -8(%rbp)
	movq $1, %r12		# movq $1, %r(2521)
	movq %r12, %r12		# movq %r(2521), %r(2484)
	movq $2, %rbx		# movq $2, %r(2522)
	cmpq %rbx, %r14		# cmpq %r(2522), %r(a)
	je .L346		# je .L346
	.L347:		# .L347:
	movq $0, %rbx		# movq $0, %r(2523)
	movq %rbx, %r12		# movq %r(2523), %r(2484)
	.L346:		# .L346:
	movq %r12, %rdi		# movq %r(2484), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2524)
	movq %r12, %r12		# movq %r(2524), %r(2485)
	movq $3, %rbx		# movq $3, %r(2525)
	cmpq %rbx, %r13		# cmpq %r(2525), %r(b)
	je .L348		# je .L348
	.L349:		# .L349:
	movq $0, %r12		# movq $0, %r(2526)
	movq %r12, %r12		# movq %r(2526), %r(2485)
	.L348:		# .L348:
	movq %r12, %rdi		# movq %r(2485), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2527)
	movq %r13, %r13		# movq %r(2527), %r(2486)
	movq $4, %rbx		# movq $4, %r(2528)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2535)
	cmpq %rbx, %r12		# cmpq %r(2528), %r(2535)
	je .L350		# je .L350
	.L351:		# .L351:
	movq $0, %r13		# movq $0, %r(2529)
	movq %r13, %r13		# movq %r(2529), %r(2486)
	.L350:		# .L350:
	movq %r13, %rdi		# movq %r(2486), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2530)
	movq %r13, %r13		# movq %r(2530), %r(2487)
	movq $5, %rbx		# movq $5, %r(2531)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2536)
	cmpq %rbx, %r12		# cmpq %r(2531), %r(2536)
	je .L352		# je .L352
	.L353:		# .L353:
	movq $0, %r13		# movq $0, %r(2532)
	movq %r13, %r13		# movq %r(2532), %r(2487)
	.L352:		# .L352:
	movq %r13, %rdi		# movq %r(2487), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L345:		# .L345:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
