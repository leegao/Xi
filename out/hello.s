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
	movq %rax, %rbx		# movq %rax, %r(1135)
	movq %rbx, %rdi		# movq %r(1135), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(1151)
	movq %rbx, -24(%rbp)		# movq %r(1151), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1152)
	movq (%rbx), %r13		# movq (%r(1152)), %r(1139)
	movq %r13, %r12		# movq %r(1139), %r(1153)
	movq %r12, -8(%rbp)		# movq %r(1153), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1154)
	movq %r12, %r13		# movq %r(1154), %r(1140)
	salq $3, %r13		# salq $3, %r(1140)
	movq $8, %rbx		# movq $8, %r(1141)
	movq %r13, %r14		# movq %r(1140), %r(1142)
	addq %rbx, %r14		# addq %r(1141), %r(1142)
	movq %r14, %rdi		# movq %r(1142), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1137)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1155)
	movq %r13, %rbx		# movq %r(1155), %r(1143)
	salq $3, %rbx		# salq $3, %r(1143)
	movq %r15, %r13		# movq %r(1137), %r(1144)
	addq %rbx, %r13		# addq %r(1143), %r(1144)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1156)
	movq %rbx, %r12		# movq %r(1156), %r(1145)
	salq $3, %r12		# salq $3, %r(1145)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1157)
	movq %rbx, %r14		# movq %r(1157), %r(1158)
	movq %r14, -16(%rbp)		# movq %r(1158), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1159)
	addq %r12, %rbx		# addq %r(1145), %r(1159)
	movq %rbx, -16(%rbp)		# movq %r(1159), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1160)
	movq (%rbx), %r12		# movq (%r(1160)), %r(1147)
	movq %r12, (%r13)		# movq %r(1147), (%r(1144))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1161)
	decq %rbx		# decq %r(1161)
	movq %rbx, -8(%rbp)		# movq %r(1161), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1148)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1162)
	cmpq %rbx, %r12		# cmpq %r(1148), %r(1162)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1149)
	movq %r15, %r13		# movq %r(1137), %r(1150)
	addq %rbx, %r13		# addq %r(1149), %r(1150)
	movq %r13, %rax		# movq %r(1150), %rax
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

