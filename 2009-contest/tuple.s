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
	movq %rdi, %rbx		# movq %rdi, %r(2549)
	movq %rbx, -8(%rbp)		# movq %r(2549), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2550)
	movq %rbx, -16(%rbp)		# movq %r(2550), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(2533)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2551)
	addq %rbx, %r14		# addq %r(2533), %r(2534)
	movq $1, %r13		# movq $1, %r(2535)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2552)
	addq %r13, %r12		# addq %r(2535), %r(2536)
	movq %r12, (%r14)		# movq %r(2536), (%r(2534))
	movq $8, %rbx		# movq $8, %r(2537)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2553)
	addq %rbx, %r14		# addq %r(2537), %r(2538)
	movq $2, %r13		# movq $2, %r(2539)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2554)
	addq %r13, %r12		# addq %r(2539), %r(2540)
	movq %r12, (%r14)		# movq %r(2540), (%r(2538))
	movq $16, %rbx		# movq $16, %r(2541)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2555)
	addq %rbx, %r14		# addq %r(2541), %r(2542)
	movq $3, %r13		# movq $3, %r(2543)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2556)
	addq %r13, %r12		# addq %r(2543), %r(2544)
	movq %r12, (%r14)		# movq %r(2544), (%r(2542))
	movq $24, %rbx		# movq $24, %r(2545)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2557)
	addq %rbx, %r14		# addq %r(2545), %r(2546)
	movq $4, %r13		# movq $4, %r(2547)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2558)
	addq %r13, %r12		# addq %r(2547), %r(2548)
	movq %r12, (%r14)		# movq %r(2548), (%r(2546))
	jmp .L363		# jmp .L363
	.L363:		# .L363:
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
	movq $32, %rbx		# movq $32, %r(2559)
	movq %rbx, %rdi		# movq %r(2559), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2527)
	movq $1, %r12		# movq $1, %r(2560)
	movq %r15, %rdi		# movq %r(2518), %rdi
	movq %r12, %rsi		# movq %r(2560), %rsi
	call _IretTuple_t4iiiii		# call _IretTuple_t4iiiii
	movq 0(%r15), %r14		# movq 0(%r(2518)), %r(a)
	movq 8(%r15), %r13		# movq 8(%r(2518)), %r(b)
	movq 16(%r15), %r12		# movq 16(%r(2518)), %r(2573)
	movq %r12, -8(%rbp)		# movq %r(2573), -8(%rbp)
	movq 24(%r15), %rbx		# movq 24(%r(2518)), %r(2574)
	movq %rbx, -16(%rbp)		# movq %r(2574), -16(%rbp)
	movq $1, %r12		# movq $1, %r(2561)
	movq $2, %rbx		# movq $2, %r(2562)
	cmpq %rbx, %r14		# cmpq %r(2562), %r(a)
	je .L365		# je .L365
	.L366:		# .L366:
	movq $0, %rbx		# movq $0, %r(2563)
	movq %rbx, %r12		# movq %r(2563), %r(2523)
	.L365:		# .L365:
	movq %r12, %rdi		# movq %r(2523), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2564)
	movq $3, %rbx		# movq $3, %r(2565)
	cmpq %rbx, %r13		# cmpq %r(2565), %r(b)
	je .L367		# je .L367
	.L368:		# .L368:
	movq $0, %r12		# movq $0, %r(2566)
	.L367:		# .L367:
	movq %r12, %rdi		# movq %r(2524), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2567)
	movq $4, %rbx		# movq $4, %r(2568)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2575)
	cmpq %rbx, %r12		# cmpq %r(2568), %r(2575)
	je .L369		# je .L369
	.L370:		# .L370:
	movq $0, %r13		# movq $0, %r(2569)
	.L369:		# .L369:
	movq %r13, %rdi		# movq %r(2525), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2570)
	movq $5, %rbx		# movq $5, %r(2571)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2576)
	cmpq %rbx, %r12		# cmpq %r(2571), %r(2576)
	je .L371		# je .L371
	.L372:		# .L372:
	movq $0, %r13		# movq $0, %r(2572)
	.L371:		# .L371:
	movq %r13, %rdi		# movq %r(2526), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L364:		# .L364:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
