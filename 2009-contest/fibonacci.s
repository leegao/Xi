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
	movq $2, %rbx		# movq $2, %r(937)
	cmpq %rbx, %r15		# cmpq %r(937), %r(i)
	jge .L158		# jge .L158
	.L157:		# .L157:
	movq %r15, %rax		# movq %r(i), %rax
	jmp .L156		# jmp .L156
	.L156:		# .L156:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L158:		# .L158:
	movq $1, %rbx		# movq $1, %r(938)
	movq %r15, %r13		# movq %r(i), %r(939)
	subq %rbx, %r13		# subq %r(938), %r(939)
	movq %r13, %rdi		# movq %r(939), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r14		# movq %rax, %r(924)
	movq $2, %rbx		# movq $2, %r(940)
	movq %r15, %r12		# movq %r(i), %r(941)
	subq %rbx, %r12		# subq %r(940), %r(941)
	movq %r12, %rdi		# movq %r(941), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(925)
	addq %rbx, %r14		# addq %r(925), %r(942)
	movq %r14, %rax		# movq %r(942), %rax
	jmp .L156		# jmp .L156
	
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
	leaq .L161(%rip), %rdi		# leaq .L161(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(926)
	movq %rbx, %rdi		# movq %r(926), %rdi
	call _Iprint_pai		# call _Iprint_pai
	call _Ireadln_ai		# call _Ireadln_ai
	movq %rax, %r12		# movq %rax, %r(928)
	movq $16, %rbx		# movq $16, %r(944)
	movq %rbx, %rdi		# movq %r(944), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(929)
	movq %r15, %r13		# movq %r(929), %r(918)
	movq %r13, %rdi		# movq %r(918), %rdi
	movq %r12, %rsi		# movq %r(928), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r15), %r14		# movq 0(%r(929)), %r(value)
	movq 8(%r15), %rbx		# movq 8(%r(929)), %r(valid)
	movq $1, %r12		# movq $1, %r(945)
	xorq %r12, %rbx		# xorq %r(945), %r(946)
	movq $1, %r12		# movq $1, %r(947)
	xorq %r12, %rbx		# xorq %r(947), %r(948)
	testq $1, %rbx		# testq $1, %r(948)
	jne .L163		# jne .L163
	.L162:		# .L162:
	leaq .L164(%rip), %rdi		# leaq .L164(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(931)
	movq %rbx, %rdi		# movq %r(931), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L160		# jmp .L160
	.L160:		# .L160:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L163:		# .L163:
	movq %r14, %rdi		# movq %r(value), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(933)
	movq %rbx, %rdi		# movq %r(933), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(934)
	movq %rbx, %rdi		# movq %r(934), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	
.globl _I_c_internal_strdup_aii
_I_c_internal_strdup_aii:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(965)
	movq %rbx, -24(%rbp)		# movq %r(965), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(966)
	movq (%rbx), %r12		# movq (%r(966)), %r(950)
	movq %r12, -16(%rbp)		# movq %r(967), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(968)
	salq $3, %rbx		# salq $3, %r(951)
	movq $8, %r12		# movq $8, %r(952)
	addq %r12, %rbx		# addq %r(952), %r(953)
	movq %rbx, %rdi		# movq %r(953), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(969)
	movq %rbx, -40(%rbp)		# movq %r(969), -40(%rbp)
	.L165:		# .L165:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(970)
	salq $3, %r13		# salq $3, %r(954)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(971)
	addq %r13, %r12		# addq %r(954), %r(955)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(972)
	movq %r13, -32(%rbp)		# movq %r(973), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(974)
	salq $3, %rbx		# salq $3, %r(974)
	movq %rbx, -32(%rbp)		# movq %r(974), -32(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(975)
	movq %r13, -8(%rbp)		# movq %r(962), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(963)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(976)
	addq %r13, %rbx		# addq %r(976), %r(963)
	movq %rbx, -8(%rbp)		# movq %r(963), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(964)
	movq (%rbx), %rbx		# movq (%r(964)), %r(958)
	movq %rbx, (%r12)		# movq %r(958), (%r(955))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(977)
	decq %rbx		# decq %r(977)
	movq %rbx, -16(%rbp)		# movq %r(977), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(959)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(978)
	cmpq %rbx, %r12		# cmpq %r(959), %r(978)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq $8, %rbx		# movq $8, %r(960)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(979)
	addq %rbx, %r13		# addq %r(960), %r(961)
	movq %r13, %rax		# movq %r(961), %rax
	.L167:		# .L167:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L161:
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
.L164:
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

