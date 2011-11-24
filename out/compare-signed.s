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
	movq $1, %rbx		# movq $1, %r(1150)
	movq %rbx, %rax		# movq %r(1150), %rax
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
	movq $0, %rbx		# movq $0, %r(1151)
	movq %rbx, %rax		# movq %r(1151), %rax
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
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(1152)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jl .L162		# jl .L162
	.L163:		# .L163:
	movq $0, %rbx		# movq $0, %r(1153)
	jmp .L162		# jmp .L162
	.L162:		# .L162:
	movq %rbx, %rax		# movq %r(1054), %rax
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
	movq $1, %rbx		# movq $1, %r(1154)
	movq %rbx, %rax		# movq %r(1154), %rax
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
	movq $0, %rbx		# movq $0, %r(1155)
	movq %rbx, %rax		# movq %r(1155), %rax
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
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(1156)
	cmpq %r12, %r13		# cmpq %r(b), %r(a)
	jle .L168		# jle .L168
	.L169:		# .L169:
	movq $0, %rbx		# movq $0, %r(1157)
	jmp .L168		# jmp .L168
	.L168:		# .L168:
	movq %rbx, %rax		# movq %r(1059), %rax
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
	movq $1, %rbx		# movq $1, %r(1158)
	movq %rbx, %rax		# movq %r(1158), %rax
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
	movq $0, %rbx		# movq $0, %r(1159)
	movq %rbx, %rax		# movq %r(1159), %rax
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
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(1160)
	cmpq %r12, %r13		# cmpq %r(b), %r(a)
	jg .L174		# jg .L174
	.L175:		# .L175:
	movq $0, %rbx		# movq $0, %r(1161)
	jmp .L174		# jmp .L174
	.L174:		# .L174:
	movq %rbx, %rax		# movq %r(1064), %rax
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
	movq $1, %rbx		# movq $1, %r(1162)
	movq %rbx, %rax		# movq %r(1162), %rax
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
	movq $0, %rbx		# movq $0, %r(1163)
	movq %rbx, %rax		# movq %r(1163), %rax
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
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(1164)
	cmpq %r12, %r13		# cmpq %r(b), %r(a)
	jge .L180		# jge .L180
	.L181:		# .L181:
	movq $0, %rbx		# movq $0, %r(1165)
	jmp .L180		# jmp .L180
	.L180:		# .L180:
	movq %rbx, %rax		# movq %r(1069), %rax
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
	movq %rax, %r13		# movq %rax, %r(1073)
	movq %r13, %rdi		# movq %r(1073), %rdi
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
	movq %rax, %r13		# movq %rax, %r(1077)
	movq $2, %rbx		# movq $2, %r(1168)
	movq $40, %r12		# movq $40, %r(1169)
	movq %rbx, %rdi		# movq %r(1168), %rdi
	movq %r12, %rsi		# movq %r(1169), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1078)
	movq %r13, %rdi		# movq %r(1077), %rdi
	movq %rbx, %rsi		# movq %r(1078), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L186(%rip), %rdi		# leaq .L186(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1080)
	movq $2, %rbx		# movq $2, %r(1171)
	movq $40, %r12		# movq $40, %r(1172)
	movq %rbx, %rdi		# movq %r(1171), %rdi
	movq %r12, %rsi		# movq %r(1172), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1081)
	movq %r13, %rdi		# movq %r(1080), %rdi
	movq %rbx, %rsi		# movq %r(1081), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L187(%rip), %rdi		# leaq .L187(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1083)
	movq $-1, %rbx		# movq $-1, %r(1174)
	movq $0, %r12		# movq $0, %r(1175)
	movq %rbx, %rdi		# movq %r(1174), %rdi
	movq %r12, %rsi		# movq %r(1175), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1084)
	movq %r13, %rdi		# movq %r(1083), %rdi
	movq %rbx, %rsi		# movq %r(1084), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L188(%rip), %rdi		# leaq .L188(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1086)
	movq $-1, %rbx		# movq $-1, %r(1177)
	movq $0, %r12		# movq $0, %r(1178)
	movq %rbx, %rdi		# movq %r(1177), %rdi
	movq %r12, %rsi		# movq %r(1178), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(1087)
	movq %r13, %rdi		# movq %r(1086), %rdi
	movq %rbx, %rsi		# movq %r(1087), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L189(%rip), %rdi		# leaq .L189(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1089)
	movq $-5, %rbx		# movq $-5, %r(1180)
	movq $-3, %r12		# movq $-3, %r(1181)
	movq %rbx, %rdi		# movq %r(1180), %rdi
	movq %r12, %rsi		# movq %r(1181), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1090)
	movq %r13, %rdi		# movq %r(1089), %rdi
	movq %rbx, %rsi		# movq %r(1090), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L190(%rip), %rdi		# leaq .L190(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1092)
	movq $-5, %rbx		# movq $-5, %r(1183)
	movq $-3, %r12		# movq $-3, %r(1184)
	movq %rbx, %rdi		# movq %r(1183), %rdi
	movq %r12, %rsi		# movq %r(1184), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(1093)
	movq %r13, %rdi		# movq %r(1092), %rdi
	movq %rbx, %rsi		# movq %r(1093), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L191(%rip), %rdi		# leaq .L191(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1095)
	movq $2, %rbx		# movq $2, %r(1186)
	movq $40, %r12		# movq $40, %r(1187)
	movq %rbx, %rdi		# movq %r(1186), %rdi
	movq %r12, %rsi		# movq %r(1187), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1096)
	movq %r13, %rdi		# movq %r(1095), %rdi
	movq %rbx, %rsi		# movq %r(1096), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L192(%rip), %rdi		# leaq .L192(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1098)
	movq $2, %rbx		# movq $2, %r(1189)
	movq $40, %r12		# movq $40, %r(1190)
	movq %rbx, %rdi		# movq %r(1189), %rdi
	movq %r12, %rsi		# movq %r(1190), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1099)
	movq %r13, %rdi		# movq %r(1098), %rdi
	movq %rbx, %rsi		# movq %r(1099), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L193(%rip), %rdi		# leaq .L193(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1101)
	movq $-1, %rbx		# movq $-1, %r(1192)
	movq $0, %r12		# movq $0, %r(1193)
	movq %rbx, %rdi		# movq %r(1192), %rdi
	movq %r12, %rsi		# movq %r(1193), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1102)
	movq %r13, %rdi		# movq %r(1101), %rdi
	movq %rbx, %rsi		# movq %r(1102), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L194(%rip), %rdi		# leaq .L194(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1104)
	movq $-1, %rbx		# movq $-1, %r(1195)
	movq $0, %r12		# movq $0, %r(1196)
	movq %rbx, %rdi		# movq %r(1195), %rdi
	movq %r12, %rsi		# movq %r(1196), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(1105)
	movq %r13, %rdi		# movq %r(1104), %rdi
	movq %rbx, %rsi		# movq %r(1105), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L195(%rip), %rdi		# leaq .L195(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1107)
	movq $-5, %rbx		# movq $-5, %r(1198)
	movq $-3, %r12		# movq $-3, %r(1199)
	movq %rbx, %rdi		# movq %r(1198), %rdi
	movq %r12, %rsi		# movq %r(1199), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1108)
	movq %r13, %rdi		# movq %r(1107), %rdi
	movq %rbx, %rsi		# movq %r(1108), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L196(%rip), %rdi		# leaq .L196(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1110)
	movq $-5, %rbx		# movq $-5, %r(1201)
	movq $-3, %r12		# movq $-3, %r(1202)
	movq %rbx, %rdi		# movq %r(1201), %rdi
	movq %r12, %rsi		# movq %r(1202), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(1111)
	movq %r13, %rdi		# movq %r(1110), %rdi
	movq %rbx, %rsi		# movq %r(1111), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L197(%rip), %rdi		# leaq .L197(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1113)
	movq $2, %rbx		# movq $2, %r(1204)
	movq $40, %r12		# movq $40, %r(1205)
	movq %rbx, %rdi		# movq %r(1204), %rdi
	movq %r12, %rsi		# movq %r(1205), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(1114)
	movq $1, %r12		# movq $1, %r(1206)
	xorq %r12, %r14		# xorq %r(1206), %r(1207)
	movq %r13, %rdi		# movq %r(1113), %rdi
	movq %r14, %rsi		# movq %r(1207), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L198(%rip), %rdi		# leaq .L198(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1116)
	movq $2, %rbx		# movq $2, %r(1209)
	movq $40, %r12		# movq $40, %r(1210)
	movq %rbx, %rdi		# movq %r(1209), %rdi
	movq %r12, %rsi		# movq %r(1210), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(1117)
	movq $1, %r12		# movq $1, %r(1211)
	xorq %r12, %r14		# xorq %r(1211), %r(1212)
	movq %r13, %rdi		# movq %r(1116), %rdi
	movq %r14, %rsi		# movq %r(1212), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L199(%rip), %rdi		# leaq .L199(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1119)
	movq $-1, %rbx		# movq $-1, %r(1214)
	movq $0, %r12		# movq $0, %r(1215)
	movq %rbx, %rdi		# movq %r(1214), %rdi
	movq %r12, %rsi		# movq %r(1215), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(1120)
	movq $1, %r12		# movq $1, %r(1216)
	xorq %r12, %r14		# xorq %r(1216), %r(1217)
	movq %r13, %rdi		# movq %r(1119), %rdi
	movq %r14, %rsi		# movq %r(1217), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L200(%rip), %rdi		# leaq .L200(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1122)
	movq $-1, %rbx		# movq $-1, %r(1219)
	movq $0, %r12		# movq $0, %r(1220)
	movq %rbx, %rdi		# movq %r(1219), %rdi
	movq %r12, %rsi		# movq %r(1220), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(1123)
	movq $1, %r12		# movq $1, %r(1221)
	xorq %r12, %r14		# xorq %r(1221), %r(1222)
	movq %r13, %rdi		# movq %r(1122), %rdi
	movq %r14, %rsi		# movq %r(1222), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L201(%rip), %rdi		# leaq .L201(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1125)
	movq $-5, %rbx		# movq $-5, %r(1224)
	movq $-3, %r12		# movq $-3, %r(1225)
	movq %rbx, %rdi		# movq %r(1224), %rdi
	movq %r12, %rsi		# movq %r(1225), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(1126)
	movq $1, %r12		# movq $1, %r(1226)
	xorq %r12, %r14		# xorq %r(1226), %r(1227)
	movq %r13, %rdi		# movq %r(1125), %rdi
	movq %r14, %rsi		# movq %r(1227), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L202(%rip), %rdi		# leaq .L202(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1128)
	movq $-5, %rbx		# movq $-5, %r(1229)
	movq $-3, %r12		# movq $-3, %r(1230)
	movq %rbx, %rdi		# movq %r(1229), %rdi
	movq %r12, %rsi		# movq %r(1230), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(1129)
	movq $1, %r12		# movq $1, %r(1231)
	xorq %r12, %r14		# xorq %r(1231), %r(1232)
	movq %r13, %rdi		# movq %r(1128), %rdi
	movq %r14, %rsi		# movq %r(1232), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L203(%rip), %rdi		# leaq .L203(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1131)
	movq $2, %rbx		# movq $2, %r(1234)
	movq $40, %r12		# movq $40, %r(1235)
	movq %rbx, %rdi		# movq %r(1234), %rdi
	movq %r12, %rsi		# movq %r(1235), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(1132)
	movq $1, %r12		# movq $1, %r(1236)
	xorq %r12, %r14		# xorq %r(1236), %r(1237)
	movq %r13, %rdi		# movq %r(1131), %rdi
	movq %r14, %rsi		# movq %r(1237), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L204(%rip), %rdi		# leaq .L204(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1134)
	movq $2, %rbx		# movq $2, %r(1239)
	movq $40, %r12		# movq $40, %r(1240)
	movq %rbx, %rdi		# movq %r(1239), %rdi
	movq %r12, %rsi		# movq %r(1240), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(1135)
	movq $1, %r12		# movq $1, %r(1241)
	xorq %r12, %r14		# xorq %r(1241), %r(1242)
	movq %r13, %rdi		# movq %r(1134), %rdi
	movq %r14, %rsi		# movq %r(1242), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L205(%rip), %rdi		# leaq .L205(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1137)
	movq $-1, %rbx		# movq $-1, %r(1244)
	movq $0, %r12		# movq $0, %r(1245)
	movq %rbx, %rdi		# movq %r(1244), %rdi
	movq %r12, %rsi		# movq %r(1245), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(1138)
	movq $1, %r12		# movq $1, %r(1246)
	xorq %r12, %r14		# xorq %r(1246), %r(1247)
	movq %r13, %rdi		# movq %r(1137), %rdi
	movq %r14, %rsi		# movq %r(1247), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L206(%rip), %rdi		# leaq .L206(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1140)
	movq $-1, %rbx		# movq $-1, %r(1249)
	movq $0, %r12		# movq $0, %r(1250)
	movq %rbx, %rdi		# movq %r(1249), %rdi
	movq %r12, %rsi		# movq %r(1250), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(1141)
	movq $1, %r12		# movq $1, %r(1251)
	xorq %r12, %r14		# xorq %r(1251), %r(1252)
	movq %r13, %rdi		# movq %r(1140), %rdi
	movq %r14, %rsi		# movq %r(1252), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L207(%rip), %rdi		# leaq .L207(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1143)
	movq $-5, %rbx		# movq $-5, %r(1254)
	movq $-3, %r12		# movq $-3, %r(1255)
	movq %rbx, %rdi		# movq %r(1254), %rdi
	movq %r12, %rsi		# movq %r(1255), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(1144)
	movq $1, %r12		# movq $1, %r(1256)
	xorq %r12, %r14		# xorq %r(1256), %r(1257)
	movq %r13, %rdi		# movq %r(1143), %rdi
	movq %r14, %rsi		# movq %r(1257), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L208(%rip), %rdi		# leaq .L208(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1146)
	movq $-5, %rbx		# movq $-5, %r(1259)
	movq $-3, %r12		# movq $-3, %r(1260)
	movq %rbx, %rdi		# movq %r(1259), %rdi
	movq %r12, %rsi		# movq %r(1260), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(1147)
	movq $1, %r12		# movq $1, %r(1261)
	xorq %r12, %r14		# xorq %r(1261), %r(1262)
	movq %r13, %rdi		# movq %r(1146), %rdi
	movq %r14, %rsi		# movq %r(1262), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1275)
	movq %rbx, -16(%rbp)		# movq %r(1275), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1276)
	movq (%rbx), %rbx		# movq (%r(1276)), %r(1263)
	movq %rbx, %r14		# movq %r(1263), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1264)
	salq $3, %rbx		# salq $3, %r(1264)
	movq $8, %r12		# movq $8, %r(1265)
	addq %r12, %rbx		# addq %r(1265), %r(1266)
	movq %rbx, %rdi		# movq %r(1266), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1149)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(1267)
	salq $3, %rbx		# salq $3, %r(1267)
	movq %r12, %r13		# movq %r(1149), %r(1268)
	addq %rbx, %r13		# addq %r(1267), %r(1268)
	movq %r14, %r15		# movq %r(t10), %r(1269)
	salq $3, %r15		# salq $3, %r(1269)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1277)
	movq %rbx, -8(%rbp)		# movq %r(1278), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1279)
	addq %r15, %rbx		# addq %r(1269), %r(1279)
	movq %rbx, -8(%rbp)		# movq %r(1279), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1280)
	movq (%rbx), %rbx		# movq (%r(1280)), %r(1271)
	movq %rbx, (%r13)		# movq %r(1271), (%r(1268))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1272)
	cmpq %rbx, %r14		# cmpq %r(1272), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1273)
	addq %rbx, %r12		# addq %r(1273), %r(1274)
	movq %r12, %rax		# movq %r(1274), %rax
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
.L189:
	.quad 3
	.quad 60
	.quad 50
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
.L206:
	.quad 4
	.quad 62
	.quad 61
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
.L190:
	.quad 3
	.quad 60
	.quad 50
	.quad 98
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
.L197:
	.quad 3
	.quad 62
	.quad 48
	.quad 97
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
.L203:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
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
.L199:
	.quad 3
	.quad 62
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
.L201:
	.quad 3
	.quad 62
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
.L207:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 97
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
.L195:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
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
.L208:
	.quad 4
	.quad 62
	.quad 61
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

