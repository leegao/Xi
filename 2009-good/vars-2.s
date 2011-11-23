.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $65, %r14		# movq $65, %r(1753)
	leaq .L525(%rip), %rdi		# leaq .L525(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1745)
	movq %r13, -8(%rbp)		# movq %r(1794), -8(%rbp)
	movq $1, %r13		# movq $1, %r(1755)
	movq $65, %r12		# movq $65, %r(1756)
	cmpq %r12, %r14		# cmpq %r(1756), %r(a)
	je .L526		# je .L526
	.L527:		# .L527:
	movq $0, %r13		# movq $0, %r(1757)
	.L526:		# .L526:
	movq %r13, %rdi		# movq %r(1734), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1758)
	movq $8, %r12		# movq $8, %r(1759)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1795)
	subq %r12, %r14		# subq %r(1759), %r(1760)
	movq (%r14), %rbx		# movq (%r(1760)), %r(1761)
	movq $3, %r12		# movq $3, %r(1762)
	cmpq %r12, %rbx		# cmpq %r(1762), %r(1761)
	je .L528		# je .L528
	.L529:		# .L529:
	movq $0, %r13		# movq $0, %r(1763)
	.L528:		# .L528:
	movq %r13, %rdi		# movq %r(1735), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(1764)
	movq %r12, -32(%rbp)		# movq %r(1796), -32(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1797)
	movq %r12, -16(%rbp)		# movq %r(1798), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1765)
	movq $8, %r13		# movq $8, %r(1766)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1799)
	movq %r14, -48(%rbp)		# movq %r(1800), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1801)
	subq %r13, %r12		# subq %r(1766), %r(1801)
	movq %r12, -48(%rbp)		# movq %r(1801), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1802)
	movq (%r12), %r12		# movq (%r(1802)), %r(1768)
	cmpq %r12, %rbx		# cmpq %r(1768), %r(1737)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1769)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1803)
	addq %rbx, %r13		# addq %r(1769), %r(1770)
	movq (%r13), %rbx		# movq (%r(1770)), %r(1771)
	movq $65, %r12		# movq $65, %r(1772)
	cmpq %r12, %rbx		# cmpq %r(1772), %r(1771)
	je .L532		# je .L532
	.L533:		# .L533:
	movq $0, %r12		# movq $0, %r(1773)
	movq %r12, -32(%rbp)		# movq %r(1804), -32(%rbp)
	.L532:		# .L532:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1805)
	movq %rbx, %rdi		# movq %r(1805), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(1774)
	movq %r12, -24(%rbp)		# movq %r(1806), -24(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1807)
	movq $1, %r13		# movq $1, %r(1775)
	movq %r13, -40(%rbp)		# movq %r(1808), -40(%rbp)
	movq $8, %r12		# movq $8, %r(1776)
	movq %rbx, %r14		# movq %r(1739), %r(1777)
	subq %r12, %r14		# subq %r(1776), %r(1777)
	movq (%r14), %r12		# movq (%r(1777)), %r(1778)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1809)
	cmpq %r12, %r13		# cmpq %r(1778), %r(1809)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1810)
	salq $3, %r13		# salq $3, %r(1779)
	addq %r13, %rbx		# addq %r(1779), %r(1780)
	movq (%rbx), %rbx		# movq (%r(1780)), %r(1781)
	movq $66, %r12		# movq $66, %r(1782)
	cmpq %r12, %rbx		# cmpq %r(1782), %r(1781)
	je .L536		# je .L536
	.L537:		# .L537:
	movq $0, %r12		# movq $0, %r(1783)
	movq %r12, -24(%rbp)		# movq %r(1811), -24(%rbp)
	.L536:		# .L536:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1812)
	movq %rbx, %rdi		# movq %r(1812), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1784)
	movq %rbx, %r15		# movq %r(1784), %r(1744)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1813)
	movq %rbx, %r13		# movq %r(1813), %r(1742)
	movq $2, %rbx		# movq $2, %r(1785)
	movq %rbx, %r12		# movq %r(1785), %r(1743)
	movq $8, %rbx		# movq $8, %r(1786)
	movq %r13, %r14		# movq %r(1742), %r(1787)
	subq %rbx, %r14		# subq %r(1786), %r(1787)
	movq (%r14), %rbx		# movq (%r(1787)), %r(1788)
	cmpq %rbx, %r12		# cmpq %r(1788), %r(1743)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(1789)
	movq %r13, %rbx		# movq %r(1742), %r(1790)
	addq %r12, %rbx		# addq %r(1789), %r(1790)
	movq (%rbx), %rbx		# movq (%r(1790)), %r(1791)
	movq $67, %r12		# movq $67, %r(1792)
	cmpq %r12, %rbx		# cmpq %r(1792), %r(1791)
	je .L540		# je .L540
	.L541:		# .L541:
	movq $0, %rbx		# movq $0, %r(1793)
	movq %rbx, %r15		# movq %r(1793), %r(1744)
	.L540:		# .L540:
	movq %r15, %rdi		# movq %r(1744), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L524:		# .L524:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $64, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1826)
	movq %rbx, -16(%rbp)		# movq %r(1826), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1827)
	movq (%rbx), %rbx		# movq (%r(1827)), %r(1814)
	movq %rbx, %r14		# movq %r(1814), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1815)
	salq $3, %rbx		# salq $3, %r(1815)
	movq $8, %r12		# movq $8, %r(1816)
	addq %r12, %rbx		# addq %r(1816), %r(1817)
	movq %rbx, %rdi		# movq %r(1817), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1751)
	movq %rbx, %r15		# movq %r(1751), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(1818)
	salq $3, %rbx		# salq $3, %r(1818)
	movq %r15, %r13		# movq %r(t27), %r(1819)
	addq %rbx, %r13		# addq %r(1818), %r(1819)
	movq %r14, %r12		# movq %r(t10), %r(1820)
	salq $3, %r12		# salq $3, %r(1820)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1828)
	movq %rbx, -8(%rbp)		# movq %r(1829), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1830)
	addq %r12, %rbx		# addq %r(1820), %r(1830)
	movq %rbx, -8(%rbp)		# movq %r(1830), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1831)
	movq (%rbx), %rbx		# movq (%r(1831)), %r(1822)
	movq %rbx, (%r13)		# movq %r(1822), (%r(1819))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1823)
	cmpq %rbx, %r14		# cmpq %r(1823), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1824)
	movq %r15, %r12		# movq %r(t27), %r(1825)
	addq %rbx, %r12		# addq %r(1824), %r(1825)
	movq %r12, %rax		# movq %r(1825), %rax
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
.L525:
	.quad 3
	.quad 65
	.quad 66
	.quad 67
	.text

error_outofbounds:
call _I_outOfBounds_p
