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
	leaq .L236(%rip), %rdi		# leaq .L236(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1388)
	movq %rbx, %rdi		# movq %r(1388), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(1389)
	movq %rbx, %rdi		# movq %r(1389), %rdi
	call _If_aabb		# call _If_aabb
	.L235:		# .L235:
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
	movq $40, %rbx		# movq $40, %r(1398)
	movq %rbx, %rdi		# movq %r(1398), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1391)
	movq $4, %r12		# movq $4, %r(1399)
	movq %r12, (%rbx)		# movq %r(1399), (%r(1377))
	movq $8, %r12		# movq $8, %r(1400)
	addq %r12, %rbx		# addq %r(1400), %r(1401)
	movq %rbx, %r15		# movq %r(1401), %r(1376)
	movq $24, %rbx		# movq $24, %r(1402)
	movq %rbx, %rdi		# movq %r(1402), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1392)
	movq $2, %r12		# movq $2, %r(1403)
	movq %r12, (%r13)		# movq %r(1403), (%r(1379))
	movq $8, %r12		# movq $8, %r(1404)
	addq %r12, %r13		# addq %r(1404), %r(1405)
	movq %r13, %r14		# movq %r(1405), %r(1378)
	movq $0, %rbx		# movq $0, %r(1406)
	movq %r14, %r12		# movq %r(1378), %r(1407)
	addq %rbx, %r12		# addq %r(1406), %r(1407)
	movq $1, %rbx		# movq $1, %r(1408)
	movq %rbx, (%r12)		# movq %r(1408), (%r(1407))
	movq $8, %rbx		# movq $8, %r(1409)
	movq %r14, %r12		# movq %r(1378), %r(1410)
	addq %rbx, %r12		# addq %r(1409), %r(1410)
	movq $1, %rbx		# movq $1, %r(1411)
	movq %rbx, (%r12)		# movq %r(1411), (%r(1410))
	movq $0, %rbx		# movq $0, %r(1412)
	movq %r15, %r12		# movq %r(1376), %r(1413)
	addq %rbx, %r12		# addq %r(1412), %r(1413)
	movq %r14, (%r12)		# movq %r(1378), (%r(1413))
	movq $24, %rbx		# movq $24, %r(1414)
	movq %rbx, %rdi		# movq %r(1414), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1393)
	movq $2, %r12		# movq $2, %r(1415)
	movq %r12, (%r13)		# movq %r(1415), (%r(1381))
	movq $8, %r12		# movq $8, %r(1416)
	addq %r12, %r13		# addq %r(1416), %r(1417)
	movq %r13, %r14		# movq %r(1417), %r(1380)
	movq $0, %rbx		# movq $0, %r(1418)
	movq %r14, %r12		# movq %r(1380), %r(1419)
	addq %rbx, %r12		# addq %r(1418), %r(1419)
	movq $1, %rbx		# movq $1, %r(1420)
	movq %rbx, (%r12)		# movq %r(1420), (%r(1419))
	movq $8, %rbx		# movq $8, %r(1421)
	movq %r14, %r12		# movq %r(1380), %r(1422)
	addq %rbx, %r12		# addq %r(1421), %r(1422)
	movq $0, %rbx		# movq $0, %r(1423)
	movq %rbx, (%r12)		# movq %r(1423), (%r(1422))
	movq $8, %rbx		# movq $8, %r(1424)
	movq %r15, %r12		# movq %r(1376), %r(1425)
	addq %rbx, %r12		# addq %r(1424), %r(1425)
	movq %r14, (%r12)		# movq %r(1380), (%r(1425))
	movq $24, %rbx		# movq $24, %r(1426)
	movq %rbx, %rdi		# movq %r(1426), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1394)
	movq $2, %r12		# movq $2, %r(1427)
	movq %r12, (%r13)		# movq %r(1427), (%r(1383))
	movq $8, %r12		# movq $8, %r(1428)
	addq %r12, %r13		# addq %r(1428), %r(1429)
	movq %r13, %r14		# movq %r(1429), %r(1382)
	movq $0, %rbx		# movq $0, %r(1430)
	movq %r14, %r12		# movq %r(1382), %r(1431)
	addq %rbx, %r12		# addq %r(1430), %r(1431)
	movq $0, %rbx		# movq $0, %r(1432)
	movq %rbx, (%r12)		# movq %r(1432), (%r(1431))
	movq $8, %rbx		# movq $8, %r(1433)
	movq %r14, %r12		# movq %r(1382), %r(1434)
	addq %rbx, %r12		# addq %r(1433), %r(1434)
	movq $1, %rbx		# movq $1, %r(1435)
	movq %rbx, (%r12)		# movq %r(1435), (%r(1434))
	movq $16, %rbx		# movq $16, %r(1436)
	movq %r15, %r12		# movq %r(1376), %r(1437)
	addq %rbx, %r12		# addq %r(1436), %r(1437)
	movq %r14, (%r12)		# movq %r(1382), (%r(1437))
	movq $24, %rbx		# movq $24, %r(1438)
	movq %rbx, %rdi		# movq %r(1438), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1395)
	movq $2, %r12		# movq $2, %r(1439)
	movq %r12, (%r13)		# movq %r(1439), (%r(1385))
	movq $8, %r12		# movq $8, %r(1440)
	addq %r12, %r13		# addq %r(1440), %r(1441)
	movq %r13, %r14		# movq %r(1441), %r(1384)
	movq $0, %rbx		# movq $0, %r(1442)
	movq %r14, %r12		# movq %r(1384), %r(1443)
	addq %rbx, %r12		# addq %r(1442), %r(1443)
	movq $0, %rbx		# movq $0, %r(1444)
	movq %rbx, (%r12)		# movq %r(1444), (%r(1443))
	movq $8, %rbx		# movq $8, %r(1445)
	movq %r14, %r12		# movq %r(1384), %r(1446)
	addq %rbx, %r12		# addq %r(1445), %r(1446)
	movq $0, %rbx		# movq $0, %r(1447)
	movq %rbx, (%r12)		# movq %r(1447), (%r(1446))
	movq $24, %rbx		# movq $24, %r(1448)
	movq %r15, %r12		# movq %r(1376), %r(1449)
	addq %rbx, %r12		# addq %r(1448), %r(1449)
	movq %r14, (%r12)		# movq %r(1384), (%r(1449))
	movq %r15, %rax		# movq %r(1376), %rax
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
	movq $1, %rbx		# movq $1, %r(1450)
	movq %rbx, %rax		# movq %r(1450), %rax
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
	movq $0, %rbx		# movq $0, %r(1451)
	movq %rbx, %rax		# movq %r(1451), %rax
	jmp .L239		# jmp .L239
	.L239:		# .L239:
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
	movq $1, %rbx		# movq $1, %r(1452)
	movq %rbx, %rax		# movq %r(1452), %rax
	jmp .L240		# jmp .L240
	.L240:		# .L240:
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
	movq %rdi, %rbx		# movq %rdi, %r(1465)
	movq %rbx, -8(%rbp)		# movq %r(1465), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1466)
	movq (%rbx), %r12		# movq (%r(1466)), %r(1453)
	movq %r12, -16(%rbp)		# movq %r(1467), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1468)
	salq $3, %rbx		# salq $3, %r(1454)
	movq $8, %r12		# movq $8, %r(1455)
	addq %r12, %rbx		# addq %r(1455), %r(1456)
	movq %rbx, %rdi		# movq %r(1456), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1396)
	movq %rbx, %r14		# movq %r(1396), %r(t27)
	.L24:		# .L24:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1469)
	salq $3, %r12		# salq $3, %r(1457)
	movq %r14, %r13		# movq %r(t27), %r(1458)
	addq %r12, %r13		# addq %r(1457), %r(1458)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1470)
	movq %rbx, %r12		# movq %r(1470), %r(1459)
	salq $3, %r12		# salq $3, %r(1459)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1471)
	movq %rbx, -24(%rbp)		# movq %r(1472), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1473)
	addq %r12, %rbx		# addq %r(1459), %r(1473)
	movq %rbx, -24(%rbp)		# movq %r(1473), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1474)
	movq (%rbx), %rbx		# movq (%r(1474)), %r(1461)
	movq %rbx, (%r13)		# movq %r(1461), (%r(1458))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1475)
	decq %rbx		# decq %r(1475)
	movq %rbx, -16(%rbp)		# movq %r(1475), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1462)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1476)
	cmpq %rbx, %r12		# cmpq %r(1462), %r(1476)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(1463)
	movq %r14, %r12		# movq %r(t27), %r(1464)
	addq %rbx, %r12		# addq %r(1463), %r(1464)
	movq %r12, %rax		# movq %r(1464), %rax
	.L26:		# .L26:
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
.L236:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

