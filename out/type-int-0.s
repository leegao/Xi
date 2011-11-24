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
	leaq .L319(%rip), %rdi		# leaq .L319(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1805)
	movq %r13, %rdi		# movq %r(1805), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L318		# jmp .L318
	.L318:		# .L318:
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
	leaq .L321(%rip), %rdi		# leaq .L321(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1809)
	.L322:		# .L322:
	movq $1, %r12		# movq $1, %r(1826)
	movq %rbx, %rdi		# movq %r(1809), %rdi
	movq %r12, %rsi		# movq %r(1826), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L324(%rip), %rdi		# leaq .L324(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1811)
	.L325:		# .L325:
	movq $1, %r12		# movq $1, %r(1828)
	movq %rbx, %rdi		# movq %r(1811), %rdi
	movq %r12, %rsi		# movq %r(1828), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L327(%rip), %rdi		# leaq .L327(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1813)
	.L328:		# .L328:
	movq $1, %r12		# movq $1, %r(1830)
	movq %rbx, %rdi		# movq %r(1813), %rdi
	movq %r12, %rsi		# movq %r(1830), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L330(%rip), %rdi		# leaq .L330(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1815)
	.L331:		# .L331:
	movq $1, %r12		# movq $1, %r(1832)
	movq %rbx, %rdi		# movq %r(1815), %rdi
	movq %r12, %rsi		# movq %r(1832), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L333(%rip), %rdi		# leaq .L333(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1817)
	.L334:		# .L334:
	movq $1, %r12		# movq $1, %r(1834)
	movq %rbx, %rdi		# movq %r(1817), %rdi
	movq %r12, %rsi		# movq %r(1834), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L336(%rip), %rdi		# leaq .L336(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1819)
	.L337:		# .L337:
	movq $1, %r12		# movq $1, %r(1836)
	movq %rbx, %rdi		# movq %r(1819), %rdi
	movq %r12, %rsi		# movq %r(1836), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L339(%rip), %rdi		# leaq .L339(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1821)
	.L340:		# .L340:
	movq $1, %r12		# movq $1, %r(1838)
	movq %rbx, %rdi		# movq %r(1821), %rdi
	movq %r12, %rsi		# movq %r(1838), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L320		# jmp .L320
	.L320:		# .L320:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1851)
	movq %rbx, -16(%rbp)		# movq %r(1851), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1852)
	movq (%rbx), %rbx		# movq (%r(1852)), %r(1839)
	movq %rbx, %r14		# movq %r(1839), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1840)
	salq $3, %rbx		# salq $3, %r(1840)
	movq $8, %r12		# movq $8, %r(1841)
	addq %r12, %rbx		# addq %r(1841), %r(1842)
	movq %rbx, %rdi		# movq %r(1842), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1823)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(1843)
	salq $3, %rbx		# salq $3, %r(1843)
	movq %r12, %r13		# movq %r(1823), %r(1844)
	addq %rbx, %r13		# addq %r(1843), %r(1844)
	movq %r14, %r15		# movq %r(t10), %r(1845)
	salq $3, %r15		# salq $3, %r(1845)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1853)
	movq %rbx, -8(%rbp)		# movq %r(1854), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1855)
	addq %r15, %rbx		# addq %r(1845), %r(1855)
	movq %rbx, -8(%rbp)		# movq %r(1855), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1856)
	movq (%rbx), %rbx		# movq (%r(1856)), %r(1847)
	movq %rbx, (%r13)		# movq %r(1847), (%r(1844))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1848)
	cmpq %rbx, %r14		# cmpq %r(1848), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1849)
	addq %rbx, %r12		# addq %r(1849), %r(1850)
	movq %r12, %rax		# movq %r(1850), %rax
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
.L339:
	.quad 2
	.quad 37
	.quad 50
	.text

#.section .rodata
.align 8
.L324:
	.quad 1
	.quad 45
	.text

#.section .rodata
.align 8
.L330:
	.quad 1
	.quad 47
	.text

#.section .rodata
.align 8
.L327:
	.quad 1
	.quad 42
	.text

#.section .rodata
.align 8
.L321:
	.quad 1
	.quad 43
	.text

#.section .rodata
.align 8
.L319:
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
.L336:
	.quad 1
	.quad 37
	.text

#.section .rodata
.align 8
.L333:
	.quad 2
	.quad 47
	.quad 50
	.text

