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
	movq %rdi, %r14		# movq %rdi, %r(2324)
	movq $2, %rbx		# movq $2, %r(2344)
	cmpq %rbx, %r14		# cmpq %r(2344), %r(2324)
	jge .L401		# jge .L401
	.L400:		# .L400:
	movq %r14, %rax		# movq %r(2324), %rax
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
	movq $1, %rbx		# movq $1, %r(2345)
	movq %r14, %r13		# movq %r(2324), %r(2346)
	subq %rbx, %r13		# subq %r(2345), %r(2346)
	movq %r13, %rdi		# movq %r(2346), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r12		# movq %rax, %r(2331)
	movq $2, %rbx		# movq $2, %r(2347)
	movq %r14, %r13		# movq %r(2324), %r(2348)
	subq %rbx, %r13		# subq %r(2347), %r(2348)
	movq %r13, %rdi		# movq %r(2348), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2332)
	movq %r12, %r13		# movq %r(2331), %r(2349)
	addq %rbx, %r13		# addq %r(2332), %r(2349)
	movq %r13, %rax		# movq %r(2349), %rax
	jmp .L399		# jmp .L399
	
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
	movq %rdi, %rbx		# movq %rdi, %r(2325)
	leaq .L404(%rip), %rdi		# leaq .L404(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2333)
	movq %rbx, %rdi		# movq %r(2333), %rdi
	call _Iprint_pai		# call _Iprint_pai
	call _Ireadln_ai		# call _Ireadln_ai
	movq %rax, %r12		# movq %rax, %r(2335)
	movq $16, %rbx		# movq $16, %r(2351)
	movq %rbx, %rdi		# movq %r(2351), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2336)
	movq %r14, %r13		# movq %r(2336), %r(2328)
	movq %r13, %rdi		# movq %r(2328), %rdi
	movq %r12, %rsi		# movq %r(2335), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r14), %r15		# movq 0(%r(2336)), %r(2329)
	movq 8(%r14), %rbx		# movq 8(%r(2336)), %r(2360)
	movq %rbx, -16(%rbp)		# movq %r(2360), -16(%rbp)
	movq $1, %r13		# movq $1, %r(2352)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2361)
	movq %rbx, %r14		# movq %r(2361), %r(2357)
	movq %r14, -8(%rbp)		# movq %r(2357), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2358)
	xorq %r13, %rbx		# xorq %r(2352), %r(2358)
	movq %rbx, -8(%rbp)		# movq %r(2358), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(2354)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2359)
	movq %r13, %r14		# movq %r(2359), %r(2355)
	xorq %rbx, %r14		# xorq %r(2354), %r(2355)
	testq $1, %r14		# testq $1, %r(2355)
	jne .L406		# jne .L406
	.L405:		# .L405:
	leaq .L407(%rip), %rdi		# leaq .L407(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2338)
	movq %rbx, %rdi		# movq %r(2338), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L403		# jmp .L403
	.L403:		# .L403:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L406:		# .L406:
	movq %r15, %rdi		# movq %r(2329), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2340)
	movq %rbx, %rdi		# movq %r(2340), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(2341)
	movq %rbx, %rdi		# movq %r(2341), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(2374)
	movq %rbx, -16(%rbp)		# movq %r(2374), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2375)
	movq (%rbx), %r13		# movq (%r(2375)), %r(2362)
	movq %r13, %r12		# movq %r(2362), %r(2376)
	movq %r12, -8(%rbp)		# movq %r(2376), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2377)
	movq %r12, %r13		# movq %r(2377), %r(2363)
	salq $3, %r13		# salq $3, %r(2363)
	movq $8, %rbx		# movq $8, %r(2364)
	movq %r13, %r14		# movq %r(2363), %r(2365)
	addq %rbx, %r14		# addq %r(2364), %r(2365)
	movq %r14, %rdi		# movq %r(2365), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2343)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(2378)
	movq %r13, %rbx		# movq %r(2378), %r(2366)
	salq $3, %rbx		# salq $3, %r(2366)
	movq %r15, %r13		# movq %r(2343), %r(2367)
	addq %rbx, %r13		# addq %r(2366), %r(2367)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2379)
	movq %rbx, %r12		# movq %r(2379), %r(2368)
	salq $3, %r12		# salq $3, %r(2368)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2380)
	movq %rbx, %r14		# movq %r(2380), %r(2381)
	movq %r14, -24(%rbp)		# movq %r(2381), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2382)
	addq %r12, %rbx		# addq %r(2368), %r(2382)
	movq %rbx, -24(%rbp)		# movq %r(2382), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2383)
	movq (%rbx), %r12		# movq (%r(2383)), %r(2370)
	movq %r12, (%r13)		# movq %r(2370), (%r(2367))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2384)
	decq %rbx		# decq %r(2384)
	movq %rbx, -8(%rbp)		# movq %r(2384), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(2371)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(2385)
	cmpq %rbx, %r12		# cmpq %r(2371), %r(2385)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(2372)
	movq %r15, %r13		# movq %r(2343), %r(2373)
	addq %rbx, %r13		# addq %r(2372), %r(2373)
	movq %r13, %rax		# movq %r(2373), %rax
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

