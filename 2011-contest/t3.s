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
	movq $45, %rbx		# movq $45, %r(1404)
	movq %rbx, %r13		# movq %r(1404), %r(x)
	.L216:		# .L216:
	movq $1, %r14		# movq $1, %r(1405)
	movq $0, %rbx		# movq $0, %r(1406)
	cmpq %rbx, %r13		# cmpq %r(1406), %r(x)
	jg .L219		# jg .L219
	.L220:		# .L220:
	movq $0, %r14		# movq $0, %r(1407)
	.L219:		# .L219:
	movq $0, %rbx		# movq $0, %r(1408)
	cmpq %rbx, %r14		# cmpq %r(1408), %r(1395)
	je .L218		# je .L218
	.L217:		# .L217:
	movq $16, %rbx		# movq $16, %r(1409)
	movq %rbx, %rdi		# movq %r(1409), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1398)
	movq $1, %r12		# movq $1, %r(1410)
	movq %r12, (%rbx)		# movq %r(1410), (%r(1397))
	movq $8, %r12		# movq $8, %r(1411)
	addq %r12, %rbx		# addq %r(1411), %r(1412)
	movq $0, %r12		# movq $0, %r(1413)
	movq %rbx, %r15		# movq %r(1396), %r(1414)
	addq %r12, %r15		# addq %r(1413), %r(1414)
	movq $55, %r12		# movq $55, %r(1415)
	movq %r12, (%r15)		# movq %r(1415), (%r(1414))
	leaq .L221(%rip), %rdi		# leaq .L221(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1399)
	movq %rbx, %rdi		# movq %r(1396), %rdi
	movq %r12, %rsi		# movq %r(1399), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(1400)
	movq %rbx, %rdi		# movq %r(1400), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(x)
	jmp .L216		# jmp .L216
	.L218:		# .L218:
	.L215:		# .L215:
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
	movq %rdi, %rbx		# movq %rdi, %r(1432)
	movq %rbx, -16(%rbp)		# movq %r(1432), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1433)
	movq (%rbx), %r12		# movq (%r(1433)), %r(1417)
	movq %r12, -32(%rbp)		# movq %r(1434), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1435)
	salq $3, %rbx		# salq $3, %r(1418)
	movq $8, %r12		# movq $8, %r(1419)
	addq %r12, %rbx		# addq %r(1419), %r(1420)
	movq %rbx, %rdi		# movq %r(1420), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1402)
	movq %r12, -40(%rbp)		# movq %r(1436), -40(%rbp)
	.L14:		# .L14:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1437)
	salq $3, %r13		# salq $3, %r(1421)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1438)
	movq %rbx, -24(%rbp)		# movq %r(1439), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1440)
	addq %r13, %r12		# addq %r(1421), %r(1440)
	movq %r12, -24(%rbp)		# movq %r(1440), -24(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1441)
	salq $3, %r13		# salq $3, %r(1423)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1442)
	movq %rbx, -8(%rbp)		# movq %r(1429), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1430)
	addq %r13, %r12		# addq %r(1423), %r(1430)
	movq %r12, -8(%rbp)		# movq %r(1430), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1431)
	movq (%rbx), %rbx		# movq (%r(1431)), %r(1425)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1443)
	movq %rbx, (%r12)		# movq %r(1425), (%r(1443))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1444)
	decq %rbx		# decq %r(1444)
	movq %rbx, -32(%rbp)		# movq %r(1444), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(1426)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1445)
	cmpq %rbx, %r12		# cmpq %r(1426), %r(1445)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1427)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1446)
	addq %rbx, %r13		# addq %r(1427), %r(1428)
	movq %r13, %rax		# movq %r(1428), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1470)
	movq %rbx, -40(%rbp)		# movq %r(1470), -40(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1471)
	movq %rbx, -8(%rbp)		# movq %r(1471), -8(%rbp)
	movq $0, %r12		# movq $0, %r(1447)
	movq %r12, -64(%rbp)		# movq %r(1472), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(1448)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1473)
	subq %rbx, %r13		# subq %r(1448), %r(1449)
	movq (%r13), %r12		# movq (%r(1449)), %r(1450)
	movq %r12, -32(%rbp)		# movq %r(1474), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(1451)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1475)
	subq %rbx, %r13		# subq %r(1451), %r(1452)
	movq (%r13), %rbx		# movq (%r(1452)), %r(1453)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1476)
	addq %rbx, %r12		# addq %r(1453), %r(1454)
	movq %r12, -16(%rbp)		# movq %r(1477), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(1455)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1478)
	addq %rbx, %r13		# addq %r(1455), %r(1456)
	movq %r13, %rdi		# movq %r(1456), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1403)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1479)
	movq %r12, (%r13)		# movq %r(1479), (%r(25))
	movq $8, %r12		# movq $8, %r(1457)
	addq %r12, %r13		# addq %r(1457), %r(1458)
	movq %r13, -56(%rbp)		# movq %r(1480), -56(%rbp)
	.L16:		# .L16:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1481)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1482)
	cmpq %rbx, %r12		# cmpq %r(1481), %r(1482)
	jge .L18		# jge .L18
	.L17:		# .L17:
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1483)
	salq $3, %r13		# salq $3, %r(1459)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1484)
	movq %rbx, -48(%rbp)		# movq %r(1485), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1486)
	addq %r13, %r12		# addq %r(1459), %r(1486)
	movq %r12, -48(%rbp)		# movq %r(1486), -48(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1487)
	salq $3, %r13		# salq $3, %r(1461)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1488)
	movq %rbx, -24(%rbp)		# movq %r(1489), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1490)
	addq %r13, %r12		# addq %r(1461), %r(1490)
	movq %r12, -24(%rbp)		# movq %r(1490), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1491)
	movq (%rbx), %rbx		# movq (%r(1491)), %r(1463)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1492)
	movq %rbx, (%r12)		# movq %r(1463), (%r(1492))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1493)
	incq %rbx		# incq %r(1493)
	movq %rbx, -64(%rbp)		# movq %r(1493), -64(%rbp)
	jmp .L16		# jmp .L16
	.L18:		# .L18:
	.L19:		# .L19:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1494)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1495)
	cmpq %rbx, %r12		# cmpq %r(1494), %r(1495)
	jge .L21		# jge .L21
	.L20:		# .L20:
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1496)
	salq $3, %r13		# salq $3, %r(1464)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(1497)
	addq %r13, %r14		# addq %r(1464), %r(1465)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1498)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1499)
	subq %r13, %rbx		# subq %r(1499), %r(1466)
	salq $3, %rbx		# salq $3, %r(1467)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1500)
	addq %rbx, %r12		# addq %r(1467), %r(1468)
	movq (%r12), %rbx		# movq (%r(1468)), %r(1469)
	movq %rbx, (%r14)		# movq %r(1469), (%r(1465))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1501)
	incq %rbx		# incq %r(1501)
	movq %rbx, -64(%rbp)		# movq %r(1501), -64(%rbp)
	jmp .L19		# jmp .L19
	.L21:		# .L21:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1502)
	movq %rbx, %rax		# movq %r(1502), %rax
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
.L221:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

