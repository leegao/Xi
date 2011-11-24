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
	leaq .L497(%rip), %rdi		# leaq .L497(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1772)
	movq %r13, %rdi		# movq %r(1772), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L496:		# .L496:
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
	leaq .L499(%rip), %rdi		# leaq .L499(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1776)
	movq %r12, -16(%rbp)		# movq %r(1812), -16(%rbp)
	leaq .L500(%rip), %rdi		# leaq .L500(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1777)
	movq $16, %r12		# movq $16, %r(1794)
	movq %r12, %rdi		# movq %r(1794), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1778)
	movq %rbx, %rdi		# movq %r(1761), %rdi
	movq %r13, %rsi		# movq %r(question), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%rbx), %r13		# movq 0(%r(1761)), %r(n)
	movq 8(%rbx), %r14		# movq 8(%r(1761)), %r(ok)
	leaq .L501(%rip), %rdi		# leaq .L501(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1780)
	movq $1, %rbx		# movq $1, %r(1796)
	movq %rbx, %r15		# movq %r(1796), %r(1764)
	movq $0, %rbx		# movq $0, %r(1813)
	movq %rbx, -8(%rbp)		# movq %r(1813), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1814)
	cmpq %rbx, %r13		# cmpq %r(1814), %r(n)
	je .L502		# je .L502
	.L503:		# .L503:
	movq $0, %rbx		# movq $0, %r(1798)
	movq %rbx, %r15		# movq %r(1798), %r(1764)
	.L502:		# .L502:
	movq %r12, %rdi		# movq %r(1780), %rdi
	movq %r15, %rsi		# movq %r(1764), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L504(%rip), %rdi		# leaq .L504(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1782)
	movq $1, %r15		# movq $1, %r(1800)
	movq $0, %r13		# movq $0, %r(1801)
	cmpq %r13, %r14		# cmpq %r(1801), %r(ok)
	je .L505		# je .L505
	.L506:		# .L506:
	movq $0, %r15		# movq $0, %r(1802)
	.L505:		# .L505:
	movq %r12, %rdi		# movq %r(1782), %rdi
	movq %r15, %rsi		# movq %r(1765), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $16, %rbx		# movq $16, %r(1803)
	movq %rbx, %rdi		# movq %r(1803), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1784)
	movq %r13, %rdi		# movq %r(1767), %rdi
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1815)
	movq %r12, %rsi		# movq %r(1815), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r13), %r15		# movq 0(%r(1767)), %r(n2)
	movq 8(%r13), %r14		# movq 8(%r(1767)), %r(ok2)
	leaq .L507(%rip), %rdi		# leaq .L507(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1786)
	movq $1, %r12		# movq $1, %r(1805)
	movq %r12, %rbx		# movq %r(1805), %r(1770)
	movq $42, %r12		# movq $42, %r(1806)
	cmpq %r12, %r15		# cmpq %r(1806), %r(n2)
	je .L508		# je .L508
	.L509:		# .L509:
	movq $0, %rbx		# movq $0, %r(1807)
	.L508:		# .L508:
	movq %r13, %rdi		# movq %r(1786), %rdi
	movq %rbx, %rsi		# movq %r(1770), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L510(%rip), %rdi		# leaq .L510(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1788)
	movq $1, %r15		# movq $1, %r(1809)
	movq $1, %r13		# movq $1, %r(1810)
	cmpq %r13, %r14		# cmpq %r(1810), %r(ok2)
	je .L511		# je .L511
	.L512:		# .L512:
	movq $0, %r15		# movq $0, %r(1811)
	.L511:		# .L511:
	movq %r12, %rdi		# movq %r(1788), %rdi
	movq %r15, %rsi		# movq %r(1771), %rsi
	call _Itest_paib		# call _Itest_paib
	.L498:		# .L498:
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
	movq %rdi, %rbx		# movq %rdi, %r(1831)
	movq %rbx, -32(%rbp)		# movq %r(1831), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1832)
	movq (%rbx), %r12		# movq (%r(1832)), %r(1816)
	movq %r12, -24(%rbp)		# movq %r(1833), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1834)
	salq $3, %rbx		# salq $3, %r(1817)
	movq $8, %r12		# movq $8, %r(1818)
	addq %r12, %rbx		# addq %r(1818), %r(1819)
	movq %rbx, %rdi		# movq %r(1819), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1790)
	movq %r12, -40(%rbp)		# movq %r(1835), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1836)
	salq $3, %r13		# salq $3, %r(1820)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1837)
	movq %rbx, -16(%rbp)		# movq %r(1838), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1839)
	addq %r13, %r12		# addq %r(1820), %r(1839)
	movq %r12, -16(%rbp)		# movq %r(1839), -16(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1840)
	salq $3, %r13		# salq $3, %r(1822)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1841)
	movq %rbx, -8(%rbp)		# movq %r(1828), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1829)
	addq %r13, %r12		# addq %r(1822), %r(1829)
	movq %r12, -8(%rbp)		# movq %r(1829), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1830)
	movq (%rbx), %rbx		# movq (%r(1830)), %r(1824)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1842)
	movq %rbx, (%r12)		# movq %r(1824), (%r(1842))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1843)
	decq %rbx		# decq %r(1843)
	movq %rbx, -24(%rbp)		# movq %r(1843), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1825)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1844)
	cmpq %rbx, %r12		# cmpq %r(1825), %r(1844)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1826)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1845)
	addq %rbx, %r13		# addq %r(1826), %r(1827)
	movq %r13, %rax		# movq %r(1827), %rax
	.L18:		# .L18:
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
.L504:
	.quad 1
	.quad 49
	.text

#.section .rodata
.align 8
.L501:
	.quad 1
	.quad 48
	.text

#.section .rodata
.align 8
.L500:
	.quad 2
	.quad 63
	.quad 63
	.text

#.section .rodata
.align 8
.L510:
	.quad 1
	.quad 51
	.text

#.section .rodata
.align 8
.L497:
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
.L507:
	.quad 1
	.quad 50
	.text

#.section .rodata
.align 8
.L499:
	.quad 2
	.quad 52
	.quad 50
	.text

