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
	movq %rdi, %rbx		# movq %rdi, %r(2318)
	movq %rbx, -8(%rbp)		# movq %r(2318), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(2319)
	movq %rbx, -16(%rbp)		# movq %r(2319), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(2302)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2320)
	addq %rbx, %r14		# addq %r(2302), %r(2303)
	movq $1, %r13		# movq $1, %r(2304)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2321)
	addq %r13, %r12		# addq %r(2304), %r(2305)
	movq %r12, (%r14)		# movq %r(2305), (%r(2303))
	movq $8, %rbx		# movq $8, %r(2306)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2322)
	addq %rbx, %r14		# addq %r(2306), %r(2307)
	movq $2, %r13		# movq $2, %r(2308)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2323)
	addq %r13, %r12		# addq %r(2308), %r(2309)
	movq %r12, (%r14)		# movq %r(2309), (%r(2307))
	movq $16, %rbx		# movq $16, %r(2310)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2324)
	addq %rbx, %r14		# addq %r(2310), %r(2311)
	movq $3, %r13		# movq $3, %r(2312)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2325)
	addq %r13, %r12		# addq %r(2312), %r(2313)
	movq %r12, (%r14)		# movq %r(2313), (%r(2311))
	movq $24, %rbx		# movq $24, %r(2314)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(2326)
	addq %rbx, %r14		# addq %r(2314), %r(2315)
	movq $4, %r13		# movq $4, %r(2316)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2327)
	addq %r13, %r12		# addq %r(2316), %r(2317)
	movq %r12, (%r14)		# movq %r(2317), (%r(2315))
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
	movq $32, %rbx		# movq $32, %r(2328)
	movq %rbx, %rdi		# movq %r(2328), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2296)
	movq %r15, %r13		# movq %r(2296), %r(2287)
	movq $1, %r12		# movq $1, %r(2329)
	movq %r13, %rdi		# movq %r(2287), %rdi
	movq %r12, %rsi		# movq %r(2329), %rsi
	call _IretTuple_t4iiiii		# call _IretTuple_t4iiiii
	movq 0(%r15), %r14		# movq 0(%r(2296)), %r(a)
	movq 8(%r15), %rbx		# movq 8(%r(2296)), %r(2342)
	movq %rbx, -8(%rbp)		# movq %r(2342), -8(%rbp)
	movq 16(%r15), %rbx		# movq 16(%r(2296)), %r(2343)
	movq %rbx, -16(%rbp)		# movq %r(2343), -16(%rbp)
	movq 24(%r15), %rbx		# movq 24(%r(2296)), %r(2344)
	movq %rbx, -24(%rbp)		# movq %r(2344), -24(%rbp)
	movq $1, %r12		# movq $1, %r(2330)
	movq $2, %rbx		# movq $2, %r(2331)
	cmpq %rbx, %r14		# cmpq %r(2331), %r(a)
	je .L365		# je .L365
	.L366:		# .L366:
	movq $0, %r12		# movq $0, %r(2332)
	.L365:		# .L365:
	movq %r12, %rdi		# movq %r(2292), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2333)
	movq $3, %rbx		# movq $3, %r(2334)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2345)
	cmpq %rbx, %r12		# cmpq %r(2334), %r(2345)
	je .L367		# je .L367
	.L368:		# .L368:
	movq $0, %r13		# movq $0, %r(2335)
	.L367:		# .L367:
	movq %r13, %rdi		# movq %r(2293), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2336)
	movq $4, %rbx		# movq $4, %r(2337)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2346)
	cmpq %rbx, %r12		# cmpq %r(2337), %r(2346)
	je .L369		# je .L369
	.L370:		# .L370:
	movq $0, %r13		# movq $0, %r(2338)
	.L369:		# .L369:
	movq %r13, %rdi		# movq %r(2294), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2339)
	movq $5, %rbx		# movq $5, %r(2340)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2347)
	cmpq %rbx, %r12		# cmpq %r(2340), %r(2347)
	je .L371		# je .L371
	.L372:		# .L372:
	movq $0, %r13		# movq $0, %r(2341)
	.L371:		# .L371:
	movq %r13, %rdi		# movq %r(2295), %rdi
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
	
