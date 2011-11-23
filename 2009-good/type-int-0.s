.att_syntax prefix
.text
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
	leaq .L423(%rip), %rdi		# leaq .L423(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1419)
	movq %r13, %rdi		# movq %r(1419), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L422:		# .L422:
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
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $30, %r12		# movq $30, %r(1439)
	movq %r12, -24(%rbp)		# movq %r(1476), -24(%rbp)
	movq $42, %r12		# movq $42, %r(1440)
	movq %r12, -8(%rbp)		# movq %r(1477), -8(%rbp)
	leaq .L425(%rip), %rdi		# leaq .L425(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1423)
	movq $1, %rbx		# movq $1, %r(1442)
	movq %rbx, %r14		# movq %r(1442), %r(1412)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1478)
	movq %rbx, %r12		# movq %r(1478), %r(1443)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1479)
	addq %rbx, %r12		# addq %r(1479), %r(1443)
	movq $72, %rbx		# movq $72, %r(1480)
	movq %rbx, -16(%rbp)		# movq %r(1480), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1481)
	cmpq %rbx, %r12		# cmpq %r(1481), %r(1443)
	je .L426		# je .L426
	.L427:		# .L427:
	movq $0, %rbx		# movq $0, %r(1445)
	movq %rbx, %r14		# movq %r(1445), %r(1412)
	.L426:		# .L426:
	movq %r13, %rdi		# movq %r(1423), %rdi
	movq %r14, %rsi		# movq %r(1412), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L428(%rip), %rdi		# leaq .L428(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1425)
	movq $1, %rbx		# movq $1, %r(1447)
	movq %rbx, %r14		# movq %r(1447), %r(1413)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1482)
	movq %rbx, %r13		# movq %r(1482), %r(1448)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1483)
	subq %rbx, %r13		# subq %r(1483), %r(1448)
	movq $-12, %rbx		# movq $-12, %r(1484)
	movq %rbx, -40(%rbp)		# movq %r(1484), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1485)
	cmpq %rbx, %r13		# cmpq %r(1485), %r(1448)
	je .L429		# je .L429
	.L430:		# .L430:
	movq $0, %rbx		# movq $0, %r(1450)
	movq %rbx, %r14		# movq %r(1450), %r(1413)
	.L429:		# .L429:
	movq %r15, %rdi		# movq %r(1425), %rdi
	movq %r14, %rsi		# movq %r(1413), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L431(%rip), %rdi		# leaq .L431(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1427)
	movq $1, %rbx		# movq $1, %r(1452)
	movq %rbx, %r13		# movq %r(1452), %r(1414)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1486)
	movq %rbx, %r14		# movq %r(1486), %r(1453)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1487)
	imulq %rbx, %r14		# imulq %r(1487), %r(1453)
	movq $1260, %rbx		# movq $1260, %r(1488)
	movq %rbx, -32(%rbp)		# movq %r(1488), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1489)
	cmpq %rbx, %r14		# cmpq %r(1489), %r(1453)
	je .L432		# je .L432
	.L433:		# .L433:
	movq $0, %rbx		# movq $0, %r(1455)
	movq %rbx, %r13		# movq %r(1455), %r(1414)
	.L432:		# .L432:
	movq %r15, %rdi		# movq %r(1427), %rdi
	movq %r13, %rsi		# movq %r(1414), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L434(%rip), %rdi		# leaq .L434(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1429)
	movq $1, %rbx		# movq $1, %r(1457)
	movq %rbx, %r13		# movq %r(1457), %r(1415)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1490)
	movq %rbx, %rax		# movq %r(1490), %rax
	cltq		# cltq
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1491)
	idivq %rbx		# idivq %r(1491)
	movq %rax, %r14		# movq %rax, %r(1458)
	movq $0, %rbx		# movq $0, %r(1492)
	movq %rbx, -64(%rbp)		# movq %r(1492), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1493)
	cmpq %rbx, %r14		# cmpq %r(1493), %r(1458)
	je .L435		# je .L435
	.L436:		# .L436:
	movq $0, %rbx		# movq $0, %r(1460)
	movq %rbx, %r13		# movq %r(1460), %r(1415)
	.L435:		# .L435:
	movq %r15, %rdi		# movq %r(1429), %rdi
	movq %r13, %rsi		# movq %r(1415), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L437(%rip), %rdi		# leaq .L437(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1431)
	movq $1, %rbx		# movq $1, %r(1462)
	movq %rbx, %r14		# movq %r(1462), %r(1416)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1494)
	movq %rbx, %rax		# movq %r(1494), %rax
	cltq		# cltq
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1495)
	idivq %rbx		# idivq %r(1495)
	movq %rax, %r13		# movq %rax, %r(1463)
	movq $1, %rbx		# movq $1, %r(1496)
	movq %rbx, -48(%rbp)		# movq %r(1496), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1497)
	cmpq %rbx, %r13		# cmpq %r(1497), %r(1463)
	je .L438		# je .L438
	.L439:		# .L439:
	movq $0, %rbx		# movq $0, %r(1465)
	movq %rbx, %r14		# movq %r(1465), %r(1416)
	.L438:		# .L438:
	movq %r15, %rdi		# movq %r(1431), %rdi
	movq %r14, %rsi		# movq %r(1416), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L440(%rip), %rdi		# leaq .L440(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1433)
	movq $1, %rbx		# movq $1, %r(1467)
	movq %rbx, %r13		# movq %r(1467), %r(1417)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1498)
	movq %rbx, %rax		# movq %r(1498), %rax
	cltq		# cltq
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1499)
	idivq %rbx		# idivq %r(1499)
	movq %rdx, %r12		# movq %rdx, %r(1468)
	movq $30, %rbx		# movq $30, %r(1500)
	movq %rbx, -56(%rbp)		# movq %r(1500), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1501)
	cmpq %rbx, %r12		# cmpq %r(1501), %r(1468)
	je .L441		# je .L441
	.L442:		# .L442:
	movq $0, %rbx		# movq $0, %r(1470)
	movq %rbx, %r13		# movq %r(1470), %r(1417)
	.L441:		# .L441:
	movq %r14, %rdi		# movq %r(1433), %rdi
	movq %r13, %rsi		# movq %r(1417), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L443(%rip), %rdi		# leaq .L443(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1435)
	movq $1, %r12		# movq $1, %r(1472)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1502)
	movq %rbx, %rax		# movq %r(1502), %rax
	cltq		# cltq
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1503)
	idivq %rbx		# idivq %r(1503)
	movq %rdx, %rbx		# movq %rdx, %r(1473)
	movq $12, %r14		# movq $12, %r(1474)
	cmpq %r14, %rbx		# cmpq %r(1474), %r(1473)
	je .L444		# je .L444
	.L445:		# .L445:
	movq $0, %r12		# movq $0, %r(1475)
	.L444:		# .L444:
	movq %r13, %rdi		# movq %r(1435), %rdi
	movq %r12, %rsi		# movq %r(1418), %rsi
	call _Itest_paib		# call _Itest_paib
	.L424:		# .L424:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1516)
	movq %rbx, -16(%rbp)		# movq %r(1516), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1517)
	movq (%rbx), %rbx		# movq (%r(1517)), %r(1504)
	movq %rbx, %r14		# movq %r(1504), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1505)
	salq $3, %rbx		# salq $3, %r(1505)
	movq $8, %r12		# movq $8, %r(1506)
	addq %r12, %rbx		# addq %r(1506), %r(1507)
	movq %rbx, %rdi		# movq %r(1507), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1437)
	movq %rbx, %r12		# movq %r(1437), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(1508)
	salq $3, %rbx		# salq $3, %r(1508)
	movq %r12, %r13		# movq %r(t27), %r(1509)
	addq %rbx, %r13		# addq %r(1508), %r(1509)
	movq %r14, %r15		# movq %r(t10), %r(1510)
	salq $3, %r15		# salq $3, %r(1510)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1518)
	movq %rbx, -8(%rbp)		# movq %r(1519), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1520)
	addq %r15, %rbx		# addq %r(1510), %r(1520)
	movq %rbx, -8(%rbp)		# movq %r(1520), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1521)
	movq (%rbx), %rbx		# movq (%r(1521)), %r(1512)
	movq %rbx, (%r13)		# movq %r(1512), (%r(1509))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1513)
	cmpq %rbx, %r14		# cmpq %r(1513), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1514)
	addq %rbx, %r12		# addq %r(1514), %r(1515)
	movq %r12, %rax		# movq %r(1515), %rax
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
.L443:
	.quad 2
	.quad 37
	.quad 50
	.text

#.section .rodata
.align 8
.L425:
	.quad 1
	.quad 43
	.text

#.section .rodata
.align 8
.L434:
	.quad 1
	.quad 47
	.text

#.section .rodata
.align 8
.L428:
	.quad 1
	.quad 45
	.text

#.section .rodata
.align 8
.L431:
	.quad 1
	.quad 42
	.text

#.section .rodata
.align 8
.L423:
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
.L437:
	.quad 2
	.quad 47
	.quad 50
	.text

#.section .rodata
.align 8
.L440:
	.quad 1
	.quad 37
	.text

