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
	leaq .L457(%rip), %rdi		# leaq .L457(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1603)
	movq %r13, %rdi		# movq %r(1603), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L456:		# .L456:
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
	subq $64, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $30, %r12		# movq $30, %r(1621)
	movq %r12, %r12		# movq %r(1621), %r(1655)
	movq %r12, -8(%rbp)		# movq %r(1655), -8(%rbp)
	movq $42, %r12		# movq $42, %r(1622)
	movq %r12, %r12		# movq %r(1622), %r(1656)
	movq %r12, -24(%rbp)		# movq %r(1656), -24(%rbp)
	leaq .L459(%rip), %rdi		# leaq .L459(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1607)
	movq $1, %rbx		# movq $1, %r(1624)
	movq %rbx, %r12		# movq %r(1624), %r(1594)
	movq $1, %rbx		# movq $1, %r(1625)
	movq %rbx, %r13		# movq %r(1625), %r(1593)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1657)
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(1658)
	cmpq %r15, %rbx		# cmpq %r(1658), %r(1657)
	jl .L460		# jl .L460
	.L461:		# .L461:
	movq $0, %rbx		# movq $0, %r(1626)
	movq %rbx, %r13		# movq %r(1626), %r(1593)
	.L460:		# .L460:
	movq $1, %rbx		# movq $1, %r(1659)
	movq %rbx, -40(%rbp)		# movq %r(1659), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1660)
	cmpq %rbx, %r13		# cmpq %r(1660), %r(1593)
	je .L462		# je .L462
	.L463:		# .L463:
	movq $0, %rbx		# movq $0, %r(1628)
	movq %rbx, %r12		# movq %r(1628), %r(1594)
	.L462:		# .L462:
	movq %r14, %rdi		# movq %r(1607), %rdi
	movq %r12, %rsi		# movq %r(1594), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L464(%rip), %rdi		# leaq .L464(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1609)
	movq $1, %rbx		# movq $1, %r(1630)
	movq %rbx, %r12		# movq %r(1630), %r(1596)
	movq $1, %rbx		# movq $1, %r(1631)
	movq %rbx, %r13		# movq %r(1631), %r(1595)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1661)
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(1662)
	cmpq %r15, %rbx		# cmpq %r(1662), %r(1661)
	jle .L465		# jle .L465
	.L466:		# .L466:
	movq $0, %rbx		# movq $0, %r(1632)
	movq %rbx, %r13		# movq %r(1632), %r(1595)
	.L465:		# .L465:
	movq $1, %rbx		# movq $1, %r(1663)
	movq %rbx, -32(%rbp)		# movq %r(1663), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1664)
	cmpq %rbx, %r13		# cmpq %r(1664), %r(1595)
	je .L467		# je .L467
	.L468:		# .L468:
	movq $0, %rbx		# movq $0, %r(1634)
	movq %rbx, %r12		# movq %r(1634), %r(1596)
	.L467:		# .L467:
	movq %r14, %rdi		# movq %r(1609), %rdi
	movq %r12, %rsi		# movq %r(1596), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L469(%rip), %rdi		# leaq .L469(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1611)
	movq $1, %rbx		# movq $1, %r(1636)
	movq %rbx, %r14		# movq %r(1636), %r(1598)
	movq $1, %rbx		# movq $1, %r(1637)
	movq %rbx, %r12		# movq %r(1637), %r(1597)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1665)
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(1666)
	cmpq %r15, %rbx		# cmpq %r(1666), %r(1665)
	jg .L470		# jg .L470
	.L471:		# .L471:
	movq $0, %rbx		# movq $0, %r(1638)
	movq %rbx, %r12		# movq %r(1638), %r(1597)
	.L470:		# .L470:
	movq $0, %rbx		# movq $0, %r(1667)
	movq %rbx, -48(%rbp)		# movq %r(1667), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1668)
	cmpq %rbx, %r12		# cmpq %r(1668), %r(1597)
	je .L472		# je .L472
	.L473:		# .L473:
	movq $0, %rbx		# movq $0, %r(1640)
	movq %rbx, %r14		# movq %r(1640), %r(1598)
	.L472:		# .L472:
	movq %r13, %rdi		# movq %r(1611), %rdi
	movq %r14, %rsi		# movq %r(1598), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L474(%rip), %rdi		# leaq .L474(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1613)
	movq $1, %rbx		# movq $1, %r(1642)
	movq %rbx, %r14		# movq %r(1642), %r(1600)
	movq $1, %rbx		# movq $1, %r(1643)
	movq %rbx, %r12		# movq %r(1643), %r(1599)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1669)
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(1670)
	cmpq %r15, %rbx		# cmpq %r(1670), %r(1669)
	jge .L475		# jge .L475
	.L476:		# .L476:
	movq $0, %rbx		# movq $0, %r(1644)
	movq %rbx, %r12		# movq %r(1644), %r(1599)
	.L475:		# .L475:
	movq $0, %rbx		# movq $0, %r(1671)
	movq %rbx, -16(%rbp)		# movq %r(1671), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1672)
	cmpq %rbx, %r12		# cmpq %r(1672), %r(1599)
	je .L477		# je .L477
	.L478:		# .L478:
	movq $0, %rbx		# movq $0, %r(1646)
	movq %rbx, %r14		# movq %r(1646), %r(1600)
	.L477:		# .L477:
	movq %r13, %rdi		# movq %r(1613), %rdi
	movq %r14, %rsi		# movq %r(1600), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L479(%rip), %rdi		# leaq .L479(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1615)
	movq $1, %rbx		# movq $1, %r(1648)
	movq %rbx, %rbx		# movq %r(1648), %r(1601)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1673)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1674)
	cmpq %r14, %r12		# cmpq %r(1674), %r(1673)
	je .L480		# je .L480
	.L481:		# .L481:
	movq $0, %rbx		# movq $0, %r(1649)
	movq %rbx, %rbx		# movq %r(1649), %r(1601)
	.L480:		# .L480:
	movq $1, %r12		# movq $1, %r(1650)
	movq %rbx, %rbx		# movq %r(1601), %r(1651)
	xorq %r12, %rbx		# xorq %r(1650), %r(1651)
	movq %r13, %rdi		# movq %r(1615), %rdi
	movq %rbx, %rsi		# movq %r(1651), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L482(%rip), %rdi		# leaq .L482(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1617)
	movq $1, %rbx		# movq $1, %r(1653)
	movq %rbx, %rbx		# movq %r(1653), %r(1602)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1675)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1676)
	cmpq %r14, %r13		# cmpq %r(1676), %r(1675)
	jne .L483		# jne .L483
	.L484:		# .L484:
	movq $0, %rbx		# movq $0, %r(1654)
	movq %rbx, %rbx		# movq %r(1654), %r(1602)
	.L483:		# .L483:
	movq %r12, %rdi		# movq %r(1617), %rdi
	movq %rbx, %rsi		# movq %r(1602), %rsi
	call _Itest_paib		# call _Itest_paib
	.L458:		# .L458:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $64, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1689)
	movq %rbx, -16(%rbp)		# movq %r(1689), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1690)
	movq (%rbx), %r12		# movq (%r(1690)), %r(1677)
	movq %r12, %r12		# movq %r(1677), %r(1691)
	movq %r12, -8(%rbp)		# movq %r(1691), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1692)
	movq %rbx, %rbx		# movq %r(1692), %r(1678)
	salq $3, %rbx		# salq $3, %r(1678)
	movq $8, %r12		# movq $8, %r(1679)
	movq %rbx, %rbx		# movq %r(1678), %r(1680)
	addq %r12, %rbx		# addq %r(1679), %r(1680)
	movq %rbx, %rdi		# movq %r(1680), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1619)
	movq %rbx, %r14		# movq %r(1619), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1693)
	movq %r12, %r12		# movq %r(1693), %r(1681)
	salq $3, %r12		# salq $3, %r(1681)
	movq %r14, %r13		# movq %r(t27), %r(1682)
	addq %r12, %r13		# addq %r(1681), %r(1682)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1694)
	movq %rbx, %r12		# movq %r(1694), %r(1683)
	salq $3, %r12		# salq $3, %r(1683)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1695)
	movq %rbx, %rbx		# movq %r(1695), %r(1696)
	movq %rbx, -24(%rbp)		# movq %r(1696), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1697)
	addq %r12, %rbx		# addq %r(1683), %r(1697)
	movq %rbx, -24(%rbp)		# movq %r(1697), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1698)
	movq (%rbx), %rbx		# movq (%r(1698)), %r(1685)
	movq %rbx, (%r13)		# movq %r(1685), (%r(1682))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1699)
	decq %rbx		# decq %r(1699)
	movq %rbx, -8(%rbp)		# movq %r(1699), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1686)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1700)
	cmpq %rbx, %r12		# cmpq %r(1686), %r(1700)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1687)
	movq %r14, %r12		# movq %r(t27), %r(1688)
	addq %rbx, %r12		# addq %r(1687), %r(1688)
	movq %r12, %rax		# movq %r(1688), %rax
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
.L464:
	.quad 2
	.quad 60
	.quad 61
	.text

.section .rodata
.align 8
.L482:
	.quad 2
	.quad 33
	.quad 61
	.text

.section .rodata
.align 8
.L479:
	.quad 2
	.quad 61
	.quad 61
	.text

.section .rodata
.align 8
.L474:
	.quad 2
	.quad 62
	.quad 61
	.text

.section .rodata
.align 8
.L469:
	.quad 1
	.quad 62
	.text

.section .rodata
.align 8
.L459:
	.quad 1
	.quad 60
	.text

.section .rodata
.align 8
.L457:
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

