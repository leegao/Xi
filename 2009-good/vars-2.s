.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $65, %r14		# movq $65, %r(1831)
	movq %r14, %r14		# movq %r(1831), %r(a)
	leaq .L525(%rip), %rdi		# leaq .L525(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1823)
	movq %r13, %r13		# movq %r(1823), %r(1872)
	movq %r13, -24(%rbp)		# movq %r(1872), -24(%rbp)
	movq $1, %r13		# movq $1, %r(1833)
	movq %r13, %r13		# movq %r(1833), %r(1812)
	movq $65, %r12		# movq $65, %r(1834)
	cmpq %r12, %r14		# cmpq %r(1834), %r(a)
	je .L526		# je .L526
	.L527:		# .L527:
	movq $0, %r13		# movq $0, %r(1835)
	movq %r13, %r13		# movq %r(1835), %r(1812)
	.L526:		# .L526:
	movq %r13, %rdi		# movq %r(1812), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1836)
	movq %r13, %r13		# movq %r(1836), %r(1813)
	movq $8, %r12		# movq $8, %r(1837)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1873)
	movq %r14, %r14		# movq %r(1873), %r(1838)
	subq %r12, %r14		# subq %r(1837), %r(1838)
	movq (%r14), %rbx		# movq (%r(1838)), %r(1839)
	movq $3, %r12		# movq $3, %r(1840)
	cmpq %r12, %rbx		# cmpq %r(1840), %r(1839)
	je .L528		# je .L528
	.L529:		# .L529:
	movq $0, %r13		# movq $0, %r(1841)
	movq %r13, %r13		# movq %r(1841), %r(1813)
	.L528:		# .L528:
	movq %r13, %rdi		# movq %r(1813), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(1842)
	movq %r12, %r12		# movq %r(1842), %r(1874)
	movq %r12, -16(%rbp)		# movq %r(1874), -16(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1875)
	movq %r12, %r12		# movq %r(1875), %r(1876)
	movq %r12, -8(%rbp)		# movq %r(1876), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1843)
	movq %rbx, %rbx		# movq %r(1843), %r(1815)
	movq $8, %r13		# movq $8, %r(1844)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1877)
	movq %r14, %r14		# movq %r(1877), %r(1878)
	movq %r14, -32(%rbp)		# movq %r(1878), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1879)
	subq %r13, %r12		# subq %r(1844), %r(1879)
	movq %r12, -32(%rbp)		# movq %r(1879), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1880)
	movq (%r12), %r12		# movq (%r(1880)), %r(1846)
	cmpq %r12, %rbx		# cmpq %r(1846), %r(1815)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1815), %r(1847)
	salq $3, %rbx		# salq $3, %r(1847)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1881)
	movq %r13, %r13		# movq %r(1881), %r(1848)
	addq %rbx, %r13		# addq %r(1847), %r(1848)
	movq (%r13), %rbx		# movq (%r(1848)), %r(1849)
	movq $65, %r12		# movq $65, %r(1850)
	cmpq %r12, %rbx		# cmpq %r(1850), %r(1849)
	je .L532		# je .L532
	.L533:		# .L533:
	movq $0, %r12		# movq $0, %r(1851)
	movq %r12, %r12		# movq %r(1851), %r(1882)
	movq %r12, -16(%rbp)		# movq %r(1882), -16(%rbp)
	.L532:		# .L532:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1883)
	movq %rbx, %rdi		# movq %r(1883), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1852)
	movq %rbx, %r13		# movq %r(1852), %r(1819)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1884)
	movq %rbx, %r15		# movq %r(1884), %r(1817)
	movq $1, %r12		# movq $1, %r(1853)
	movq %r12, %r12		# movq %r(1853), %r(1885)
	movq %r12, -40(%rbp)		# movq %r(1885), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(1854)
	movq %r15, %r12		# movq %r(1817), %r(1855)
	subq %rbx, %r12		# subq %r(1854), %r(1855)
	movq (%r12), %rbx		# movq (%r(1855)), %r(1856)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1886)
	cmpq %rbx, %r12		# cmpq %r(1856), %r(1886)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1887)
	movq %r12, %r12		# movq %r(1887), %r(1857)
	salq $3, %r12		# salq $3, %r(1857)
	movq %r15, %r15		# movq %r(1817), %r(1858)
	addq %r12, %r15		# addq %r(1857), %r(1858)
	movq (%r15), %rbx		# movq (%r(1858)), %r(1859)
	movq $66, %r12		# movq $66, %r(1860)
	cmpq %r12, %rbx		# cmpq %r(1860), %r(1859)
	je .L536		# je .L536
	.L537:		# .L537:
	movq $0, %r13		# movq $0, %r(1861)
	movq %r13, %r13		# movq %r(1861), %r(1819)
	.L536:		# .L536:
	movq %r13, %rdi		# movq %r(1819), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1862)
	movq %rbx, %r15		# movq %r(1862), %r(1822)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1888)
	movq %rbx, %r13		# movq %r(1888), %r(1820)
	movq $2, %rbx		# movq $2, %r(1863)
	movq %rbx, %r12		# movq %r(1863), %r(1821)
	movq $8, %rbx		# movq $8, %r(1864)
	movq %r13, %r14		# movq %r(1820), %r(1865)
	subq %rbx, %r14		# subq %r(1864), %r(1865)
	movq (%r14), %rbx		# movq (%r(1865)), %r(1866)
	cmpq %rbx, %r12		# cmpq %r(1866), %r(1821)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %r12		# movq %r(1821), %r(1867)
	salq $3, %r12		# salq $3, %r(1867)
	movq %r13, %rbx		# movq %r(1820), %r(1868)
	addq %r12, %rbx		# addq %r(1867), %r(1868)
	movq (%rbx), %rbx		# movq (%r(1868)), %r(1869)
	movq $67, %r12		# movq $67, %r(1870)
	cmpq %r12, %rbx		# cmpq %r(1870), %r(1869)
	je .L540		# je .L540
	.L541:		# .L541:
	movq $0, %rbx		# movq $0, %r(1871)
	movq %rbx, %r15		# movq %r(1871), %r(1822)
	.L540:		# .L540:
	movq %r15, %rdi		# movq %r(1822), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L524:		# .L524:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1901)
	movq %rbx, -16(%rbp)		# movq %r(1901), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1902)
	movq (%rbx), %r12		# movq (%r(1902)), %r(1889)
	movq %r12, %r12		# movq %r(1889), %r(1903)
	movq %r12, -8(%rbp)		# movq %r(1903), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1904)
	movq %rbx, %rbx		# movq %r(1904), %r(1890)
	salq $3, %rbx		# salq $3, %r(1890)
	movq $8, %r12		# movq $8, %r(1891)
	movq %rbx, %rbx		# movq %r(1890), %r(1892)
	addq %r12, %rbx		# addq %r(1891), %r(1892)
	movq %rbx, %rdi		# movq %r(1892), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1829)
	movq %rbx, %r14		# movq %r(1829), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1905)
	movq %r12, %r12		# movq %r(1905), %r(1893)
	salq $3, %r12		# salq $3, %r(1893)
	movq %r14, %r13		# movq %r(t27), %r(1894)
	addq %r12, %r13		# addq %r(1893), %r(1894)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1906)
	movq %rbx, %r12		# movq %r(1906), %r(1895)
	salq $3, %r12		# salq $3, %r(1895)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1907)
	movq %rbx, %rbx		# movq %r(1907), %r(1908)
	movq %rbx, -24(%rbp)		# movq %r(1908), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1909)
	addq %r12, %rbx		# addq %r(1895), %r(1909)
	movq %rbx, -24(%rbp)		# movq %r(1909), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1910)
	movq (%rbx), %rbx		# movq (%r(1910)), %r(1897)
	movq %rbx, (%r13)		# movq %r(1897), (%r(1894))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1911)
	decq %rbx		# decq %r(1911)
	movq %rbx, -8(%rbp)		# movq %r(1911), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1898)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1912)
	cmpq %rbx, %r12		# cmpq %r(1898), %r(1912)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1899)
	movq %r14, %r12		# movq %r(t27), %r(1900)
	addq %rbx, %r12		# addq %r(1899), %r(1900)
	movq %r12, %rax		# movq %r(1900), %rax
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
.L525:
	.quad 3
	.quad 65
	.quad 66
	.quad 67
	.text

error_outofbounds:
call _I_outOfBounds_p
