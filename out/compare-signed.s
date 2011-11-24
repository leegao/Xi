.att_syntax prefix
.text
.globl _IisLess1_bii
_IisLess1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq $1, %rbx		# movq $1, %r(1156)
	movq %rbx, %rax		# movq %r(1156), %rax
	jmp .L158		# jmp .L158
	.L158:		# .L158:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L160:		# .L160:
	movq $0, %rbx		# movq $0, %r(1157)
	movq %rbx, %rax		# movq %r(1157), %rax
	jmp .L158		# jmp .L158
	
.globl _IisLess2_bii
_IisLess2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(1158)
	cmpq %r12, %r13		# cmpq %r(b), %r(a)
	jl .L162		# jl .L162
	.L163:		# .L163:
	movq $0, %rbx		# movq $0, %r(1159)
	jmp .L162		# jmp .L162
	.L162:		# .L162:
	movq %rbx, %rax		# movq %r(1060), %rax
	jmp .L161		# jmp .L161
	.L161:		# .L161:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IisLEQ1_bii
_IisLEQ1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jg .L166		# jg .L166
	.L165:		# .L165:
	movq $1, %rbx		# movq $1, %r(1160)
	movq %rbx, %rax		# movq %r(1160), %rax
	jmp .L164		# jmp .L164
	.L164:		# .L164:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L166:		# .L166:
	movq $0, %rbx		# movq $0, %r(1161)
	movq %rbx, %rax		# movq %r(1161), %rax
	jmp .L164		# jmp .L164
	
.globl _IisLEQ2_bii
_IisLEQ2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(1162)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jle .L168		# jle .L168
	.L169:		# .L169:
	movq $0, %rbx		# movq $0, %r(1163)
	jmp .L168		# jmp .L168
	.L168:		# .L168:
	movq %rbx, %rax		# movq %r(1065), %rax
	jmp .L167		# jmp .L167
	.L167:		# .L167:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IisMore1_bii
_IisMore1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jle .L172		# jle .L172
	.L171:		# .L171:
	movq $1, %rbx		# movq $1, %r(1164)
	movq %rbx, %rax		# movq %r(1164), %rax
	jmp .L170		# jmp .L170
	.L170:		# .L170:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L172:		# .L172:
	movq $0, %rbx		# movq $0, %r(1165)
	movq %rbx, %rax		# movq %r(1165), %rax
	jmp .L170		# jmp .L170
	
.globl _IisMore2_bii
_IisMore2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(1166)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jg .L174		# jg .L174
	.L175:		# .L175:
	movq $0, %rbx		# movq $0, %r(1167)
	jmp .L174		# jmp .L174
	.L174:		# .L174:
	movq %rbx, %rax		# movq %r(1070), %rax
	jmp .L173		# jmp .L173
	.L173:		# .L173:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IisGEQ1_bii
_IisGEQ1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jl .L178		# jl .L178
	.L177:		# .L177:
	movq $1, %rbx		# movq $1, %r(1168)
	movq %rbx, %rax		# movq %r(1168), %rax
	jmp .L176		# jmp .L176
	.L176:		# .L176:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L178:		# .L178:
	movq $0, %rbx		# movq $0, %r(1169)
	movq %rbx, %rax		# movq %r(1169), %rax
	jmp .L176		# jmp .L176
	
