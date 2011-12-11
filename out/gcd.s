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
	movq %rdi, %rbx		# movq %rdi, %r(2386)
	movq $1, %r12		# movq $1, %r(2403)
	movq %r12, %r13		# movq %r(2403), %r(2387)
	movq $27, %rbx		# movq $27, %r(2404)
	movq $13, %r12		# movq $13, %r(2405)
	movq %rbx, %rdi		# movq %r(2404), %rdi
	movq %r12, %rsi		# movq %r(2405), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2394)
	movq $1, %r12		# movq $1, %r(2406)
	cmpq %rbx, %r12		# cmpq %r(2394), %r(2406)
	je .L412		# je .L412
	.L413:		# .L413:
	movq $0, %r12		# movq $0, %r(2407)
	movq %r12, %r13		# movq %r(2407), %r(2387)
	jmp .L412		# jmp .L412
	.L412:		# .L412:
	movq %r13, %rdi		# movq %r(2387), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2408)
	movq %r12, %r13		# movq %r(2408), %r(2388)
	movq $27, %rbx		# movq $27, %r(2409)
	movq $9, %r12		# movq $9, %r(2410)
	movq %rbx, %rdi		# movq %r(2409), %rdi
	movq %r12, %rsi		# movq %r(2410), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2396)
	movq $9, %r12		# movq $9, %r(2411)
	cmpq %rbx, %r12		# cmpq %r(2396), %r(2411)
	je .L414		# je .L414
	.L415:		# .L415:
	movq $0, %r12		# movq $0, %r(2412)
	movq %r12, %r13		# movq %r(2412), %r(2388)
	jmp .L414		# jmp .L414
	.L414:		# .L414:
	movq %r13, %rdi		# movq %r(2388), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2413)
	movq %r12, %r13		# movq %r(2413), %r(2389)
	movq $25, %rbx		# movq $25, %r(2414)
	movq $55, %r12		# movq $55, %r(2415)
	movq %rbx, %rdi		# movq %r(2414), %rdi
	movq %r12, %rsi		# movq %r(2415), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2398)
	movq $5, %r12		# movq $5, %r(2416)
	cmpq %rbx, %r12		# cmpq %r(2398), %r(2416)
	je .L416		# je .L416
	.L417:		# .L417:
	movq $0, %r12		# movq $0, %r(2417)
	movq %r12, %r13		# movq %r(2417), %r(2389)
	jmp .L416		# jmp .L416
	.L416:		# .L416:
	movq %r13, %rdi		# movq %r(2389), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2418)
	movq %r12, %r13		# movq %r(2418), %r(2390)
	movq $4008, %rbx		# movq $4008, %r(2419)
	movq $6012, %r12		# movq $6012, %r(2420)
	movq %rbx, %rdi		# movq %r(2419), %rdi
	movq %r12, %rsi		# movq %r(2420), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2400)
	movq $2004, %r12		# movq $2004, %r(2421)
	cmpq %rbx, %r12		# cmpq %r(2400), %r(2421)
	je .L418		# je .L418
	.L419:		# .L419:
	movq $0, %r12		# movq $0, %r(2422)
	movq %r12, %r13		# movq %r(2422), %r(2390)
	jmp .L418		# jmp .L418
	.L418:		# .L418:
	movq %r13, %rdi		# movq %r(2390), %rdi
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
	movq %rdi, %r13		# movq %rdi, %r(2391)
	movq %rsi, %r12		# movq %rsi, %r(2392)
	cmpq %r13, %r12		# cmpq %r(2391), %r(2392)
	jle .L422		# jle .L422
	.L421:		# .L421:
	movq %r12, %rbx		# movq %r(2392), %r(2393)
	movq %r13, %r12		# movq %r(2391), %r(2392)
	movq %rbx, %r13		# movq %r(2393), %r(2391)
	jmp .L422		# jmp .L422
	.L422:		# .L422:
	movq $0, %rbx		# movq $0, %r(2423)
	cmpq %rbx, %r12		# cmpq %r(2423), %r(2392)
	jne .L424		# jne .L424
	.L423:		# .L423:
	movq %r13, %rax		# movq %r(2391), %rax
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
	movq %r13, %rax		# movq %r(2391), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2392)
	movq %rdx, %rbx		# movq %rdx, %r(2424)
	movq %r12, %rdi		# movq %r(2392), %rdi
	movq %rbx, %rsi		# movq %r(2424), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2402)
	movq %rbx, %rax		# movq %r(2402), %rax
	jmp .L420		# jmp .L420
	
