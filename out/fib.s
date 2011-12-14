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
	movq %rdi, %rbx		# movq %rdi, %r(2286)
	movq $1, %r12		# movq $1, %r(2302)
	movq %r12, %r13		# movq %r(2302), %r(2287)
	movq $1, %rbx		# movq $1, %r(2303)
	movq %rbx, %rdi		# movq %r(2303), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2292)
	movq $1, %r12		# movq $1, %r(2304)
	cmpq %rbx, %r12		# cmpq %r(2292), %r(2304)
	je .L379		# je .L379
	.L380:		# .L380:
	movq $0, %r12		# movq $0, %r(2305)
	movq %r12, %r13		# movq %r(2305), %r(2287)
	jmp .L379		# jmp .L379
	.L379:		# .L379:
	movq %r13, %rdi		# movq %r(2287), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2306)
	movq %r12, %r13		# movq %r(2306), %r(2288)
	movq $11, %rbx		# movq $11, %r(2307)
	movq %rbx, %rdi		# movq %r(2307), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2294)
	movq $89, %r12		# movq $89, %r(2308)
	cmpq %rbx, %r12		# cmpq %r(2294), %r(2308)
	je .L381		# je .L381
	.L382:		# .L382:
	movq $0, %r12		# movq $0, %r(2309)
	movq %r12, %r13		# movq %r(2309), %r(2288)
	jmp .L381		# jmp .L381
	.L381:		# .L381:
	movq %r13, %rdi		# movq %r(2288), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2310)
	movq %r12, %r13		# movq %r(2310), %r(2289)
	movq $14, %rbx		# movq $14, %r(2311)
	movq %rbx, %rdi		# movq %r(2311), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2296)
	movq $377, %r12		# movq $377, %r(2312)
	cmpq %rbx, %r12		# cmpq %r(2296), %r(2312)
	je .L383		# je .L383
	.L384:		# .L384:
	movq $0, %r12		# movq $0, %r(2313)
	movq %r12, %r13		# movq %r(2313), %r(2289)
	jmp .L383		# jmp .L383
	.L383:		# .L383:
	movq %r13, %rdi		# movq %r(2289), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2314)
	movq %r12, %r13		# movq %r(2314), %r(2290)
	movq $15, %rbx		# movq $15, %r(2315)
	movq %rbx, %rdi		# movq %r(2315), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2298)
	movq $610, %r12		# movq $610, %r(2316)
	cmpq %rbx, %r12		# cmpq %r(2298), %r(2316)
	je .L385		# je .L385
	.L386:		# .L386:
	movq $0, %r12		# movq $0, %r(2317)
	movq %r12, %r13		# movq %r(2317), %r(2290)
	jmp .L385		# jmp .L385
	.L385:		# .L385:
	movq %r13, %rdi		# movq %r(2290), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L378		# jmp .L378
	.L378:		# .L378:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ifib_ii
_Ifib_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r14		# movq %rdi, %r(2291)
	movq $1, %rbx		# movq $1, %r(2318)
	cmpq %rbx, %r14		# cmpq %r(2318), %r(2291)
	jg .L389		# jg .L389
	.L388:		# .L388:
	movq %r14, %rax		# movq %r(2291), %rax
	jmp .L387		# jmp .L387
	.L387:		# .L387:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L389:		# .L389:
	movq $1, %rbx		# movq $1, %r(2319)
	movq %r14, %r13		# movq %r(2291), %r(2320)
	subq %rbx, %r13		# subq %r(2319), %r(2320)
	movq %r13, %rdi		# movq %r(2320), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r12		# movq %rax, %r(2300)
	movq $2, %rbx		# movq $2, %r(2321)
	movq %r14, %r13		# movq %r(2291), %r(2322)
	subq %rbx, %r13		# subq %r(2321), %r(2322)
	movq %r13, %rdi		# movq %r(2322), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2301)
	movq %r12, %r13		# movq %r(2300), %r(2323)
	addq %rbx, %r13		# addq %r(2301), %r(2323)
	movq %r13, %rax		# movq %r(2323), %rax
	jmp .L387		# jmp .L387
	
