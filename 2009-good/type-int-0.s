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
	movq %rax, %r13		# movq %rax, %r(1479)
	movq %r13, %rdi		# movq %r(1479), %rdi
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
	movq $30, %r12		# movq $30, %r(1499)
	movq %r12, %r12		# movq %r(1499), %r(1536)
	movq %r12, -40(%rbp)		# movq %r(1536), -40(%rbp)
	movq $42, %r12		# movq $42, %r(1500)
	movq %r12, %r12		# movq %r(1500), %r(1537)
	movq %r12, -24(%rbp)		# movq %r(1537), -24(%rbp)
	leaq .L425(%rip), %rdi		# leaq .L425(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1483)
	movq $1, %rbx		# movq $1, %r(1502)
	movq %rbx, %r14		# movq %r(1502), %r(1472)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1538)
	movq %rbx, %r12		# movq %r(1538), %r(1503)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1539)
	addq %rbx, %r12		# addq %r(1539), %r(1503)
	movq $72, %rbx		# movq $72, %r(1540)
	movq %rbx, -16(%rbp)		# movq %r(1540), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1541)
	cmpq %rbx, %r12		# cmpq %r(1541), %r(1503)
	je .L426		# je .L426
	.L427:		# .L427:
	movq $0, %rbx		# movq $0, %r(1505)
	movq %rbx, %r14		# movq %r(1505), %r(1472)
	.L426:		# .L426:
	movq %r13, %rdi		# movq %r(1483), %rdi
	movq %r14, %rsi		# movq %r(1472), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L428(%rip), %rdi		# leaq .L428(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1485)
	movq $1, %rbx		# movq $1, %r(1507)
	movq %rbx, %r13		# movq %r(1507), %r(1473)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1542)
	movq %rbx, %r12		# movq %r(1542), %r(1508)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1543)
	subq %rbx, %r12		# subq %r(1543), %r(1508)
	movq $-12, %rbx		# movq $-12, %r(1544)
	movq %rbx, -56(%rbp)		# movq %r(1544), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1545)
	cmpq %rbx, %r12		# cmpq %r(1545), %r(1508)
	je .L429		# je .L429
	.L430:		# .L430:
	movq $0, %rbx		# movq $0, %r(1510)
	movq %rbx, %r13		# movq %r(1510), %r(1473)
	.L429:		# .L429:
	movq %r14, %rdi		# movq %r(1485), %rdi
	movq %r13, %rsi		# movq %r(1473), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L431(%rip), %rdi		# leaq .L431(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1487)
	movq $1, %rbx		# movq $1, %r(1512)
	movq %rbx, %r13		# movq %r(1512), %r(1474)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1546)
	movq %rbx, %r12		# movq %r(1546), %r(1513)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1547)
	imulq %rbx, %r12		# imulq %r(1547), %r(1513)
	movq $1260, %rbx		# movq $1260, %r(1548)
	movq %rbx, -48(%rbp)		# movq %r(1548), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1549)
	cmpq %rbx, %r12		# cmpq %r(1549), %r(1513)
	je .L432		# je .L432
	.L433:		# .L433:
	movq $0, %rbx		# movq $0, %r(1515)
	movq %rbx, %r13		# movq %r(1515), %r(1474)
	.L432:		# .L432:
	movq %r14, %rdi		# movq %r(1487), %rdi
	movq %r13, %rsi		# movq %r(1474), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L434(%rip), %rdi		# leaq .L434(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1489)
	movq $1, %rbx		# movq $1, %r(1517)
	movq %rbx, %r13		# movq %r(1517), %r(1475)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1550)
	movq %rbx, %rax		# movq %r(1550), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1551)
	idivq %rbx		# idivq %r(1551)
	movq %rax, %r14		# movq %rax, %r(1518)
	movq $0, %rbx		# movq $0, %r(1552)
	movq %rbx, -64(%rbp)		# movq %r(1552), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1553)
	cmpq %rbx, %r14		# cmpq %r(1553), %r(1518)
	je .L435		# je .L435
	.L436:		# .L436:
	movq $0, %rbx		# movq $0, %r(1520)
	movq %rbx, %r13		# movq %r(1520), %r(1475)
	.L435:		# .L435:
	movq %r15, %rdi		# movq %r(1489), %rdi
	movq %r13, %rsi		# movq %r(1475), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L437(%rip), %rdi		# leaq .L437(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1491)
	movq $1, %rbx		# movq $1, %r(1522)
	movq %rbx, %r12		# movq %r(1522), %r(1476)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1554)
	movq %rbx, %rax		# movq %r(1554), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1555)
	idivq %rbx		# idivq %r(1555)
	movq %rax, %r14		# movq %rax, %r(1523)
	movq $1, %rbx		# movq $1, %r(1556)
	movq %rbx, -8(%rbp)		# movq %r(1556), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1557)
	cmpq %rbx, %r14		# cmpq %r(1557), %r(1523)
	je .L438		# je .L438
	.L439:		# .L439:
	movq $0, %rbx		# movq $0, %r(1525)
	movq %rbx, %r12		# movq %r(1525), %r(1476)
	.L438:		# .L438:
	movq %r13, %rdi		# movq %r(1491), %rdi
	movq %r12, %rsi		# movq %r(1476), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L440(%rip), %rdi		# leaq .L440(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1493)
	movq $1, %rbx		# movq $1, %r(1527)
	movq %rbx, %r12		# movq %r(1527), %r(1477)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1558)
	movq %rbx, %rax		# movq %r(1558), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1559)
	idivq %rbx		# idivq %r(1559)
	movq %rdx, %r14		# movq %rdx, %r(1528)
	movq $30, %rbx		# movq $30, %r(1560)
	movq %rbx, -32(%rbp)		# movq %r(1560), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1561)
	cmpq %rbx, %r14		# cmpq %r(1561), %r(1528)
	je .L441		# je .L441
	.L442:		# .L442:
	movq $0, %rbx		# movq $0, %r(1530)
	movq %rbx, %r12		# movq %r(1530), %r(1477)
	.L441:		# .L441:
	movq %r13, %rdi		# movq %r(1493), %rdi
	movq %r12, %rsi		# movq %r(1477), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L443(%rip), %rdi		# leaq .L443(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1495)
	movq $1, %r12		# movq $1, %r(1532)
	movq %r12, %r12		# movq %r(1532), %r(1478)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1562)
	movq %rbx, %rax		# movq %r(1562), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1563)
	idivq %rbx		# idivq %r(1563)
	movq %rdx, %rbx		# movq %rdx, %r(1533)
	movq $12, %r14		# movq $12, %r(1534)
	cmpq %r14, %rbx		# cmpq %r(1534), %r(1533)
	je .L444		# je .L444
	.L445:		# .L445:
	movq $0, %r12		# movq $0, %r(1535)
	movq %r12, %r12		# movq %r(1535), %r(1478)
	.L444:		# .L444:
	movq %r13, %rdi		# movq %r(1495), %rdi
	movq %r12, %rsi		# movq %r(1478), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1576)
	movq %rbx, -16(%rbp)		# movq %r(1576), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1577)
	movq (%rbx), %r12		# movq (%r(1577)), %r(1564)
	movq %r12, %r12		# movq %r(1564), %r(1578)
	movq %r12, -8(%rbp)		# movq %r(1578), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1579)
	movq %rbx, %rbx		# movq %r(1579), %r(1565)
	salq $3, %rbx		# salq $3, %r(1565)
	movq $8, %r12		# movq $8, %r(1566)
	movq %rbx, %rbx		# movq %r(1565), %r(1567)
	addq %r12, %rbx		# addq %r(1566), %r(1567)
	movq %rbx, %rdi		# movq %r(1567), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1497)
	movq %rbx, %r14		# movq %r(1497), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1580)
	movq %r12, %r12		# movq %r(1580), %r(1568)
	salq $3, %r12		# salq $3, %r(1568)
	movq %r14, %r13		# movq %r(t27), %r(1569)
	addq %r12, %r13		# addq %r(1568), %r(1569)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1581)
	movq %rbx, %r12		# movq %r(1581), %r(1570)
	salq $3, %r12		# salq $3, %r(1570)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1582)
	movq %rbx, %rbx		# movq %r(1582), %r(1583)
	movq %rbx, -24(%rbp)		# movq %r(1583), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1584)
	addq %r12, %rbx		# addq %r(1570), %r(1584)
	movq %rbx, -24(%rbp)		# movq %r(1584), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1585)
	movq (%rbx), %rbx		# movq (%r(1585)), %r(1572)
	movq %rbx, (%r13)		# movq %r(1572), (%r(1569))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1586)
	decq %rbx		# decq %r(1586)
	movq %rbx, -8(%rbp)		# movq %r(1586), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1573)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1587)
	cmpq %rbx, %r12		# cmpq %r(1573), %r(1587)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1574)
	movq %r14, %r12		# movq %r(t27), %r(1575)
	addq %rbx, %r12		# addq %r(1574), %r(1575)
	movq %r12, %rax		# movq %r(1575), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L443:
	.quad 2
	.quad 37
	.quad 50
	.text

.section .rodata
.align 8
.L434:
	.quad 1
	.quad 47
	.text

.section .rodata
.align 8
.L440:
	.quad 1
	.quad 37
	.text

.section .rodata
.align 8
.L425:
	.quad 1
	.quad 43
	.text

.section .rodata
.align 8
.L428:
	.quad 1
	.quad 45
	.text

.section .rodata
.align 8
.L431:
	.quad 1
	.quad 42
	.text

.section .rodata
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

.section .rodata
.align 8
.L437:
	.quad 2
	.quad 47
	.quad 50
	.text

