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
	movq %rax, %rbx		# movq %rax, %r(3094)
	movq %rbx, %rdi		# movq %r(3094), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(3111)
	movq %rbx, %rdi		# movq %r(3111), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(3112)
	movq %rbx, %rax		# movq %r(3112), %rax
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
	movq $0, %rbx		# movq $0, %r(3113)
	movq %rbx, %rax		# movq %r(3113), %rax
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
	movq $1, %rbx		# movq $1, %r(3114)
	movq %rbx, %rax		# movq %r(3114), %rax
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
	movq %rax, %r13		# movq %rax, %r(3097)
	movq %r13, %rdi		# movq %r(3097), %rdi
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
	movq %rax, %r12		# movq %rax, %r(3101)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %rbx		# movq %rax, %r(3126)
	movq %rbx, -8(%rbp)		# movq %r(3126), -8(%rbp)
	leaq .L611(%rip), %rdi		# leaq .L611(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(3103)
	movq $1, %rbx		# movq $1, %r(3117)
	movq %rbx, %r14		# movq %r(3117), %r(3092)
	testq $1, %r12		# testq $1, %r(3101)
	jne .L612		# jne .L612
	.L614:		# .L614:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(3104)
	testq $1, %rbx		# testq $1, %r(3104)
	jne .L612		# jne .L612
	.L613:		# .L613:
	movq $0, %r12		# movq $0, %r(3118)
	movq %r12, %r14		# movq %r(3118), %r(3092)
	jmp .L612		# jmp .L612
	.L612:		# .L612:
	movq %r13, %rdi		# movq %r(3103), %rdi
	movq %r14, %rsi		# movq %r(3092), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L615(%rip), %rdi		# leaq .L615(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(3106)
	movq $1, %r12		# movq $1, %r(3120)
	movq %r12, %r14		# movq %r(3120), %r(3093)
	movq $1, %rbx		# movq $1, %r(3121)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3127)
	movq %r12, %r13		# movq %r(3127), %r(3122)
	xorq %rbx, %r13		# xorq %r(3121), %r(3122)
	testq $1, %r13		# testq $1, %r(3122)
	jne .L617		# jne .L617
	.L618:		# .L618:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(3107)
	testq $1, %rbx		# testq $1, %r(3107)
	jne .L616		# jne .L616
	.L617:		# .L617:
	movq $0, %r12		# movq $0, %r(3123)
	movq %r12, %r14		# movq %r(3123), %r(3093)
	jmp .L616		# jmp .L616
	.L616:		# .L616:
	movq $1, %rbx		# movq $1, %r(3124)
	movq %r14, %r12		# movq %r(3093), %r(3125)
	xorq %rbx, %r12		# xorq %r(3124), %r(3125)
	movq %r15, %rdi		# movq %r(3106), %rdi
	movq %r12, %rsi		# movq %r(3125), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(3140)
	movq %rbx, -24(%rbp)		# movq %r(3140), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3141)
	movq (%rbx), %r13		# movq (%r(3141)), %r(3128)
	movq %r13, %r12		# movq %r(3128), %r(3142)
	movq %r12, -8(%rbp)		# movq %r(3142), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3143)
	movq %r12, %r13		# movq %r(3143), %r(3129)
	salq $3, %r13		# salq $3, %r(3129)
	movq $8, %rbx		# movq $8, %r(3130)
	movq %r13, %r14		# movq %r(3129), %r(3131)
	addq %rbx, %r14		# addq %r(3130), %r(3131)
	movq %r14, %rdi		# movq %r(3131), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3109)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3144)
	movq %r13, %rbx		# movq %r(3144), %r(3132)
	salq $3, %rbx		# salq $3, %r(3132)
	movq %r15, %r13		# movq %r(3109), %r(3133)
	addq %rbx, %r13		# addq %r(3132), %r(3133)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3145)
	movq %rbx, %r12		# movq %r(3145), %r(3134)
	salq $3, %r12		# salq $3, %r(3134)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3146)
	movq %rbx, %r14		# movq %r(3146), %r(3147)
	movq %r14, -16(%rbp)		# movq %r(3147), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3148)
	addq %r12, %rbx		# addq %r(3134), %r(3148)
	movq %rbx, -16(%rbp)		# movq %r(3148), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3149)
	movq (%rbx), %r12		# movq (%r(3149)), %r(3136)
	movq %r12, (%r13)		# movq %r(3136), (%r(3133))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3150)
	decq %rbx		# decq %r(3150)
	movq %rbx, -8(%rbp)		# movq %r(3150), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(3137)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3151)
	cmpq %rbx, %r12		# cmpq %r(3137), %r(3151)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(3138)
	movq %r15, %r13		# movq %r(3109), %r(3139)
	addq %rbx, %r13		# addq %r(3138), %r(3139)
	movq %r13, %rax		# movq %r(3139), %rax
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
.L611:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L615:
	.quad 2
	.quad 35
	.quad 50
	.text

