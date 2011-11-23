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
	movq %rax, %r13		# movq %rax, %r(1756)
	movq %r13, %rdi		# movq %r(1756), %rdi
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
	movq %rax, %r12		# movq %rax, %r(1760)
	movq %r12, %r12		# movq %r(1760), %r(1796)
	movq %r12, -8(%rbp)		# movq %r(1796), -8(%rbp)
	leaq .L499(%rip), %rdi		# leaq .L499(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1761)
	movq %r13, %r13		# movq %r(1761), %r(question)
	movq $16, %r12		# movq $16, %r(1778)
	movq %r12, %rdi		# movq %r(1778), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1762)
	movq %rbx, %rbx		# movq %r(1762), %r(1745)
	movq %rbx, %rdi		# movq %r(1745), %rdi
	movq %r13, %rsi		# movq %r(question), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%rbx), %r13		# movq 0(%r(1745)), %r(n)
	movq 8(%rbx), %r14		# movq 8(%r(1745)), %r(ok)
	leaq .L500(%rip), %rdi		# leaq .L500(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1764)
	movq $1, %rbx		# movq $1, %r(1780)
	movq %rbx, %r15		# movq %r(1780), %r(1748)
	movq $0, %rbx		# movq $0, %r(1797)
	movq %rbx, -16(%rbp)		# movq %r(1797), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1798)
	cmpq %rbx, %r13		# cmpq %r(1798), %r(n)
	je .L501		# je .L501
	.L502:		# .L502:
	movq $0, %rbx		# movq $0, %r(1782)
	movq %rbx, %r15		# movq %r(1782), %r(1748)
	.L501:		# .L501:
	movq %r12, %rdi		# movq %r(1764), %rdi
	movq %r15, %rsi		# movq %r(1748), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L503(%rip), %rdi		# leaq .L503(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1766)
	movq $1, %r15		# movq $1, %r(1784)
	movq %r15, %r15		# movq %r(1784), %r(1749)
	movq $0, %r13		# movq $0, %r(1785)
	cmpq %r13, %r14		# cmpq %r(1785), %r(ok)
	je .L504		# je .L504
	.L505:		# .L505:
	movq $0, %r15		# movq $0, %r(1786)
	movq %r15, %r15		# movq %r(1786), %r(1749)
	.L504:		# .L504:
	movq %r12, %rdi		# movq %r(1766), %rdi
	movq %r15, %rsi		# movq %r(1749), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $16, %rbx		# movq $16, %r(1787)
	movq %rbx, %rdi		# movq %r(1787), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1768)
	movq %r13, %r13		# movq %r(1768), %r(1751)
	movq %r13, %rdi		# movq %r(1751), %rdi
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1799)
	movq %r12, %rsi		# movq %r(1799), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r13), %r15		# movq 0(%r(1751)), %r(n2)
	movq 8(%r13), %r14		# movq 8(%r(1751)), %r(ok2)
	leaq .L506(%rip), %rdi		# leaq .L506(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1770)
	movq $1, %r12		# movq $1, %r(1789)
	movq %r12, %rbx		# movq %r(1789), %r(1754)
	movq $42, %r12		# movq $42, %r(1790)
	cmpq %r12, %r15		# cmpq %r(1790), %r(n2)
	je .L507		# je .L507
	.L508:		# .L508:
	movq $0, %rbx		# movq $0, %r(1791)
	movq %rbx, %rbx		# movq %r(1791), %r(1754)
	.L507:		# .L507:
	movq %r13, %rdi		# movq %r(1770), %rdi
	movq %rbx, %rsi		# movq %r(1754), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L509(%rip), %rdi		# leaq .L509(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1772)
	movq $1, %r15		# movq $1, %r(1793)
	movq %r15, %r15		# movq %r(1793), %r(1755)
	movq $1, %r13		# movq $1, %r(1794)
	cmpq %r13, %r14		# cmpq %r(1794), %r(ok2)
	je .L510		# je .L510
	.L511:		# .L511:
	movq $0, %r15		# movq $0, %r(1795)
	movq %r15, %r15		# movq %r(1795), %r(1755)
	.L510:		# .L510:
	movq %r12, %rdi		# movq %r(1772), %rdi
	movq %r15, %rsi		# movq %r(1755), %rsi
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1815)
	movq %rbx, -32(%rbp)		# movq %r(1815), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1816)
	movq (%rbx), %r12		# movq (%r(1816)), %r(1800)
	movq %r12, %r12		# movq %r(1800), %r(1817)
	movq %r12, -24(%rbp)		# movq %r(1817), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1818)
	movq %rbx, %rbx		# movq %r(1818), %r(1801)
	salq $3, %rbx		# salq $3, %r(1801)
	movq $8, %r12		# movq $8, %r(1802)
	movq %rbx, %rbx		# movq %r(1801), %r(1803)
	addq %r12, %rbx		# addq %r(1802), %r(1803)
	movq %rbx, %rdi		# movq %r(1803), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1774)
	movq %r12, %r12		# movq %r(1774), %r(1819)
	movq %r12, -40(%rbp)		# movq %r(1819), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1820)
	movq %r13, %r13		# movq %r(1820), %r(1804)
	salq $3, %r13		# salq $3, %r(1804)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1821)
	movq %rbx, %rbx		# movq %r(1821), %r(1822)
	movq %rbx, -16(%rbp)		# movq %r(1822), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1823)
	addq %r13, %r12		# addq %r(1804), %r(1823)
	movq %r12, -16(%rbp)		# movq %r(1823), -16(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1824)
	movq %r13, %r13		# movq %r(1824), %r(1806)
	salq $3, %r13		# salq $3, %r(1806)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1825)
	movq %rbx, %rbx		# movq %r(1825), %r(1812)
	movq %rbx, -8(%rbp)		# movq %r(1812), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1813)
	addq %r13, %r12		# addq %r(1806), %r(1813)
	movq %r12, -8(%rbp)		# movq %r(1813), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1814)
	movq (%rbx), %rbx		# movq (%r(1814)), %r(1808)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1826)
	movq %rbx, (%r12)		# movq %r(1808), (%r(1826))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1827)
	decq %rbx		# decq %r(1827)
	movq %rbx, -24(%rbp)		# movq %r(1827), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1809)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1828)
	cmpq %rbx, %r12		# cmpq %r(1809), %r(1828)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1810)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1829)
	movq %r13, %r13		# movq %r(1829), %r(1811)
	addq %rbx, %r13		# addq %r(1810), %r(1811)
	movq %r13, %rax		# movq %r(1811), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
.L509:
	.quad 1
	.quad 51
	.text

.section .rodata
.align 8
.L498:
	.quad 2
	.quad 52
	.quad 50
	.text

.section .rodata
.align 8
.L503:
	.quad 1
	.quad 49
	.text

