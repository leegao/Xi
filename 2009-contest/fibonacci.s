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
	movq $2, %rbx		# movq $2, %r(1010)
	cmpq %rbx, %r15		# cmpq %r(1010), %r(i)
	jge .L158		# jge .L158
	.L157:		# .L157:
	movq %r15, %rax		# movq %r(i), %rax
	jmp .L156		# jmp .L156
	jmp .L159		# jmp .L159
	.L158:		# .L158:
	movq $1, %rbx		# movq $1, %r(1011)
	movq %r15, %r13		# movq %r(i), %r(1012)
	subq %rbx, %r13		# subq %r(1011), %r(1012)
	movq %r13, %rdi		# movq %r(1012), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r13		# movq %rax, %r(997)
	movq $2, %rbx		# movq $2, %r(1013)
	subq %rbx, %r15		# subq %r(1013), %r(1014)
	movq %r15, %rdi		# movq %r(1014), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(998)
	addq %rbx, %r13		# addq %r(998), %r(1015)
	movq %r13, %rax		# movq %r(1015), %rax
	jmp .L156		# jmp .L156
	.L159:		# .L159:
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
	movq %rax, %rbx		# movq %rax, %r(999)
	movq %rbx, %rdi		# movq %r(999), %rdi
	call _Iprint_pai		# call _Iprint_pai
	call _Ireadln_ai		# call _Ireadln_ai
	movq %rax, %r13		# movq %rax, %r(1001)
	movq $16, %r12		# movq $16, %r(1017)
	movq %r12, %rdi		# movq %r(1017), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1002)
	movq %rbx, %rdi		# movq %r(991), %rdi
	movq %r13, %rsi		# movq %r(input), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%rbx), %r13		# movq 0(%r(991)), %r(value)
	movq 8(%rbx), %rbx		# movq 8(%r(991)), %r(valid)
	movq $1, %r12		# movq $1, %r(1018)
	xorq %r12, %rbx		# xorq %r(1018), %r(1019)
	movq $1, %r12		# movq $1, %r(1020)
	xorq %r12, %rbx		# xorq %r(1020), %r(1021)
	testq $1, %rbx		# testq $1, %r(1021)
	jne .L163		# jne .L163
	.L162:		# .L162:
	leaq .L164(%rip), %rdi		# leaq .L164(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1004)
	movq %rbx, %rdi		# movq %r(1004), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L160		# jmp .L160
	.L163:		# .L163:
	movq %r13, %rdi		# movq %r(value), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(1006)
	movq %rbx, %rdi		# movq %r(1006), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1007)
	movq %rbx, %rdi		# movq %r(1007), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
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
	movq %rdi, %rbx		# movq %rdi, %r(1035)
	movq %rbx, -16(%rbp)		# movq %r(1035), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1036)
	movq (%rbx), %rbx		# movq (%r(1036)), %r(1023)
	movq %rbx, %r14		# movq %r(1023), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1024)
	salq $3, %rbx		# salq $3, %r(1024)
	movq $8, %r12		# movq $8, %r(1025)
	addq %r12, %rbx		# addq %r(1025), %r(1026)
	movq %rbx, %rdi		# movq %r(1026), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1009)
	movq %rbx, %r15		# movq %r(1009), %r(t27)
	.L165:		# .L165:
	movq %r14, %rbx		# movq %r(t10), %r(1027)
	salq $3, %rbx		# salq $3, %r(1027)
	movq %r15, %r13		# movq %r(t27), %r(1028)
	addq %rbx, %r13		# addq %r(1027), %r(1028)
	movq %r14, %r12		# movq %r(t10), %r(1029)
	salq $3, %r12		# salq $3, %r(1029)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1037)
	movq %rbx, -8(%rbp)		# movq %r(1038), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1039)
	addq %r12, %rbx		# addq %r(1029), %r(1039)
	movq %rbx, -8(%rbp)		# movq %r(1039), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1040)
	movq (%rbx), %rbx		# movq (%r(1040)), %r(1031)
	movq %rbx, (%r13)		# movq %r(1031), (%r(1028))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1032)
	cmpq %rbx, %r14		# cmpq %r(1032), %r(t10)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq $8, %rbx		# movq $8, %r(1033)
	movq %r15, %r12		# movq %r(t27), %r(1034)
	addq %rbx, %r12		# addq %r(1033), %r(1034)
	movq %r12, %rax		# movq %r(1034), %rax
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

