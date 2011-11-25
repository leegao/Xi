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
	movq %rax, %rbx		# movq %rax, %r(1169)
	movq %rbx, %rdi		# movq %r(1169), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(1195)
	movq %rbx, %rdi		# movq %r(1195), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(1196)
	movq %rbx, %rax		# movq %r(1196), %rax
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
	movq $0, %rbx		# movq $0, %r(1197)
	movq %rbx, %rax		# movq %r(1197), %rax
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
	movq $1, %rbx		# movq $1, %r(1198)
	movq %rbx, %rax		# movq %r(1198), %rax
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
	movq %rax, %r13		# movq %rax, %r(1172)
	movq %r13, %rdi		# movq %r(1172), %rdi
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %rbx		# movq %rax, %r(1176)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r14		# movq %rax, %r(1177)
	testq $1, %rbx		# testq $1, %r(1176)
	jne .L193		# jne .L193
	.L195:		# .L195:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1178)
	movq $1, %r12		# movq $1, %r(1200)
	movq %rbx, %r13		# movq %r(1178), %r(1201)
	xorq %r12, %r13		# xorq %r(1200), %r(1201)
	testq $1, %r13		# testq $1, %r(1201)
	jne .L194		# jne .L194
	.L193:		# .L193:
	leaq .L196(%rip), %rdi		# leaq .L196(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1179)
	movq $1, %r12		# movq $1, %r(1203)
	movq %rbx, %rdi		# movq %r(1179), %rdi
	movq %r12, %rsi		# movq %r(1203), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L197		# jmp .L197
	.L197:		# .L197:
	movq $1, %rbx		# movq $1, %r(1204)
	movq %r14, %r13		# movq %r(1177), %r(1205)
	xorq %rbx, %r13		# xorq %r(1204), %r(1205)
	testq $1, %r13		# testq $1, %r(1205)
	jne .L200		# jne .L200
	.L201:		# .L201:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1183)
	movq $1, %r12		# movq $1, %r(1206)
	movq %rbx, %r13		# movq %r(1183), %r(1207)
	xorq %r12, %r13		# xorq %r(1206), %r(1207)
	testq $1, %r13		# testq $1, %r(1207)
	jne .L200		# jne .L200
	.L199:		# .L199:
	leaq .L202(%rip), %rdi		# leaq .L202(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1184)
	movq $0, %r12		# movq $0, %r(1209)
	movq %rbx, %rdi		# movq %r(1184), %rdi
	movq %r12, %rsi		# movq %r(1209), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L203		# jmp .L203
	.L203:		# .L203:
	movq $1, %r13		# movq $1, %r(1210)
	movq %r13, %rbx		# movq %r(1210), %r(1226)
	movq %rbx, -8(%rbp)		# movq %r(1226), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(1211)
	movq %r14, %r13		# movq %r(1177), %r(1212)
	xorq %rbx, %r13		# xorq %r(1211), %r(1212)
	testq $1, %r13		# testq $1, %r(1212)
	jne .L206		# jne .L206
	.L207:		# .L207:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1188)
	testq $1, %rbx		# testq $1, %r(1188)
	jne .L205		# jne .L205
	.L206:		# .L206:
	movq $0, %r13		# movq $0, %r(1213)
	movq %r13, %rbx		# movq %r(1213), %r(1227)
	movq %rbx, -8(%rbp)		# movq %r(1227), -8(%rbp)
	jmp .L205		# jmp .L205
	.L205:		# .L205:
	movq $1, %rbx		# movq $1, %r(1214)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1228)
	movq %r14, %r13		# movq %r(1228), %r(1215)
	xorq %rbx, %r13		# xorq %r(1214), %r(1215)
	movq $1, %rbx		# movq $1, %r(1216)
	movq %r13, %r14		# movq %r(1215), %r(1217)
	xorq %rbx, %r14		# xorq %r(1216), %r(1217)
	testq $1, %r14		# testq $1, %r(1217)
	jne .L209		# jne .L209
	.L208:		# .L208:
	leaq .L210(%rip), %rdi		# leaq .L210(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1189)
	movq $1, %r12		# movq $1, %r(1219)
	movq %rbx, %rdi		# movq %r(1189), %rdi
	movq %r12, %rsi		# movq %r(1219), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L211		# jmp .L211
	.L211:		# .L211:
	.L192:		# .L192:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L209:		# .L209:
	leaq .L212(%rip), %rdi		# leaq .L212(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1191)
	movq $0, %r12		# movq $0, %r(1221)
	movq %rbx, %rdi		# movq %r(1191), %rdi
	movq %r12, %rsi		# movq %r(1221), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L211		# jmp .L211
	.L200:		# .L200:
	leaq .L204(%rip), %rdi		# leaq .L204(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1186)
	movq $1, %r12		# movq $1, %r(1223)
	movq %rbx, %rdi		# movq %r(1186), %rdi
	movq %r12, %rsi		# movq %r(1223), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L203		# jmp .L203
	.L194:		# .L194:
	leaq .L198(%rip), %rdi		# leaq .L198(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1181)
	movq $0, %r12		# movq $0, %r(1225)
	movq %rbx, %rdi		# movq %r(1181), %rdi
	movq %r12, %rsi		# movq %r(1225), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1241)
	movq %rbx, -24(%rbp)		# movq %r(1241), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1242)
	movq (%rbx), %r13		# movq (%r(1242)), %r(1229)
	movq %r13, %r12		# movq %r(1229), %r(1243)
	movq %r12, -16(%rbp)		# movq %r(1243), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1244)
	movq %r12, %r13		# movq %r(1244), %r(1230)
	salq $3, %r13		# salq $3, %r(1230)
	movq $8, %rbx		# movq $8, %r(1231)
	movq %r13, %r14		# movq %r(1230), %r(1232)
	addq %rbx, %r14		# addq %r(1231), %r(1232)
	movq %r14, %rdi		# movq %r(1232), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1193)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1245)
	movq %r13, %rbx		# movq %r(1245), %r(1233)
	salq $3, %rbx		# salq $3, %r(1233)
	movq %r15, %r13		# movq %r(1193), %r(1234)
	addq %rbx, %r13		# addq %r(1233), %r(1234)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1246)
	movq %rbx, %r12		# movq %r(1246), %r(1235)
	salq $3, %r12		# salq $3, %r(1235)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1247)
	movq %rbx, %r14		# movq %r(1247), %r(1248)
	movq %r14, -8(%rbp)		# movq %r(1248), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1249)
	addq %r12, %rbx		# addq %r(1235), %r(1249)
	movq %rbx, -8(%rbp)		# movq %r(1249), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1250)
	movq (%rbx), %r12		# movq (%r(1250)), %r(1237)
	movq %r12, (%r13)		# movq %r(1237), (%r(1234))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1251)
	decq %rbx		# decq %r(1251)
	movq %rbx, -16(%rbp)		# movq %r(1251), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1238)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1252)
	cmpq %rbx, %r12		# cmpq %r(1238), %r(1252)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1239)
	movq %r15, %r13		# movq %r(1193), %r(1240)
	addq %rbx, %r13		# addq %r(1239), %r(1240)
	movq %r13, %rax		# movq %r(1240), %rax
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
.L210:
	.quad 2
	.quad 35
	.quad 51
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
.L202:
	.quad 2
	.quad 35
	.quad 50
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
.L204:
	.quad 2
	.quad 35
	.quad 50
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

