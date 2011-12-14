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
	movq %rax, %rbx		# movq %rax, %r(6061)
	movq %rbx, %rdi		# movq %r(6061), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(6078)
	movq %rbx, %rdi		# movq %r(6078), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(6079)
	movq %rbx, %rax		# movq %r(6079), %rax
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
	movq $0, %rbx		# movq $0, %r(6080)
	movq %rbx, %rax		# movq %r(6080), %rax
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
	movq $1, %rbx		# movq $1, %r(6081)
	movq %rbx, %rax		# movq %r(6081), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(6054)
	movq %rsi, %r12		# movq %rsi, %r(6055)
	leaq .L983(%rip), %rdi		# leaq .L983(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6064)
	movq %r13, %rdi		# movq %r(6064), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(6054), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(6055), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(6056)
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %r12		# movq %rax, %r(6068)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %rbx		# movq %rax, %r(6093)
	movq %rbx, -8(%rbp)		# movq %r(6093), -8(%rbp)
	leaq .L985(%rip), %rdi		# leaq .L985(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6070)
	movq $1, %rbx		# movq $1, %r(6084)
	movq %rbx, %r14		# movq %r(6084), %r(6059)
	testq $1, %r12		# testq $1, %r(6068)
	jne .L986		# jne .L986
	.L988:		# .L988:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(6071)
	testq $1, %rbx		# testq $1, %r(6071)
	jne .L986		# jne .L986
	.L987:		# .L987:
	movq $0, %r12		# movq $0, %r(6085)
	movq %r12, %r14		# movq %r(6085), %r(6059)
	jmp .L986		# jmp .L986
	.L986:		# .L986:
	movq %r13, %rdi		# movq %r(6070), %rdi
	movq %r14, %rsi		# movq %r(6059), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L989(%rip), %rdi		# leaq .L989(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(6073)
	movq $1, %r12		# movq $1, %r(6087)
	movq %r12, %r13		# movq %r(6087), %r(6060)
	movq $1, %rbx		# movq $1, %r(6088)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6094)
	movq %r12, %r15		# movq %r(6094), %r(6089)
	xorq %rbx, %r15		# xorq %r(6088), %r(6089)
	testq $1, %r15		# testq $1, %r(6089)
	jne .L991		# jne .L991
	.L992:		# .L992:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(6074)
	testq $1, %rbx		# testq $1, %r(6074)
	jne .L990		# jne .L990
	.L991:		# .L991:
	movq $0, %r12		# movq $0, %r(6090)
	movq %r12, %r13		# movq %r(6090), %r(6060)
	jmp .L990		# jmp .L990
	.L990:		# .L990:
	movq $1, %rbx		# movq $1, %r(6091)
	movq %r13, %r12		# movq %r(6060), %r(6092)
	xorq %rbx, %r12		# xorq %r(6091), %r(6092)
	movq %r14, %rdi		# movq %r(6073), %rdi
	movq %r12, %rsi		# movq %r(6092), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(6107)
	movq %rbx, -24(%rbp)		# movq %r(6107), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6108)
	movq (%rbx), %r13		# movq (%r(6108)), %r(6095)
	movq %r13, %r12		# movq %r(6095), %r(6109)
	movq %r12, -16(%rbp)		# movq %r(6109), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6110)
	movq %r12, %r13		# movq %r(6110), %r(6096)
	salq $3, %r13		# salq $3, %r(6096)
	movq $8, %rbx		# movq $8, %r(6097)
	movq %r13, %r14		# movq %r(6096), %r(6098)
	addq %rbx, %r14		# addq %r(6097), %r(6098)
	movq %r14, %rdi		# movq %r(6098), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6076)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(6111)
	movq %r13, %rbx		# movq %r(6111), %r(6099)
	salq $3, %rbx		# salq $3, %r(6099)
	movq %r15, %r13		# movq %r(6076), %r(6100)
	addq %rbx, %r13		# addq %r(6099), %r(6100)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6112)
	movq %rbx, %r12		# movq %r(6112), %r(6101)
	salq $3, %r12		# salq $3, %r(6101)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6113)
	movq %rbx, %r14		# movq %r(6113), %r(6114)
	movq %r14, -8(%rbp)		# movq %r(6114), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6115)
	addq %r12, %rbx		# addq %r(6101), %r(6115)
	movq %rbx, -8(%rbp)		# movq %r(6115), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6116)
	movq (%rbx), %r12		# movq (%r(6116)), %r(6103)
	movq %r12, (%r13)		# movq %r(6103), (%r(6100))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6117)
	decq %rbx		# decq %r(6117)
	movq %rbx, -16(%rbp)		# movq %r(6117), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(6104)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6118)
	cmpq %rbx, %r12		# cmpq %r(6104), %r(6118)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6105)
	movq %r15, %r13		# movq %r(6076), %r(6106)
	addq %rbx, %r13		# addq %r(6105), %r(6106)
	movq %r13, %rax		# movq %r(6106), %rax
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

