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
	leaq .L384(%rip), %rdi
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
	jmp .L383
	.L383:
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
	jmp .L385
	.L385:
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
	jmp .L386
	.L386:
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
	leaq .L388(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -8(%rbp)
	movq -8(%rbp), %rdi
	call _Iprint_pai
	
	movq %rbx, %rdi
	call _Iprintln_pai
	
	movq %r12, %rdi
	call _Iassert_pb
	
	.L387:
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
	subq $208, %rsp
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
	test -8(%rbp), $1
	je .L390
	.L392:
	call _Iunreachable_b
	movq %rax, %r15
	movq %r15, -32(%rbp)
	movq -32(%rbp), %r15
	movq %r15, -40(%rbp)
	movq $1, %r14
	xorq %r14, -40(%rbp)
	test -40(%rbp), $1
	je .L391
	.L390:
	leaq .L393(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -48(%rbp)
	movq -48(%rbp), %rdi
	movq $1, -56(%rbp)
	movq -56(%rbp), %rsi
	call _Itest_paib
	
	jmp .L394
	.L391:
	leaq .L395(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -64(%rbp)
	movq -64(%rbp), %rdi
	movq $0, -72(%rbp)
	movq -72(%rbp), %rsi
	call _Itest_paib
	
	.L394:
	movq -24(%rbp), %r15
	movq %r15, -80(%rbp)
	movq $1, %r14
	xorq %r14, -80(%rbp)
	test -80(%rbp), $1
	je .L397
	.L398:
	call _Iunreachable_b
	movq %rax, %r15
	movq %r15, -88(%rbp)
	movq -88(%rbp), %r15
	movq %r15, -96(%rbp)
	movq $1, %r14
	xorq %r14, -96(%rbp)
	test -96(%rbp), $1
	je .L397
	.L396:
	leaq .L399(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -104(%rbp)
	movq -104(%rbp), %rdi
	movq $0, -112(%rbp)
	movq -112(%rbp), %rsi
	call _Itest_paib
	
	jmp .L400
	.L397:
	leaq .L401(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -120(%rbp)
	movq -120(%rbp), %rdi
	movq $1, -128(%rbp)
	movq -128(%rbp), %rsi
	call _Itest_paib
	
	.L400:
	movq $1, %r15
	movq %r15, -136(%rbp)
	movq -24(%rbp), %r15
	movq %r15, -144(%rbp)
	movq $1, %r14
	xorq %r14, -144(%rbp)
	test -144(%rbp), $1
	je .L403
	.L404:
	call _Iunreachable_b
	movq %rax, %r15
	movq %r15, -152(%rbp)
	test -152(%rbp), $1
	je .L402
	.L403:
	movq $0, %r15
	movq %r15, -136(%rbp)
	.L402:
	movq -136(%rbp), %r15
	movq %r15, -160(%rbp)
	movq $1, %r14
	xorq %r14, -160(%rbp)
	movq -160(%rbp), %r15
	movq %r15, -168(%rbp)
	movq $1, %r14
	xorq %r14, -168(%rbp)
	test -168(%rbp), $1
	je .L406
	.L405:
	leaq .L407(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -176(%rbp)
	movq -176(%rbp), %rdi
	movq $1, -184(%rbp)
	movq -184(%rbp), %rsi
	call _Itest_paib
	
	jmp .L408
	.L406:
	leaq .L409(%rip), %rdi
	call _I_c_internal_strdup_aii
	movq %rax, %r15
	movq %r15, -192(%rbp)
	movq -192(%rbp), %rdi
	movq $0, -200(%rbp)
	movq -200(%rbp), %rsi
	call _Itest_paib
	
	.L408:
	.L389:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $208, %rsp
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
.L401:
	.quad 2
	.quad 35
	.quad 50
	.text

.section .rodata
.align 8
.L395:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L409:
	.quad 2
	.quad 35
	.quad 51
	.text

.section .rodata
.align 8
.L393:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L399:
	.quad 2
	.quad 35
	.quad 50
	.text

.section .rodata
.align 8
.L384:
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
.L388:
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
.L407:
	.quad 2
	.quad 35
	.quad 51
	.text

