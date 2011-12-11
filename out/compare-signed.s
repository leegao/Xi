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
	movq %rdi, %rbx		# movq %rdi, %r(1180)
	movq %rsi, %r12		# movq %rsi, %r(1181)
	cmpq %r12, %rbx		# cmpq %r(1181), %r(1180)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq $1, %rbx		# movq $1, %r(1280)
	movq %rbx, %rax		# movq %r(1280), %rax
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
	movq $0, %rbx		# movq $0, %r(1281)
	movq %rbx, %rax		# movq %r(1281), %rax
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
	movq %rdi, %r13		# movq %rdi, %r(1182)
	movq %rsi, %r14		# movq %rsi, %r(1183)
	movq $1, %r12		# movq $1, %r(1282)
	movq %r12, %rbx		# movq %r(1282), %r(1184)
	cmpq %r14, %r13		# cmpq %r(1183), %r(1182)
	jl .L162		# jl .L162
	.L163:		# .L163:
	movq $0, %r12		# movq $0, %r(1283)
	movq %r12, %rbx		# movq %r(1283), %r(1184)
	jmp .L162		# jmp .L162
	.L162:		# .L162:
	movq %rbx, %rax		# movq %r(1184), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(1185)
	movq %rsi, %r12		# movq %rsi, %r(1186)
	cmpq %r12, %rbx		# cmpq %r(1186), %r(1185)
	jg .L166		# jg .L166
	.L165:		# .L165:
	movq $1, %rbx		# movq $1, %r(1284)
	movq %rbx, %rax		# movq %r(1284), %rax
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
	movq $0, %rbx		# movq $0, %r(1285)
	movq %rbx, %rax		# movq %r(1285), %rax
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
	movq %rdi, %r12		# movq %rdi, %r(1187)
	movq %rsi, %r13		# movq %rsi, %r(1188)
	movq $1, %r14		# movq $1, %r(1286)
	movq %r14, %rbx		# movq %r(1286), %r(1189)
	cmpq %r13, %r12		# cmpq %r(1188), %r(1187)
	jle .L168		# jle .L168
	.L169:		# .L169:
	movq $0, %r12		# movq $0, %r(1287)
	movq %r12, %rbx		# movq %r(1287), %r(1189)
	jmp .L168		# jmp .L168
	.L168:		# .L168:
	movq %rbx, %rax		# movq %r(1189), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(1190)
	movq %rsi, %r12		# movq %rsi, %r(1191)
	cmpq %r12, %rbx		# cmpq %r(1191), %r(1190)
	jle .L172		# jle .L172
	.L171:		# .L171:
	movq $1, %rbx		# movq $1, %r(1288)
	movq %rbx, %rax		# movq %r(1288), %rax
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
	movq $0, %rbx		# movq $0, %r(1289)
	movq %rbx, %rax		# movq %r(1289), %rax
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
	movq %rdi, %r13		# movq %rdi, %r(1192)
	movq %rsi, %r12		# movq %rsi, %r(1193)
	movq $1, %r14		# movq $1, %r(1290)
	movq %r14, %rbx		# movq %r(1290), %r(1194)
	cmpq %r12, %r13		# cmpq %r(1193), %r(1192)
	jg .L174		# jg .L174
	.L175:		# .L175:
	movq $0, %r12		# movq $0, %r(1291)
	movq %r12, %rbx		# movq %r(1291), %r(1194)
	jmp .L174		# jmp .L174
	.L174:		# .L174:
	movq %rbx, %rax		# movq %r(1194), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(1195)
	movq %rsi, %r12		# movq %rsi, %r(1196)
	cmpq %r12, %rbx		# cmpq %r(1196), %r(1195)
	jl .L178		# jl .L178
	.L177:		# .L177:
	movq $1, %rbx		# movq $1, %r(1292)
	movq %rbx, %rax		# movq %r(1292), %rax
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
	movq $0, %rbx		# movq $0, %r(1293)
	movq %rbx, %rax		# movq %r(1293), %rax
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
	movq %rdi, %r14		# movq %rdi, %r(1197)
	movq %rsi, %r12		# movq %rsi, %r(1198)
	movq $1, %r13		# movq $1, %r(1294)
	movq %r13, %rbx		# movq %r(1294), %r(1199)
	cmpq %r12, %r14		# cmpq %r(1198), %r(1197)
	jge .L180		# jge .L180
	.L181:		# .L181:
	movq $0, %r12		# movq $0, %r(1295)
	movq %r12, %rbx		# movq %r(1295), %r(1199)
	jmp .L180		# jmp .L180
	.L180:		# .L180:
	movq %rbx, %rax		# movq %r(1199), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(1200)
	movq %rsi, %r12		# movq %rsi, %r(1201)
	leaq .L183(%rip), %rdi		# leaq .L183(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1203)
	movq %r13, %rdi		# movq %r(1203), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(1200), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(1201), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(1202)
	leaq .L185(%rip), %rdi		# leaq .L185(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1207)
	movq $2, %rbx		# movq $2, %r(1298)
	movq $40, %r12		# movq $40, %r(1299)
	movq %rbx, %rdi		# movq %r(1298), %rdi
	movq %r12, %rsi		# movq %r(1299), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1208)
	movq %r13, %rdi		# movq %r(1207), %rdi
	movq %rbx, %rsi		# movq %r(1208), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L186(%rip), %rdi		# leaq .L186(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1210)
	movq $2, %rbx		# movq $2, %r(1301)
	movq $40, %r12		# movq $40, %r(1302)
	movq %rbx, %rdi		# movq %r(1301), %rdi
	movq %r12, %rsi		# movq %r(1302), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1211)
	movq %r13, %rdi		# movq %r(1210), %rdi
	movq %rbx, %rsi		# movq %r(1211), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L187(%rip), %rdi		# leaq .L187(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1213)
	movq $-1, %rbx		# movq $-1, %r(1304)
	movq $0, %r12		# movq $0, %r(1305)
	movq %rbx, %rdi		# movq %r(1304), %rdi
	movq %r12, %rsi		# movq %r(1305), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1214)
	movq %r13, %rdi		# movq %r(1213), %rdi
	movq %rbx, %rsi		# movq %r(1214), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L188(%rip), %rdi		# leaq .L188(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1216)
	movq $-1, %rbx		# movq $-1, %r(1307)
	movq $0, %r12		# movq $0, %r(1308)
	movq %rbx, %rdi		# movq %r(1307), %rdi
	movq %r12, %rsi		# movq %r(1308), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(1217)
	movq %r13, %rdi		# movq %r(1216), %rdi
	movq %rbx, %rsi		# movq %r(1217), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L189(%rip), %rdi		# leaq .L189(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1219)
	movq $-5, %rbx		# movq $-5, %r(1310)
	movq $-3, %r12		# movq $-3, %r(1311)
	movq %rbx, %rdi		# movq %r(1310), %rdi
	movq %r12, %rsi		# movq %r(1311), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(1220)
	movq %r13, %rdi		# movq %r(1219), %rdi
	movq %rbx, %rsi		# movq %r(1220), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L190(%rip), %rdi		# leaq .L190(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1222)
	movq $-5, %rbx		# movq $-5, %r(1313)
	movq $-3, %r12		# movq $-3, %r(1314)
	movq %rbx, %rdi		# movq %r(1313), %rdi
	movq %r12, %rsi		# movq %r(1314), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(1223)
	movq %r13, %rdi		# movq %r(1222), %rdi
	movq %rbx, %rsi		# movq %r(1223), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L191(%rip), %rdi		# leaq .L191(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1225)
	movq $2, %rbx		# movq $2, %r(1316)
	movq $40, %r12		# movq $40, %r(1317)
	movq %rbx, %rdi		# movq %r(1316), %rdi
	movq %r12, %rsi		# movq %r(1317), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1226)
	movq %r13, %rdi		# movq %r(1225), %rdi
	movq %rbx, %rsi		# movq %r(1226), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L192(%rip), %rdi		# leaq .L192(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1228)
	movq $2, %rbx		# movq $2, %r(1319)
	movq $40, %r12		# movq $40, %r(1320)
	movq %rbx, %rdi		# movq %r(1319), %rdi
	movq %r12, %rsi		# movq %r(1320), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1229)
	movq %r13, %rdi		# movq %r(1228), %rdi
	movq %rbx, %rsi		# movq %r(1229), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L193(%rip), %rdi		# leaq .L193(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1231)
	movq $-1, %rbx		# movq $-1, %r(1322)
	movq $0, %r12		# movq $0, %r(1323)
	movq %rbx, %rdi		# movq %r(1322), %rdi
	movq %r12, %rsi		# movq %r(1323), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1232)
	movq %r13, %rdi		# movq %r(1231), %rdi
	movq %rbx, %rsi		# movq %r(1232), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L194(%rip), %rdi		# leaq .L194(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1234)
	movq $-1, %rbx		# movq $-1, %r(1325)
	movq $0, %r12		# movq $0, %r(1326)
	movq %rbx, %rdi		# movq %r(1325), %rdi
	movq %r12, %rsi		# movq %r(1326), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(1235)
	movq %r13, %rdi		# movq %r(1234), %rdi
	movq %rbx, %rsi		# movq %r(1235), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L195(%rip), %rdi		# leaq .L195(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1237)
	movq $-5, %rbx		# movq $-5, %r(1328)
	movq $-3, %r12		# movq $-3, %r(1329)
	movq %rbx, %rdi		# movq %r(1328), %rdi
	movq %r12, %rsi		# movq %r(1329), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1238)
	movq %r13, %rdi		# movq %r(1237), %rdi
	movq %rbx, %rsi		# movq %r(1238), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L196(%rip), %rdi		# leaq .L196(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1240)
	movq $-5, %rbx		# movq $-5, %r(1331)
	movq $-3, %r12		# movq $-3, %r(1332)
	movq %rbx, %rdi		# movq %r(1331), %rdi
	movq %r12, %rsi		# movq %r(1332), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(1241)
	movq %r13, %rdi		# movq %r(1240), %rdi
	movq %rbx, %rsi		# movq %r(1241), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L197(%rip), %rdi		# leaq .L197(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1243)
	movq $2, %rbx		# movq $2, %r(1334)
	movq $40, %r12		# movq $40, %r(1335)
	movq %rbx, %rdi		# movq %r(1334), %rdi
	movq %r12, %rsi		# movq %r(1335), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %rbx		# movq %rax, %r(1244)
	movq $1, %r12		# movq $1, %r(1336)
	movq %rbx, %r13		# movq %r(1244), %r(1337)
	xorq %r12, %r13		# xorq %r(1336), %r(1337)
	movq %r14, %rdi		# movq %r(1243), %rdi
	movq %r13, %rsi		# movq %r(1337), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L198(%rip), %rdi		# leaq .L198(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1246)
	movq $2, %rbx		# movq $2, %r(1339)
	movq $40, %r12		# movq $40, %r(1340)
	movq %rbx, %rdi		# movq %r(1339), %rdi
	movq %r12, %rsi		# movq %r(1340), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %rbx		# movq %rax, %r(1247)
	movq $1, %r12		# movq $1, %r(1341)
	movq %rbx, %r13		# movq %r(1247), %r(1342)
	xorq %r12, %r13		# xorq %r(1341), %r(1342)
	movq %r14, %rdi		# movq %r(1246), %rdi
	movq %r13, %rsi		# movq %r(1342), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L199(%rip), %rdi		# leaq .L199(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1249)
	movq $-1, %rbx		# movq $-1, %r(1344)
	movq $0, %r12		# movq $0, %r(1345)
	movq %rbx, %rdi		# movq %r(1344), %rdi
	movq %r12, %rsi		# movq %r(1345), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %rbx		# movq %rax, %r(1250)
	movq $1, %r12		# movq $1, %r(1346)
	movq %rbx, %r13		# movq %r(1250), %r(1347)
	xorq %r12, %r13		# xorq %r(1346), %r(1347)
	movq %r14, %rdi		# movq %r(1249), %rdi
	movq %r13, %rsi		# movq %r(1347), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L200(%rip), %rdi		# leaq .L200(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1252)
	movq $-1, %rbx		# movq $-1, %r(1349)
	movq $0, %r12		# movq $0, %r(1350)
	movq %rbx, %rdi		# movq %r(1349), %rdi
	movq %r12, %rsi		# movq %r(1350), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %rbx		# movq %rax, %r(1253)
	movq $1, %r12		# movq $1, %r(1351)
	movq %rbx, %r13		# movq %r(1253), %r(1352)
	xorq %r12, %r13		# xorq %r(1351), %r(1352)
	movq %r14, %rdi		# movq %r(1252), %rdi
	movq %r13, %rsi		# movq %r(1352), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L201(%rip), %rdi		# leaq .L201(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1255)
	movq $-5, %rbx		# movq $-5, %r(1354)
	movq $-3, %r12		# movq $-3, %r(1355)
	movq %rbx, %rdi		# movq %r(1354), %rdi
	movq %r12, %rsi		# movq %r(1355), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %rbx		# movq %rax, %r(1256)
	movq $1, %r12		# movq $1, %r(1356)
	movq %rbx, %r13		# movq %r(1256), %r(1357)
	xorq %r12, %r13		# xorq %r(1356), %r(1357)
	movq %r14, %rdi		# movq %r(1255), %rdi
	movq %r13, %rsi		# movq %r(1357), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L202(%rip), %rdi		# leaq .L202(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1258)
	movq $-5, %rbx		# movq $-5, %r(1359)
	movq $-3, %r12		# movq $-3, %r(1360)
	movq %rbx, %rdi		# movq %r(1359), %rdi
	movq %r12, %rsi		# movq %r(1360), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %rbx		# movq %rax, %r(1259)
	movq $1, %r12		# movq $1, %r(1361)
	movq %rbx, %r13		# movq %r(1259), %r(1362)
	xorq %r12, %r13		# xorq %r(1361), %r(1362)
	movq %r14, %rdi		# movq %r(1258), %rdi
	movq %r13, %rsi		# movq %r(1362), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L203(%rip), %rdi		# leaq .L203(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1261)
	movq $2, %rbx		# movq $2, %r(1364)
	movq $40, %r12		# movq $40, %r(1365)
	movq %rbx, %rdi		# movq %r(1364), %rdi
	movq %r12, %rsi		# movq %r(1365), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1262)
	movq $1, %r12		# movq $1, %r(1366)
	movq %rbx, %r13		# movq %r(1262), %r(1367)
	xorq %r12, %r13		# xorq %r(1366), %r(1367)
	movq %r14, %rdi		# movq %r(1261), %rdi
	movq %r13, %rsi		# movq %r(1367), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L204(%rip), %rdi		# leaq .L204(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1264)
	movq $2, %rbx		# movq $2, %r(1369)
	movq $40, %r12		# movq $40, %r(1370)
	movq %rbx, %rdi		# movq %r(1369), %rdi
	movq %r12, %rsi		# movq %r(1370), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1265)
	movq $1, %r12		# movq $1, %r(1371)
	movq %rbx, %r13		# movq %r(1265), %r(1372)
	xorq %r12, %r13		# xorq %r(1371), %r(1372)
	movq %r14, %rdi		# movq %r(1264), %rdi
	movq %r13, %rsi		# movq %r(1372), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L205(%rip), %rdi		# leaq .L205(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1267)
	movq $-1, %rbx		# movq $-1, %r(1374)
	movq $0, %r12		# movq $0, %r(1375)
	movq %rbx, %rdi		# movq %r(1374), %rdi
	movq %r12, %rsi		# movq %r(1375), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1268)
	movq $1, %r12		# movq $1, %r(1376)
	movq %rbx, %r13		# movq %r(1268), %r(1377)
	xorq %r12, %r13		# xorq %r(1376), %r(1377)
	movq %r14, %rdi		# movq %r(1267), %rdi
	movq %r13, %rsi		# movq %r(1377), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L206(%rip), %rdi		# leaq .L206(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1270)
	movq $-1, %rbx		# movq $-1, %r(1379)
	movq $0, %r12		# movq $0, %r(1380)
	movq %rbx, %rdi		# movq %r(1379), %rdi
	movq %r12, %rsi		# movq %r(1380), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(1271)
	movq $1, %r12		# movq $1, %r(1381)
	movq %rbx, %r13		# movq %r(1271), %r(1382)
	xorq %r12, %r13		# xorq %r(1381), %r(1382)
	movq %r14, %rdi		# movq %r(1270), %rdi
	movq %r13, %rsi		# movq %r(1382), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L207(%rip), %rdi		# leaq .L207(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1273)
	movq $-5, %rbx		# movq $-5, %r(1384)
	movq $-3, %r12		# movq $-3, %r(1385)
	movq %rbx, %rdi		# movq %r(1384), %rdi
	movq %r12, %rsi		# movq %r(1385), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(1274)
	movq $1, %r12		# movq $1, %r(1386)
	movq %rbx, %r13		# movq %r(1274), %r(1387)
	xorq %r12, %r13		# xorq %r(1386), %r(1387)
	movq %r14, %rdi		# movq %r(1273), %rdi
	movq %r13, %rsi		# movq %r(1387), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L208(%rip), %rdi		# leaq .L208(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1276)
	movq $-5, %rbx		# movq $-5, %r(1389)
	movq $-3, %r12		# movq $-3, %r(1390)
	movq %rbx, %rdi		# movq %r(1389), %rdi
	movq %r12, %rsi		# movq %r(1390), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(1277)
	movq $1, %r12		# movq $1, %r(1391)
	movq %rbx, %r13		# movq %r(1277), %r(1392)
	xorq %r12, %r13		# xorq %r(1391), %r(1392)
	movq %r14, %rdi		# movq %r(1276), %rdi
	movq %r13, %rsi		# movq %r(1392), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1405)
	movq %rbx, -16(%rbp)		# movq %r(1405), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1406)
	movq (%rbx), %r13		# movq (%r(1406)), %r(1393)
	movq %r13, %r12		# movq %r(1393), %r(1407)
	movq %r12, -24(%rbp)		# movq %r(1407), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1408)
	movq %r12, %r13		# movq %r(1408), %r(1394)
	salq $3, %r13		# salq $3, %r(1394)
	movq $8, %rbx		# movq $8, %r(1395)
	movq %r13, %r14		# movq %r(1394), %r(1396)
	addq %rbx, %r14		# addq %r(1395), %r(1396)
	movq %r14, %rdi		# movq %r(1396), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1279)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1409)
	movq %r13, %rbx		# movq %r(1409), %r(1397)
	salq $3, %rbx		# salq $3, %r(1397)
	movq %r15, %r13		# movq %r(1279), %r(1398)
	addq %rbx, %r13		# addq %r(1397), %r(1398)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1410)
	movq %rbx, %r12		# movq %r(1410), %r(1399)
	salq $3, %r12		# salq $3, %r(1399)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1411)
	movq %rbx, %r14		# movq %r(1411), %r(1412)
	movq %r14, -8(%rbp)		# movq %r(1412), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1413)
	addq %r12, %rbx		# addq %r(1399), %r(1413)
	movq %rbx, -8(%rbp)		# movq %r(1413), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1414)
	movq (%rbx), %r12		# movq (%r(1414)), %r(1401)
	movq %r12, (%r13)		# movq %r(1401), (%r(1398))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1415)
	decq %rbx		# decq %r(1415)
	movq %rbx, -24(%rbp)		# movq %r(1415), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1402)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1416)
	cmpq %rbx, %r12		# cmpq %r(1402), %r(1416)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1403)
	movq %r15, %r13		# movq %r(1279), %r(1404)
	addq %rbx, %r13		# addq %r(1403), %r(1404)
	movq %r13, %rax		# movq %r(1404), %rax
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
.L190:
	.quad 3
	.quad 60
	.quad 50
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
.L191:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 97
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
.L199:
	.quad 3
	.quad 62
	.quad 49
	.quad 97
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
.L197:
	.quad 3
	.quad 62
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
.L203:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
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
.L196:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
	.quad 98
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
.L202:
	.quad 3
	.quad 62
	.quad 50
	.quad 98
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
.L208:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 98
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
.L192:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 98
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
.L186:
	.quad 3
	.quad 60
	.quad 48
	.quad 98
	.text

