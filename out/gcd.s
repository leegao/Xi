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
	movq $1, %r13		# movq $1, %r(2216)
	movq $27, %rbx		# movq $27, %r(2217)
	movq $13, %r12		# movq $13, %r(2218)
	movq %rbx, %rdi		# movq %r(2217), %rdi
	movq %r12, %rsi		# movq %r(2218), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2207)
	movq $1, %r12		# movq $1, %r(2219)
	cmpq %rbx, %r12		# cmpq %r(2207), %r(2219)
	je .L412		# je .L412
	.L413:		# .L413:
	movq $0, %r13		# movq $0, %r(2220)
	jmp .L412		# jmp .L412
	.L412:		# .L412:
	movq %r13, %rdi		# movq %r(2200), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2221)
	movq $27, %rbx		# movq $27, %r(2222)
	movq $9, %r12		# movq $9, %r(2223)
	movq %rbx, %rdi		# movq %r(2222), %rdi
	movq %r12, %rsi		# movq %r(2223), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2209)
	movq $9, %r12		# movq $9, %r(2224)
	cmpq %rbx, %r12		# cmpq %r(2209), %r(2224)
	je .L414		# je .L414
	.L415:		# .L415:
	movq $0, %r13		# movq $0, %r(2225)
	jmp .L414		# jmp .L414
	.L414:		# .L414:
	movq %r13, %rdi		# movq %r(2201), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2226)
	movq $25, %rbx		# movq $25, %r(2227)
	movq $55, %r12		# movq $55, %r(2228)
	movq %rbx, %rdi		# movq %r(2227), %rdi
	movq %r12, %rsi		# movq %r(2228), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2211)
	movq $5, %r12		# movq $5, %r(2229)
	cmpq %rbx, %r12		# cmpq %r(2211), %r(2229)
	je .L416		# je .L416
	.L417:		# .L417:
	movq $0, %r13		# movq $0, %r(2230)
	jmp .L416		# jmp .L416
	.L416:		# .L416:
	movq %r13, %rdi		# movq %r(2202), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2231)
	movq $4008, %rbx		# movq $4008, %r(2232)
	movq $6012, %r12		# movq $6012, %r(2233)
	movq %rbx, %rdi		# movq %r(2232), %rdi
	movq %r12, %rsi		# movq %r(2233), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2213)
	movq $2004, %r12		# movq $2004, %r(2234)
	cmpq %rbx, %r12		# cmpq %r(2213), %r(2234)
	je .L418		# je .L418
	.L419:		# .L419:
	movq $0, %r13		# movq $0, %r(2235)
	jmp .L418		# jmp .L418
	.L418:		# .L418:
	movq %r13, %rdi		# movq %r(2203), %rdi
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
	movq $0, %rbx		# movq $0, %r(2236)
	cmpq %rbx, %r13		# cmpq %r(2236), %r(y)
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
	movq %rdx, %rbx		# movq %rdx, %r(2237)
	movq %r13, %rdi		# movq %r(y), %rdi
	movq %rbx, %rsi		# movq %r(2237), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2215)
	movq %rbx, %rax		# movq %r(2215), %rax
	jmp .L420		# jmp .L420
	
