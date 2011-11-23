.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $65, %r14		# movq $65, %r(1875)
	movq %r14, %r14		# movq %r(1875), %r(a)
	leaq .L525(%rip), %rdi		# leaq .L525(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1867)
	movq %r13, %r13		# movq %r(1867), %r(1916)
	movq %r13, -8(%rbp)		# movq %r(1916), -8(%rbp)
	movq $1, %r13		# movq $1, %r(1877)
	movq %r13, %r13		# movq %r(1877), %r(1856)
	movq $65, %r12		# movq $65, %r(1878)
	cmpq %r12, %r14		# cmpq %r(1878), %r(a)
	je .L526		# je .L526
	.L527:		# .L527:
	movq $0, %r13		# movq $0, %r(1879)
	movq %r13, %r13		# movq %r(1879), %r(1856)
	.L526:		# .L526:
	movq %r13, %rdi		# movq %r(1856), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1880)
	movq %r13, %r13		# movq %r(1880), %r(1857)
	movq $8, %r12		# movq $8, %r(1881)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1917)
	movq %r14, %r14		# movq %r(1917), %r(1882)
	subq %r12, %r14		# subq %r(1881), %r(1882)
	movq (%r14), %rbx		# movq (%r(1882)), %r(1883)
	movq $3, %r12		# movq $3, %r(1884)
	cmpq %r12, %rbx		# cmpq %r(1884), %r(1883)
	je .L528		# je .L528
	.L529:		# .L529:
	movq $0, %r13		# movq $0, %r(1885)
	movq %r13, %r13		# movq %r(1885), %r(1857)
	.L528:		# .L528:
	movq %r13, %rdi		# movq %r(1857), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(1886)
	movq %r12, %r12		# movq %r(1886), %r(1918)
	movq %r12, -32(%rbp)		# movq %r(1918), -32(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1919)
	movq %r12, %r12		# movq %r(1919), %r(1920)
	movq %r12, -16(%rbp)		# movq %r(1920), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1887)
	movq %rbx, %rbx		# movq %r(1887), %r(1859)
	movq $8, %r13		# movq $8, %r(1888)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1921)
	movq %r14, %r14		# movq %r(1921), %r(1922)
	movq %r14, -24(%rbp)		# movq %r(1922), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1923)
	subq %r13, %r12		# subq %r(1888), %r(1923)
	movq %r12, -24(%rbp)		# movq %r(1923), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1924)
	movq (%r12), %r12		# movq (%r(1924)), %r(1890)
	cmpq %r12, %rbx		# cmpq %r(1890), %r(1859)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1859), %r(1891)
	salq $3, %rbx		# salq $3, %r(1891)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1925)
	movq %r13, %r13		# movq %r(1925), %r(1892)
	addq %rbx, %r13		# addq %r(1891), %r(1892)
	movq (%r13), %rbx		# movq (%r(1892)), %r(1893)
	movq $65, %r12		# movq $65, %r(1894)
	cmpq %r12, %rbx		# cmpq %r(1894), %r(1893)
	je .L532		# je .L532
	.L533:		# .L533:
	movq $0, %r12		# movq $0, %r(1895)
	movq %r12, %r12		# movq %r(1895), %r(1926)
	movq %r12, -32(%rbp)		# movq %r(1926), -32(%rbp)
	.L532:		# .L532:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1927)
	movq %rbx, %rdi		# movq %r(1927), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(1896)
	movq %r12, %r12		# movq %r(1896), %r(1928)
	movq %r12, -40(%rbp)		# movq %r(1928), -40(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1929)
	movq %r12, %r12		# movq %r(1929), %r(1930)
	movq %r12, -48(%rbp)		# movq %r(1930), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(1936)
	movq %rbx, -72(%rbp)		# movq %r(1936), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1937)
	movq %r12, %r12		# movq %r(1937), %r(1938)
	movq %r12, -56(%rbp)		# movq %r(1938), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(1898)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1931)
	movq %r13, %r13		# movq %r(1931), %r(1899)
	subq %rbx, %r13		# subq %r(1898), %r(1899)
	movq (%r13), %rbx		# movq (%r(1899)), %r(1900)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1939)
	cmpq %rbx, %r12		# cmpq %r(1900), %r(1939)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1940)
	movq %r12, %r12		# movq %r(1940), %r(1941)
	movq %r12, -64(%rbp)		# movq %r(1941), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1942)
	salq $3, %rbx		# salq $3, %r(1942)
	movq %rbx, -64(%rbp)		# movq %r(1942), -64(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1932)
	movq %r13, %r13		# movq %r(1932), %r(1902)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1943)
	addq %r12, %r13		# addq %r(1943), %r(1902)
	movq (%r13), %rbx		# movq (%r(1902)), %r(1903)
	movq $66, %r12		# movq $66, %r(1904)
	cmpq %r12, %rbx		# cmpq %r(1904), %r(1903)
	je .L536		# je .L536
	.L537:		# .L537:
	movq $0, %r12		# movq $0, %r(1905)
	movq %r12, %r12		# movq %r(1905), %r(1933)
	movq %r12, -40(%rbp)		# movq %r(1933), -40(%rbp)
	.L536:		# .L536:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1934)
	movq %rbx, %rdi		# movq %r(1934), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1906)
	movq %rbx, %r15		# movq %r(1906), %r(1866)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1935)
	movq %rbx, %r13		# movq %r(1935), %r(1864)
	movq $2, %rbx		# movq $2, %r(1907)
	movq %rbx, %r12		# movq %r(1907), %r(1865)
	movq $8, %rbx		# movq $8, %r(1908)
	movq %r13, %r14		# movq %r(1864), %r(1909)
	subq %rbx, %r14		# subq %r(1908), %r(1909)
	movq (%r14), %rbx		# movq (%r(1909)), %r(1910)
	cmpq %rbx, %r12		# cmpq %r(1910), %r(1865)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %r12		# movq %r(1865), %r(1911)
	salq $3, %r12		# salq $3, %r(1911)
	movq %r13, %rbx		# movq %r(1864), %r(1912)
	addq %r12, %rbx		# addq %r(1911), %r(1912)
	movq (%rbx), %rbx		# movq (%r(1912)), %r(1913)
	movq $67, %r12		# movq $67, %r(1914)
	cmpq %r12, %rbx		# cmpq %r(1914), %r(1913)
	je .L540		# je .L540
	.L541:		# .L541:
	movq $0, %rbx		# movq $0, %r(1915)
	movq %rbx, %r15		# movq %r(1915), %r(1866)
	.L540:		# .L540:
	movq %r15, %rdi		# movq %r(1866), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L524:		# .L524:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1959)
	movq %rbx, -24(%rbp)		# movq %r(1959), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1960)
	movq (%rbx), %rbx		# movq (%r(1960)), %r(1944)
	movq %rbx, %rbx		# movq %r(1944), %r(t10)
	movq %rbx, %r12		# movq %r(t10), %r(1945)
	salq $3, %r12		# salq $3, %r(1945)
	movq $8, %r13		# movq $8, %r(1946)
	movq %r12, %r12		# movq %r(1945), %r(1947)
	addq %r13, %r12		# addq %r(1946), %r(1947)
	movq %r12, %rdi		# movq %r(1947), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1873)
	movq %r13, %r13		# movq %r(1873), %r(1961)
	movq %r13, -32(%rbp)		# movq %r(1961), -32(%rbp)
	.L16:		# .L16:
	movq %rbx, %r14		# movq %r(t10), %r(1948)
	salq $3, %r14		# salq $3, %r(1948)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1962)
	movq %r13, %r13		# movq %r(1962), %r(1963)
	movq %r13, -16(%rbp)		# movq %r(1963), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1964)
	addq %r14, %r12		# addq %r(1948), %r(1964)
	movq %r12, -16(%rbp)		# movq %r(1964), -16(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(1950)
	salq $3, %r14		# salq $3, %r(1950)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1965)
	movq %r13, %r13		# movq %r(1965), %r(1956)
	movq %r13, -8(%rbp)		# movq %r(1956), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1957)
	addq %r14, %r12		# addq %r(1950), %r(1957)
	movq %r12, -8(%rbp)		# movq %r(1957), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1958)
	movq (%r12), %r12		# movq (%r(1958)), %r(1952)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1966)
	movq %r12, (%r13)		# movq %r(1952), (%r(1966))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(1953)
	cmpq %r12, %rbx		# cmpq %r(1953), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1954)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1967)
	movq %r13, %r13		# movq %r(1967), %r(1955)
	addq %rbx, %r13		# addq %r(1954), %r(1955)
	movq %r13, %rax		# movq %r(1955), %rax
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
.L525:
	.quad 3
	.quad 65
	.quad 66
	.quad 67
	.text

error_outofbounds:
call _I_outOfBounds_p
