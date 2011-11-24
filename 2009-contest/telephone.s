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
	movq %r12, -8(%rbp)		# movq %r(1810), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1811)
	movq %r12, -40(%rbp)		# movq %r(1812), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(1787)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1813)
	subq %rbx, %r13		# subq %r(1787), %r(1788)
	movq (%r13), %rbx		# movq (%r(1788)), %r(1789)
	movq $1, %r12		# movq $1, %r(1790)
	subq %r12, %rbx		# subq %r(1790), %r(1791)
	movq %rbx, -24(%rbp)		# movq %r(1814), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1792)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1815)
	subq %rbx, %r13		# subq %r(1792), %r(1793)
	movq (%r13), %rbx		# movq (%r(1793)), %r(1794)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1816)
	cmpq %rbx, %r12		# cmpq %r(1794), %r(1816)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1817)
	movq %r12, -16(%rbp)		# movq %r(1818), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1795)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1819)
	subq %rbx, %r13		# subq %r(1795), %r(1796)
	movq (%r13), %r14		# movq (%r(1796)), %r(1797)
	movq $1, %r12		# movq $1, %r(1798)
	subq %r12, %r14		# subq %r(1798), %r(1799)
	movq $8, %r13		# movq $8, %r(1800)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1820)
	movq %rbx, -32(%rbp)		# movq %r(1821), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1822)
	subq %r13, %r12		# subq %r(1800), %r(1822)
	movq %r12, -32(%rbp)		# movq %r(1822), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1823)
	movq (%r12), %r12		# movq (%r(1823)), %r(1802)
	cmpq %r12, %r14		# cmpq %r(1802), %r(1767)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1803)
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(1824)
	addq %r14, %r15		# addq %r(1803), %r(1804)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1825)
	salq $3, %r14		# salq $3, %r(1805)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1826)
	addq %r14, %rbx		# addq %r(1805), %r(1806)
	movq (%rbx), %r12		# movq (%r(1806)), %r(1807)
	movq $1, %r13		# movq $1, %r(1808)
	subq %r13, %r12		# subq %r(1808), %r(1809)
	movq %r12, (%r15)		# movq %r(1809), (%r(1804))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1827)
	movq %rbx, %rax		# movq %r(1827), %rax
	jmp .L270		# jmp .L270
	.L270:		# .L270:
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
	movq %r12, -16(%rbp)		# movq %r(1843), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1844)
	movq %r12, -8(%rbp)		# movq %r(1845), -8(%rbp)
	movq $0, %r12		# movq $0, %r(1828)
	movq %r12, -24(%rbp)		# movq %r(1846), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1829)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1847)
	subq %rbx, %r13		# subq %r(1829), %r(1830)
	movq (%r13), %rbx		# movq (%r(1830)), %r(1831)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1848)
	cmpq %rbx, %r12		# cmpq %r(1831), %r(1848)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1849)
	movq %rbx, %r13		# movq %r(1849), %r(1772)
	movq $0, %rbx		# movq $0, %r(1832)
	movq %rbx, %r14		# movq %r(1832), %r(1773)
	movq $8, %r12		# movq $8, %r(1833)
	movq %r13, %rbx		# movq %r(1772), %r(1850)
	movq %rbx, -32(%rbp)		# movq %r(1850), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1851)
	subq %r12, %rbx		# subq %r(1833), %r(1851)
	movq %rbx, -32(%rbp)		# movq %r(1851), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1852)
	movq (%rbx), %rbx		# movq (%r(1852)), %r(1835)
	cmpq %rbx, %r14		# cmpq %r(1835), %r(1773)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %rbx		# movq %r(1773), %r(1836)
	salq $3, %rbx		# salq $3, %r(1836)
	addq %rbx, %r13		# addq %r(1836), %r(1837)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1853)
	salq $3, %r14		# salq $3, %r(1838)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1854)
	addq %r14, %rbx		# addq %r(1838), %r(1839)
	movq (%rbx), %r14		# movq (%r(1839)), %r(1840)
	movq $1, %r12		# movq $1, %r(1841)
	addq %r12, %r14		# addq %r(1841), %r(1842)
	movq %r14, (%r13)		# movq %r(1842), (%r(1837))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1855)
	movq %rbx, %rax		# movq %r(1855), %rax
	jmp .L275		# jmp .L275
	.L275:		# .L275:
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
	leaq .L281(%rip), %rdi		# leaq .L281(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1779)
	movq $10, %r14		# movq $10, %r(1857)
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L282:		# .L282:
	movq $0, %r12		# movq $0, %r(1858)
	cmpq %r12, %r14		# cmpq %r(1858), %r(count)
	jle .L284		# jle .L284
	.L283:		# .L283:
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _IA_aiai		# call _IA_aiai
	movq %rax, %rbx		# movq %rax, %r(1781)
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _IB_aiai		# call _IB_aiai
	movq %rax, %rbx		# movq %rax, %r(1783)
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r14		# decq %r(count)
	jmp .L282		# jmp .L282
	.L284:		# .L284:
	.L280:		# .L280:
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
	movq (%r14), %r12		# movq (%r(p0)), %r(1859)
	movq %r12, -16(%rbp)		# movq %r(1871), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1872)
	salq $3, %rbx		# salq $3, %r(1860)
	movq $8, %r12		# movq $8, %r(1861)
	addq %r12, %rbx		# addq %r(1861), %r(1862)
	movq %rbx, %rdi		# movq %r(1862), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1785)
	movq %rbx, %r13		# movq %r(1785), %r(t27)
	.L165:		# .L165:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1873)
	salq $3, %r12		# salq $3, %r(1863)
	movq %r13, %r15		# movq %r(t27), %r(1864)
	addq %r12, %r15		# addq %r(1863), %r(1864)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1874)
	movq %rbx, %r12		# movq %r(1874), %r(1865)
	salq $3, %r12		# salq $3, %r(1865)
	movq %r14, %rbx		# movq %r(p0), %r(1875)
	movq %rbx, -8(%rbp)		# movq %r(1875), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1876)
	addq %r12, %rbx		# addq %r(1865), %r(1876)
	movq %rbx, -8(%rbp)		# movq %r(1876), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1877)
	movq (%rbx), %rbx		# movq (%r(1877)), %r(1867)
	movq %rbx, (%r15)		# movq %r(1867), (%r(1864))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1878)
	decq %rbx		# decq %r(1878)
	movq %rbx, -16(%rbp)		# movq %r(1878), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1868)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1879)
	cmpq %rbx, %r12		# cmpq %r(1868), %r(1879)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq $8, %rbx		# movq $8, %r(1869)
	movq %r13, %r12		# movq %r(t27), %r(1870)
	addq %rbx, %r12		# addq %r(1869), %r(1870)
	movq %r12, %rax		# movq %r(1870), %rax
	.L167:		# .L167:
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
.L281:
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
