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
	leaq .L481(%rip), %rdi		# leaq .L481(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2299)
	movq %r13, %rdi		# movq %r(2299), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L480		# jmp .L480
	.L480:		# .L480:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L483(%rip), %rdi		# leaq .L483(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2339)
	movq %rbx, -8(%rbp)		# movq %r(2339), -8(%rbp)
	leaq .L484(%rip), %rdi		# leaq .L484(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2304)
	movq $16, %rbx		# movq $16, %r(2321)
	movq %rbx, %rdi		# movq %r(2321), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2305)
	movq %r15, %r13		# movq %r(2305), %r(2288)
	movq %r13, %rdi		# movq %r(2288), %rdi
	movq %r12, %rsi		# movq %r(2304), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r15), %r14		# movq 0(%r(2305)), %r(n)
	movq 8(%r15), %rbx		# movq 8(%r(2305)), %r(2340)
	movq %rbx, -24(%rbp)		# movq %r(2340), -24(%rbp)
	leaq .L485(%rip), %rdi		# leaq .L485(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2341)
	movq %rbx, -16(%rbp)		# movq %r(2341), -16(%rbp)
	movq $1, %r12		# movq $1, %r(2323)
	movq $0, %rbx		# movq $0, %r(2324)
	cmpq %rbx, %r14		# cmpq %r(2324), %r(n)
	je .L486		# je .L486
	.L487:		# .L487:
	movq $0, %r12		# movq $0, %r(2325)
	jmp .L486		# jmp .L486
	.L486:		# .L486:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2342)
	movq %rbx, %rdi		# movq %r(2342), %rdi
	movq %r12, %rsi		# movq %r(2291), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L488(%rip), %rdi		# leaq .L488(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2309)
	movq $1, %rbx		# movq $1, %r(2327)
	movq $0, %r13		# movq $0, %r(2328)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2343)
	cmpq %r13, %r14		# cmpq %r(2328), %r(2343)
	je .L489		# je .L489
	.L490:		# .L490:
	movq $0, %rbx		# movq $0, %r(2329)
	jmp .L489		# jmp .L489
	.L489:		# .L489:
	movq %r12, %rdi		# movq %r(2309), %rdi
	movq %rbx, %rsi		# movq %r(2292), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $16, %rbx		# movq $16, %r(2330)
	movq %rbx, %rdi		# movq %r(2330), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2311)
	movq %r13, %r12		# movq %r(2311), %r(2294)
	movq %r12, %rdi		# movq %r(2294), %rdi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2344)
	movq %rbx, %rsi		# movq %r(2344), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r13), %r15		# movq 0(%r(2311)), %r(n2)
	movq 8(%r13), %r14		# movq 8(%r(2311)), %r(ok2)
	leaq .L491(%rip), %rdi		# leaq .L491(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2313)
	movq $1, %r12		# movq $1, %r(2332)
	movq %r12, %rbx		# movq %r(2332), %r(2297)
	movq $42, %r12		# movq $42, %r(2333)
	cmpq %r12, %r15		# cmpq %r(2333), %r(n2)
	je .L492		# je .L492
	.L493:		# .L493:
	movq $0, %rbx		# movq $0, %r(2334)
	jmp .L492		# jmp .L492
	.L492:		# .L492:
	movq %r13, %rdi		# movq %r(2313), %rdi
	movq %rbx, %rsi		# movq %r(2297), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L494(%rip), %rdi		# leaq .L494(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2315)
	movq $1, %r15		# movq $1, %r(2336)
	movq $1, %r13		# movq $1, %r(2337)
	cmpq %r13, %r14		# cmpq %r(2337), %r(ok2)
	je .L495		# je .L495
	.L496:		# .L496:
	movq $0, %r15		# movq $0, %r(2338)
	jmp .L495		# jmp .L495
	.L495:		# .L495:
	movq %r12, %rdi		# movq %r(2315), %rdi
	movq %r15, %rsi		# movq %r(2298), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L482		# jmp .L482
	.L482:		# .L482:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(2357)
	movq %rbx, -16(%rbp)		# movq %r(2357), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2358)
	movq (%rbx), %rbx		# movq (%r(2358)), %r(2345)
	movq %rbx, %r14		# movq %r(2345), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(2346)
	salq $3, %rbx		# salq $3, %r(2346)
	movq $8, %r12		# movq $8, %r(2347)
	addq %r12, %rbx		# addq %r(2347), %r(2348)
	movq %rbx, %rdi		# movq %r(2348), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(2317)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(2349)
	salq $3, %rbx		# salq $3, %r(2349)
	movq %r12, %r13		# movq %r(2317), %r(2350)
	addq %rbx, %r13		# addq %r(2349), %r(2350)
	movq %r14, %r15		# movq %r(t10), %r(2351)
	salq $3, %r15		# salq $3, %r(2351)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2359)
	movq %rbx, -8(%rbp)		# movq %r(2360), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2361)
	addq %r15, %rbx		# addq %r(2351), %r(2361)
	movq %rbx, -8(%rbp)		# movq %r(2361), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2362)
	movq (%rbx), %rbx		# movq (%r(2362)), %r(2353)
	movq %rbx, (%r13)		# movq %r(2353), (%r(2350))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(2354)
	cmpq %rbx, %r14		# cmpq %r(2354), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2355)
	addq %rbx, %r12		# addq %r(2355), %r(2356)
	movq %r12, %rax		# movq %r(2356), %rax
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
.L485:
	.quad 1
	.quad 48
	.text

#.section .rodata
.align 8
.L494:
	.quad 1
	.quad 51
	.text

#.section .rodata
.align 8
.L484:
	.quad 2
	.quad 63
	.quad 63
	.text

#.section .rodata
.align 8
.L483:
	.quad 2
	.quad 52
	.quad 50
	.text

#.section .rodata
.align 8
.L488:
	.quad 1
	.quad 49
	.text

#.section .rodata
.align 8
.L481:
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

#.section .rodata
.align 8
.L491:
	.quad 1
	.quad 50
	.text

