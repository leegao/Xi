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
	leaq .L979(%rip), %rdi		# leaq .L979(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5562)
	movq %rbx, %rdi		# movq %r(5562), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(5579)
	movq %rbx, %rdi		# movq %r(5579), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(5580)
	movq %rbx, %rax		# movq %r(5580), %rax
	jmp .L978		# jmp .L978
	.L978:		# .L978:
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
	movq $0, %rbx		# movq $0, %r(5581)
	movq %rbx, %rax		# movq %r(5581), %rax
	jmp .L980		# jmp .L980
	.L980:		# .L980:
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
	movq $1, %rbx		# movq $1, %r(5582)
	movq %rbx, %rax		# movq %r(5582), %rax
	jmp .L981		# jmp .L981
	.L981:		# .L981:
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
	leaq .L983(%rip), %rdi		# leaq .L983(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5565)
	movq %r13, %rdi		# movq %r(5565), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L982		# jmp .L982
	.L982:		# .L982:
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
	movq %rax, %r13		# movq %rax, %r(5569)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r15		# movq %rax, %r(5570)
	leaq .L985(%rip), %rdi		# leaq .L985(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5571)
	movq $1, %r12		# movq $1, %r(5585)
	movq %r12, %rbx		# movq %r(5585), %r(5560)
	testq $1, %r13		# testq $1, %r(5569)
	jne .L986		# jne .L986
	.L988:		# .L988:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r12		# movq %rax, %r(5572)
	testq $1, %r12		# testq $1, %r(5572)
	jne .L986		# jne .L986
	.L987:		# .L987:
	movq $0, %rbx		# movq $0, %r(5586)
	jmp .L986		# jmp .L986
	.L986:		# .L986:
	movq %r14, %rdi		# movq %r(5571), %rdi
	movq %rbx, %rsi		# movq %r(5560), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L989(%rip), %rdi		# leaq .L989(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5574)
	movq $1, %rbx		# movq $1, %r(5588)
	movq %rbx, %r13		# movq %r(5588), %r(5561)
	movq $1, %rbx		# movq $1, %r(5589)
	movq %r15, %r12		# movq %r(5570), %r(5590)
	xorq %rbx, %r12		# xorq %r(5589), %r(5590)
	testq $1, %r12		# testq $1, %r(5590)
	jne .L991		# jne .L991
	.L992:		# .L992:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(5575)
	testq $1, %rbx		# testq $1, %r(5575)
	jne .L990		# jne .L990
	.L991:		# .L991:
	movq $0, %rbx		# movq $0, %r(5591)
	movq %rbx, %r13		# movq %r(5591), %r(5561)
	jmp .L990		# jmp .L990
	.L990:		# .L990:
	movq $1, %r12		# movq $1, %r(5592)
	movq %r13, %rbx		# movq %r(5561), %r(5593)
	xorq %r12, %rbx		# xorq %r(5592), %r(5593)
	movq %r14, %rdi		# movq %r(5574), %rdi
	movq %rbx, %rsi		# movq %r(5593), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L984		# jmp .L984
	.L984:		# .L984:
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
	movq %rdi, %rbx		# movq %rdi, %r(5606)
	movq %rbx, -24(%rbp)		# movq %r(5606), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5607)
	movq (%rbx), %r12		# movq (%r(5607)), %r(5594)
	movq %r12, -8(%rbp)		# movq %r(5608), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5609)
	salq $3, %rbx		# salq $3, %r(5595)
	movq $8, %r12		# movq $8, %r(5596)
	addq %r12, %rbx		# addq %r(5596), %r(5597)
	movq %rbx, %rdi		# movq %r(5597), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5577)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5610)
	salq $3, %r12		# salq $3, %r(5598)
	movq %r14, %r13		# movq %r(5577), %r(5599)
	addq %r12, %r13		# addq %r(5598), %r(5599)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5611)
	movq %rbx, %r12		# movq %r(5611), %r(5600)
	salq $3, %r12		# salq $3, %r(5600)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5612)
	movq %rbx, -16(%rbp)		# movq %r(5613), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5614)
	addq %r12, %rbx		# addq %r(5600), %r(5614)
	movq %rbx, -16(%rbp)		# movq %r(5614), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5615)
	movq (%rbx), %rbx		# movq (%r(5615)), %r(5602)
	movq %rbx, (%r13)		# movq %r(5602), (%r(5599))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5616)
	decq %rbx		# decq %r(5616)
	movq %rbx, -8(%rbp)		# movq %r(5616), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(5603)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5617)
	cmpq %rbx, %r12		# cmpq %r(5603), %r(5617)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5604)
	movq %r14, %r12		# movq %r(5577), %r(5605)
	addq %rbx, %r12		# addq %r(5604), %r(5605)
	movq %r12, %rax		# movq %r(5605), %rax
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
.L989:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L985:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L983:
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
.L979:
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

