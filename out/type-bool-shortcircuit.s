.att_syntax prefix
.text
.globl _Iunreachable_b
_Iunreachable_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq .L605(%rip), %rdi		# leaq .L605(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2862)
	movq %rbx, %rdi		# movq %r(2862), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(2879)
	movq %rbx, %rdi		# movq %r(2879), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(2880)
	movq %rbx, %rax		# movq %r(2880), %rax
	jmp .L604		# jmp .L604
	.L604:		# .L604:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstFalse_b
_IconstFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %rbx		# movq $0, %r(2881)
	movq %rbx, %rax		# movq %r(2881), %rax
	jmp .L606		# jmp .L606
	.L606:		# .L606:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstTrue_b
_IconstTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(2882)
	movq %rbx, %rax		# movq %r(2882), %rax
	jmp .L607		# jmp .L607
	.L607:		# .L607:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L609(%rip), %rdi		# leaq .L609(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(2865)
	movq %r13, %rdi		# movq %r(2865), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L608		# jmp .L608
	.L608:		# .L608:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %r13		# movq %rax, %r(2869)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r15		# movq %rax, %r(2870)
	leaq .L611(%rip), %rdi		# leaq .L611(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(2871)
	movq $1, %r12		# movq $1, %r(2885)
	movq %r12, %rbx		# movq %r(2885), %r(2860)
	testq $1, %r13		# testq $1, %r(2869)
	jne .L612		# jne .L612
	.L614:		# .L614:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r12		# movq %rax, %r(2872)
	testq $1, %r12		# testq $1, %r(2872)
	jne .L612		# jne .L612
	.L613:		# .L613:
	movq $0, %rbx		# movq $0, %r(2886)
	jmp .L612		# jmp .L612
	.L612:		# .L612:
	movq %r14, %rdi		# movq %r(2871), %rdi
	movq %rbx, %rsi		# movq %r(2860), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L615(%rip), %rdi		# leaq .L615(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(2874)
	movq $1, %rbx		# movq $1, %r(2888)
	movq %rbx, %r13		# movq %r(2888), %r(2861)
	movq $1, %rbx		# movq $1, %r(2889)
	movq %r15, %r12		# movq %r(2870), %r(2890)
	xorq %rbx, %r12		# xorq %r(2889), %r(2890)
	testq $1, %r12		# testq $1, %r(2890)
	jne .L617		# jne .L617
	.L618:		# .L618:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(2875)
	testq $1, %rbx		# testq $1, %r(2875)
	jne .L616		# jne .L616
	.L617:		# .L617:
	movq $0, %rbx		# movq $0, %r(2891)
	movq %rbx, %r13		# movq %r(2891), %r(2861)
	jmp .L616		# jmp .L616
	.L616:		# .L616:
	movq $1, %r12		# movq $1, %r(2892)
	movq %r13, %rbx		# movq %r(2861), %r(2893)
	xorq %r12, %rbx		# xorq %r(2892), %r(2893)
	movq %r14, %rdi		# movq %r(2874), %rdi
	movq %rbx, %rsi		# movq %r(2893), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L610		# jmp .L610
	.L610:		# .L610:
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
	movq %rdi, %rbx		# movq %rdi, %r(2906)
	movq %rbx, -8(%rbp)		# movq %r(2906), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2907)
	movq (%rbx), %rbx		# movq (%r(2907)), %r(2894)
	movq %rbx, %r14		# movq %r(2894), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(2895)
	salq $3, %rbx		# salq $3, %r(2895)
	movq $8, %r12		# movq $8, %r(2896)
	addq %r12, %rbx		# addq %r(2896), %r(2897)
	movq %rbx, %rdi		# movq %r(2897), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2877)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(2898)
	salq $3, %rbx		# salq $3, %r(2898)
	movq %r15, %r13		# movq %r(2877), %r(2899)
	addq %rbx, %r13		# addq %r(2898), %r(2899)
	movq %r14, %r12		# movq %r(t10), %r(2900)
	salq $3, %r12		# salq $3, %r(2900)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2908)
	movq %rbx, -16(%rbp)		# movq %r(2909), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2910)
	addq %r12, %rbx		# addq %r(2900), %r(2910)
	movq %rbx, -16(%rbp)		# movq %r(2910), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2911)
	movq (%rbx), %rbx		# movq (%r(2911)), %r(2902)
	movq %rbx, (%r13)		# movq %r(2902), (%r(2899))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(2903)
	cmpq %rbx, %r14		# cmpq %r(2903), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(2904)
	movq %r15, %r12		# movq %r(2877), %r(2905)
	addq %rbx, %r12		# addq %r(2904), %r(2905)
	movq %r12, %rax		# movq %r(2905), %rax
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
.L605:
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

#.section .rodata
.align 8
.L611:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L609:
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

#.section .rodata
.align 8
.L615:
	.quad 2
	.quad 35
	.quad 50
	.text

