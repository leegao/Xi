.att_syntax prefix
.text
.globl _Imean_iai
_Imean_iai:
	pushq %rbp
	movq %rsp, %rbp
	subq $144, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	leaq .L14(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, %r13
	movq %r13, %rdi
	call _Iprintln_pai
	
	movq $0, %r15
	movq %r15, -8(%rbp)
	movq $0, %r15
	movq %r15, -16(%rbp)
	.L15:
	movq %rbx, %r15
	movq %r15, -24(%rbp)
	movq $8, %r14
	subq %r14, -24(%rbp)
	movq -24(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -32(%rbp)
	movq -16(%rbp), %r15
	cmpq -32(%rbp), %r15
	jge .L17
	.L16:
	movq %rbx, %r15
	movq %r15, -40(%rbp)
	movq -16(%rbp), %r15
	movq %r15, -48(%rbp)
	movq -40(%rbp), %r15
	movq %r15, -56(%rbp)
	movq $8, %r14
	subq %r14, -56(%rbp)
	movq -56(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -64(%rbp)
	movq -48(%rbp), %r15
	cmpq -64(%rbp), %r15
	jae error_outofbounds
	movq -48(%rbp), %r15
	salq $3, %r15
	movq %r15, -72(%rbp)
	movq -40(%rbp), %r15
	movq %r15, -80(%rbp)
	movq -72(%rbp), %r14
	addq %r14, -80(%rbp)
	movq -80(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -88(%rbp)
	movq -8(%rbp), %r15
	movq %r15, -96(%rbp)
	movq -88(%rbp), %r14
	addq %r14, -96(%rbp)
	movq -96(%rbp), %r15
	movq %r15, -8(%rbp)
	incq -16(%rbp)
	jmp .L15
	.L17:
	movq %rbx, %r15
	movq %r15, -104(%rbp)
	movq $8, %r14
	subq %r14, -104(%rbp)
	movq -104(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -112(%rbp)
	movq %rdx, -120(%rbp)
	movq %rax, -128(%rbp)
	movq -8(%rbp), %rax
	movq $0, %rdx
	movq -112(%rbp), %r14
	idivq %r14
	movq %rax, -136(%rbp)
	movq -120(%rbp), %rdx
	movq -128(%rbp), %rax
	movq -136(%rbp), %r15
	movq %r15, %rax
	jmp .L13
	.L13:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $144, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $160, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	movq $48, %r12
	movq %r12, %rdi
	call _I_alloc_i
	movq %rax, %r15
	movq %r15, -8(%rbp)
	movq -8(%rbp), %r15
	movq %r15, -16(%rbp)
	movq $5, -24(%rbp)
	movq -16(%rbp), %r15
	movq -24(%rbp), %r14
	movq %r14, (%r15)
	movq -16(%rbp), %r15
	movq %r15, -32(%rbp)
	movq $8, %r14
	addq %r14, -32(%rbp)
	movq -32(%rbp), %r15
	movq %r15, -40(%rbp)
	movq -40(%rbp), %r15
	movq %r15, -48(%rbp)
	movq $0, %r14
	addq %r14, -48(%rbp)
	movq $1, -56(%rbp)
	movq -48(%rbp), %r15
	movq -56(%rbp), %r14
	movq %r14, (%r15)
	movq -40(%rbp), %r15
	movq %r15, -64(%rbp)
	movq $8, %r14
	addq %r14, -64(%rbp)
	movq $2, -72(%rbp)
	movq -64(%rbp), %r15
	movq -72(%rbp), %r14
	movq %r14, (%r15)
	movq -40(%rbp), %r15
	movq %r15, -80(%rbp)
	movq $16, %r14
	addq %r14, -80(%rbp)
	movq $3, -88(%rbp)
	movq -80(%rbp), %r15
	movq -88(%rbp), %r14
	movq %r14, (%r15)
	movq -40(%rbp), %r15
	movq %r15, -96(%rbp)
	movq $24, %r14
	addq %r14, -96(%rbp)
	movq $4, -104(%rbp)
	movq -96(%rbp), %r15
	movq -104(%rbp), %r14
	movq %r14, (%r15)
	movq -40(%rbp), %r15
	movq %r15, -112(%rbp)
	movq $32, %r14
	addq %r14, -112(%rbp)
	movq $5, -120(%rbp)
	movq -112(%rbp), %r15
	movq -120(%rbp), %r14
	movq %r14, (%r15)
	movq -40(%rbp), %rdi
	call _Imean_iai
	movq %rax, %r15
	movq %r15, -128(%rbp)
	movq -128(%rbp), %r15
	movq %r15, -136(%rbp)
	movq -136(%rbp), %rdi
	call _IunparseInt_aii
	movq %rax, %r15
	movq %r15, -144(%rbp)
	movq -144(%rbp), %rdi
	call _Iprintln_pai
	
	.L20:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $160, %rsp
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
	.L21:
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
	jge .L21
	.L22:
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
.L14:
	.quad 4
	.quad 116
	.quad 101
	.quad 115
	.quad 116
	.text

error_outofbounds:
call _I_outOfBounds_p

