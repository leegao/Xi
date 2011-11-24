.att_syntax prefix
.text
.globl _Ifib_ii
_Ifib_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(i)
	movq $2, %rbx		# movq $2, %r(32)
	cmpq %rbx, %r15		# cmpq %r(32), %r(i)
	jge .L17		# jge .L17
	.L16:		# .L16:
	movq %r15, %rax		# movq %r(i), %rax
	jmp .L15		# jmp .L15
	jmp .L18		# jmp .L18
	.L17:		# .L17:
	movq %r15, %r12		# movq %r(i), %r(33)
	subq $1, %r12		# subq $1, %r(33)
	movq %r12, %rdi		# movq %r(33), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r12		# movq %rax, %r(19)
	subq $2, %r15		# subq $2, %r(34)
	movq %r15, %rdi		# movq %r(34), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(20)
	addq %rbx, %r12		# addq %r(20), %r(35)
	movq %r12, %rax		# movq %r(35), %rax
	jmp .L15		# jmp .L15
	.L18:		# .L18:
	.L15:		# .L15:
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
	leaq .L20(%rip), %rdi		# leaq .L20(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(21)
	movq %rbx, %rdi		# movq %r(21), %rdi
	call _Iprint_pai		# call _Iprint_pai
	call _Ireadln_ai		# call _Ireadln_ai
	movq %rax, %r13		# movq %rax, %r(23)
	movq $16, %r12		# movq $16, %r(37)
	movq %r12, %rdi		# movq %r(37), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(24)
	movq %rbx, %rdi		# movq %r(13), %rdi
	movq %r13, %rsi		# movq %r(input), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%rbx), %r13		# movq 0(%r(13)), %r(value)
	movq 8(%rbx), %rbx		# movq 8(%r(13)), %r(valid)
	movq $1, %r12		# movq $1, %r(38)
	xorq %r12, %rbx		# xorq %r(38), %r(39)
	movq $1, %r12		# movq $1, %r(40)
	xorq %r12, %rbx		# xorq %r(40), %r(41)
	testq $1, %rbx		# testq $1, %r(41)
	jne .L22		# jne .L22
	.L21:		# .L21:
	leaq .L23(%rip), %rdi		# leaq .L23(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(26)
	movq %rbx, %rdi		# movq %r(26), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L19		# jmp .L19
	.L22:		# .L22:
	movq %r13, %rdi		# movq %r(value), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(28)
	movq %rbx, %rdi		# movq %r(28), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(29)
	movq %rbx, %rdi		# movq %r(29), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L19:		# .L19:
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %rbx		# movq (%r(p0)), %r(43)
	movq %rbx, %r12		# movq %r(43), %r(t10)
	movq %r12, %rbx		# movq %r(t10), %r(44)
	salq $3, %rbx		# salq $3, %r(44)
	addq $8, %rbx		# addq $8, %r(45)
	movq %rbx, %rdi		# movq %r(45), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(31)
	movq %rbx, %r13		# movq %r(31), %r(t27)
	.L24:		# .L24:
	movq %r12, %r14		# movq %r(t10), %r(46)
	salq $3, %r14		# salq $3, %r(46)
	movq %r13, %rbx		# movq %r(t27), %r(53)
	movq %rbx, -8(%rbp)		# movq %r(53), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(54)
	addq %r14, %rbx		# addq %r(46), %r(54)
	movq %rbx, -8(%rbp)		# movq %r(54), -8(%rbp)
	movq %r12, %rbx		# movq %r(t10), %r(48)
	salq $3, %rbx		# salq $3, %r(48)
	movq %r15, %r14		# movq %r(p0), %r(49)
	addq %rbx, %r14		# addq %r(48), %r(49)
	movq (%r14), %rbx		# movq (%r(49)), %r(50)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(55)
	movq %rbx, (%r14)		# movq %r(50), (%r(55))
	decq %r12		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(51)
	cmpq %rbx, %r12		# cmpq %r(51), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq %r13, %rbx		# movq %r(t27), %r(52)
	addq $8, %rbx		# addq $8, %r(52)
	movq %rbx, %rax		# movq %r(52), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L20:
	.quad 33
	.quad 80
	.quad 108
	.quad 101
	.quad 97
	.quad 115
	.quad 101
	.quad 32
	.quad 101
	.quad 110
	.quad 116
	.quad 101
	.quad 114
	.quad 32
	.quad 97
	.quad 32
	.quad 112
	.quad 111
	.quad 115
	.quad 105
	.quad 116
	.quad 105
	.quad 118
	.quad 101
	.quad 32
	.quad 110
	.quad 117
	.quad 109
	.quad 98
	.quad 101
	.quad 114
	.quad 32
	.quad 58
	.quad 32
	.text

#.section .rodata
.align 8
.L23:
	.quad 14
	.quad 73
	.quad 110
	.quad 118
	.quad 97
	.quad 108
	.quad 105
	.quad 100
	.quad 32
	.quad 105
	.quad 110
	.quad 112
	.quad 117
	.quad 116
	.quad 33
	.text

