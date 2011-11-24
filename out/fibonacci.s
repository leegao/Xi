.att_syntax prefix
.text
.globl _Ifib_ii
_Ifib_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(i)
	movq $2, %rbx		# movq $2, %r(2162)
	cmpq %rbx, %r15		# cmpq %r(2162), %r(i)
	jge .L401		# jge .L401
	.L400:		# .L400:
	movq %r15, %rax		# movq %r(i), %rax
	jmp .L399		# jmp .L399
	.L399:		# .L399:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L401:		# .L401:
	movq $1, %rbx		# movq $1, %r(2163)
	movq %r15, %r13		# movq %r(i), %r(2164)
	subq %rbx, %r13		# subq %r(2163), %r(2164)
	movq %r13, %rdi		# movq %r(2164), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r14		# movq %rax, %r(2149)
	movq $2, %rbx		# movq $2, %r(2165)
	movq %r15, %r12		# movq %r(i), %r(2166)
	subq %rbx, %r12		# subq %r(2165), %r(2166)
	movq %r12, %rdi		# movq %r(2166), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2150)
	addq %rbx, %r14		# addq %r(2150), %r(2167)
	movq %r14, %rax		# movq %r(2167), %rax
	jmp .L399		# jmp .L399
	
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
	leaq .L404(%rip), %rdi		# leaq .L404(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2151)
	movq %rbx, %rdi		# movq %r(2151), %rdi
	call _Iprint_pai		# call _Iprint_pai
	call _Ireadln_ai		# call _Ireadln_ai
	movq %rax, %r12		# movq %rax, %r(2153)
	movq $16, %rbx		# movq $16, %r(2169)
	movq %rbx, %rdi		# movq %r(2169), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2154)
	movq %r15, %r13		# movq %r(2154), %r(2146)
	movq %r13, %rdi		# movq %r(2146), %rdi
	movq %r12, %rsi		# movq %r(2153), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r15), %r14		# movq 0(%r(2154)), %r(value)
	movq 8(%r15), %rbx		# movq 8(%r(2154)), %r(valid)
	movq $1, %r12		# movq $1, %r(2170)
	xorq %r12, %rbx		# xorq %r(2170), %r(2171)
	movq $1, %r12		# movq $1, %r(2172)
	xorq %r12, %rbx		# xorq %r(2172), %r(2173)
	testq $1, %rbx		# testq $1, %r(2173)
	jne .L406		# jne .L406
	.L405:		# .L405:
	leaq .L407(%rip), %rdi		# leaq .L407(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2156)
	movq %rbx, %rdi		# movq %r(2156), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L403		# jmp .L403
	.L403:		# .L403:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L406:		# .L406:
	movq %r14, %rdi		# movq %r(value), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2158)
	movq %rbx, %rdi		# movq %r(2158), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(2159)
	movq %rbx, %rdi		# movq %r(2159), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L403		# jmp .L403
	
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
	movq %rdi, %rbx		# movq %rdi, %r(2187)
	movq %rbx, -16(%rbp)		# movq %r(2187), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2188)
	movq (%rbx), %r12		# movq (%r(2188)), %r(2175)
	movq %r12, -24(%rbp)		# movq %r(2189), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2190)
	salq $3, %rbx		# salq $3, %r(2176)
	movq $8, %r12		# movq $8, %r(2177)
	addq %r12, %rbx		# addq %r(2177), %r(2178)
	movq %rbx, %rdi		# movq %r(2178), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2161)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2191)
	salq $3, %r12		# salq $3, %r(2179)
	movq %r14, %r13		# movq %r(2161), %r(2180)
	addq %r12, %r13		# addq %r(2179), %r(2180)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2192)
	movq %rbx, %r12		# movq %r(2192), %r(2181)
	salq $3, %r12		# salq $3, %r(2181)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2193)
	movq %rbx, -8(%rbp)		# movq %r(2194), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2195)
	addq %r12, %rbx		# addq %r(2181), %r(2195)
	movq %rbx, -8(%rbp)		# movq %r(2195), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2196)
	movq (%rbx), %rbx		# movq (%r(2196)), %r(2183)
	movq %rbx, (%r13)		# movq %r(2183), (%r(2180))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2197)
	decq %rbx		# decq %r(2197)
	movq %rbx, -24(%rbp)		# movq %r(2197), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(2184)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2198)
	cmpq %rbx, %r12		# cmpq %r(2184), %r(2198)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(2185)
	movq %r14, %r12		# movq %r(2161), %r(2186)
	addq %rbx, %r12		# addq %r(2185), %r(2186)
	movq %r12, %rax		# movq %r(2186), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
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
.L407:
	.quad 14
	.quad 73
	.quad 110
	.quad 118
	.quad 97
	.quad 108
	.quad 105
	.quad 100
	.quad 32
	.quad 105
	.quad 110
	.quad 112
	.quad 117
	.quad 116
	.quad 33
	.text

#.section .rodata
.align 8
.L404:
	.quad 33
	.quad 80
	.quad 108
	.quad 101
	.quad 97
	.quad 115
	.quad 101
	.quad 32
	.quad 101
	.quad 110
	.quad 116
	.quad 101
	.quad 114
	.quad 32
	.quad 97
	.quad 32
	.quad 112
	.quad 111
	.quad 115
	.quad 105
	.quad 116
	.quad 105
	.quad 118
	.quad 101
	.quad 32
	.quad 110
	.quad 117
	.quad 109
	.quad 98
	.quad 101
	.quad 114
	.quad 32
	.quad 58
	.quad 32
	.text

