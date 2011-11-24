.att_syntax prefix
.text
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
	leaq .L172(%rip), %rdi		# leaq .L172(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1053)
	movq %rbx, %rdi		# movq %r(1053), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L171		# jmp .L171
	.L171:		# .L171:
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
	movq %rdi, %rbx		# movq %rdi, %r(1069)
	movq %rbx, -16(%rbp)		# movq %r(1069), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1070)
	movq (%rbx), %rbx		# movq (%r(1070)), %r(1057)
	movq %rbx, %r14		# movq %r(1057), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1058)
	salq $3, %rbx		# salq $3, %r(1058)
	movq $8, %r12		# movq $8, %r(1059)
	addq %r12, %rbx		# addq %r(1059), %r(1060)
	movq %rbx, %rdi		# movq %r(1060), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1055)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(1061)
	salq $3, %rbx		# salq $3, %r(1061)
	movq %r12, %r15		# movq %r(1055), %r(1062)
	addq %rbx, %r15		# addq %r(1061), %r(1062)
	movq %r14, %r13		# movq %r(t10), %r(1063)
	salq $3, %r13		# salq $3, %r(1063)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1071)
	movq %rbx, -8(%rbp)		# movq %r(1072), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1073)
	addq %r13, %rbx		# addq %r(1063), %r(1073)
	movq %rbx, -8(%rbp)		# movq %r(1073), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1074)
	movq (%rbx), %rbx		# movq (%r(1074)), %r(1065)
	movq %rbx, (%r15)		# movq %r(1065), (%r(1062))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1066)
	cmpq %rbx, %r14		# cmpq %r(1066), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1067)
	addq %rbx, %r12		# addq %r(1067), %r(1068)
	movq %r12, %rax		# movq %r(1068), %rax
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
.L172:
	.quad 13
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 44
	.quad 32
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.quad 33
	.text

