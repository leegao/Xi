.att_syntax prefix
.text
.globl _Imean_iai
_Imean_iai:
	pushq %rbp
	movq %rsp, %rbp
	subq $208, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	leaq .L16(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, %r13
	movq %r13, %rdi
	call _Iprintln_pai
	
	movq $0, %r15
	movq %r15, -8(%rbp)
	movq $0, %r15
	movq %r15, -16(%rbp)
	.L17:
	movq %rbx, %r15
	movq %r15, -24(%rbp)
	movq $8, %r14
	subq %r14, -24(%rbp)
	movq -24(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -32(%rbp)
	movq -16(%rbp), %r15
	cmpq -32(%rbp), %r15
	jge .L19
	.L18:
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
	jmp .L17
	.L19:
	movq $1, -104(%rbp)
	movq -104(%rbp), %rdi
	movq $2, -112(%rbp)
	movq -112(%rbp), %rsi
	movq $3, -120(%rbp)
	movq -120(%rbp), %rdx
	movq $4, -128(%rbp)
	movq -128(%rbp), %rcx
	movq $5, -136(%rbp)
	movq -136(%rbp), %r8
	movq $6, -144(%rbp)
	movq -144(%rbp), %r9
	movq $8, -152(%rbp)
	pushq -152(%rbp)
	movq $7, -160(%rbp)
	pushq -160(%rbp)
	call _Ix_piiiiiiii
	popq %r15
	popq %r15
	
	movq %rbx, %r15
	movq %r15, -168(%rbp)
	movq $8, %r14
	subq %r14, -168(%rbp)
	movq -168(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -176(%rbp)
	movq %rdx, -184(%rbp)
	movq %rax, -192(%rbp)
	movq -8(%rbp), %rax
	movq $0, %rdx
	movq -176(%rbp), %r14
	idivq %r14
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rdx
	movq -192(%rbp), %rax
	movq -200(%rbp), %r15
	movq %r15, %rax
	jmp .L15
	.L15:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $208, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ix_piiiiiiii
_Ix_piiiiiiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $288, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	movq %rsi, %r12
	movq %rdx, %r13
	movq %rcx, -8(%rbp)
	movq %r8, -16(%rbp)
	movq %r9, -24(%rbp)
	movq %rbp, %r15
	movq 24(%r15), %r15
	movq %r15, -40(%rbp)
	movq %rbp, %r15
	movq 16(%r15), %r15
	movq %r15, -48(%rbp)
	leaq .L23(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -64(%rbp)
	movq -64(%rbp), %r15
	movq %r15, -72(%rbp)
	movq $0, %r15
	movq %r15, -80(%rbp)
	movq -72(%rbp), %r15
	movq %r15, -88(%rbp)
	movq -72(%rbp), %r15
	movq %r15, -96(%rbp)
	movq -88(%rbp), %r15
	movq %r15, -104(%rbp)
	movq $8, %r14
	subq %r14, -104(%rbp)
	movq -104(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -112(%rbp)
	movq -112(%rbp), %r15
	movq %r15, -120(%rbp)
	movq -96(%rbp), %r15
	movq %r15, -128(%rbp)
	movq $8, %r14
	subq %r14, -128(%rbp)
	movq -128(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -136(%rbp)
	movq -120(%rbp), %r15
	movq %r15, -144(%rbp)
	movq -136(%rbp), %r14
	addq %r14, -144(%rbp)
	movq -144(%rbp), %r15
	movq %r15, -152(%rbp)
	movq -152(%rbp), %r15
	movq %r15, -160(%rbp)
	movq $1, %r14
	addq %r14, -160(%rbp)
	movq -160(%rbp), %rdi
	call _I_alloc_i
	movq %rax, %r15
	movq %r15, -168(%rbp)
	movq -168(%rbp), %r15
	movq %r15, -176(%rbp)
	movq -176(%rbp), %r15
	movq -152(%rbp), %r14
	movq %r14, (%r15)
	movq -176(%rbp), %r15
	movq %r15, -184(%rbp)
	movq $8, %r14
	addq %r14, -184(%rbp)
	movq -184(%rbp), %r15
	movq %r15, -192(%rbp)
	.L24:
	movq -80(%rbp), %r15
	cmpq -120(%rbp), %r15
	jge .L26
	.L25:
	movq -80(%rbp), %r15
	salq $3, %r15
	movq %r15, -200(%rbp)
	movq -192(%rbp), %r15
	movq %r15, -208(%rbp)
	movq -200(%rbp), %r14
	addq %r14, -208(%rbp)
	movq -80(%rbp), %r15
	salq $3, %r15
	movq %r15, -216(%rbp)
	movq -88(%rbp), %r15
	movq %r15, -224(%rbp)
	movq -216(%rbp), %r14
	addq %r14, -224(%rbp)
	movq -224(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -232(%rbp)
	movq -208(%rbp), %r15
	movq -232(%rbp), %r14
	movq %r14, (%r15)
	incq -80(%rbp)
	jmp .L24
	.L26:
	.L27:
	movq -80(%rbp), %r15
	cmpq -152(%rbp), %r15
	jge .L29
	.L28:
	movq -80(%rbp), %r15
	salq $3, %r15
	movq %r15, -240(%rbp)
	movq -192(%rbp), %r15
	movq %r15, -248(%rbp)
	movq -240(%rbp), %r14
	addq %r14, -248(%rbp)
	movq -80(%rbp), %r15
	movq %r15, -256(%rbp)
	movq -120(%rbp), %r14
	subq %r14, -256(%rbp)
	movq -256(%rbp), %r15
	salq $3, %r15
	movq %r15, -264(%rbp)
	movq -96(%rbp), %r15
	movq %r15, -272(%rbp)
	movq -264(%rbp), %r14
	addq %r14, -272(%rbp)
	movq -272(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -280(%rbp)
	movq -248(%rbp), %r15
	movq -280(%rbp), %r14
	movq %r14, (%r15)
	incq -80(%rbp)
	jmp .L27
	.L29:
	movq -192(%rbp), %r15
	movq %r15, -72(%rbp)
	.L22:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $288, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $480, %rsp
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
	movq $2, -144(%rbp)
	movq %rdx, -152(%rbp)
	movq %rax, -160(%rbp)
	movq -136(%rbp), %rax
	movq $0, %rdx
	movq -144(%rbp), %r14
	idivq %r14
	movq %rdx, -168(%rbp)
	movq -152(%rbp), %rdx
	movq -160(%rbp), %rax
	movq -168(%rbp), %rdi
	call _IunparseInt_aii
	movq %rax, %r15
	movq %r15, -176(%rbp)
	movq -176(%rbp), %rdi
	call _Iprintln_pai
	
	call _Ireadln_ai
	movq %rax, %r15
	movq %r15, -184(%rbp)
	movq -184(%rbp), %r15
	movq %r15, -192(%rbp)
	movq $16, -200(%rbp)
	movq -200(%rbp), %rdi
	call _I_alloc_i
	movq %rax, %r15
	movq %r15, -208(%rbp)
	movq -208(%rbp), %r15
	movq %r15, -216(%rbp)
	movq -216(%rbp), %rdi
	movq -192(%rbp), %rsi
	call _IparseInt_t2ibai
	
	movq -216(%rbp), %r15
	movq 0(%r15), %r15
	movq %r15, -224(%rbp)
	movq $10, -232(%rbp)
	movq -224(%rbp), %r15
	cmpq -232(%rbp), %r15
	jle .L32
	.L31:
	leaq .L33(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -240(%rbp)
	movq -240(%rbp), %rdi
	call _Iprintln_pai
	
	jmp .L34
	.L32:
	movq $0, %r15
	movq %r15, -248(%rbp)
	leaq .L35(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -256(%rbp)
	movq -256(%rbp), %r15
	movq %r15, -264(%rbp)
	movq -224(%rbp), %rdi
	call _IunparseInt_aii
	movq %rax, %r15
	movq %r15, -272(%rbp)
	movq -272(%rbp), %r15
	movq %r15, -280(%rbp)
	movq -264(%rbp), %r15
	movq %r15, -288(%rbp)
	movq $8, %r14
	subq %r14, -288(%rbp)
	movq -288(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -296(%rbp)
	movq -296(%rbp), %r15
	movq %r15, -304(%rbp)
	movq -280(%rbp), %r15
	movq %r15, -312(%rbp)
	movq $8, %r14
	subq %r14, -312(%rbp)
	movq -312(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -320(%rbp)
	movq -304(%rbp), %r15
	movq %r15, -328(%rbp)
	movq -320(%rbp), %r14
	addq %r14, -328(%rbp)
	movq -328(%rbp), %r15
	movq %r15, -336(%rbp)
	movq -336(%rbp), %r15
	movq %r15, -344(%rbp)
	movq $1, %r14
	addq %r14, -344(%rbp)
	movq -344(%rbp), %rdi
	call _I_alloc_i
	movq %rax, %r15
	movq %r15, -352(%rbp)
	movq -352(%rbp), %r15
	movq %r15, -360(%rbp)
	movq -360(%rbp), %r15
	movq -336(%rbp), %r14
	movq %r14, (%r15)
	movq -360(%rbp), %r15
	movq %r15, -368(%rbp)
	movq $8, %r14
	addq %r14, -368(%rbp)
	movq -368(%rbp), %r15
	movq %r15, -376(%rbp)
	.L36:
	movq -248(%rbp), %r15
	cmpq -304(%rbp), %r15
	jge .L38
	.L37:
	movq -248(%rbp), %r15
	salq $3, %r15
	movq %r15, -384(%rbp)
	movq -376(%rbp), %r15
	movq %r15, -392(%rbp)
	movq -384(%rbp), %r14
	addq %r14, -392(%rbp)
	movq -248(%rbp), %r15
	salq $3, %r15
	movq %r15, -400(%rbp)
	movq -264(%rbp), %r15
	movq %r15, -408(%rbp)
	movq -400(%rbp), %r14
	addq %r14, -408(%rbp)
	movq -408(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -416(%rbp)
	movq -392(%rbp), %r15
	movq -416(%rbp), %r14
	movq %r14, (%r15)
	incq -248(%rbp)
	jmp .L36
	.L38:
	.L39:
	movq -248(%rbp), %r15
	cmpq -336(%rbp), %r15
	jge .L41
	.L40:
	movq -248(%rbp), %r15
	salq $3, %r15
	movq %r15, -424(%rbp)
	movq -376(%rbp), %r15
	movq %r15, -432(%rbp)
	movq -424(%rbp), %r14
	addq %r14, -432(%rbp)
	movq -248(%rbp), %r15
	movq %r15, -440(%rbp)
	movq -304(%rbp), %r14
	subq %r14, -440(%rbp)
	movq -440(%rbp), %r15
	salq $3, %r15
	movq %r15, -448(%rbp)
	movq -280(%rbp), %r15
	movq %r15, -456(%rbp)
	movq -448(%rbp), %r14
	addq %r14, -456(%rbp)
	movq -456(%rbp), %r15
	movq (%r15), %r15
	movq %r15, -464(%rbp)
	movq -432(%rbp), %r15
	movq -464(%rbp), %r14
	movq %r14, (%r15)
	incq -248(%rbp)
	jmp .L39
	.L41:
	movq -376(%rbp), %rdi
	call _Iprintln_pai
	
	.L34:
	.L30:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $480, %rsp
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
	.L42:
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
	jge .L42
	.L43:
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
.L16:
	.quad 4
	.quad 116
	.quad 101
	.quad 115
	.quad 116
	.text

.section .rodata
.align 8
.L33:
	.quad 20
	.quad 105
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 103
	.quad 114
	.quad 101
	.quad 97
	.quad 116
	.quad 101
	.quad 114
	.quad 32
	.quad 116
	.quad 104
	.quad 97
	.quad 110
	.quad 32
	.quad 49
	.quad 48
	.text

.section .rodata
.align 8
.L23:
	.quad 1
	.quad 49
	.text

.section .rodata
.align 8
.L35:
	.quad 4
	.quad 105
	.quad 32
	.quad 105
	.quad 115
	.text

error_outofbounds:
call _I_outOfBounds_p

