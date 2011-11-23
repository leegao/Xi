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
	leaq .L496(%rip), %rdi		# leaq .L496(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1718)
	movq %r13, %rdi		# movq %r(1718), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L495:		# .L495:
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
	leaq .L498(%rip), %rdi		# leaq .L498(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1722)
	movq %r12, %r12		# movq %r(1722), %r(1758)
	movq %r12, -16(%rbp)		# movq %r(1758), -16(%rbp)
	leaq .L499(%rip), %rdi		# leaq .L499(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1723)
	movq %r13, %r13		# movq %r(1723), %r(question)
	movq $16, %r12		# movq $16, %r(1740)
	movq %r12, %rdi		# movq %r(1740), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1724)
	movq %rbx, %rbx		# movq %r(1724), %r(1707)
	movq %rbx, %rdi		# movq %r(1707), %rdi
	movq %r13, %rsi		# movq %r(question), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%rbx), %r13		# movq 0(%r(1707)), %r(n)
	movq 8(%rbx), %r14		# movq 8(%r(1707)), %r(ok)
	leaq .L500(%rip), %rdi		# leaq .L500(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1726)
	movq $1, %rbx		# movq $1, %r(1742)
	movq %rbx, %r15		# movq %r(1742), %r(1710)
	movq $0, %rbx		# movq $0, %r(1759)
	movq %rbx, -8(%rbp)		# movq %r(1759), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1760)
	cmpq %rbx, %r13		# cmpq %r(1760), %r(n)
	je .L501		# je .L501
	.L502:		# .L502:
	movq $0, %rbx		# movq $0, %r(1744)
	movq %rbx, %r15		# movq %r(1744), %r(1710)
	.L501:		# .L501:
	movq %r12, %rdi		# movq %r(1726), %rdi
	movq %r15, %rsi		# movq %r(1710), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L503(%rip), %rdi		# leaq .L503(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1728)
	movq $1, %r15		# movq $1, %r(1746)
	movq %r15, %r15		# movq %r(1746), %r(1711)
	movq $0, %r13		# movq $0, %r(1747)
	cmpq %r13, %r14		# cmpq %r(1747), %r(ok)
	je .L504		# je .L504
	.L505:		# .L505:
	movq $0, %r15		# movq $0, %r(1748)
	movq %r15, %r15		# movq %r(1748), %r(1711)
	.L504:		# .L504:
	movq %r12, %rdi		# movq %r(1728), %rdi
	movq %r15, %rsi		# movq %r(1711), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $16, %rbx		# movq $16, %r(1749)
	movq %rbx, %rdi		# movq %r(1749), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1730)
	movq %r13, %r13		# movq %r(1730), %r(1713)
	movq %r13, %rdi		# movq %r(1713), %rdi
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1761)
	movq %r12, %rsi		# movq %r(1761), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r13), %r15		# movq 0(%r(1713)), %r(n2)
	movq 8(%r13), %r14		# movq 8(%r(1713)), %r(ok2)
	leaq .L506(%rip), %rdi		# leaq .L506(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1732)
	movq $1, %r12		# movq $1, %r(1751)
	movq %r12, %rbx		# movq %r(1751), %r(1716)
	movq $42, %r12		# movq $42, %r(1752)
	cmpq %r12, %r15		# cmpq %r(1752), %r(n2)
	je .L507		# je .L507
	.L508:		# .L508:
	movq $0, %rbx		# movq $0, %r(1753)
	movq %rbx, %rbx		# movq %r(1753), %r(1716)
	.L507:		# .L507:
	movq %r13, %rdi		# movq %r(1732), %rdi
	movq %rbx, %rsi		# movq %r(1716), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L509(%rip), %rdi		# leaq .L509(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1734)
	movq $1, %r15		# movq $1, %r(1755)
	movq %r15, %r15		# movq %r(1755), %r(1717)
	movq $1, %r13		# movq $1, %r(1756)
	cmpq %r13, %r14		# cmpq %r(1756), %r(ok2)
	je .L510		# je .L510
	.L511:		# .L511:
	movq $0, %r15		# movq $0, %r(1757)
	movq %r15, %r15		# movq %r(1757), %r(1717)
	.L510:		# .L510:
	movq %r12, %rdi		# movq %r(1734), %rdi
	movq %r15, %rsi		# movq %r(1717), %rsi
	call _Itest_paib		# call _Itest_paib
	.L497:		# .L497:
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
	movq %rdi, %rbx		# movq %rdi, %r(1774)
	movq %rbx, -24(%rbp)		# movq %r(1774), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1775)
	movq (%rbx), %r12		# movq (%r(1775)), %r(1762)
	movq %r12, %r12		# movq %r(1762), %r(1776)
	movq %r12, -8(%rbp)		# movq %r(1776), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1777)
	movq %rbx, %rbx		# movq %r(1777), %r(1763)
	salq $3, %rbx		# salq $3, %r(1763)
	movq $8, %r12		# movq $8, %r(1764)
	movq %rbx, %rbx		# movq %r(1763), %r(1765)
	addq %r12, %rbx		# addq %r(1764), %r(1765)
	movq %rbx, %rdi		# movq %r(1765), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1736)
	movq %rbx, %r14		# movq %r(1736), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1778)
	movq %r12, %r12		# movq %r(1778), %r(1766)
	salq $3, %r12		# salq $3, %r(1766)
	movq %r14, %r13		# movq %r(t27), %r(1767)
	addq %r12, %r13		# addq %r(1766), %r(1767)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1779)
	movq %rbx, %r12		# movq %r(1779), %r(1768)
	salq $3, %r12		# salq $3, %r(1768)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1780)
	movq %rbx, %rbx		# movq %r(1780), %r(1781)
	movq %rbx, -16(%rbp)		# movq %r(1781), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1782)
	addq %r12, %rbx		# addq %r(1768), %r(1782)
	movq %rbx, -16(%rbp)		# movq %r(1782), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1783)
	movq (%rbx), %rbx		# movq (%r(1783)), %r(1770)
	movq %rbx, (%r13)		# movq %r(1770), (%r(1767))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1784)
	decq %rbx		# decq %r(1784)
	movq %rbx, -8(%rbp)		# movq %r(1784), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1771)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1785)
	cmpq %rbx, %r12		# cmpq %r(1771), %r(1785)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1772)
	movq %r14, %r12		# movq %r(t27), %r(1773)
	addq %rbx, %r12		# addq %r(1772), %r(1773)
	movq %r12, %rax		# movq %r(1773), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L509:
	.quad 1
	.quad 51
	.text

.section .rodata
.align 8
.L503:
	.quad 1
	.quad 49
	.text

.section .rodata
.align 8
.L499:
	.quad 2
	.quad 63
	.quad 63
	.text

.section .rodata
.align 8
.L496:
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

.section .rodata
.align 8
.L506:
	.quad 1
	.quad 50
	.text

.section .rodata
.align 8
.L500:
	.quad 1
	.quad 48
	.text

.section .rodata
.align 8
.L498:
	.quad 2
	.quad 52
	.quad 50
	.text

