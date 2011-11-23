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
	movq %rdi, %rbx		# movq %rdi, %r(2550)
	movq %rbx, -8(%rbp)		# movq %r(2550), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2551)
	movq %rbx, -16(%rbp)		# movq %r(2551), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(2534)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2552)
	addq %rbx, %r14		# addq %r(2534), %r(2535)
	movq $1, %r13		# movq $1, %r(2536)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2553)
	addq %r13, %r12		# addq %r(2536), %r(2537)
	movq %r12, (%r14)		# movq %r(2537), (%r(2535))
	movq $8, %rbx		# movq $8, %r(2538)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2554)
	addq %rbx, %r14		# addq %r(2538), %r(2539)
	movq $2, %r13		# movq $2, %r(2540)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2555)
	addq %r13, %r12		# addq %r(2540), %r(2541)
	movq %r12, (%r14)		# movq %r(2541), (%r(2539))
	movq $16, %rbx		# movq $16, %r(2542)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2556)
	addq %rbx, %r14		# addq %r(2542), %r(2543)
	movq $3, %r13		# movq $3, %r(2544)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2557)
	addq %r13, %r12		# addq %r(2544), %r(2545)
	movq %r12, (%r14)		# movq %r(2545), (%r(2543))
	movq $24, %rbx		# movq $24, %r(2546)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2558)
	addq %rbx, %r14		# addq %r(2546), %r(2547)
	movq $4, %r13		# movq $4, %r(2548)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2559)
	addq %r13, %r12		# addq %r(2548), %r(2549)
	movq %r12, (%r14)		# movq %r(2549), (%r(2547))
	jmp .L362		# jmp .L362
	.L362:		# .L362:
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
	movq $32, %rbx		# movq $32, %r(2560)
	movq %rbx, %rdi		# movq %r(2560), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2528)
	movq $1, %r12		# movq $1, %r(2561)
	movq %r15, %rdi		# movq %r(2519), %rdi
	movq %r12, %rsi		# movq %r(2561), %rsi
	call _IretTuple_t4iiiii		# call _IretTuple_t4iiiii
	movq 0(%r15), %r14		# movq 0(%r(2519)), %r(a)
	movq 8(%r15), %r13		# movq 8(%r(2519)), %r(b)
	movq 16(%r15), %r12		# movq 16(%r(2519)), %r(2574)
	movq %r12, -8(%rbp)		# movq %r(2574), -8(%rbp)
	movq 24(%r15), %rbx		# movq 24(%r(2519)), %r(2575)
	movq %rbx, -16(%rbp)		# movq %r(2575), -16(%rbp)
	movq $1, %r12		# movq $1, %r(2562)
	movq $2, %rbx		# movq $2, %r(2563)
	cmpq %rbx, %r14		# cmpq %r(2563), %r(a)
	je .L364		# je .L364
	.L365:		# .L365:
	movq $0, %rbx		# movq $0, %r(2564)
	movq %rbx, %r12		# movq %r(2564), %r(2524)
	.L364:		# .L364:
	movq %r12, %rdi		# movq %r(2524), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2565)
	movq $3, %rbx		# movq $3, %r(2566)
	cmpq %rbx, %r13		# cmpq %r(2566), %r(b)
	je .L366		# je .L366
	.L367:		# .L367:
	movq $0, %r12		# movq $0, %r(2567)
	.L366:		# .L366:
	movq %r12, %rdi		# movq %r(2525), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2568)
	movq $4, %rbx		# movq $4, %r(2569)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2576)
	cmpq %rbx, %r12		# cmpq %r(2569), %r(2576)
	je .L368		# je .L368
	.L369:		# .L369:
	movq $0, %r13		# movq $0, %r(2570)
	.L368:		# .L368:
	movq %r13, %rdi		# movq %r(2526), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2571)
	movq $5, %rbx		# movq $5, %r(2572)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2577)
	cmpq %rbx, %r12		# cmpq %r(2572), %r(2577)
	je .L370		# je .L370
	.L371:		# .L371:
	movq $0, %r13		# movq $0, %r(2573)
	.L370:		# .L370:
	movq %r13, %rdi		# movq %r(2527), %rdi
	call _Iassert_pb		# call _Iassert_pb
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
	
