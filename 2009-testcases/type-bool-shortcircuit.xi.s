.att_syntax prefix
.text
.globl _Iunreachable_b
_Iunreachable_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	leaq .L424(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, %r12
	movq %r12, %rdi
	call _Iprintln_pai
	
	movq $0, %r13
	movq %r13, %rdi
	call _Iassert_pb
	
	movq $0, %r15
	movq %r15, %rax
	jmp .L423
	.L423:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstFalse_b
_IconstFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq $0, %r15
	movq %r15, %rax
	jmp .L425
	.L425:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $0, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstTrue_b
_IconstTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq $1, %r15
	movq %r15, %rax
	jmp .L426
	.L426:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $0, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	movq %rsi, %r12
	leaq .L428(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -8(%rbp)
	movq -8(%rbp), %rdi
	call _Iprint_pai
	
	movq %rbx, %rdi
	call _Iprintln_pai
	
	movq %r12, %rdi
	call _Iassert_pb
	
	.L427:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	call _IconstTrue_b
	movq %rax, %r15
	movq %r15, %r13
	movq %r13, %r15
	movq %r15, -8(%rbp)
	call _IconstFalse_b
	movq %rax, %r15
	movq %r15, -16(%rbp)
	movq -16(%rbp), %r15
	movq %r15, -24(%rbp)
	leaq .L430(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -32(%rbp)
	movq $1, %r15
	movq %r15, -40(%rbp)
	test -8(%rbp), $1
	je .L431
	.L433:
	call _Iunreachable_b
	movq %rax, %r15
	movq %r15, -48(%rbp)
	test -48(%rbp), $1
	je .L431
	.L432:
	movq $0, %r15
	movq %r15, -40(%rbp)
	.L431:
	movq -32(%rbp), %rdi
	movq -40(%rbp), %rsi
	call _Itest_paib
	
	leaq .L434(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -56(%rbp)
	movq $1, %r15
	movq %r15, -64(%rbp)
	movq -24(%rbp), %r15
	movq %r15, -72(%rbp)
	movq $1, %r14
	xorq %r14, -72(%rbp)
	test -72(%rbp), $1
	je .L436
	.L437:
	call _Iunreachable_b
	movq %rax, %r15
	movq %r15, -80(%rbp)
	test -80(%rbp), $1
	je .L435
	.L436:
	movq $0, %r15
	movq %r15, -64(%rbp)
	.L435:
	movq -56(%rbp), %rdi
	movq -64(%rbp), %r15
	movq %r15, -88(%rbp)
	movq $1, %r14
	xorq %r14, -88(%rbp)
	movq -88(%rbp), %rsi
	call _Itest_paib
	
	.L429:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $96, %rsp
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
.L430:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L428:
	.quad 8
	.quad 84
	.quad 101
	.quad 115
	.quad 116
	.quad 105
	.quad 110
	.quad 103
	.quad 58
	.text

.section .rodata
.align 8
.L424:
	.quad 28
	.quad 85
	.quad 110
	.quad 114
	.quad 101
	.quad 97
	.quad 99
	.quad 104
	.quad 97
	.quad 98
	.quad 108
	.quad 101
	.quad 32
	.quad 102
	.quad 117
	.quad 110
	.quad 99
	.quad 116
	.quad 105
	.quad 111
	.quad 110
	.quad 32
	.quad 99
	.quad 97
	.quad 108
	.quad 108
	.quad 101
	.quad 100
	.quad 33
	.text

.section .rodata
.align 8
.L434:
	.quad 2
	.quad 35
	.quad 50
	.text

