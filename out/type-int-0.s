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
	movq %rax, %r13		# movq %rax, %r(1948)
	movq %r13, %rdi		# movq %r(1948), %rdi
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
	movq %rax, %rbx		# movq %rax, %r(1952)
	.L322:		# .L322:
	movq $1, %r12		# movq $1, %r(1969)
	movq %rbx, %rdi		# movq %r(1952), %rdi
	movq %r12, %rsi		# movq %r(1969), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L324(%rip), %rdi		# leaq .L324(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1954)
	.L325:		# .L325:
	movq $1, %r12		# movq $1, %r(1971)
	movq %rbx, %rdi		# movq %r(1954), %rdi
	movq %r12, %rsi		# movq %r(1971), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L327(%rip), %rdi		# leaq .L327(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1956)
	.L328:		# .L328:
	movq $1, %r12		# movq $1, %r(1973)
	movq %rbx, %rdi		# movq %r(1956), %rdi
	movq %r12, %rsi		# movq %r(1973), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L330(%rip), %rdi		# leaq .L330(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1958)
	.L331:		# .L331:
	movq $1, %r12		# movq $1, %r(1975)
	movq %rbx, %rdi		# movq %r(1958), %rdi
	movq %r12, %rsi		# movq %r(1975), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L333(%rip), %rdi		# leaq .L333(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1960)
	.L334:		# .L334:
	movq $1, %r12		# movq $1, %r(1977)
	movq %rbx, %rdi		# movq %r(1960), %rdi
	movq %r12, %rsi		# movq %r(1977), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L336(%rip), %rdi		# leaq .L336(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1962)
	.L337:		# .L337:
	movq $1, %r12		# movq $1, %r(1979)
	movq %rbx, %rdi		# movq %r(1962), %rdi
	movq %r12, %rsi		# movq %r(1979), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L339(%rip), %rdi		# leaq .L339(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1964)
	.L340:		# .L340:
	movq $1, %r12		# movq $1, %r(1981)
	movq %rbx, %rdi		# movq %r(1964), %rdi
	movq %r12, %rsi		# movq %r(1981), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1994)
	movq %rbx, -24(%rbp)		# movq %r(1994), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1995)
	movq (%rbx), %r13		# movq (%r(1995)), %r(1982)
	movq %r13, %r12		# movq %r(1982), %r(1996)
	movq %r12, -8(%rbp)		# movq %r(1996), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1997)
	movq %r12, %r13		# movq %r(1997), %r(1983)
	salq $3, %r13		# salq $3, %r(1983)
	movq $8, %rbx		# movq $8, %r(1984)
	movq %r13, %r14		# movq %r(1983), %r(1985)
	addq %rbx, %r14		# addq %r(1984), %r(1985)
	movq %r14, %rdi		# movq %r(1985), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1966)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1998)
	movq %r13, %rbx		# movq %r(1998), %r(1986)
	salq $3, %rbx		# salq $3, %r(1986)
	movq %r15, %r13		# movq %r(1966), %r(1987)
	addq %rbx, %r13		# addq %r(1986), %r(1987)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1999)
	movq %rbx, %r12		# movq %r(1999), %r(1988)
	salq $3, %r12		# salq $3, %r(1988)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2000)
	movq %rbx, %r14		# movq %r(2000), %r(2001)
	movq %r14, -16(%rbp)		# movq %r(2001), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2002)
	addq %r12, %rbx		# addq %r(1988), %r(2002)
	movq %rbx, -16(%rbp)		# movq %r(2002), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2003)
	movq (%rbx), %r12		# movq (%r(2003)), %r(1990)
	movq %r12, (%r13)		# movq %r(1990), (%r(1987))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2004)
	decq %rbx		# decq %r(2004)
	movq %rbx, -8(%rbp)		# movq %r(2004), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1991)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2005)
	cmpq %rbx, %r12		# cmpq %r(1991), %r(2005)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1992)
	movq %r15, %r13		# movq %r(1966), %r(1993)
	addq %rbx, %r13		# addq %r(1992), %r(1993)
	movq %r13, %rax		# movq %r(1993), %rax
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
.L336:
	.quad 1
	.quad 37
	.text

#.section .rodata
.align 8
.L327:
	.quad 1
	.quad 42
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
.L333:
	.quad 2
	.quad 47
	.quad 50
	.text

#.section .rodata
.align 8
.L330:
	.quad 1
	.quad 47
	.text

#.section .rodata
.align 8
.L321:
	.quad 1
	.quad 43
	.text

