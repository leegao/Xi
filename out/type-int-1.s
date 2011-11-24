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
	leaq .L427(%rip), %rdi		# leaq .L427(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2160)
	movq %r13, %rdi		# movq %r(2160), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L426		# jmp .L426
	.L426:		# .L426:
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L429(%rip), %rdi		# leaq .L429(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2164)
	.L430:		# .L430:
	.L432:		# .L432:
	movq $1, %r12		# movq $1, %r(2179)
	movq %rbx, %rdi		# movq %r(2164), %rdi
	movq %r12, %rsi		# movq %r(2179), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L434(%rip), %rdi		# leaq .L434(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2166)
	.L435:		# .L435:
	.L437:		# .L437:
	movq $1, %r12		# movq $1, %r(2181)
	movq %rbx, %rdi		# movq %r(2166), %rdi
	movq %r12, %rsi		# movq %r(2181), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L439(%rip), %rdi		# leaq .L439(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2168)
	movq $1, %r12		# movq $1, %r(2183)
	.L441:		# .L441:
	movq $0, %r15		# movq $0, %r(2184)
	jmp .L440		# jmp .L440
	.L440:		# .L440:
	movq $0, %r14		# movq $0, %r(2185)
	cmpq %r14, %r15		# cmpq %r(2185), %r(2154)
	je .L442		# je .L442
	.L443:		# .L443:
	movq $0, %r12		# movq $0, %r(2186)
	jmp .L442		# jmp .L442
	.L442:		# .L442:
	movq %r13, %rdi		# movq %r(2168), %rdi
	movq %r12, %rsi		# movq %r(2155), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L444(%rip), %rdi		# leaq .L444(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2170)
	movq $1, %r12		# movq $1, %r(2188)
	.L446:		# .L446:
	movq $0, %r15		# movq $0, %r(2189)
	jmp .L445		# jmp .L445
	.L445:		# .L445:
	movq $0, %r14		# movq $0, %r(2190)
	cmpq %r14, %r15		# cmpq %r(2190), %r(2156)
	je .L447		# je .L447
	.L448:		# .L448:
	movq $0, %r12		# movq $0, %r(2191)
	jmp .L447		# jmp .L447
	.L447:		# .L447:
	movq %r13, %rdi		# movq %r(2170), %rdi
	movq %r12, %rsi		# movq %r(2157), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L449(%rip), %rdi		# leaq .L449(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(2172)
	.L451:		# .L451:
	movq $0, %rbx		# movq $0, %r(2193)
	jmp .L450		# jmp .L450
	.L450:		# .L450:
	movq $1, %r13		# movq $1, %r(2194)
	xorq %r13, %rbx		# xorq %r(2194), %r(2195)
	movq %r12, %rdi		# movq %r(2172), %rdi
	movq %rbx, %rsi		# movq %r(2195), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L452(%rip), %rdi		# leaq .L452(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2174)
	.L453:		# .L453:
	movq $1, %r12		# movq $1, %r(2197)
	movq %rbx, %rdi		# movq %r(2174), %rdi
	movq %r12, %rsi		# movq %r(2197), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L428		# jmp .L428
	.L428:		# .L428:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2213)
	movq %rbx, -24(%rbp)		# movq %r(2213), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2214)
	movq (%rbx), %rbx		# movq (%r(2214)), %r(2198)
	movq %rbx, %r12		# movq %r(t10), %r(2199)
	salq $3, %r12		# salq $3, %r(2199)
	movq $8, %r13		# movq $8, %r(2200)
	addq %r13, %r12		# addq %r(2200), %r(2201)
	movq %r12, %rdi		# movq %r(2201), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(2215)
	movq %r12, -32(%rbp)		# movq %r(2215), -32(%rbp)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %rbx, %r14		# movq %r(t10), %r(2202)
	salq $3, %r14		# salq $3, %r(2202)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(2216)
	addq %r14, %r12		# addq %r(2202), %r(2203)
	movq %rbx, %r14		# movq %r(t10), %r(2217)
	movq %r14, -16(%rbp)		# movq %r(2217), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2218)
	salq $3, %r13		# salq $3, %r(2218)
	movq %r13, -16(%rbp)		# movq %r(2218), -16(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(2219)
	movq %r14, -8(%rbp)		# movq %r(2210), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2211)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(2220)
	addq %r14, %r13		# addq %r(2220), %r(2211)
	movq %r13, -8(%rbp)		# movq %r(2211), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2212)
	movq (%r13), %r13		# movq (%r(2212)), %r(2206)
	movq %r13, (%r12)		# movq %r(2206), (%r(2203))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(2207)
	cmpq %r12, %rbx		# cmpq %r(2207), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2208)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(2221)
	addq %rbx, %r13		# addq %r(2208), %r(2209)
	movq %r13, %rax		# movq %r(2209), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L434:
	.quad 2
	.quad 60
	.quad 61
	.text

#.section .rodata
.align 8
.L439:
	.quad 1
	.quad 62
	.text

#.section .rodata
.align 8
.L452:
	.quad 2
	.quad 33
	.quad 61
	.text

#.section .rodata
.align 8
.L444:
	.quad 2
	.quad 62
	.quad 61
	.text

#.section .rodata
.align 8
.L449:
	.quad 2
	.quad 61
	.quad 61
	.text

#.section .rodata
.align 8
.L429:
	.quad 1
	.quad 60
	.text

#.section .rodata
.align 8
.L427:
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

