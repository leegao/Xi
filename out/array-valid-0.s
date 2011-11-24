.att_syntax prefix
.text
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
	movq $40, %rbx		# movq $40, %r(2233)
	movq %rbx, %rdi		# movq %r(2233), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2228)
	movq $4, %r12		# movq $4, %r(2234)
	movq %r12, (%r14)		# movq %r(2234), (%r(2228))
	movq $8, %r12		# movq $8, %r(2235)
	addq %r12, %r14		# addq %r(2235), %r(2236)
	movq $0, %r12		# movq $0, %r(2237)
	movq %r14, %rbx		# movq %r(2224), %r(2238)
	addq %r12, %rbx		# addq %r(2237), %r(2238)
	movq $0, %r12		# movq $0, %r(2239)
	movq %r12, (%rbx)		# movq %r(2239), (%r(2238))
	movq $8, %r12		# movq $8, %r(2240)
	movq %r14, %rbx		# movq %r(2224), %r(2241)
	addq %r12, %rbx		# addq %r(2240), %r(2241)
	movq $0, %r12		# movq $0, %r(2242)
	movq %r12, (%rbx)		# movq %r(2242), (%r(2241))
	movq $16, %r12		# movq $16, %r(2243)
	movq %r14, %rbx		# movq %r(2224), %r(2244)
	addq %r12, %rbx		# addq %r(2243), %r(2244)
	movq $0, %r12		# movq $0, %r(2245)
	movq %r12, (%rbx)		# movq %r(2245), (%r(2244))
	movq $24, %r12		# movq $24, %r(2246)
	movq %r14, %rbx		# movq %r(2224), %r(2247)
	addq %r12, %rbx		# addq %r(2246), %r(2247)
	movq $0, %r12		# movq $0, %r(2248)
	movq %r12, (%rbx)		# movq %r(2248), (%r(2247))
	movq $0, %rbx		# movq $0, %r(2249)
	movq $8, %r12		# movq $8, %r(2250)
	movq %r14, %r15		# movq %r(2224), %r(2251)
	subq %r12, %r15		# subq %r(2250), %r(2251)
	movq (%r15), %r12		# movq (%r(2251)), %r(2252)
	cmpq %r12, %rbx		# cmpq %r(2252), %r(2249)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %rbx		# movq $0, %r(2253)
	salq $3, %rbx		# salq $3, %r(2254)
	addq %rbx, %r14		# addq %r(2254), %r(2255)
	movq $42, %r12		# movq $42, %r(2256)
	movq %r12, (%r14)		# movq %r(2256), (%r(2255))
	leaq .L464(%rip), %rdi		# leaq .L464(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2229)
	movq %rbx, %rdi		# movq %r(2229), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L461		# jmp .L461
	.L461:		# .L461:
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
	movq %rdi, %rbx		# movq %rdi, %r(2270)
	movq %rbx, -16(%rbp)		# movq %r(2270), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2271)
	movq (%rbx), %rbx		# movq (%r(2271)), %r(2258)
	movq %rbx, %r14		# movq %r(2258), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(2259)
	salq $3, %rbx		# salq $3, %r(2259)
	movq $8, %r12		# movq $8, %r(2260)
	addq %r12, %rbx		# addq %r(2260), %r(2261)
	movq %rbx, %rdi		# movq %r(2261), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(2231)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(2262)
	salq $3, %rbx		# salq $3, %r(2262)
	movq %r13, %r15		# movq %r(2231), %r(2263)
	addq %rbx, %r15		# addq %r(2262), %r(2263)
	movq %r14, %r12		# movq %r(t10), %r(2264)
	salq $3, %r12		# salq $3, %r(2264)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2272)
	movq %rbx, -8(%rbp)		# movq %r(2273), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2274)
	addq %r12, %rbx		# addq %r(2264), %r(2274)
	movq %rbx, -8(%rbp)		# movq %r(2274), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2275)
	movq (%rbx), %rbx		# movq (%r(2275)), %r(2266)
	movq %rbx, (%r15)		# movq %r(2266), (%r(2263))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(2267)
	cmpq %rbx, %r14		# cmpq %r(2267), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2268)
	movq %r13, %r12		# movq %r(2231), %r(2269)
	addq %rbx, %r12		# addq %r(2268), %r(2269)
	movq %r12, %rax		# movq %r(2269), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
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
.L464:
	.quad 8
	.quad 78
	.quad 111
	.quad 32
	.quad 99
	.quad 114
	.quad 97
	.quad 115
	.quad 104
	.text

error_outofbounds:
call _I_outOfBounds_p
