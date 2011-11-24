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
	movq $1, %r13		# movq $1, %r(2204)
	movq $27, %rbx		# movq $27, %r(2205)
	movq $13, %r12		# movq $13, %r(2206)
	movq %rbx, %rdi		# movq %r(2205), %rdi
	movq %r12, %rsi		# movq %r(2206), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2195)
	movq $1, %r12		# movq $1, %r(2207)
	cmpq %rbx, %r12		# cmpq %r(2195), %r(2207)
	je .L412		# je .L412
	.L413:		# .L413:
	movq $0, %r13		# movq $0, %r(2208)
	jmp .L412		# jmp .L412
	.L412:		# .L412:
	movq %r13, %rdi		# movq %r(2188), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2209)
	movq $27, %rbx		# movq $27, %r(2210)
	movq $9, %r12		# movq $9, %r(2211)
	movq %rbx, %rdi		# movq %r(2210), %rdi
	movq %r12, %rsi		# movq %r(2211), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2197)
	movq $9, %r12		# movq $9, %r(2212)
	cmpq %rbx, %r12		# cmpq %r(2197), %r(2212)
	je .L414		# je .L414
	.L415:		# .L415:
	movq $0, %r13		# movq $0, %r(2213)
	jmp .L414		# jmp .L414
	.L414:		# .L414:
	movq %r13, %rdi		# movq %r(2189), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2214)
	movq $25, %rbx		# movq $25, %r(2215)
	movq $55, %r12		# movq $55, %r(2216)
	movq %rbx, %rdi		# movq %r(2215), %rdi
	movq %r12, %rsi		# movq %r(2216), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2199)
	movq $5, %r12		# movq $5, %r(2217)
	cmpq %rbx, %r12		# cmpq %r(2199), %r(2217)
	je .L416		# je .L416
	.L417:		# .L417:
	movq $0, %r13		# movq $0, %r(2218)
	jmp .L416		# jmp .L416
	.L416:		# .L416:
	movq %r13, %rdi		# movq %r(2190), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2219)
	movq $4008, %rbx		# movq $4008, %r(2220)
	movq $6012, %r12		# movq $6012, %r(2221)
	movq %rbx, %rdi		# movq %r(2220), %rdi
	movq %r12, %rsi		# movq %r(2221), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2201)
	movq $2004, %r12		# movq $2004, %r(2222)
	cmpq %rbx, %r12		# cmpq %r(2201), %r(2222)
	je .L418		# je .L418
	.L419:		# .L419:
	movq $0, %r13		# movq $0, %r(2223)
	jmp .L418		# jmp .L418
	.L418:		# .L418:
	movq %r13, %rdi		# movq %r(2191), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L411		# jmp .L411
	.L411:		# .L411:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Igcd_iii
_Igcd_iii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(x)
	movq %rsi, %r13		# movq %rsi, %r(y)
	cmpq %r12, %r13		# cmpq %r(x), %r(y)
	jle .L422		# jle .L422
	.L421:		# .L421:
	movq %r13, %rbx		# movq %r(y), %r(t)
	movq %r12, %r13		# movq %r(x), %r(y)
	movq %rbx, %r12		# movq %r(t), %r(x)
	jmp .L422		# jmp .L422
	.L422:		# .L422:
	movq $0, %rbx		# movq $0, %r(2224)
	cmpq %rbx, %r13		# cmpq %r(2224), %r(y)
	jne .L424		# jne .L424
	.L423:		# .L423:
	movq %r12, %rax		# movq %r(x), %rax
	jmp .L420		# jmp .L420
	.L420:		# .L420:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L424:		# .L424:
	movq %r12, %rax		# movq %r(x), %rax
	cqto		# cqto
	idivq %r13		# idivq %r(y)
	movq %rdx, %rbx		# movq %rdx, %r(2225)
	movq %r13, %rdi		# movq %r(y), %rdi
	movq %rbx, %rsi		# movq %r(2225), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2203)
	movq %rbx, %rax		# movq %r(2203), %rax
	jmp .L420		# jmp .L420
	
