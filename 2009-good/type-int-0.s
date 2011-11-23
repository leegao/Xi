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
	movq %rax, %r13		# movq %rax, %r(1511)
	movq %r13, %rdi		# movq %r(1511), %rdi
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
	movq $30, %r12		# movq $30, %r(1531)
	movq %r12, %r12		# movq %r(1531), %r(1568)
	movq %r12, -32(%rbp)		# movq %r(1568), -32(%rbp)
	movq $42, %r12		# movq $42, %r(1532)
	movq %r12, %r12		# movq %r(1532), %r(1569)
	movq %r12, -24(%rbp)		# movq %r(1569), -24(%rbp)
	leaq .L425(%rip), %rdi		# leaq .L425(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1515)
	movq $1, %rbx		# movq $1, %r(1534)
	movq %rbx, %r12		# movq %r(1534), %r(1504)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1570)
	movq %rbx, %r14		# movq %r(1570), %r(1535)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1571)
	addq %rbx, %r14		# addq %r(1571), %r(1535)
	movq $72, %rbx		# movq $72, %r(1572)
	movq %rbx, -56(%rbp)		# movq %r(1572), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1573)
	cmpq %rbx, %r14		# cmpq %r(1573), %r(1535)
	je .L426		# je .L426
	.L427:		# .L427:
	movq $0, %rbx		# movq $0, %r(1537)
	movq %rbx, %r12		# movq %r(1537), %r(1504)
	.L426:		# .L426:
	movq %r13, %rdi		# movq %r(1515), %rdi
	movq %r12, %rsi		# movq %r(1504), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L428(%rip), %rdi		# leaq .L428(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1517)
	movq $1, %rbx		# movq $1, %r(1539)
	movq %rbx, %r12		# movq %r(1539), %r(1505)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1574)
	movq %rbx, %r14		# movq %r(1574), %r(1540)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1575)
	subq %rbx, %r14		# subq %r(1575), %r(1540)
	movq $-12, %rbx		# movq $-12, %r(1576)
	movq %rbx, -48(%rbp)		# movq %r(1576), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1577)
	cmpq %rbx, %r14		# cmpq %r(1577), %r(1540)
	je .L429		# je .L429
	.L430:		# .L430:
	movq $0, %rbx		# movq $0, %r(1542)
	movq %rbx, %r12		# movq %r(1542), %r(1505)
	.L429:		# .L429:
	movq %r13, %rdi		# movq %r(1517), %rdi
	movq %r12, %rsi		# movq %r(1505), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L431(%rip), %rdi		# leaq .L431(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1519)
	movq $1, %rbx		# movq $1, %r(1544)
	movq %rbx, %r12		# movq %r(1544), %r(1506)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1578)
	movq %rbx, %r13		# movq %r(1578), %r(1545)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1579)
	imulq %rbx, %r13		# imulq %r(1579), %r(1545)
	movq $1260, %rbx		# movq $1260, %r(1580)
	movq %rbx, -16(%rbp)		# movq %r(1580), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1581)
	cmpq %rbx, %r13		# cmpq %r(1581), %r(1545)
	je .L432		# je .L432
	.L433:		# .L433:
	movq $0, %rbx		# movq $0, %r(1547)
	movq %rbx, %r12		# movq %r(1547), %r(1506)
	.L432:		# .L432:
	movq %r14, %rdi		# movq %r(1519), %rdi
	movq %r12, %rsi		# movq %r(1506), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L434(%rip), %rdi		# leaq .L434(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1521)
	movq $1, %rbx		# movq $1, %r(1549)
	movq %rbx, %r13		# movq %r(1549), %r(1507)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1582)
	movq %rbx, %rax		# movq %r(1582), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1583)
	idivq %rbx		# idivq %r(1583)
	movq %rax, %r14		# movq %rax, %r(1550)
	movq $0, %rbx		# movq $0, %r(1584)
	movq %rbx, -40(%rbp)		# movq %r(1584), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1585)
	cmpq %rbx, %r14		# cmpq %r(1585), %r(1550)
	je .L435		# je .L435
	.L436:		# .L436:
	movq $0, %rbx		# movq $0, %r(1552)
	movq %rbx, %r13		# movq %r(1552), %r(1507)
	.L435:		# .L435:
	movq %r15, %rdi		# movq %r(1521), %rdi
	movq %r13, %rsi		# movq %r(1507), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L437(%rip), %rdi		# leaq .L437(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1523)
	movq $1, %rbx		# movq $1, %r(1554)
	movq %rbx, %r14		# movq %r(1554), %r(1508)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1586)
	movq %rbx, %rax		# movq %r(1586), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1587)
	idivq %rbx		# idivq %r(1587)
	movq %rax, %r12		# movq %rax, %r(1555)
	movq $1, %rbx		# movq $1, %r(1588)
	movq %rbx, -64(%rbp)		# movq %r(1588), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1589)
	cmpq %rbx, %r12		# cmpq %r(1589), %r(1555)
	je .L438		# je .L438
	.L439:		# .L439:
	movq $0, %rbx		# movq $0, %r(1557)
	movq %rbx, %r14		# movq %r(1557), %r(1508)
	.L438:		# .L438:
	movq %r13, %rdi		# movq %r(1523), %rdi
	movq %r14, %rsi		# movq %r(1508), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L440(%rip), %rdi		# leaq .L440(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1525)
	movq $1, %rbx		# movq $1, %r(1559)
	movq %rbx, %r13		# movq %r(1559), %r(1509)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1590)
	movq %rbx, %rax		# movq %r(1590), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1591)
	idivq %rbx		# idivq %r(1591)
	movq %rdx, %r12		# movq %rdx, %r(1560)
	movq $30, %rbx		# movq $30, %r(1592)
	movq %rbx, -8(%rbp)		# movq %r(1592), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1593)
	cmpq %rbx, %r12		# cmpq %r(1593), %r(1560)
	je .L441		# je .L441
	.L442:		# .L442:
	movq $0, %rbx		# movq $0, %r(1562)
	movq %rbx, %r13		# movq %r(1562), %r(1509)
	.L441:		# .L441:
	movq %r14, %rdi		# movq %r(1525), %rdi
	movq %r13, %rsi		# movq %r(1509), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L443(%rip), %rdi		# leaq .L443(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1527)
	movq $1, %r12		# movq $1, %r(1564)
	movq %r12, %r12		# movq %r(1564), %r(1510)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1594)
	movq %rbx, %rax		# movq %r(1594), %rax
	movq $0, %rdx		# movq $0, %rdx
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1595)
	idivq %rbx		# idivq %r(1595)
	movq %rdx, %rbx		# movq %rdx, %r(1565)
	movq $12, %r14		# movq $12, %r(1566)
	cmpq %r14, %rbx		# cmpq %r(1566), %r(1565)
	je .L444		# je .L444
	.L445:		# .L445:
	movq $0, %r12		# movq $0, %r(1567)
	movq %r12, %r12		# movq %r(1567), %r(1510)
	.L444:		# .L444:
	movq %r13, %rdi		# movq %r(1527), %rdi
	movq %r12, %rsi		# movq %r(1510), %rsi
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1611)
	movq %rbx, -32(%rbp)		# movq %r(1611), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1612)
	movq (%rbx), %r12		# movq (%r(1612)), %r(1596)
	movq %r12, %r12		# movq %r(1596), %r(1613)
	movq %r12, -24(%rbp)		# movq %r(1613), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1614)
	movq %rbx, %rbx		# movq %r(1614), %r(1597)
	salq $3, %rbx		# salq $3, %r(1597)
	movq $8, %r12		# movq $8, %r(1598)
	movq %rbx, %rbx		# movq %r(1597), %r(1599)
	addq %r12, %rbx		# addq %r(1598), %r(1599)
	movq %rbx, %rdi		# movq %r(1599), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1529)
	movq %r12, %r12		# movq %r(1529), %r(1615)
	movq %r12, -40(%rbp)		# movq %r(1615), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1616)
	movq %r13, %r13		# movq %r(1616), %r(1600)
	salq $3, %r13		# salq $3, %r(1600)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1617)
	movq %r12, %r12		# movq %r(1617), %r(1601)
	addq %r13, %r12		# addq %r(1600), %r(1601)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1618)
	movq %r13, %r13		# movq %r(1618), %r(1619)
	movq %r13, -16(%rbp)		# movq %r(1619), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1620)
	salq $3, %rbx		# salq $3, %r(1620)
	movq %rbx, -16(%rbp)		# movq %r(1620), -16(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1621)
	movq %r13, %r13		# movq %r(1621), %r(1608)
	movq %r13, -8(%rbp)		# movq %r(1608), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1609)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1622)
	addq %r13, %rbx		# addq %r(1622), %r(1609)
	movq %rbx, -8(%rbp)		# movq %r(1609), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1610)
	movq (%rbx), %rbx		# movq (%r(1610)), %r(1604)
	movq %rbx, (%r12)		# movq %r(1604), (%r(1601))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1623)
	decq %rbx		# decq %r(1623)
	movq %rbx, -24(%rbp)		# movq %r(1623), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1605)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1624)
	cmpq %rbx, %r12		# cmpq %r(1605), %r(1624)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1606)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1625)
	movq %r13, %r13		# movq %r(1625), %r(1607)
	addq %rbx, %r13		# addq %r(1606), %r(1607)
	movq %r13, %rax		# movq %r(1607), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L440:
	.quad 1
	.quad 37
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
.L428:
	.quad 1
	.quad 45
	.text

.section .rodata
.align 8
.L437:
	.quad 2
	.quad 47
	.quad 50
	.text

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
.L431:
	.quad 1
	.quad 42
	.text

.section .rodata
.align 8
.L425:
	.quad 1
	.quad 43
	.text