.globl _IisGEQ2_bii
_IisGEQ2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(1170)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jge .L180		# jge .L180
	.L181:		# .L181:
	movq $0, %rbx		# movq $0, %r(1171)
	jmp .L180		# jmp .L180
	.L180:		# .L180:
	movq %rbx, %rax		# movq %r(1075), %rax
	jmp .L179		# jmp .L179
	.L179:		# .L179:
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
	leaq .L183(%rip), %rdi		# leaq .L183(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1079)
	movq %r13, %rdi		# movq %r(1079), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L182		# jmp .L182
	.L182:		# .L182:
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
	movq %rdi, %rbx		# movq %rdi, %r(a)
	leaq .L185(%rip), %rdi		# leaq .L185(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1083)
	movq $2, %rbx		# movq $2, %r(1174)
	movq $40, %r12		# movq $40, %r(1175)
	movq %rbx, %rdi		# movq %r(1174), %rdi
	movq %r12, %rsi		# movq %r(1175), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1084)
	movq %r13, %rdi		# movq %r(1083), %rdi
	movq %rbx, %rsi		# movq %r(1084), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L186(%rip), %rdi		# leaq .L186(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1086)
	movq $2, %rbx		# movq $2, %r(1177)
	movq $40, %r12		# movq $40, %r(1178)
	movq %rbx, %rdi		# movq %r(1177), %rdi
	movq %r12, %rsi		# movq %r(1178), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1087)
	movq %r13, %rdi		# movq %r(1086), %rdi
	movq %rbx, %rsi		# movq %r(1087), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L187(%rip), %rdi		# leaq .L187(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1089)
	movq $-1, %rbx		# movq $-1, %r(1180)
	movq $0, %r12		# movq $0, %r(1181)
	movq %rbx, %rdi		# movq %r(1180), %rdi
	movq %r12, %rsi		# movq %r(1181), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1090)
	movq %r13, %rdi		# movq %r(1089), %rdi
	movq %rbx, %rsi		# movq %r(1090), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L188(%rip), %rdi		# leaq .L188(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1092)
	movq $-1, %rbx		# movq $-1, %r(1183)
	movq $0, %r12		# movq $0, %r(1184)
	movq %rbx, %rdi		# movq %r(1183), %rdi
	movq %r12, %rsi		# movq %r(1184), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(1093)
	movq %r13, %rdi		# movq %r(1092), %rdi
	movq %rbx, %rsi		# movq %r(1093), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L189(%rip), %rdi		# leaq .L189(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1095)
	movq $-5, %rbx		# movq $-5, %r(1186)
	movq $-3, %r12		# movq $-3, %r(1187)
	movq %rbx, %rdi		# movq %r(1186), %rdi
	movq %r12, %rsi		# movq %r(1187), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1096)
	movq %r13, %rdi		# movq %r(1095), %rdi
	movq %rbx, %rsi		# movq %r(1096), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L190(%rip), %rdi		# leaq .L190(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1098)
	movq $-5, %rbx		# movq $-5, %r(1189)
	movq $-3, %r12		# movq $-3, %r(1190)
	movq %rbx, %rdi		# movq %r(1189), %rdi
	movq %r12, %rsi		# movq %r(1190), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(1099)
	movq %r13, %rdi		# movq %r(1098), %rdi
	movq %rbx, %rsi		# movq %r(1099), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L191(%rip), %rdi		# leaq .L191(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1101)
	movq $2, %rbx		# movq $2, %r(1192)
	movq $40, %r12		# movq $40, %r(1193)
	movq %rbx, %rdi		# movq %r(1192), %rdi
	movq %r12, %rsi		# movq %r(1193), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1102)
	movq %r13, %rdi		# movq %r(1101), %rdi
	movq %rbx, %rsi		# movq %r(1102), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L192(%rip), %rdi		# leaq .L192(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1104)
	movq $2, %rbx		# movq $2, %r(1195)
	movq $40, %r12		# movq $40, %r(1196)
	movq %rbx, %rdi		# movq %r(1195), %rdi
	movq %r12, %rsi		# movq %r(1196), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1105)
	movq %r13, %rdi		# movq %r(1104), %rdi
	movq %rbx, %rsi		# movq %r(1105), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L193(%rip), %rdi		# leaq .L193(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1107)
	movq $-1, %rbx		# movq $-1, %r(1198)
	movq $0, %r12		# movq $0, %r(1199)
	movq %rbx, %rdi		# movq %r(1198), %rdi
	movq %r12, %rsi		# movq %r(1199), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1108)
	movq %r13, %rdi		# movq %r(1107), %rdi
	movq %rbx, %rsi		# movq %r(1108), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L194(%rip), %rdi		# leaq .L194(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1110)
	movq $-1, %rbx		# movq $-1, %r(1201)
	movq $0, %r12		# movq $0, %r(1202)
	movq %rbx, %rdi		# movq %r(1201), %rdi
	movq %r12, %rsi		# movq %r(1202), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(1111)
	movq %r13, %rdi		# movq %r(1110), %rdi
	movq %rbx, %rsi		# movq %r(1111), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L195(%rip), %rdi		# leaq .L195(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1113)
	movq $-5, %rbx		# movq $-5, %r(1204)
	movq $-3, %r12		# movq $-3, %r(1205)
	movq %rbx, %rdi		# movq %r(1204), %rdi
	movq %r12, %rsi		# movq %r(1205), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1114)
	movq %r13, %rdi		# movq %r(1113), %rdi
	movq %rbx, %rsi		# movq %r(1114), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L196(%rip), %rdi		# leaq .L196(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1116)
	movq $-5, %rbx		# movq $-5, %r(1207)
	movq $-3, %r12		# movq $-3, %r(1208)
	movq %rbx, %rdi		# movq %r(1207), %rdi
	movq %r12, %rsi		# movq %r(1208), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(1117)
	movq %r13, %rdi		# movq %r(1116), %rdi
	movq %rbx, %rsi		# movq %r(1117), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L197(%rip), %rdi		# leaq .L197(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1119)
	movq $2, %rbx		# movq $2, %r(1210)
	movq $40, %r12		# movq $40, %r(1211)
	movq %rbx, %rdi		# movq %r(1210), %rdi
	movq %r12, %rsi		# movq %r(1211), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(1120)
	movq $1, %r12		# movq $1, %r(1212)
	xorq %r12, %r14		# xorq %r(1212), %r(1213)
	movq %r13, %rdi		# movq %r(1119), %rdi
	movq %r14, %rsi		# movq %r(1213), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L198(%rip), %rdi		# leaq .L198(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1122)
	movq $2, %rbx		# movq $2, %r(1215)
	movq $40, %r12		# movq $40, %r(1216)
	movq %rbx, %rdi		# movq %r(1215), %rdi
	movq %r12, %rsi		# movq %r(1216), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(1123)
	movq $1, %r12		# movq $1, %r(1217)
	xorq %r12, %r14		# xorq %r(1217), %r(1218)
	movq %r13, %rdi		# movq %r(1122), %rdi
	movq %r14, %rsi		# movq %r(1218), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L199(%rip), %rdi		# leaq .L199(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1125)
	movq $-1, %rbx		# movq $-1, %r(1220)
	movq $0, %r12		# movq $0, %r(1221)
	movq %rbx, %rdi		# movq %r(1220), %rdi
	movq %r12, %rsi		# movq %r(1221), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(1126)
	movq $1, %r12		# movq $1, %r(1222)
	xorq %r12, %r14		# xorq %r(1222), %r(1223)
	movq %r13, %rdi		# movq %r(1125), %rdi
	movq %r14, %rsi		# movq %r(1223), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L200(%rip), %rdi		# leaq .L200(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1128)
	movq $-1, %rbx		# movq $-1, %r(1225)
	movq $0, %r12		# movq $0, %r(1226)
	movq %rbx, %rdi		# movq %r(1225), %rdi
	movq %r12, %rsi		# movq %r(1226), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(1129)
	movq $1, %r12		# movq $1, %r(1227)
	xorq %r12, %r14		# xorq %r(1227), %r(1228)
	movq %r13, %rdi		# movq %r(1128), %rdi
	movq %r14, %rsi		# movq %r(1228), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L201(%rip), %rdi		# leaq .L201(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1131)
	movq $-5, %rbx		# movq $-5, %r(1230)
	movq $-3, %r12		# movq $-3, %r(1231)
	movq %rbx, %rdi		# movq %r(1230), %rdi
	movq %r12, %rsi		# movq %r(1231), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(1132)
	movq $1, %r12		# movq $1, %r(1232)
	xorq %r12, %r14		# xorq %r(1232), %r(1233)
	movq %r13, %rdi		# movq %r(1131), %rdi
	movq %r14, %rsi		# movq %r(1233), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L202(%rip), %rdi		# leaq .L202(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1134)
	movq $-5, %rbx		# movq $-5, %r(1235)
	movq $-3, %r12		# movq $-3, %r(1236)
	movq %rbx, %rdi		# movq %r(1235), %rdi
	movq %r12, %rsi		# movq %r(1236), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(1135)
	movq $1, %r12		# movq $1, %r(1237)
	xorq %r12, %r14		# xorq %r(1237), %r(1238)
	movq %r13, %rdi		# movq %r(1134), %rdi
	movq %r14, %rsi		# movq %r(1238), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L203(%rip), %rdi		# leaq .L203(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1137)
	movq $2, %rbx		# movq $2, %r(1240)
	movq $40, %r12		# movq $40, %r(1241)
	movq %rbx, %rdi		# movq %r(1240), %rdi
	movq %r12, %rsi		# movq %r(1241), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(1138)
	movq $1, %r12		# movq $1, %r(1242)
	xorq %r12, %r14		# xorq %r(1242), %r(1243)
	movq %r13, %rdi		# movq %r(1137), %rdi
	movq %r14, %rsi		# movq %r(1243), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L204(%rip), %rdi		# leaq .L204(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1140)
	movq $2, %rbx		# movq $2, %r(1245)
	movq $40, %r12		# movq $40, %r(1246)
	movq %rbx, %rdi		# movq %r(1245), %rdi
	movq %r12, %rsi		# movq %r(1246), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(1141)
	movq $1, %r12		# movq $1, %r(1247)
	xorq %r12, %r14		# xorq %r(1247), %r(1248)
	movq %r13, %rdi		# movq %r(1140), %rdi
	movq %r14, %rsi		# movq %r(1248), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L205(%rip), %rdi		# leaq .L205(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1143)
	movq $-1, %rbx		# movq $-1, %r(1250)
	movq $0, %r12		# movq $0, %r(1251)
	movq %rbx, %rdi		# movq %r(1250), %rdi
	movq %r12, %rsi		# movq %r(1251), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(1144)
	movq $1, %r12		# movq $1, %r(1252)
	xorq %r12, %r14		# xorq %r(1252), %r(1253)
	movq %r13, %rdi		# movq %r(1143), %rdi
	movq %r14, %rsi		# movq %r(1253), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L206(%rip), %rdi		# leaq .L206(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1146)
	movq $-1, %rbx		# movq $-1, %r(1255)
	movq $0, %r12		# movq $0, %r(1256)
	movq %rbx, %rdi		# movq %r(1255), %rdi
	movq %r12, %rsi		# movq %r(1256), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(1147)
	movq $1, %r12		# movq $1, %r(1257)
	xorq %r12, %r14		# xorq %r(1257), %r(1258)
	movq %r13, %rdi		# movq %r(1146), %rdi
	movq %r14, %rsi		# movq %r(1258), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L207(%rip), %rdi		# leaq .L207(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1149)
	movq $-5, %rbx		# movq $-5, %r(1260)
	movq $-3, %r12		# movq $-3, %r(1261)
	movq %rbx, %rdi		# movq %r(1260), %rdi
	movq %r12, %rsi		# movq %r(1261), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(1150)
	movq $1, %r12		# movq $1, %r(1262)
	xorq %r12, %r14		# xorq %r(1262), %r(1263)
	movq %r13, %rdi		# movq %r(1149), %rdi
	movq %r14, %rsi		# movq %r(1263), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L208(%rip), %rdi		# leaq .L208(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1152)
	movq $-5, %rbx		# movq $-5, %r(1265)
	movq $-3, %r12		# movq $-3, %r(1266)
	movq %rbx, %rdi		# movq %r(1265), %rdi
	movq %r12, %rsi		# movq %r(1266), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(1153)
	movq $1, %r12		# movq $1, %r(1267)
	xorq %r12, %r14		# xorq %r(1267), %r(1268)
	movq %r13, %rdi		# movq %r(1152), %rdi
	movq %r14, %rsi		# movq %r(1268), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L184		# jmp .L184
	.L184:		# .L184:
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(1269)
	movq %r12, -16(%rbp)		# movq %r(1281), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1282)
	salq $3, %rbx		# salq $3, %r(1270)
	movq $8, %r12		# movq $8, %r(1271)
	addq %r12, %rbx		# addq %r(1271), %r(1272)
	movq %rbx, %rdi		# movq %r(1272), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1155)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1283)
	salq $3, %r12		# salq $3, %r(1273)
	movq %r13, %r15		# movq %r(1155), %r(1274)
	addq %r12, %r15		# addq %r(1273), %r(1274)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1284)
	movq %rbx, %r12		# movq %r(1284), %r(1275)
	salq $3, %r12		# salq $3, %r(1275)
	movq %r14, %rbx		# movq %r(p0), %r(1285)
	movq %rbx, -8(%rbp)		# movq %r(1285), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1286)
	addq %r12, %rbx		# addq %r(1275), %r(1286)
	movq %rbx, -8(%rbp)		# movq %r(1286), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1287)
	movq (%rbx), %rbx		# movq (%r(1287)), %r(1277)
	movq %rbx, (%r15)		# movq %r(1277), (%r(1274))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1288)
	decq %rbx		# decq %r(1288)
	movq %rbx, -16(%rbp)		# movq %r(1288), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1278)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1289)
	cmpq %rbx, %r12		# cmpq %r(1278), %r(1289)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1279)
	movq %r13, %r12		# movq %r(1155), %r(1280)
	addq %rbx, %r12		# addq %r(1279), %r(1280)
	movq %r12, %rax		# movq %r(1280), %rax
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
.L201:
	.quad 3
	.quad 62
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L208:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L195:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L205:
	.quad 4
	.quad 62
	.quad 61
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L196:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L186:
	.quad 3
	.quad 60
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L207:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L193:
	.quad 4
	.quad 60
	.quad 61
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L192:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L187:
	.quad 3
	.quad 60
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L189:
	.quad 3
	.quad 60
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L198:
	.quad 3
	.quad 62
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L183:
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
.L203:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L200:
	.quad 3
	.quad 62
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L191:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L188:
	.quad 3
	.quad 60
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L204:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L194:
	.quad 4
	.quad 60
	.quad 61
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L190:
	.quad 3
	.quad 60
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L185:
	.quad 3
	.quad 60
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L199:
	.quad 3
	.quad 62
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L206:
	.quad 4
	.quad 62
	.quad 61
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L197:
	.quad 3
	.quad 62
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L202:
	.quad 3
	.quad 62
	.quad 50
	.quad 98
	.text

