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
	movq %r12, -8(%rbp)		# movq %r(1821), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1822)
	movq %r12, -16(%rbp)		# movq %r(1823), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1798)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1824)
	subq %rbx, %r13		# subq %r(1798), %r(1799)
	movq (%r13), %rbx		# movq (%r(1799)), %r(1800)
	movq $1, %r12		# movq $1, %r(1801)
	subq %r12, %rbx		# subq %r(1801), %r(1802)
	movq %rbx, -40(%rbp)		# movq %r(1825), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(1803)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1826)
	subq %rbx, %r13		# subq %r(1803), %r(1804)
	movq (%r13), %rbx		# movq (%r(1804)), %r(1805)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1827)
	cmpq %rbx, %r12		# cmpq %r(1805), %r(1827)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1828)
	movq %r12, -32(%rbp)		# movq %r(1829), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(1806)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1830)
	subq %rbx, %r13		# subq %r(1806), %r(1807)
	movq (%r13), %r14		# movq (%r(1807)), %r(1808)
	movq $1, %r12		# movq $1, %r(1809)
	subq %r12, %r14		# subq %r(1809), %r(1810)
	movq $8, %r13		# movq $8, %r(1811)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1831)
	movq %rbx, -24(%rbp)		# movq %r(1832), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1833)
	subq %r13, %r12		# subq %r(1811), %r(1833)
	movq %r12, -24(%rbp)		# movq %r(1833), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1834)
	movq (%r12), %r12		# movq (%r(1834)), %r(1813)
	cmpq %r12, %r14		# cmpq %r(1813), %r(1778)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1814)
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(1835)
	addq %r14, %r15		# addq %r(1814), %r(1815)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1836)
	salq $3, %r14		# salq $3, %r(1816)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1837)
	addq %r14, %rbx		# addq %r(1816), %r(1817)
	movq (%rbx), %r12		# movq (%r(1817)), %r(1818)
	movq $1, %r13		# movq $1, %r(1819)
	subq %r13, %r12		# subq %r(1819), %r(1820)
	movq %r12, (%r15)		# movq %r(1820), (%r(1815))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1838)
	movq %rbx, %rax		# movq %r(1838), %rax
	jmp .L269		# jmp .L269
	.L269:		# .L269:
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
	movq %r12, -8(%rbp)		# movq %r(1854), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1855)
	movq %r12, -24(%rbp)		# movq %r(1856), -24(%rbp)
	movq $0, %r12		# movq $0, %r(1839)
	movq %r12, -16(%rbp)		# movq %r(1857), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1840)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1858)
	subq %rbx, %r13		# subq %r(1840), %r(1841)
	movq (%r13), %rbx		# movq (%r(1841)), %r(1842)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1859)
	cmpq %rbx, %r12		# cmpq %r(1842), %r(1859)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1860)
	movq %rbx, %r14		# movq %r(1860), %r(1783)
	movq $0, %rbx		# movq $0, %r(1843)
	movq %rbx, %r13		# movq %r(1843), %r(1784)
	movq $8, %r12		# movq $8, %r(1844)
	movq %r14, %rbx		# movq %r(1783), %r(1861)
	movq %rbx, -32(%rbp)		# movq %r(1861), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1862)
	subq %r12, %rbx		# subq %r(1844), %r(1862)
	movq %rbx, -32(%rbp)		# movq %r(1862), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1863)
	movq (%rbx), %rbx		# movq (%r(1863)), %r(1846)
	cmpq %rbx, %r13		# cmpq %r(1846), %r(1784)
	jae error_outofbounds		# jae error_outofbounds
	movq %r13, %rbx		# movq %r(1784), %r(1847)
	salq $3, %rbx		# salq $3, %r(1847)
	movq %r14, %r13		# movq %r(1783), %r(1848)
	addq %rbx, %r13		# addq %r(1847), %r(1848)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1864)
	salq $3, %r14		# salq $3, %r(1849)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1865)
	addq %r14, %rbx		# addq %r(1849), %r(1850)
	movq (%rbx), %r14		# movq (%r(1850)), %r(1851)
	movq $1, %r12		# movq $1, %r(1852)
	addq %r12, %r14		# addq %r(1852), %r(1853)
	movq %r14, (%r13)		# movq %r(1853), (%r(1848))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1866)
	movq %rbx, %rax		# movq %r(1866), %rax
	jmp .L274		# jmp .L274
	.L274:		# .L274:
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
	leaq .L280(%rip), %rdi		# leaq .L280(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1790)
	movq $10, %r14		# movq $10, %r(1868)
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L281:		# .L281:
	movq $0, %r12		# movq $0, %r(1869)
	cmpq %r12, %r14		# cmpq %r(1869), %r(count)
	jle .L283		# jle .L283
	.L282:		# .L282:
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _IA_aiai		# call _IA_aiai
	movq %rax, %rbx		# movq %rax, %r(1792)
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _IB_aiai		# call _IB_aiai
	movq %rax, %rbx		# movq %rax, %r(1794)
	movq %rbx, %rdi		# movq %r(input), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r14		# decq %r(count)
	jmp .L281		# jmp .L281
	.L283:		# .L283:
	.L279:		# .L279:
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
	movq %rdi, %rbx		# movq %rdi, %r(1882)
	movq %rbx, -16(%rbp)		# movq %r(1882), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1883)
	movq (%rbx), %rbx		# movq (%r(1883)), %r(1870)
	movq %rbx, %r14		# movq %r(1870), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1871)
	salq $3, %rbx		# salq $3, %r(1871)
	movq $8, %r12		# movq $8, %r(1872)
	addq %r12, %rbx		# addq %r(1872), %r(1873)
	movq %rbx, %rdi		# movq %r(1873), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1796)
	movq %rbx, %r13		# movq %r(1796), %r(t27)
	.L165:		# .L165:
	movq %r14, %rbx		# movq %r(t10), %r(1874)
	salq $3, %rbx		# salq $3, %r(1874)
	movq %r13, %r12		# movq %r(t27), %r(1875)
	addq %rbx, %r12		# addq %r(1874), %r(1875)
	movq %r14, %r15		# movq %r(t10), %r(1876)
	salq $3, %r15		# salq $3, %r(1876)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1884)
	movq %rbx, -8(%rbp)		# movq %r(1885), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1886)
	addq %r15, %rbx		# addq %r(1876), %r(1886)
	movq %rbx, -8(%rbp)		# movq %r(1886), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1887)
	movq (%rbx), %rbx		# movq (%r(1887)), %r(1878)
	movq %rbx, (%r12)		# movq %r(1878), (%r(1875))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1879)
	cmpq %rbx, %r14		# cmpq %r(1879), %r(t10)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq $8, %rbx		# movq $8, %r(1880)
	movq %r13, %r12		# movq %r(t27), %r(1881)
	addq %rbx, %r12		# addq %r(1880), %r(1881)
	movq %r12, %rax		# movq %r(1881), %rax
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
.L280:
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
