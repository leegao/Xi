.att_syntax prefix
.text
.globl _IA_aiai
_IA_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(x)
	movq %r12, %r12		# movq %r(x), %r(1771)
	movq %r12, -16(%rbp)		# movq %r(1771), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1772)
	movq %r12, %r12		# movq %r(1772), %r(1773)
	movq %r12, -24(%rbp)		# movq %r(1773), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1748)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1774)
	movq %r13, %r13		# movq %r(1774), %r(1749)
	subq %rbx, %r13		# subq %r(1748), %r(1749)
	movq (%r13), %rbx		# movq (%r(1749)), %r(1750)
	movq $1, %r12		# movq $1, %r(1751)
	movq %rbx, %rbx		# movq %r(1750), %r(1752)
	subq %r12, %rbx		# subq %r(1751), %r(1752)
	movq %rbx, %rbx		# movq %r(1752), %r(1775)
	movq %rbx, -40(%rbp)		# movq %r(1775), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(1753)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1776)
	movq %r13, %r13		# movq %r(1776), %r(1754)
	subq %rbx, %r13		# subq %r(1753), %r(1754)
	movq (%r13), %rbx		# movq (%r(1754)), %r(1755)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1777)
	cmpq %rbx, %r12		# cmpq %r(1755), %r(1777)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1778)
	movq %r12, %r12		# movq %r(1778), %r(1779)
	movq %r12, -8(%rbp)		# movq %r(1779), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(1756)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1780)
	movq %r13, %r13		# movq %r(1780), %r(1757)
	subq %rbx, %r13		# subq %r(1756), %r(1757)
	movq (%r13), %r14		# movq (%r(1757)), %r(1758)
	movq $1, %r12		# movq $1, %r(1759)
	movq %r14, %r14		# movq %r(1758), %r(1760)
	subq %r12, %r14		# subq %r(1759), %r(1760)
	movq %r14, %r14		# movq %r(1760), %r(1725)
	movq $8, %r13		# movq $8, %r(1761)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1781)
	movq %rbx, %rbx		# movq %r(1781), %r(1782)
	movq %rbx, -32(%rbp)		# movq %r(1782), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1783)
	subq %r13, %r12		# subq %r(1761), %r(1783)
	movq %r12, -32(%rbp)		# movq %r(1783), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1784)
	movq (%r12), %r12		# movq (%r(1784)), %r(1763)
	cmpq %r12, %r14		# cmpq %r(1763), %r(1725)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r14		# movq %r(1725), %r(1764)
	salq $3, %r14		# salq $3, %r(1764)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(1785)
	movq %r15, %r15		# movq %r(1785), %r(1765)
	addq %r14, %r15		# addq %r(1764), %r(1765)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1786)
	movq %r14, %r14		# movq %r(1786), %r(1766)
	salq $3, %r14		# salq $3, %r(1766)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1787)
	movq %rbx, %rbx		# movq %r(1787), %r(1767)
	addq %r14, %rbx		# addq %r(1766), %r(1767)
	movq (%rbx), %r12		# movq (%r(1767)), %r(1768)
	movq $1, %r13		# movq $1, %r(1769)
	movq %r12, %r12		# movq %r(1768), %r(1770)
	subq %r13, %r12		# subq %r(1769), %r(1770)
	movq %r12, (%r15)		# movq %r(1770), (%r(1765))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1788)
	movq %rbx, %rax		# movq %r(1788), %rax
	jmp .L249		# jmp .L249
	.L249:		# .L249:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IB_aiai
