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
	movq $45, %r13		# movq $45, %r(x)
	.L246:		# .L246:
	movq $1, %r12		# movq $1, %r(1093)
	movq $0, %rbx		# movq $0, %r(1102)
	cmpq %rbx, %r13		# cmpq %r(1102), %r(x)
	jg .L249		# jg .L249
	.L250:		# .L250:
	movq $0, %r12		# movq $0, %r(1093)
	.L249:		# .L249:
	movq $0, %rbx		# movq $0, %r(1103)
	cmpq %rbx, %r12		# cmpq %r(1103), %r(1093)
	je .L248		# je .L248
	.L247:		# .L247:
	movq $16, %rbx		# movq $16, %r(1104)
	movq %rbx, %rdi		# movq %r(1104), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1096)
	movq (%rbx), %rbx		# movq (%r(1095)), %r(1105)
	movq $1, %rbx		# movq $1, %r(1105)
	addq $8, %rbx		# addq $8, %r(1106)
	movq %rbx, %r14		# movq %r(1094), %r(1107)
	addq $0, %r14		# addq $0, %r(1107)
	movq (%r14), %rbx		# movq (%r(1107)), %r(1108)
	movq $55, %rbx		# movq $55, %r(1108)
	leaq .L251(%rip), %rdi		# leaq .L251(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1097)
	movq %rbx, %rdi		# movq %r(1094), %rdi
	movq %r12, %rsi		# movq %r(1097), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(1098)
	movq %rbx, %rdi		# movq %r(1098), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(x)
	jmp .L246		# jmp .L246
	.L248:		# .L248:
	.L245:		# .L245:
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
	movq (%r15), %rbx		# movq (%r(p0)), %r(1110)
	movq %rbx, %r12		# movq %r(1110), %r(t10)
	movq %r12, %rbx		# movq %r(t10), %r(1111)
	salq $3, %rbx		# salq $3, %r(1111)
	addq $8, %rbx		# addq $8, %r(1112)
	movq %rbx, %rdi		# movq %r(1112), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1100)
	movq %rbx, %r13		# movq %r(1100), %r(t27)
	.L24:		# .L24:
	movq %r12, %r14		# movq %r(t10), %r(1113)
	salq $3, %r14		# salq $3, %r(1113)
	movq %r13, %rbx		# movq %r(t27), %r(1120)
	movq %rbx, -8(%rbp)		# movq %r(1120), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1121)
	addq %r14, %rbx		# addq %r(1113), %r(1121)
	movq %rbx, -8(%rbp)		# movq %r(1121), -8(%rbp)
	movq %r12, %rbx		# movq %r(t10), %r(1115)
	salq $3, %rbx		# salq $3, %r(1115)
	movq %r15, %r14		# movq %r(p0), %r(1116)
	addq %rbx, %r14		# addq %r(1115), %r(1116)
	movq (%r14), %rbx		# movq (%r(1116)), %r(1117)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1122)
	movq %rbx, (%r14)		# movq %r(1117), (%r(1122))
	decq %r12		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1118)
	cmpq %rbx, %r12		# cmpq %r(1118), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq %r13, %rbx		# movq %r(t27), %r(1119)
	addq $8, %rbx		# addq $8, %r(1119)
	movq %rbx, %rax		# movq %r(1119), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1141)
	movq %rbx, -40(%rbp)		# movq %r(1141), -40(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1142)
	movq %rbx, -32(%rbp)		# movq %r(1142), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(1143)
	movq %rbx, -48(%rbp)		# movq %r(1143), -48(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1144)
	subq $8, %r12		# subq $8, %r(1123)
	movq (%r12), %r12		# movq (%r(1123)), %r(1124)
	movq %r12, -24(%rbp)		# movq %r(1145), -24(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1146)
	subq $8, %r12		# subq $8, %r(1125)
	movq (%r12), %rbx		# movq (%r(1125)), %r(1126)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1147)
	addq %rbx, %r12		# addq %r(1126), %r(1127)
	movq %r12, -56(%rbp)		# movq %r(1148), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1149)
	addq $1, %r12		# addq $1, %r(1128)
	movq %r12, %rdi		# movq %r(1128), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1101)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1150)
	movq %r12, (%r13)		# movq %r(1150), (%r(82))
	addq $8, %r13		# addq $8, %r(1129)
	movq %r13, -8(%rbp)		# movq %r(1151), -8(%rbp)
	.L46:		# .L46:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1152)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1153)
	cmpq %rbx, %r12		# cmpq %r(1152), %r(1153)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1154)
	salq $3, %r13		# salq $3, %r(1130)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1155)
	movq %rbx, -64(%rbp)		# movq %r(1156), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1157)
	addq %r13, %r12		# addq %r(1130), %r(1157)
	movq %r12, -64(%rbp)		# movq %r(1157), -64(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1158)
	salq $3, %r13		# salq $3, %r(1132)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1159)
	movq %rbx, -16(%rbp)		# movq %r(1160), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1161)
	addq %r13, %r12		# addq %r(1132), %r(1161)
	movq %r12, -16(%rbp)		# movq %r(1161), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1162)
	movq (%rbx), %rbx		# movq (%r(1162)), %r(1134)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1163)
	movq %rbx, (%r12)		# movq %r(1134), (%r(1163))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1164)
	incq %rbx		# incq %r(1164)
	movq %rbx, -48(%rbp)		# movq %r(1164), -48(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1165)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1166)
	cmpq %r12, %rbx		# cmpq %r(1166), %r(1165)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1167)
	salq $3, %r13		# salq $3, %r(1135)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(1168)
	addq %r13, %r15		# addq %r(1135), %r(1136)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1169)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1170)
	subq %r13, %rbx		# subq %r(1170), %r(1137)
	salq $3, %rbx		# salq $3, %r(1138)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1171)
	addq %rbx, %r12		# addq %r(1138), %r(1139)
	movq (%r12), %rbx		# movq (%r(1139)), %r(1140)
	movq %rbx, (%r15)		# movq %r(1140), (%r(1136))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1172)
	incq %rbx		# incq %r(1172)
	movq %rbx, -48(%rbp)		# movq %r(1172), -48(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1173)
	movq %rbx, %rax		# movq %r(1173), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L251:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

