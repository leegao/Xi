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
	leaq .L206(%rip), %rdi		# leaq .L206(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1229)
	movq %rbx, %rdi		# movq %r(1229), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(1230)
	movq %rbx, %rdi		# movq %r(1230), %rdi
	call _If_aabb		# call _If_aabb
	.L205:		# .L205:
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(b)
	movq $40, %rbx		# movq $40, %r(1239)
	movq %rbx, %rdi		# movq %r(1239), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1232)
	movq $4, %r12		# movq $4, %r(1240)
	movq %r12, (%r13)		# movq %r(1240), (%r(1232))
	movq $8, %r12		# movq $8, %r(1241)
	addq %r12, %r13		# addq %r(1241), %r(1242)
	movq %r13, %r15		# movq %r(1242), %r(1217)
	movq $24, %rbx		# movq $24, %r(1243)
	movq %rbx, %rdi		# movq %r(1243), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1233)
	movq $2, %rbx		# movq $2, %r(1244)
	movq %rbx, (%r13)		# movq %r(1244), (%r(1233))
	movq $8, %rbx		# movq $8, %r(1245)
	addq %rbx, %r13		# addq %r(1245), %r(1246)
	movq %r13, %r14		# movq %r(1246), %r(1219)
	movq $0, %rbx		# movq $0, %r(1247)
	movq %r14, %r13		# movq %r(1219), %r(1248)
	addq %rbx, %r13		# addq %r(1247), %r(1248)
	movq $1, %rbx		# movq $1, %r(1249)
	movq %rbx, (%r13)		# movq %r(1249), (%r(1248))
	movq $8, %rbx		# movq $8, %r(1250)
	movq %r14, %r13		# movq %r(1219), %r(1251)
	addq %rbx, %r13		# addq %r(1250), %r(1251)
	movq $1, %rbx		# movq $1, %r(1252)
	movq %rbx, (%r13)		# movq %r(1252), (%r(1251))
	movq $0, %rbx		# movq $0, %r(1253)
	movq %r15, %r13		# movq %r(1217), %r(1254)
	addq %rbx, %r13		# addq %r(1253), %r(1254)
	movq %r14, (%r13)		# movq %r(1219), (%r(1254))
	movq $24, %rbx		# movq $24, %r(1255)
	movq %rbx, %rdi		# movq %r(1255), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1234)
	movq $2, %rbx		# movq $2, %r(1256)
	movq %rbx, (%r13)		# movq %r(1256), (%r(1234))
	movq $8, %rbx		# movq $8, %r(1257)
	addq %rbx, %r13		# addq %r(1257), %r(1258)
	movq %r13, %r14		# movq %r(1258), %r(1221)
	movq $0, %rbx		# movq $0, %r(1259)
	movq %r14, %r13		# movq %r(1221), %r(1260)
	addq %rbx, %r13		# addq %r(1259), %r(1260)
	movq $1, %rbx		# movq $1, %r(1261)
	movq %rbx, (%r13)		# movq %r(1261), (%r(1260))
	movq $8, %rbx		# movq $8, %r(1262)
	movq %r14, %r13		# movq %r(1221), %r(1263)
	addq %rbx, %r13		# addq %r(1262), %r(1263)
	movq $0, %rbx		# movq $0, %r(1264)
	movq %rbx, (%r13)		# movq %r(1264), (%r(1263))
	movq $8, %rbx		# movq $8, %r(1265)
	movq %r15, %r13		# movq %r(1217), %r(1266)
	addq %rbx, %r13		# addq %r(1265), %r(1266)
	movq %r14, (%r13)		# movq %r(1221), (%r(1266))
	movq $24, %rbx		# movq $24, %r(1267)
	movq %rbx, %rdi		# movq %r(1267), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1235)
	movq $2, %rbx		# movq $2, %r(1268)
	movq %rbx, (%r13)		# movq %r(1268), (%r(1235))
	movq $8, %rbx		# movq $8, %r(1269)
	addq %rbx, %r13		# addq %r(1269), %r(1270)
	movq %r13, %r14		# movq %r(1270), %r(1223)
	movq $0, %rbx		# movq $0, %r(1271)
	movq %r14, %r13		# movq %r(1223), %r(1272)
	addq %rbx, %r13		# addq %r(1271), %r(1272)
	movq $0, %rbx		# movq $0, %r(1273)
	movq %rbx, (%r13)		# movq %r(1273), (%r(1272))
	movq $8, %rbx		# movq $8, %r(1274)
	movq %r14, %r13		# movq %r(1223), %r(1275)
	addq %rbx, %r13		# addq %r(1274), %r(1275)
	movq $1, %rbx		# movq $1, %r(1276)
	movq %rbx, (%r13)		# movq %r(1276), (%r(1275))
	movq $16, %rbx		# movq $16, %r(1277)
	movq %r15, %r13		# movq %r(1217), %r(1278)
	addq %rbx, %r13		# addq %r(1277), %r(1278)
	movq %r14, (%r13)		# movq %r(1223), (%r(1278))
	movq $24, %rbx		# movq $24, %r(1279)
	movq %rbx, %rdi		# movq %r(1279), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1236)
	movq $2, %rbx		# movq $2, %r(1280)
	movq %rbx, (%r13)		# movq %r(1280), (%r(1236))
	movq $8, %rbx		# movq $8, %r(1281)
	addq %rbx, %r13		# addq %r(1281), %r(1282)
	movq %r13, %r14		# movq %r(1282), %r(1225)
	movq $0, %rbx		# movq $0, %r(1283)
	movq %r14, %r13		# movq %r(1225), %r(1284)
	addq %rbx, %r13		# addq %r(1283), %r(1284)
	movq $0, %rbx		# movq $0, %r(1285)
	movq %rbx, (%r13)		# movq %r(1285), (%r(1284))
	movq $8, %rbx		# movq $8, %r(1286)
	movq %r14, %r13		# movq %r(1225), %r(1287)
	addq %rbx, %r13		# addq %r(1286), %r(1287)
	movq $0, %rbx		# movq $0, %r(1288)
	movq %rbx, (%r13)		# movq %r(1288), (%r(1287))
	movq $24, %rbx		# movq $24, %r(1289)
	movq %r15, %r13		# movq %r(1217), %r(1290)
	addq %rbx, %r13		# addq %r(1289), %r(1290)
	movq %r14, (%r13)		# movq %r(1225), (%r(1290))
	movq %r15, %rax		# movq %r(1217), %rax
	jmp .L207		# jmp .L207
	.L207:		# .L207:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq $1, %rbx		# movq $1, %r(1291)
	movq %rbx, %rax		# movq %r(1291), %rax
	jmp .L208		# jmp .L208
	.L208:		# .L208:
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
	movq $0, %rbx		# movq $0, %r(1292)
	movq %rbx, %rax		# movq %r(1292), %rax
	jmp .L209		# jmp .L209
	.L209:		# .L209:
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
	movq $1, %rbx		# movq $1, %r(1293)
	movq %rbx, %rax		# movq %r(1293), %rax
	jmp .L210		# jmp .L210
	.L210:		# .L210:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1309)
	movq %rbx, -32(%rbp)		# movq %r(1309), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1310)
	movq (%rbx), %r12		# movq (%r(1310)), %r(1294)
	movq %r12, -16(%rbp)		# movq %r(1311), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1312)
	salq $3, %rbx		# salq $3, %r(1295)
	movq $8, %r12		# movq $8, %r(1296)
	addq %r12, %rbx		# addq %r(1296), %r(1297)
	movq %rbx, %rdi		# movq %r(1297), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1313)
	movq %rbx, -40(%rbp)		# movq %r(1313), -40(%rbp)
	.L14:		# .L14:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1314)
	salq $3, %r13		# salq $3, %r(1298)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1315)
	movq %rbx, -24(%rbp)		# movq %r(1316), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1317)
	addq %r13, %r12		# addq %r(1298), %r(1317)
	movq %r12, -24(%rbp)		# movq %r(1317), -24(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1318)
	salq $3, %r13		# salq $3, %r(1300)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1319)
	movq %rbx, -8(%rbp)		# movq %r(1306), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1307)
	addq %r13, %r12		# addq %r(1300), %r(1307)
	movq %r12, -8(%rbp)		# movq %r(1307), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1308)
	movq (%rbx), %rbx		# movq (%r(1308)), %r(1302)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1320)
	movq %rbx, (%r12)		# movq %r(1302), (%r(1320))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1321)
	decq %rbx		# decq %r(1321)
	movq %rbx, -16(%rbp)		# movq %r(1321), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1303)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1322)
	cmpq %rbx, %r12		# cmpq %r(1303), %r(1322)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1304)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1323)
	addq %rbx, %r13		# addq %r(1304), %r(1305)
	movq %r13, %rax		# movq %r(1305), %rax
	.L16:		# .L16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L206:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

