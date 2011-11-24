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
	leaq .L187(%rip), %rdi		# leaq .L187(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1081)
	movq %rbx, %rdi		# movq %r(1081), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(1107)
	movq %rbx, %rdi		# movq %r(1107), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(1108)
	movq %rbx, %rax		# movq %r(1108), %rax
	jmp .L186		# jmp .L186
	.L186:		# .L186:
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
	movq $0, %rbx		# movq $0, %r(1109)
	movq %rbx, %rax		# movq %r(1109), %rax
	jmp .L188		# jmp .L188
	.L188:		# .L188:
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
	movq $1, %rbx		# movq $1, %r(1110)
	movq %rbx, %rax		# movq %r(1110), %rax
	jmp .L189		# jmp .L189
	.L189:		# .L189:
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
	leaq .L191(%rip), %rdi		# leaq .L191(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1084)
	movq %r13, %rdi		# movq %r(1084), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L190		# jmp .L190
	.L190:		# .L190:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %rbx		# movq %rax, %r(1088)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r12		# movq %rax, %r(1138)
	movq %r12, -16(%rbp)		# movq %r(1138), -16(%rbp)
	testq $1, %rbx		# testq $1, %r(1088)
	jne .L193		# jne .L193
	.L195:		# .L195:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(1090)
	movq $1, %r12		# movq $1, %r(1112)
	xorq %r12, %r13		# xorq %r(1112), %r(1113)
	testq $1, %r13		# testq $1, %r(1113)
	jne .L194		# jne .L194
	.L193:		# .L193:
	leaq .L196(%rip), %rdi		# leaq .L196(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1091)
	movq $1, %r12		# movq $1, %r(1115)
	movq %rbx, %rdi		# movq %r(1091), %rdi
	movq %r12, %rsi		# movq %r(1115), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L197		# jmp .L197
	.L197:		# .L197:
	movq $1, %rbx		# movq $1, %r(1116)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1139)
	xorq %rbx, %r13		# xorq %r(1116), %r(1117)
	testq $1, %r13		# testq $1, %r(1117)
	jne .L200		# jne .L200
	.L201:		# .L201:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(1095)
	movq $1, %r12		# movq $1, %r(1118)
	xorq %r12, %r13		# xorq %r(1118), %r(1119)
	testq $1, %r13		# testq $1, %r(1119)
	jne .L200		# jne .L200
	.L199:		# .L199:
	leaq .L202(%rip), %rdi		# leaq .L202(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1096)
	movq $0, %r12		# movq $0, %r(1121)
	movq %rbx, %rdi		# movq %r(1096), %rdi
	movq %r12, %rsi		# movq %r(1121), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L203		# jmp .L203
	.L203:		# .L203:
	movq $1, %r12		# movq $1, %r(1122)
	movq $1, %r13		# movq $1, %r(1123)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1140)
	movq %r14, -8(%rbp)		# movq %r(1141), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1142)
	xorq %r13, %rbx		# xorq %r(1123), %r(1142)
	movq %rbx, -8(%rbp)		# movq %r(1142), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1143)
	testq $1, %rbx		# testq $1, %r(1143)
	jne .L206		# jne .L206
	.L207:		# .L207:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1100)
	testq $1, %rbx		# testq $1, %r(1100)
	jne .L205		# jne .L205
	.L206:		# .L206:
	movq $0, %r12		# movq $0, %r(1125)
	jmp .L205		# jmp .L205
	.L205:		# .L205:
	movq $1, %rbx		# movq $1, %r(1126)
	xorq %rbx, %r12		# xorq %r(1126), %r(1127)
	movq $1, %rbx		# movq $1, %r(1128)
	xorq %rbx, %r12		# xorq %r(1128), %r(1129)
	testq $1, %r12		# testq $1, %r(1129)
	jne .L209		# jne .L209
	.L208:		# .L208:
	leaq .L210(%rip), %rdi		# leaq .L210(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1101)
	movq $1, %r12		# movq $1, %r(1131)
	movq %rbx, %rdi		# movq %r(1101), %rdi
	movq %r12, %rsi		# movq %r(1131), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L211		# jmp .L211
	.L211:		# .L211:
	.L192:		# .L192:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L209:		# .L209:
	leaq .L212(%rip), %rdi		# leaq .L212(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1103)
	movq $0, %r12		# movq $0, %r(1133)
	movq %rbx, %rdi		# movq %r(1103), %rdi
	movq %r12, %rsi		# movq %r(1133), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L211		# jmp .L211
	.L200:		# .L200:
	leaq .L204(%rip), %rdi		# leaq .L204(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1098)
	movq $1, %r12		# movq $1, %r(1135)
	movq %rbx, %rdi		# movq %r(1098), %rdi
	movq %r12, %rsi		# movq %r(1135), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L203		# jmp .L203
	.L194:		# .L194:
	leaq .L198(%rip), %rdi		# leaq .L198(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1093)
	movq $0, %r12		# movq $0, %r(1137)
	movq %rbx, %rdi		# movq %r(1093), %rdi
	movq %r12, %rsi		# movq %r(1137), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L197		# jmp .L197
	
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
	movq %rdi, %rbx		# movq %rdi, %r(1156)
	movq %rbx, -16(%rbp)		# movq %r(1156), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1157)
	movq (%rbx), %rbx		# movq (%r(1157)), %r(1144)
	movq %rbx, %r14		# movq %r(1144), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1145)
	salq $3, %rbx		# salq $3, %r(1145)
	movq $8, %r12		# movq $8, %r(1146)
	addq %r12, %rbx		# addq %r(1146), %r(1147)
	movq %rbx, %rdi		# movq %r(1147), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1105)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(1148)
	salq $3, %rbx		# salq $3, %r(1148)
	movq %r12, %r15		# movq %r(1105), %r(1149)
	addq %rbx, %r15		# addq %r(1148), %r(1149)
	movq %r14, %r13		# movq %r(t10), %r(1150)
	salq $3, %r13		# salq $3, %r(1150)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1158)
	movq %rbx, -8(%rbp)		# movq %r(1159), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1160)
	addq %r13, %rbx		# addq %r(1150), %r(1160)
	movq %rbx, -8(%rbp)		# movq %r(1160), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1161)
	movq (%rbx), %rbx		# movq (%r(1161)), %r(1152)
	movq %rbx, (%r15)		# movq %r(1152), (%r(1149))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1153)
	cmpq %rbx, %r14		# cmpq %r(1153), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1154)
	addq %rbx, %r12		# addq %r(1154), %r(1155)
	movq %r12, %rax		# movq %r(1155), %rax
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
.L187:
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
.L198:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L212:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L196:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L191:
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
.L204:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L202:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L210:
	.quad 2
	.quad 35
	.quad 51
	.text

