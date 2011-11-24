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
	movq $2, %rbx		# movq $2, %r(4846)
	cmpq %rbx, %r15		# cmpq %r(4846), %r(i)
	jge .L902		# jge .L902
	.L901:		# .L901:
	movq %r15, %rax		# movq %r(i), %rax
	jmp .L900		# jmp .L900
	.L900:		# .L900:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L902:		# .L902:
	movq $1, %rbx		# movq $1, %r(4847)
	movq %r15, %r13		# movq %r(i), %r(4848)
	subq %rbx, %r13		# subq %r(4847), %r(4848)
	movq %r13, %rdi		# movq %r(4848), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r14		# movq %rax, %r(4833)
	movq $2, %rbx		# movq $2, %r(4849)
	movq %r15, %r12		# movq %r(i), %r(4850)
	subq %rbx, %r12		# subq %r(4849), %r(4850)
	movq %r12, %rdi		# movq %r(4850), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(4834)
	addq %rbx, %r14		# addq %r(4834), %r(4851)
	movq %r14, %rax		# movq %r(4851), %rax
	jmp .L900		# jmp .L900
	
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
	leaq .L905(%rip), %rdi		# leaq .L905(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4835)
	movq %rbx, %rdi		# movq %r(4835), %rdi
	call _Iprint_pai		# call _Iprint_pai
	call _Ireadln_ai		# call _Ireadln_ai
	movq %rax, %r12		# movq %rax, %r(4837)
	movq $16, %rbx		# movq $16, %r(4853)
	movq %rbx, %rdi		# movq %r(4853), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(4838)
	movq %r15, %r13		# movq %r(4838), %r(4830)
	movq %r13, %rdi		# movq %r(4830), %rdi
	movq %r12, %rsi		# movq %r(4837), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r15), %r14		# movq 0(%r(4838)), %r(value)
	movq 8(%r15), %rbx		# movq 8(%r(4838)), %r(valid)
	movq $1, %r12		# movq $1, %r(4854)
	xorq %r12, %rbx		# xorq %r(4854), %r(4855)
	movq $1, %r12		# movq $1, %r(4856)
	xorq %r12, %rbx		# xorq %r(4856), %r(4857)
	testq $1, %rbx		# testq $1, %r(4857)
	jne .L907		# jne .L907
	.L906:		# .L906:
	leaq .L908(%rip), %rdi		# leaq .L908(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4840)
	movq %rbx, %rdi		# movq %r(4840), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L904		# jmp .L904
	.L904:		# .L904:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L907:		# .L907:
	movq %r14, %rdi		# movq %r(value), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(4842)
	movq %rbx, %rdi		# movq %r(4842), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(4843)
	movq %rbx, %rdi		# movq %r(4843), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L904		# jmp .L904
	
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
	movq %rdi, %rbx		# movq %rdi, %r(4874)
	movq %rbx, -24(%rbp)		# movq %r(4874), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4875)
	movq (%rbx), %rbx		# movq (%r(4875)), %r(4859)
	movq %rbx, %r12		# movq %r(t10), %r(4860)
	salq $3, %r12		# salq $3, %r(4860)
	movq $8, %r13		# movq $8, %r(4861)
	addq %r13, %r12		# addq %r(4861), %r(4862)
	movq %r12, %rdi		# movq %r(4862), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(4876)
	movq %r12, -32(%rbp)		# movq %r(4876), -32(%rbp)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %rbx, %r14		# movq %r(t10), %r(4863)
	salq $3, %r14		# salq $3, %r(4863)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4877)
	addq %r14, %r12		# addq %r(4863), %r(4864)
	movq %rbx, %r14		# movq %r(t10), %r(4878)
	movq %r14, -16(%rbp)		# movq %r(4878), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4879)
	salq $3, %r13		# salq $3, %r(4879)
	movq %r13, -16(%rbp)		# movq %r(4879), -16(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4880)
	movq %r14, -8(%rbp)		# movq %r(4871), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4872)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4881)
	addq %r14, %r13		# addq %r(4881), %r(4872)
	movq %r13, -8(%rbp)		# movq %r(4872), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4873)
	movq (%r13), %r13		# movq (%r(4873)), %r(4867)
	movq %r13, (%r12)		# movq %r(4867), (%r(4864))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(4868)
	cmpq %r12, %rbx		# cmpq %r(4868), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(4869)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4882)
	addq %rbx, %r13		# addq %r(4869), %r(4870)
	movq %r13, %rax		# movq %r(4870), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L905:
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

#.section .rodata
.align 8
.L908:
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