_IB_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(x)
	movq %r12, %r12		# movq %r(x), %r(1804)
	movq %r12, -8(%rbp)		# movq %r(1804), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1805)
	movq %r12, %r12		# movq %r(1805), %r(1806)
	movq %r12, -24(%rbp)		# movq %r(1806), -24(%rbp)
	movq $0, %r12		# movq $0, %r(1789)
	movq %r12, %r12		# movq %r(1789), %r(1807)
	movq %r12, -16(%rbp)		# movq %r(1807), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1790)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1808)
	movq %r13, %r13		# movq %r(1808), %r(1791)
	subq %rbx, %r13		# subq %r(1790), %r(1791)
	movq (%r13), %rbx		# movq (%r(1791)), %r(1792)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1809)
	cmpq %rbx, %r12		# cmpq %r(1792), %r(1809)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1810)
	movq %rbx, %r15		# movq %r(1810), %r(1730)
	movq $0, %rbx		# movq $0, %r(1793)
	movq %rbx, %r14		# movq %r(1793), %r(1731)
	movq $8, %r13		# movq $8, %r(1794)
	movq %r15, %rbx		# movq %r(1730), %r(1811)
	movq %rbx, -32(%rbp)		# movq %r(1811), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1812)
	subq %r13, %rbx		# subq %r(1794), %r(1812)
	movq %rbx, -32(%rbp)		# movq %r(1812), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1813)
	movq (%rbx), %rbx		# movq (%r(1813)), %r(1796)
	cmpq %rbx, %r14		# cmpq %r(1796), %r(1731)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %rbx		# movq %r(1731), %r(1797)
	salq $3, %rbx		# salq $3, %r(1797)
	movq %r15, %r13		# movq %r(1730), %r(1798)
	addq %rbx, %r13		# addq %r(1797), %r(1798)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1814)
	movq %r14, %r14		# movq %r(1814), %r(1799)
	salq $3, %r14		# salq $3, %r(1799)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1815)
	movq %rbx, %rbx		# movq %r(1815), %r(1800)
	addq %r14, %rbx		# addq %r(1799), %r(1800)
	movq (%rbx), %r14		# movq (%r(1800)), %r(1801)
	movq $1, %r12		# movq $1, %r(1802)
	movq %r14, %r14		# movq %r(1801), %r(1803)
	addq %r12, %r14		# addq %r(1802), %r(1803)
	movq %r14, (%r13)		# movq %r(1803), (%r(1798))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1816)
	movq %rbx, %rax		# movq %r(1816), %rax
	jmp .L254		# jmp .L254
	.L254:		# .L254:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	leaq .L260(%rip), %rdi		# leaq .L260(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1740)
	movq %rbx, %rbx		# movq %r(1740), %r(input)
	movq $10, %r14		# movq $10, %r(1818)
	movq %r14, %r14		# movq %r(1818), %r(count)
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L261:		# .L261:
	movq $0, %r12		# movq $0, %r(1819)
	cmpq %r12, %r14		# cmpq %r(1819), %r(count)
	jle .L263		# jle .L263
	.L262:		# .L262:
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _IA_aiai		# call _IA_aiai
	movq %rax, %rbx		# movq %rax, %r(1742)
	movq %rbx, %rbx		# movq %r(1742), %r(input)
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _IB_aiai		# call _IB_aiai
	movq %rax, %rbx		# movq %rax, %r(1744)
	movq %rbx, %rbx		# movq %r(1744), %r(input)
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r14		# decq %r(count)
	jmp .L261		# jmp .L261
	.L263:		# .L263:
	.L259:		# .L259:
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(1820)
	movq %r12, %r12		# movq %r(1820), %r(1832)
	movq %r12, -16(%rbp)		# movq %r(1832), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1833)
	movq %rbx, %rbx		# movq %r(1833), %r(1821)
	salq $3, %rbx		# salq $3, %r(1821)
	movq $8, %r12		# movq $8, %r(1822)
	movq %rbx, %rbx		# movq %r(1821), %r(1823)
	addq %r12, %rbx		# addq %r(1822), %r(1823)
	movq %rbx, %rdi		# movq %r(1823), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1746)
	movq %rbx, %r13		# movq %r(1746), %r(t27)
	.L264:		# .L264:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1834)
	movq %r12, %r12		# movq %r(1834), %r(1824)
	salq $3, %r12		# salq $3, %r(1824)
	movq %r13, %r15		# movq %r(t27), %r(1825)
	addq %r12, %r15		# addq %r(1824), %r(1825)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1835)
	movq %rbx, %r12		# movq %r(1835), %r(1826)
	salq $3, %r12		# salq $3, %r(1826)
	movq %r14, %rbx		# movq %r(p0), %r(1836)
	movq %rbx, -8(%rbp)		# movq %r(1836), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1837)
	addq %r12, %rbx		# addq %r(1826), %r(1837)
	movq %rbx, -8(%rbp)		# movq %r(1837), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1838)
	movq (%rbx), %rbx		# movq (%r(1838)), %r(1828)
	movq %rbx, (%r15)		# movq %r(1828), (%r(1825))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1839)
	decq %rbx		# decq %r(1839)
	movq %rbx, -16(%rbp)		# movq %r(1839), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1829)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1840)
	cmpq %rbx, %r12		# cmpq %r(1829), %r(1840)
	jge .L264		# jge .L264
	.L265:		# .L265:
	movq $8, %rbx		# movq $8, %r(1830)
	movq %r13, %r12		# movq %r(t27), %r(1831)
	addq %rbx, %r12		# addq %r(1830), %r(1831)
	movq %r12, %rax		# movq %r(1831), %rax
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
.L260:
	.quad 11
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
