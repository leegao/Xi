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
	leaq .L204(%rip), %rdi		# leaq .L204(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1301)
	movq %rbx, %rdi		# movq %r(1301), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(1302)
	movq %rbx, %rdi		# movq %r(1302), %rdi
	call _If_aabb		# call _If_aabb
	.L203:		# .L203:
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
	movq $40, %rbx		# movq $40, %r(1311)
	movq %rbx, %rdi		# movq %r(1311), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1304)
	movq $4, %r12		# movq $4, %r(1312)
	movq %r12, (%rbx)		# movq %r(1312), (%r(1290))
	movq $8, %r12		# movq $8, %r(1313)
	addq %r12, %rbx		# addq %r(1313), %r(1314)
	movq %rbx, %r15		# movq %r(1314), %r(1289)
	movq $24, %rbx		# movq $24, %r(1315)
	movq %rbx, %rdi		# movq %r(1315), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1305)
	movq $2, %r12		# movq $2, %r(1316)
	movq %r12, (%r13)		# movq %r(1316), (%r(1292))
	movq $8, %r12		# movq $8, %r(1317)
	addq %r12, %r13		# addq %r(1317), %r(1318)
	movq %r13, %r14		# movq %r(1318), %r(1291)
	movq $0, %rbx		# movq $0, %r(1319)
	movq %r14, %r12		# movq %r(1291), %r(1320)
	addq %rbx, %r12		# addq %r(1319), %r(1320)
	movq $1, %rbx		# movq $1, %r(1321)
	movq %rbx, (%r12)		# movq %r(1321), (%r(1320))
	movq $8, %rbx		# movq $8, %r(1322)
	movq %r14, %r12		# movq %r(1291), %r(1323)
	addq %rbx, %r12		# addq %r(1322), %r(1323)
	movq $1, %rbx		# movq $1, %r(1324)
	movq %rbx, (%r12)		# movq %r(1324), (%r(1323))
	movq $0, %rbx		# movq $0, %r(1325)
	movq %r15, %r12		# movq %r(1289), %r(1326)
	addq %rbx, %r12		# addq %r(1325), %r(1326)
	movq %r14, (%r12)		# movq %r(1291), (%r(1326))
	movq $24, %rbx		# movq $24, %r(1327)
	movq %rbx, %rdi		# movq %r(1327), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1306)
	movq $2, %r12		# movq $2, %r(1328)
	movq %r12, (%r13)		# movq %r(1328), (%r(1294))
	movq $8, %r12		# movq $8, %r(1329)
	addq %r12, %r13		# addq %r(1329), %r(1330)
	movq %r13, %r14		# movq %r(1330), %r(1293)
	movq $0, %rbx		# movq $0, %r(1331)
	movq %r14, %r12		# movq %r(1293), %r(1332)
	addq %rbx, %r12		# addq %r(1331), %r(1332)
	movq $1, %rbx		# movq $1, %r(1333)
	movq %rbx, (%r12)		# movq %r(1333), (%r(1332))
	movq $8, %rbx		# movq $8, %r(1334)
	movq %r14, %r12		# movq %r(1293), %r(1335)
	addq %rbx, %r12		# addq %r(1334), %r(1335)
	movq $0, %rbx		# movq $0, %r(1336)
	movq %rbx, (%r12)		# movq %r(1336), (%r(1335))
	movq $8, %rbx		# movq $8, %r(1337)
	movq %r15, %r12		# movq %r(1289), %r(1338)
	addq %rbx, %r12		# addq %r(1337), %r(1338)
	movq %r14, (%r12)		# movq %r(1293), (%r(1338))
	movq $24, %rbx		# movq $24, %r(1339)
	movq %rbx, %rdi		# movq %r(1339), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1307)
	movq $2, %r12		# movq $2, %r(1340)
	movq %r12, (%r13)		# movq %r(1340), (%r(1296))
	movq $8, %r12		# movq $8, %r(1341)
	addq %r12, %r13		# addq %r(1341), %r(1342)
	movq %r13, %r14		# movq %r(1342), %r(1295)
	movq $0, %rbx		# movq $0, %r(1343)
	movq %r14, %r12		# movq %r(1295), %r(1344)
	addq %rbx, %r12		# addq %r(1343), %r(1344)
	movq $0, %rbx		# movq $0, %r(1345)
	movq %rbx, (%r12)		# movq %r(1345), (%r(1344))
	movq $8, %rbx		# movq $8, %r(1346)
	movq %r14, %r12		# movq %r(1295), %r(1347)
	addq %rbx, %r12		# addq %r(1346), %r(1347)
	movq $1, %rbx		# movq $1, %r(1348)
	movq %rbx, (%r12)		# movq %r(1348), (%r(1347))
	movq $16, %rbx		# movq $16, %r(1349)
	movq %r15, %r12		# movq %r(1289), %r(1350)
	addq %rbx, %r12		# addq %r(1349), %r(1350)
	movq %r14, (%r12)		# movq %r(1295), (%r(1350))
	movq $24, %rbx		# movq $24, %r(1351)
	movq %rbx, %rdi		# movq %r(1351), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1308)
	movq $2, %r12		# movq $2, %r(1352)
	movq %r12, (%r13)		# movq %r(1352), (%r(1298))
	movq $8, %r12		# movq $8, %r(1353)
	addq %r12, %r13		# addq %r(1353), %r(1354)
	movq %r13, %r14		# movq %r(1354), %r(1297)
	movq $0, %rbx		# movq $0, %r(1355)
	movq %r14, %r12		# movq %r(1297), %r(1356)
	addq %rbx, %r12		# addq %r(1355), %r(1356)
	movq $0, %rbx		# movq $0, %r(1357)
	movq %rbx, (%r12)		# movq %r(1357), (%r(1356))
	movq $8, %rbx		# movq $8, %r(1358)
	movq %r14, %r12		# movq %r(1297), %r(1359)
	addq %rbx, %r12		# addq %r(1358), %r(1359)
	movq $0, %rbx		# movq $0, %r(1360)
	movq %rbx, (%r12)		# movq %r(1360), (%r(1359))
	movq $24, %rbx		# movq $24, %r(1361)
	movq %r15, %r12		# movq %r(1289), %r(1362)
	addq %rbx, %r12		# addq %r(1361), %r(1362)
	movq %r14, (%r12)		# movq %r(1297), (%r(1362))
	movq %r15, %rax		# movq %r(1289), %rax
	jmp .L205		# jmp .L205
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
	movq $1, %rbx		# movq $1, %r(1363)
	movq %rbx, %rax		# movq %r(1363), %rax
	jmp .L206		# jmp .L206
	.L206:		# .L206:
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
	movq $0, %rbx		# movq $0, %r(1364)
	movq %rbx, %rax		# movq %r(1364), %rax
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
	movq $1, %rbx		# movq $1, %r(1365)
	movq %rbx, %rax		# movq %r(1365), %rax
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
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %r12		# movq (%r(p0)), %r(1366)
	movq %r12, -16(%rbp)		# movq %r(1381), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1382)
	salq $3, %rbx		# salq $3, %r(1367)
	movq $8, %r12		# movq $8, %r(1368)
	addq %r12, %rbx		# addq %r(1368), %r(1369)
	movq %rbx, %rdi		# movq %r(1369), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1309)
	movq %r12, -32(%rbp)		# movq %r(1383), -32(%rbp)
	.L14:		# .L14:
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1384)
	salq $3, %r14		# salq $3, %r(1370)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1385)
	addq %r14, %r12		# addq %r(1370), %r(1371)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1386)
	movq %r14, -24(%rbp)		# movq %r(1387), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1388)
	salq $3, %rbx		# salq $3, %r(1388)
	movq %rbx, -24(%rbp)		# movq %r(1388), -24(%rbp)
	movq %r15, %r13		# movq %r(p0), %r(1378)
	movq %r13, -8(%rbp)		# movq %r(1378), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1379)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1389)
	addq %r14, %rbx		# addq %r(1389), %r(1379)
	movq %rbx, -8(%rbp)		# movq %r(1379), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1380)
	movq (%rbx), %rbx		# movq (%r(1380)), %r(1374)
	movq %rbx, (%r12)		# movq %r(1374), (%r(1371))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1390)
	decq %rbx		# decq %r(1390)
	movq %rbx, -16(%rbp)		# movq %r(1390), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1375)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1391)
	cmpq %rbx, %r12		# cmpq %r(1375), %r(1391)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1376)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1392)
	addq %rbx, %r13		# addq %r(1376), %r(1377)
	movq %r13, %rax		# movq %r(1377), %rax
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
.L204:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

