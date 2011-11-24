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
	movq $65, %r14		# movq $65, %r(1891)
	leaq .L526(%rip), %rdi		# leaq .L526(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1883)
	movq %r13, -8(%rbp)		# movq %r(1932), -8(%rbp)
	movq $1, %r13		# movq $1, %r(1893)
	movq $65, %r12		# movq $65, %r(1894)
	cmpq %r12, %r14		# cmpq %r(1894), %r(a)
	je .L527		# je .L527
	.L528:		# .L528:
	movq $0, %r13		# movq $0, %r(1895)
	.L527:		# .L527:
	movq %r13, %rdi		# movq %r(1872), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1896)
	movq $8, %r12		# movq $8, %r(1897)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1933)
	subq %r12, %r14		# subq %r(1897), %r(1898)
	movq (%r14), %rbx		# movq (%r(1898)), %r(1899)
	movq $3, %r12		# movq $3, %r(1900)
	cmpq %r12, %rbx		# cmpq %r(1900), %r(1899)
	je .L529		# je .L529
	.L530:		# .L530:
	movq $0, %r13		# movq $0, %r(1901)
	.L529:		# .L529:
	movq %r13, %rdi		# movq %r(1873), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(1902)
	movq %r12, -40(%rbp)		# movq %r(1934), -40(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1935)
	movq %r12, -48(%rbp)		# movq %r(1936), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(1903)
	movq $8, %r13		# movq $8, %r(1904)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1937)
	movq %r14, -24(%rbp)		# movq %r(1938), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1939)
	subq %r13, %r12		# subq %r(1904), %r(1939)
	movq %r12, -24(%rbp)		# movq %r(1939), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1940)
	movq (%r12), %r12		# movq (%r(1940)), %r(1906)
	cmpq %r12, %rbx		# cmpq %r(1906), %r(1875)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1907)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1941)
	addq %rbx, %r13		# addq %r(1907), %r(1908)
	movq (%r13), %rbx		# movq (%r(1908)), %r(1909)
	movq $65, %r12		# movq $65, %r(1910)
	cmpq %r12, %rbx		# cmpq %r(1910), %r(1909)
	je .L533		# je .L533
	.L534:		# .L534:
	movq $0, %r12		# movq $0, %r(1911)
	movq %r12, -40(%rbp)		# movq %r(1942), -40(%rbp)
	.L533:		# .L533:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1943)
	movq %rbx, %rdi		# movq %r(1943), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(1912)
	movq %r12, -32(%rbp)		# movq %r(1944), -32(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1945)
	movq $1, %r13		# movq $1, %r(1913)
	movq %r13, -16(%rbp)		# movq %r(1946), -16(%rbp)
	movq $8, %r12		# movq $8, %r(1914)
	movq %rbx, %r14		# movq %r(1877), %r(1915)
	subq %r12, %r14		# subq %r(1914), %r(1915)
	movq (%r14), %r12		# movq (%r(1915)), %r(1916)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1947)
	cmpq %r12, %r13		# cmpq %r(1916), %r(1947)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1948)
	salq $3, %r13		# salq $3, %r(1917)
	addq %r13, %rbx		# addq %r(1917), %r(1918)
	movq (%rbx), %rbx		# movq (%r(1918)), %r(1919)
	movq $66, %r12		# movq $66, %r(1920)
	cmpq %r12, %rbx		# cmpq %r(1920), %r(1919)
	je .L537		# je .L537
	.L538:		# .L538:
	movq $0, %r12		# movq $0, %r(1921)
	movq %r12, -32(%rbp)		# movq %r(1949), -32(%rbp)
	.L537:		# .L537:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1950)
	movq %rbx, %rdi		# movq %r(1950), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(1922)
	movq %rbx, %r15		# movq %r(1922), %r(1882)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1951)
	movq %rbx, %r13		# movq %r(1951), %r(1880)
	movq $2, %rbx		# movq $2, %r(1923)
	movq %rbx, %r12		# movq %r(1923), %r(1881)
	movq $8, %rbx		# movq $8, %r(1924)
	movq %r13, %r14		# movq %r(1880), %r(1925)
	subq %rbx, %r14		# subq %r(1924), %r(1925)
	movq (%r14), %rbx		# movq (%r(1925)), %r(1926)
	cmpq %rbx, %r12		# cmpq %r(1926), %r(1881)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(1927)
	movq %r13, %rbx		# movq %r(1880), %r(1928)
	addq %r12, %rbx		# addq %r(1927), %r(1928)
	movq (%rbx), %rbx		# movq (%r(1928)), %r(1929)
	movq $67, %r12		# movq $67, %r(1930)
	cmpq %r12, %rbx		# cmpq %r(1930), %r(1929)
	je .L541		# je .L541
	.L542:		# .L542:
	movq $0, %rbx		# movq $0, %r(1931)
	movq %rbx, %r15		# movq %r(1931), %r(1882)
	.L541:		# .L541:
	movq %r15, %rdi		# movq %r(1882), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L525:		# .L525:
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
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %rbx		# movq (%r(p0)), %r(1952)
	movq %rbx, %r14		# movq %r(1952), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1953)
	salq $3, %rbx		# salq $3, %r(1953)
	movq $8, %r12		# movq $8, %r(1954)
	addq %r12, %rbx		# addq %r(1954), %r(1955)
	movq %rbx, %rdi		# movq %r(1955), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1889)
	movq %r12, -24(%rbp)		# movq %r(1967), -24(%rbp)
	.L16:		# .L16:
	movq %r14, %r12		# movq %r(t10), %r(1956)
	salq $3, %r12		# salq $3, %r(1956)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1968)
	movq %rbx, %r13		# movq %r(1968), %r(1957)
	addq %r12, %r13		# addq %r(1956), %r(1957)
	movq %r14, %rbx		# movq %r(t10), %r(1969)
	movq %rbx, -16(%rbp)		# movq %r(1969), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1970)
	salq $3, %rbx		# salq $3, %r(1970)
	movq %rbx, -16(%rbp)		# movq %r(1970), -16(%rbp)
	movq %r15, %rbx		# movq %r(p0), %r(1964)
	movq %rbx, -8(%rbp)		# movq %r(1964), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1965)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1971)
	addq %r12, %rbx		# addq %r(1971), %r(1965)
	movq %rbx, -8(%rbp)		# movq %r(1965), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1966)
	movq (%rbx), %rbx		# movq (%r(1966)), %r(1960)
	movq %rbx, (%r13)		# movq %r(1960), (%r(1957))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1961)
	cmpq %rbx, %r14		# cmpq %r(1961), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1962)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1972)
	addq %rbx, %r13		# addq %r(1962), %r(1963)
	movq %r13, %rax		# movq %r(1963), %rax
	.L18:		# .L18:
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
.L526:
	.quad 3
	.quad 65
	.quad 66
	.quad 67
	.text

error_outofbounds:
call _I_outOfBounds_p
