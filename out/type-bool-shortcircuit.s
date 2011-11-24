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
	movq %rax, %rbx		# movq %rax, %r(5592)
	movq %rbx, %rdi		# movq %r(5592), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(5609)
	movq %rbx, %rdi		# movq %r(5609), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(5610)
	movq %rbx, %rax		# movq %r(5610), %rax
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
	movq $0, %rbx		# movq $0, %r(5611)
	movq %rbx, %rax		# movq %r(5611), %rax
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
	movq $1, %rbx		# movq $1, %r(5612)
	movq %rbx, %rax		# movq %r(5612), %rax
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
	movq %rax, %r13		# movq %rax, %r(5595)
	movq %r13, %rdi		# movq %r(5595), %rdi
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
	movq %rax, %r13		# movq %rax, %r(5599)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r15		# movq %rax, %r(5600)
	leaq .L985(%rip), %rdi		# leaq .L985(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5601)
	movq $1, %r12		# movq $1, %r(5615)
	movq %r12, %rbx		# movq %r(5615), %r(5590)
	testq $1, %r13		# testq $1, %r(5599)
	jne .L986		# jne .L986
	.L988:		# .L988:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r12		# movq %rax, %r(5602)
	testq $1, %r12		# testq $1, %r(5602)
	jne .L986		# jne .L986
	.L987:		# .L987:
	movq $0, %rbx		# movq $0, %r(5616)
	jmp .L986		# jmp .L986
	.L986:		# .L986:
	movq %r14, %rdi		# movq %r(5601), %rdi
	movq %rbx, %rsi		# movq %r(5590), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L989(%rip), %rdi		# leaq .L989(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5604)
	movq $1, %rbx		# movq $1, %r(5618)
	movq %rbx, %r13		# movq %r(5618), %r(5591)
	movq $1, %rbx		# movq $1, %r(5619)
	movq %r15, %r12		# movq %r(5600), %r(5620)
	xorq %rbx, %r12		# xorq %r(5619), %r(5620)
	testq $1, %r12		# testq $1, %r(5620)
	jne .L991		# jne .L991
	.L992:		# .L992:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(5605)
	testq $1, %rbx		# testq $1, %r(5605)
	jne .L990		# jne .L990
	.L991:		# .L991:
	movq $0, %rbx		# movq $0, %r(5621)
	movq %rbx, %r13		# movq %r(5621), %r(5591)
	jmp .L990		# jmp .L990
	.L990:		# .L990:
	movq $1, %r12		# movq $1, %r(5622)
	movq %r13, %rbx		# movq %r(5591), %r(5623)
	xorq %r12, %rbx		# xorq %r(5622), %r(5623)
	movq %r14, %rdi		# movq %r(5604), %rdi
	movq %rbx, %rsi		# movq %r(5623), %rsi
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(5624)
	movq %r12, -8(%rbp)		# movq %r(5636), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5637)
	salq $3, %rbx		# salq $3, %r(5625)
	movq $8, %r12		# movq $8, %r(5626)
	addq %r12, %rbx		# addq %r(5626), %r(5627)
	movq %rbx, %rdi		# movq %r(5627), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5607)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5638)
	salq $3, %r12		# salq $3, %r(5628)
	movq %r13, %r15		# movq %r(5607), %r(5629)
	addq %r12, %r15		# addq %r(5628), %r(5629)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5639)
	movq %rbx, %r12		# movq %r(5639), %r(5630)
	salq $3, %r12		# salq $3, %r(5630)
	movq %r14, %rbx		# movq %r(p0), %r(5640)
	movq %rbx, -16(%rbp)		# movq %r(5640), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5641)
	addq %r12, %rbx		# addq %r(5630), %r(5641)
	movq %rbx, -16(%rbp)		# movq %r(5641), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5642)
	movq (%rbx), %rbx		# movq (%r(5642)), %r(5632)
	movq %rbx, (%r15)		# movq %r(5632), (%r(5629))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5643)
	decq %rbx		# decq %r(5643)
	movq %rbx, -8(%rbp)		# movq %r(5643), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(5633)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5644)
	cmpq %rbx, %r12		# cmpq %r(5633), %r(5644)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5634)
	movq %r13, %r12		# movq %r(5607), %r(5635)
	addq %rbx, %r12		# addq %r(5634), %r(5635)
	movq %r12, %rax		# movq %r(5635), %rax
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

