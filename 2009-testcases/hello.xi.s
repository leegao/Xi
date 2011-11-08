.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	leaq .L136(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, %r13
	movq %r13, %rdi
	call _Iprintln_pai
	
	.L135:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strdup_aii
_I_c_internal_strdup_aii:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	movq %rbx, %r15
	movq (%r15), %r15
	movq %r15, %r12
	movq %r12, %r15
	movq %r15, %r13
	movq %r13, %r15
	salq $3, %r15
	movq %r15, -8(%rbp)
	movq -8(%rbp), %r15
	movq %r15, -16(%rbp)
	movq $8, %r14
	addq %r14, -16(%rbp)
	movq -16(%rbp), %rdi
	call _I_alloc_i
	movq %rax, %r15
	movq %r15, -32(%rbp)
	movq -32(%rbp), %r15
	movq %r15, -40(%rbp)
	.L16:
	movq %r13, %r15
	salq $3, %r15
	movq %r15, -48(%rbp)
	movq -40(%rbp), %r15
	movq %r15, -56(%rbp)
	movq -48(%rbp), %r14
	addq %r14, -56(%rbp)
	movq %r13, %r15
	salq $3, %r15
	movq %r15, -64(%rbp)
	movq %rbx, %r15
	movq %r15, -72(%rbp)
	movq -64(%rbp), %r14
	addq %r14, -72(%rbp)
	movq -72(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -80(%rbp)
	movq -56(%rbp), %r15
	movq -80(%rbp), %r14
	movq %r14, (%r15)
	decq %r13
	movq $0, -88(%rbp)
	movq %r13, %r15
	cmpq -88(%rbp), %r15
	jge .L16
	.L17:
	movq -40(%rbp), %r15
	movq %r15, -96(%rbp)
	movq $8, %r14
	addq %r14, -96(%rbp)
	movq -96(%rbp), %r15
	movq %r15, %rax
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L136:
	.quad 13
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 44
	.quad 32
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.quad 33
	.text

