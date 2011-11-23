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
	movq %rax, %r13		# movq %rax, %r(1641)
	movq %r13, %rdi		# movq %r(1641), %rdi
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
	movq $30, %r12		# movq $30, %r(1659)
	movq %r12, %r12		# movq %r(1659), %r(1693)
	movq %r12, -48(%rbp)		# movq %r(1693), -48(%rbp)
	movq $42, %r12		# movq $42, %r(1660)
	movq %r12, %r12		# movq %r(1660), %r(1694)
	movq %r12, -16(%rbp)		# movq %r(1694), -16(%rbp)
	leaq .L459(%rip), %rdi		# leaq .L459(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1645)
	movq $1, %rbx		# movq $1, %r(1662)
	movq %rbx, %r14		# movq %r(1662), %r(1632)
	movq $1, %rbx		# movq $1, %r(1663)
	movq %rbx, %r12		# movq %r(1663), %r(1631)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1695)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1696)
	cmpq %rbx, %r15		# cmpq %r(1695), %r(1696)
	jl .L460		# jl .L460
	.L461:		# .L461:
	movq $0, %rbx		# movq $0, %r(1664)
	movq %rbx, %r12		# movq %r(1664), %r(1631)
	.L460:		# .L460:
	movq $1, %rbx		# movq $1, %r(1697)
	movq %rbx, -40(%rbp)		# movq %r(1697), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1698)
	cmpq %rbx, %r12		# cmpq %r(1698), %r(1631)
	je .L462		# je .L462
	.L463:		# .L463:
	movq $0, %rbx		# movq $0, %r(1666)
	movq %rbx, %r14		# movq %r(1666), %r(1632)
	.L462:		# .L462:
	movq %r13, %rdi		# movq %r(1645), %rdi
	movq %r14, %rsi		# movq %r(1632), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L464(%rip), %rdi		# leaq .L464(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1647)
	movq $1, %rbx		# movq $1, %r(1668)
	movq %rbx, %r12		# movq %r(1668), %r(1634)
	movq $1, %rbx		# movq $1, %r(1669)
	movq %rbx, %r13		# movq %r(1669), %r(1633)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1699)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1700)
	cmpq %rbx, %r15		# cmpq %r(1699), %r(1700)
	jle .L465		# jle .L465
	.L466:		# .L466:
	movq $0, %rbx		# movq $0, %r(1670)
	movq %rbx, %r13		# movq %r(1670), %r(1633)
	.L465:		# .L465:
	movq $1, %rbx		# movq $1, %r(1701)
	movq %rbx, -32(%rbp)		# movq %r(1701), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1702)
	cmpq %rbx, %r13		# cmpq %r(1702), %r(1633)
	je .L467		# je .L467
	.L468:		# .L468:
	movq $0, %rbx		# movq $0, %r(1672)
	movq %rbx, %r12		# movq %r(1672), %r(1634)
	.L467:		# .L467:
	movq %r14, %rdi		# movq %r(1647), %rdi
	movq %r12, %rsi		# movq %r(1634), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L469(%rip), %rdi		# leaq .L469(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1649)
	movq $1, %rbx		# movq $1, %r(1674)
	movq %rbx, %r14		# movq %r(1674), %r(1636)
	movq $1, %rbx		# movq $1, %r(1675)
	movq %rbx, %r12		# movq %r(1675), %r(1635)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1703)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1704)
	cmpq %rbx, %r15		# cmpq %r(1703), %r(1704)
	jg .L470		# jg .L470
	.L471:		# .L471:
	movq $0, %rbx		# movq $0, %r(1676)
	movq %rbx, %r12		# movq %r(1676), %r(1635)
	.L470:		# .L470:
	movq $0, %rbx		# movq $0, %r(1705)
	movq %rbx, -8(%rbp)		# movq %r(1705), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1706)
	cmpq %rbx, %r12		# cmpq %r(1706), %r(1635)
	je .L472		# je .L472
	.L473:		# .L473:
	movq $0, %rbx		# movq $0, %r(1678)
	movq %rbx, %r14		# movq %r(1678), %r(1636)
	.L472:		# .L472:
	movq %r13, %rdi		# movq %r(1649), %rdi
	movq %r14, %rsi		# movq %r(1636), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L474(%rip), %rdi		# leaq .L474(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1651)
	movq $1, %rbx		# movq $1, %r(1680)
	movq %rbx, %r14		# movq %r(1680), %r(1638)
	movq $1, %rbx		# movq $1, %r(1681)
	movq %rbx, %r12		# movq %r(1681), %r(1637)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1707)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1708)
	cmpq %rbx, %r15		# cmpq %r(1707), %r(1708)
	jge .L475		# jge .L475
	.L476:		# .L476:
	movq $0, %rbx		# movq $0, %r(1682)
	movq %rbx, %r12		# movq %r(1682), %r(1637)
	.L475:		# .L475:
	movq $0, %rbx		# movq $0, %r(1709)
	movq %rbx, -24(%rbp)		# movq %r(1709), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1710)
	cmpq %rbx, %r12		# cmpq %r(1710), %r(1637)
	je .L477		# je .L477
	.L478:		# .L478:
	movq $0, %rbx		# movq $0, %r(1684)
	movq %rbx, %r14		# movq %r(1684), %r(1638)
	.L477:		# .L477:
	movq %r13, %rdi		# movq %r(1651), %rdi
	movq %r14, %rsi		# movq %r(1638), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L479(%rip), %rdi		# leaq .L479(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1653)
	movq $1, %rbx		# movq $1, %r(1686)
	movq %rbx, %rbx		# movq %r(1686), %r(1639)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1711)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1712)
	cmpq %r12, %r14		# cmpq %r(1711), %r(1712)
	je .L480		# je .L480
	.L481:		# .L481:
	movq $0, %rbx		# movq $0, %r(1687)
	movq %rbx, %rbx		# movq %r(1687), %r(1639)
	.L480:		# .L480:
	movq $1, %r12		# movq $1, %r(1688)
	movq %rbx, %rbx		# movq %r(1639), %r(1689)
	xorq %r12, %rbx		# xorq %r(1688), %r(1689)
	movq %r13, %rdi		# movq %r(1653), %rdi
	movq %rbx, %rsi		# movq %r(1689), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L482(%rip), %rdi		# leaq .L482(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1655)
	movq $1, %rbx		# movq $1, %r(1691)
	movq %rbx, %rbx		# movq %r(1691), %r(1640)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1713)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1714)
	cmpq %r13, %r14		# cmpq %r(1713), %r(1714)
	jne .L483		# jne .L483
	.L484:		# .L484:
	movq $0, %rbx		# movq $0, %r(1692)
	movq %rbx, %rbx		# movq %r(1692), %r(1640)
	.L483:		# .L483:
	movq %r12, %rdi		# movq %r(1655), %rdi
	movq %rbx, %rsi		# movq %r(1640), %rsi
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1730)
	movq %rbx, -24(%rbp)		# movq %r(1730), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1731)
	movq (%rbx), %rbx		# movq (%r(1731)), %r(1715)
	movq %rbx, %rbx		# movq %r(1715), %r(t10)
	movq %rbx, %r12		# movq %r(t10), %r(1716)
	salq $3, %r12		# salq $3, %r(1716)
	movq $8, %r13		# movq $8, %r(1717)
	movq %r12, %r12		# movq %r(1716), %r(1718)
	addq %r13, %r12		# addq %r(1717), %r(1718)
	movq %r12, %rdi		# movq %r(1718), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1657)
	movq %r13, %r13		# movq %r(1657), %r(1732)
	movq %r13, -32(%rbp)		# movq %r(1732), -32(%rbp)
	.L16:		# .L16:
	movq %rbx, %r14		# movq %r(t10), %r(1719)
	salq $3, %r14		# salq $3, %r(1719)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1733)
	movq %r13, %r13		# movq %r(1733), %r(1734)
	movq %r13, -16(%rbp)		# movq %r(1734), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1735)
	addq %r14, %r12		# addq %r(1719), %r(1735)
	movq %r12, -16(%rbp)		# movq %r(1735), -16(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(1721)
	salq $3, %r14		# salq $3, %r(1721)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1736)
	movq %r13, %r13		# movq %r(1736), %r(1727)
	movq %r13, -8(%rbp)		# movq %r(1727), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1728)
	addq %r14, %r12		# addq %r(1721), %r(1728)
	movq %r12, -8(%rbp)		# movq %r(1728), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1729)
	movq (%r12), %r12		# movq (%r(1729)), %r(1723)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1737)
	movq %r12, (%r13)		# movq %r(1723), (%r(1737))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(1724)
	cmpq %r12, %rbx		# cmpq %r(1724), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1725)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1738)
	movq %r13, %r13		# movq %r(1738), %r(1726)
	addq %rbx, %r13		# addq %r(1725), %r(1726)
	movq %r13, %rax		# movq %r(1726), %rax
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
.L464:
	.quad 2
	.quad 60
	.quad 61
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

