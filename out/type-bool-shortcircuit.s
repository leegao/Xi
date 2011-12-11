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
	movq %rax, %rbx		# movq %rax, %r(6054)
	movq %rbx, %rdi		# movq %r(6054), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(6071)
	movq %rbx, %rdi		# movq %r(6071), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(6072)
	movq %rbx, %rax		# movq %r(6072), %rax
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
	movq $0, %rbx		# movq $0, %r(6073)
	movq %rbx, %rax		# movq %r(6073), %rax
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
	movq $1, %rbx		# movq $1, %r(6074)
	movq %rbx, %rax		# movq %r(6074), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(6047)
	movq %rsi, %r12		# movq %rsi, %r(6048)
	leaq .L983(%rip), %rdi		# leaq .L983(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6057)
	movq %r13, %rdi		# movq %r(6057), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(6047), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(6048), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(6049)
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %r12		# movq %rax, %r(6061)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %rbx		# movq %rax, %r(6086)
	movq %rbx, -8(%rbp)		# movq %r(6086), -8(%rbp)
	leaq .L985(%rip), %rdi		# leaq .L985(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6063)
	movq $1, %rbx		# movq $1, %r(6077)
	movq %rbx, %r14		# movq %r(6077), %r(6052)
	testq $1, %r12		# testq $1, %r(6061)
	jne .L986		# jne .L986
	.L988:		# .L988:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(6064)
	testq $1, %rbx		# testq $1, %r(6064)
	jne .L986		# jne .L986
	.L987:		# .L987:
	movq $0, %r12		# movq $0, %r(6078)
	movq %r12, %r14		# movq %r(6078), %r(6052)
	jmp .L986		# jmp .L986
	.L986:		# .L986:
	movq %r13, %rdi		# movq %r(6063), %rdi
	movq %r14, %rsi		# movq %r(6052), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L989(%rip), %rdi		# leaq .L989(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(6066)
	movq $1, %r12		# movq $1, %r(6080)
	movq %r12, %r13		# movq %r(6080), %r(6053)
	movq $1, %rbx		# movq $1, %r(6081)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6087)
	movq %r12, %r15		# movq %r(6087), %r(6082)
	xorq %rbx, %r15		# xorq %r(6081), %r(6082)
	testq $1, %r15		# testq $1, %r(6082)
	jne .L991		# jne .L991
	.L992:		# .L992:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(6067)
	testq $1, %rbx		# testq $1, %r(6067)
	jne .L990		# jne .L990
	.L991:		# .L991:
	movq $0, %r12		# movq $0, %r(6083)
	movq %r12, %r13		# movq %r(6083), %r(6053)
	jmp .L990		# jmp .L990
	.L990:		# .L990:
	movq $1, %rbx		# movq $1, %r(6084)
	movq %r13, %r12		# movq %r(6053), %r(6085)
	xorq %rbx, %r12		# xorq %r(6084), %r(6085)
	movq %r14, %rdi		# movq %r(6066), %rdi
	movq %r12, %rsi		# movq %r(6085), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(6100)
	movq %rbx, -16(%rbp)		# movq %r(6100), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6101)
	movq (%rbx), %r13		# movq (%r(6101)), %r(6088)
	movq %r13, %r12		# movq %r(6088), %r(6102)
	movq %r12, -24(%rbp)		# movq %r(6102), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6103)
	movq %r12, %r13		# movq %r(6103), %r(6089)
	salq $3, %r13		# salq $3, %r(6089)
	movq $8, %rbx		# movq $8, %r(6090)
	movq %r13, %r14		# movq %r(6089), %r(6091)
	addq %rbx, %r14		# addq %r(6090), %r(6091)
	movq %r14, %rdi		# movq %r(6091), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6069)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(6104)
	movq %r13, %rbx		# movq %r(6104), %r(6092)
	salq $3, %rbx		# salq $3, %r(6092)
	movq %r15, %r13		# movq %r(6069), %r(6093)
	addq %rbx, %r13		# addq %r(6092), %r(6093)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6105)
	movq %rbx, %r12		# movq %r(6105), %r(6094)
	salq $3, %r12		# salq $3, %r(6094)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6106)
	movq %rbx, %r14		# movq %r(6106), %r(6107)
	movq %r14, -8(%rbp)		# movq %r(6107), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6108)
	addq %r12, %rbx		# addq %r(6094), %r(6108)
	movq %rbx, -8(%rbp)		# movq %r(6108), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6109)
	movq (%rbx), %r12		# movq (%r(6109)), %r(6096)
	movq %r12, (%r13)		# movq %r(6096), (%r(6093))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6110)
	decq %rbx		# decq %r(6110)
	movq %rbx, -24(%rbp)		# movq %r(6110), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(6097)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6111)
	cmpq %rbx, %r12		# cmpq %r(6097), %r(6111)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6098)
	movq %r15, %r13		# movq %r(6069), %r(6099)
	addq %rbx, %r13		# addq %r(6098), %r(6099)
	movq %r13, %rax		# movq %r(6099), %rax
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
.L989:
	.quad 2
	.quad 35
	.quad 50
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

