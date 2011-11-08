.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $192, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	movq $4, %r15
	movq %r15, %r12
	movq $1, %r14
	addq %r14, %r12
	movq %r12, %r15
	salq $3, %r15
	movq %r15, %r13
	movq %r13, %rdi
	call _I_alloc_i
	movq %rax, %r15
	movq %r15, -16(%rbp)
	movq -16(%rbp), %r15
	movq %r15, -24(%rbp)
	movq $4, -32(%rbp)
	movq -24(%rbp), %r15
	movq -32(%rbp), %r14
	movq %r14, (%r15)
	movq -24(%rbp), %r15
	movq %r15, -40(%rbp)
	movq $8, %r14
	addq %r14, -40(%rbp)
	movq -40(%rbp), %r15
	movq %r15, -48(%rbp)
	movq -48(%rbp), %r15
	movq %r15, -56(%rbp)
	movq $0, %r14
	addq %r14, -56(%rbp)
	movq $0, -64(%rbp)
	movq -56(%rbp), %r15
	movq -64(%rbp), %r14
	movq %r14, (%r15)
	movq -48(%rbp), %r15
	movq %r15, -72(%rbp)
	movq $8, %r14
	addq %r14, -72(%rbp)
	movq $0, -80(%rbp)
	movq -72(%rbp), %r15
	movq -80(%rbp), %r14
	movq %r14, (%r15)
	movq -48(%rbp), %r15
	movq %r15, -88(%rbp)
	movq $16, %r14
	addq %r14, -88(%rbp)
	movq $0, -96(%rbp)
	movq -88(%rbp), %r15
	movq -96(%rbp), %r14
	movq %r14, (%r15)
	movq -48(%rbp), %r15
	movq %r15, -104(%rbp)
	movq $24, %r14
	addq %r14, -104(%rbp)
	movq $0, -112(%rbp)
	movq -104(%rbp), %r15
	movq -112(%rbp), %r14
	movq %r14, (%r15)
	movq -48(%rbp), %r15
	movq %r15, -120(%rbp)
	movq -120(%rbp), %r15
	movq %r15, -128(%rbp)
	movq $0, %r15
	movq %r15, -136(%rbp)
	movq -128(%rbp), %r15
	movq %r15, -144(%rbp)
	movq $8, %r14
	subq %r14, -144(%rbp)
	movq -144(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -152(%rbp)
	movq -136(%rbp), %r15
	cmpq -152(%rbp), %r15
	jae error_outofbounds
	movq -136(%rbp), %r15
	salq $3, %r15
	movq %r15, -160(%rbp)
	movq -128(%rbp), %r15
	movq %r15, -168(%rbp)
	movq -160(%rbp), %r14
	addq %r14, -168(%rbp)
	movq $42, -176(%rbp)
	movq -168(%rbp), %r15
	movq -176(%rbp), %r14
	movq %r14, (%r15)
	leaq .L47(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -184(%rbp)
	movq -184(%rbp), %rdi
	call _Iprintln_pai
	
	.L44:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $192, %rsp
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
.L47:
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

