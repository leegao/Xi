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
	leaq .L424(%rip), %rdi		# leaq .L424(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1530)
	movq %r13, %rdi		# movq %r(1530), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L423:		# .L423:
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
	movq $30, %r12		# movq $30, %r(1550)
	movq %r12, -8(%rbp)		# movq %r(1587), -8(%rbp)
	movq $42, %r12		# movq $42, %r(1551)
	movq %r12, -64(%rbp)		# movq %r(1588), -64(%rbp)
	leaq .L426(%rip), %rdi		# leaq .L426(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1534)
	movq $1, %rbx		# movq $1, %r(1553)
	movq %rbx, %r14		# movq %r(1553), %r(1523)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1589)
	movq %rbx, %r13		# movq %r(1589), %r(1554)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1590)
	addq %rbx, %r13		# addq %r(1590), %r(1554)
	movq $72, %rbx		# movq $72, %r(1591)
	movq %rbx, -48(%rbp)		# movq %r(1591), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1592)
	cmpq %rbx, %r13		# cmpq %r(1592), %r(1554)
	je .L427		# je .L427
	.L428:		# .L428:
	movq $0, %rbx		# movq $0, %r(1556)
	movq %rbx, %r14		# movq %r(1556), %r(1523)
	.L427:		# .L427:
	movq %r15, %rdi		# movq %r(1534), %rdi
	movq %r14, %rsi		# movq %r(1523), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L429(%rip), %rdi		# leaq .L429(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1536)
	movq $1, %rbx		# movq $1, %r(1558)
	movq %rbx, %r14		# movq %r(1558), %r(1524)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1593)
	movq %rbx, %r13		# movq %r(1593), %r(1559)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1594)
	subq %rbx, %r13		# subq %r(1594), %r(1559)
	movq $-12, %rbx		# movq $-12, %r(1595)
	movq %rbx, -16(%rbp)		# movq %r(1595), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1596)
	cmpq %rbx, %r13		# cmpq %r(1596), %r(1559)
	je .L430		# je .L430
	.L431:		# .L431:
	movq $0, %rbx		# movq $0, %r(1561)
	movq %rbx, %r14		# movq %r(1561), %r(1524)
	.L430:		# .L430:
	movq %r15, %rdi		# movq %r(1536), %rdi
	movq %r14, %rsi		# movq %r(1524), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L432(%rip), %rdi		# leaq .L432(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1538)
	movq $1, %rbx		# movq $1, %r(1563)
	movq %rbx, %r12		# movq %r(1563), %r(1525)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1597)
	movq %rbx, %r13		# movq %r(1597), %r(1564)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1598)
	imulq %rbx, %r13		# imulq %r(1598), %r(1564)
	movq $1260, %rbx		# movq $1260, %r(1599)
	movq %rbx, -24(%rbp)		# movq %r(1599), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1600)
	cmpq %rbx, %r13		# cmpq %r(1600), %r(1564)
	je .L433		# je .L433
	.L434:		# .L434:
	movq $0, %rbx		# movq $0, %r(1566)
	movq %rbx, %r12		# movq %r(1566), %r(1525)
	.L433:		# .L433:
	movq %r14, %rdi		# movq %r(1538), %rdi
	movq %r12, %rsi		# movq %r(1525), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L435(%rip), %rdi		# leaq .L435(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1540)
	movq $1, %rbx		# movq $1, %r(1568)
	movq %rbx, %r14		# movq %r(1568), %r(1526)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1601)
	movq %rbx, %rax		# movq %r(1601), %rax
	cqto		# cqto
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1602)
	idivq %rbx		# idivq %r(1602)
	movq %rax, %r12		# movq %rax, %r(1569)
	movq $0, %rbx		# movq $0, %r(1603)
	movq %rbx, -56(%rbp)		# movq %r(1603), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1604)
	cmpq %rbx, %r12		# cmpq %r(1604), %r(1569)
	je .L436		# je .L436
	.L437:		# .L437:
	movq $0, %rbx		# movq $0, %r(1571)
	movq %rbx, %r14		# movq %r(1571), %r(1526)
	.L436:		# .L436:
	movq %r13, %rdi		# movq %r(1540), %rdi
	movq %r14, %rsi		# movq %r(1526), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L438(%rip), %rdi		# leaq .L438(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1542)
	movq $1, %rbx		# movq $1, %r(1573)
	movq %rbx, %r14		# movq %r(1573), %r(1527)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1605)
	movq %rbx, %rax		# movq %r(1605), %rax
	cqto		# cqto
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1606)
	idivq %rbx		# idivq %r(1606)
	movq %rax, %r12		# movq %rax, %r(1574)
	movq $1, %rbx		# movq $1, %r(1607)
	movq %rbx, -40(%rbp)		# movq %r(1607), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1608)
	cmpq %rbx, %r12		# cmpq %r(1608), %r(1574)
	je .L439		# je .L439
	.L440:		# .L440:
	movq $0, %rbx		# movq $0, %r(1576)
	movq %rbx, %r14		# movq %r(1576), %r(1527)
	.L439:		# .L439:
	movq %r13, %rdi		# movq %r(1542), %rdi
	movq %r14, %rsi		# movq %r(1527), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L441(%rip), %rdi		# leaq .L441(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1544)
	movq $1, %rbx		# movq $1, %r(1578)
	movq %rbx, %r12		# movq %r(1578), %r(1528)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1609)
	movq %rbx, %rax		# movq %r(1609), %rax
	cqto		# cqto
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1610)
	idivq %rbx		# idivq %r(1610)
	movq %rdx, %r13		# movq %rdx, %r(1579)
	movq $30, %rbx		# movq $30, %r(1611)
	movq %rbx, -32(%rbp)		# movq %r(1611), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1612)
	cmpq %rbx, %r13		# cmpq %r(1612), %r(1579)
	je .L442		# je .L442
	.L443:		# .L443:
	movq $0, %rbx		# movq $0, %r(1581)
	movq %rbx, %r12		# movq %r(1581), %r(1528)
	.L442:		# .L442:
	movq %r14, %rdi		# movq %r(1544), %rdi
	movq %r12, %rsi		# movq %r(1528), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L444(%rip), %rdi		# leaq .L444(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1546)
	movq $1, %r12		# movq $1, %r(1583)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1613)
	movq %rbx, %rax		# movq %r(1613), %rax
	cqto		# cqto
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1614)
	idivq %rbx		# idivq %r(1614)
	movq %rdx, %rbx		# movq %rdx, %r(1584)
	movq $12, %r14		# movq $12, %r(1585)
	cmpq %r14, %rbx		# cmpq %r(1585), %r(1584)
	je .L445		# je .L445
	.L446:		# .L446:
	movq $0, %r12		# movq $0, %r(1586)
	.L445:		# .L445:
	movq %r13, %rdi		# movq %r(1546), %rdi
	movq %r12, %rsi		# movq %r(1529), %rsi
	call _Itest_paib		# call _Itest_paib
	.L425:		# .L425:
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
	movq %rdi, %rbx		# movq %rdi, %r(1630)
	movq %rbx, -32(%rbp)		# movq %r(1630), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1631)
	movq (%rbx), %r12		# movq (%r(1631)), %r(1615)
	movq %r12, -24(%rbp)		# movq %r(1632), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1633)
	salq $3, %rbx		# salq $3, %r(1616)
	movq $8, %r12		# movq $8, %r(1617)
	addq %r12, %rbx		# addq %r(1617), %r(1618)
	movq %rbx, %rdi		# movq %r(1618), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1548)
	movq %r12, -40(%rbp)		# movq %r(1634), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1635)
	salq $3, %r13		# salq $3, %r(1619)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1636)
	addq %r13, %r12		# addq %r(1619), %r(1620)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1637)
	movq %r13, -16(%rbp)		# movq %r(1638), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1639)
	salq $3, %rbx		# salq $3, %r(1639)
	movq %rbx, -16(%rbp)		# movq %r(1639), -16(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1640)
	movq %r13, -8(%rbp)		# movq %r(1627), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1628)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1641)
	addq %r13, %rbx		# addq %r(1641), %r(1628)
	movq %rbx, -8(%rbp)		# movq %r(1628), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1629)
	movq (%rbx), %rbx		# movq (%r(1629)), %r(1623)
	movq %rbx, (%r12)		# movq %r(1623), (%r(1620))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1642)
	decq %rbx		# decq %r(1642)
	movq %rbx, -24(%rbp)		# movq %r(1642), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1624)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1643)
	cmpq %rbx, %r12		# cmpq %r(1624), %r(1643)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1625)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1644)
	addq %rbx, %r13		# addq %r(1625), %r(1626)
	movq %r13, %rax		# movq %r(1626), %rax
	.L18:		# .L18:
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
.L444:
	.quad 2
	.quad 37
	.quad 50
	.text

#.section .rodata
.align 8
.L424:
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
.L441:
	.quad 1
	.quad 37
	.text

#.section .rodata
.align 8
.L432:
	.quad 1
	.quad 42
	.text

#.section .rodata
.align 8
.L438:
	.quad 2
	.quad 47
	.quad 50
	.text

#.section .rodata
.align 8
.L435:
	.quad 1
	.quad 47
	.text

#.section .rodata
.align 8
.L429:
	.quad 1
	.quad 45
	.text

#.section .rodata
.align 8
.L426:
	.quad 1
	.quad 43
	.text

