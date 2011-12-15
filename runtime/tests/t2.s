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
	leaq .L234(%rip), %rdi		# leaq .L234(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1019)
	movq %rbx, %rdi		# movq %r(1019), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(1020)
	movq %rbx, %rdi		# movq %r(1020), %rdi
	call _If_aabb		# call _If_aabb
	.L233:		# .L233:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_aabb
_If_aabb:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(b)
	movq $40, %rbx		# movq $40, %r(1029)
	movq %rbx, %rdi		# movq %r(1029), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1064)
	movq %rbx, -8(%rbp)		# movq %r(1064), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1065)
	movq %r12, -32(%rbp)		# movq %r(1066), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1067)
	movq (%rbx), %rbx		# movq (%r(1067)), %r(1030)
	movq $4, %rbx		# movq $4, %r(1030)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1068)
	movq %r12, -16(%rbp)		# movq %r(1069), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1070)
	addq $8, %rbx		# addq $8, %r(1070)
	movq %rbx, -16(%rbp)		# movq %r(1070), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1071)
	movq %r12, -24(%rbp)		# movq %r(1072), -24(%rbp)
	movq $24, %rbx		# movq $24, %r(1032)
	movq %rbx, %rdi		# movq %r(1032), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1023)
	movq (%r14), %rbx		# movq (%r(1010)), %r(1033)
	movq $2, %rbx		# movq $2, %r(1033)
	addq $8, %r14		# addq $8, %r(1034)
	movq %r14, %r13		# movq %r(1009), %r(1035)
	addq $0, %r13		# addq $0, %r(1035)
	movq (%r13), %rbx		# movq (%r(1035)), %r(1036)
	movq $1, %rbx		# movq $1, %r(1036)
	movq %r14, %r13		# movq %r(1009), %r(1037)
	addq $8, %r13		# addq $8, %r(1037)
	movq (%r13), %rbx		# movq (%r(1037)), %r(1038)
	movq $1, %rbx		# movq $1, %r(1038)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1073)
	addq $0, %rbx		# addq $0, %r(1039)
	movq %r14, (%rbx)		# movq %r(1009), (%r(1039))
	movq $24, %rbx		# movq $24, %r(1040)
	movq %rbx, %rdi		# movq %r(1040), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1024)
	movq (%r14), %rbx		# movq (%r(1012)), %r(1041)
	movq $2, %rbx		# movq $2, %r(1041)
	addq $8, %r14		# addq $8, %r(1042)
	movq %r14, %r13		# movq %r(1011), %r(1043)
	addq $0, %r13		# addq $0, %r(1043)
	movq (%r13), %rbx		# movq (%r(1043)), %r(1044)
	movq $1, %rbx		# movq $1, %r(1044)
	movq %r14, %r13		# movq %r(1011), %r(1045)
	addq $8, %r13		# addq $8, %r(1045)
	movq (%r13), %rbx		# movq (%r(1045)), %r(1046)
	movq $0, %rbx		# movq $0, %r(1046)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1074)
	addq $8, %rbx		# addq $8, %r(1047)
	movq %r14, (%rbx)		# movq %r(1011), (%r(1047))
	movq $24, %rbx		# movq $24, %r(1048)
	movq %rbx, %rdi		# movq %r(1048), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1025)
	movq (%r14), %rbx		# movq (%r(1014)), %r(1049)
	movq $2, %rbx		# movq $2, %r(1049)
	addq $8, %r14		# addq $8, %r(1050)
	movq %r14, %r13		# movq %r(1013), %r(1051)
	addq $0, %r13		# addq $0, %r(1051)
	movq (%r13), %rbx		# movq (%r(1051)), %r(1052)
	movq $0, %rbx		# movq $0, %r(1052)
	movq %r14, %r13		# movq %r(1013), %r(1053)
	addq $8, %r13		# addq $8, %r(1053)
	movq (%r13), %rbx		# movq (%r(1053)), %r(1054)
	movq $1, %rbx		# movq $1, %r(1054)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1075)
	addq $16, %rbx		# addq $16, %r(1055)
	movq %r14, (%rbx)		# movq %r(1013), (%r(1055))
	movq $24, %rbx		# movq $24, %r(1056)
	movq %rbx, %rdi		# movq %r(1056), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1026)
	movq (%r14), %rbx		# movq (%r(1016)), %r(1057)
	movq $2, %rbx		# movq $2, %r(1057)
	addq $8, %r14		# addq $8, %r(1058)
	movq %r14, %r13		# movq %r(1015), %r(1059)
	addq $0, %r13		# addq $0, %r(1059)
	movq (%r13), %rbx		# movq (%r(1059)), %r(1060)
	movq $0, %rbx		# movq $0, %r(1060)
	movq %r14, %r13		# movq %r(1015), %r(1061)
	addq $8, %r13		# addq $8, %r(1061)
	movq (%r13), %rbx		# movq (%r(1061)), %r(1062)
	movq $0, %rbx		# movq $0, %r(1062)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1076)
	addq $24, %rbx		# addq $24, %r(1063)
	movq %r14, (%rbx)		# movq %r(1015), (%r(1063))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1077)
	movq %rbx, %rax		# movq %r(1077), %rax
	jmp .L235		# jmp .L235
	.L235:		# .L235:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_b
_Ig_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rax		# movq $1, %rax
	jmp .L236		# jmp .L236
	.L236:		# .L236:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ih_bi
_Ih_bi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $0, %rax		# movq $0, %rax
	jmp .L237		# jmp .L237
	.L237:		# .L237:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ii_bai
_Ii_bai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $1, %rax		# movq $1, %rax
	jmp .L238		# jmp .L238
	.L238:		# .L238:
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
	movq (%r15), %rbx		# movq (%r(p0)), %r(1078)
	movq %rbx, %r12		# movq %r(1078), %r(t10)
	movq %r12, %rbx		# movq %r(t10), %r(1079)
	salq $3, %rbx		# salq $3, %r(1079)
	addq $8, %rbx		# addq $8, %r(1080)
	movq %rbx, %rdi		# movq %r(1080), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1027)
	movq %rbx, %r13		# movq %r(1027), %r(t27)
	.L24:		# .L24:
	movq %r12, %r14		# movq %r(t10), %r(1081)
	salq $3, %r14		# salq $3, %r(1081)
	movq %r13, %rbx		# movq %r(t27), %r(1088)
	movq %rbx, -8(%rbp)		# movq %r(1088), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1089)
	addq %r14, %rbx		# addq %r(1081), %r(1089)
	movq %rbx, -8(%rbp)		# movq %r(1089), -8(%rbp)
	movq %r12, %rbx		# movq %r(t10), %r(1083)
	salq $3, %rbx		# salq $3, %r(1083)
	movq %r15, %r14		# movq %r(p0), %r(1084)
	addq %rbx, %r14		# addq %r(1083), %r(1084)
	movq (%r14), %rbx		# movq (%r(1084)), %r(1085)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1090)
	movq %rbx, (%r14)		# movq %r(1085), (%r(1090))
	decq %r12		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1086)
	cmpq %rbx, %r12		# cmpq %r(1086), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq %r13, %rbx		# movq %r(t27), %r(1087)
	addq $8, %rbx		# addq $8, %r(1087)
	movq %rbx, %rax		# movq %r(1087), %rax
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
.L234:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

