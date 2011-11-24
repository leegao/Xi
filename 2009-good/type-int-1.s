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
	leaq .L458(%rip), %rdi		# leaq .L458(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1660)
	movq %r13, %rdi		# movq %r(1660), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L457:		# .L457:
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
	movq $30, %r12		# movq $30, %r(1678)
	movq %r12, -48(%rbp)		# movq %r(1712), -48(%rbp)
	movq $42, %r12		# movq $42, %r(1679)
	movq %r12, -24(%rbp)		# movq %r(1713), -24(%rbp)
	leaq .L460(%rip), %rdi		# leaq .L460(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1664)
	movq $1, %rbx		# movq $1, %r(1681)
	movq %rbx, %r14		# movq %r(1681), %r(1651)
	movq $1, %rbx		# movq $1, %r(1682)
	movq %rbx, %r12		# movq %r(1682), %r(1650)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1714)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1715)
	cmpq %rbx, %r15		# cmpq %r(1714), %r(1715)
	jl .L461		# jl .L461
	.L462:		# .L462:
	movq $0, %rbx		# movq $0, %r(1683)
	movq %rbx, %r12		# movq %r(1683), %r(1650)
	.L461:		# .L461:
	movq $1, %rbx		# movq $1, %r(1716)
	movq %rbx, -32(%rbp)		# movq %r(1716), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1717)
	cmpq %rbx, %r12		# cmpq %r(1717), %r(1650)
	je .L463		# je .L463
	.L464:		# .L464:
	movq $0, %rbx		# movq $0, %r(1685)
	movq %rbx, %r14		# movq %r(1685), %r(1651)
	.L463:		# .L463:
	movq %r13, %rdi		# movq %r(1664), %rdi
	movq %r14, %rsi		# movq %r(1651), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L465(%rip), %rdi		# leaq .L465(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1666)
	movq $1, %rbx		# movq $1, %r(1687)
	movq %rbx, %r14		# movq %r(1687), %r(1653)
	movq $1, %rbx		# movq $1, %r(1688)
	movq %rbx, %r12		# movq %r(1688), %r(1652)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1718)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1719)
	cmpq %rbx, %r15		# cmpq %r(1718), %r(1719)
	jle .L466		# jle .L466
	.L467:		# .L467:
	movq $0, %rbx		# movq $0, %r(1689)
	movq %rbx, %r12		# movq %r(1689), %r(1652)
	.L466:		# .L466:
	movq $1, %rbx		# movq $1, %r(1720)
	movq %rbx, -40(%rbp)		# movq %r(1720), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1721)
	cmpq %rbx, %r12		# cmpq %r(1721), %r(1652)
	je .L468		# je .L468
	.L469:		# .L469:
	movq $0, %rbx		# movq $0, %r(1691)
	movq %rbx, %r14		# movq %r(1691), %r(1653)
	.L468:		# .L468:
	movq %r13, %rdi		# movq %r(1666), %rdi
	movq %r14, %rsi		# movq %r(1653), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L470(%rip), %rdi		# leaq .L470(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1668)
	movq $1, %rbx		# movq $1, %r(1693)
	movq %rbx, %r14		# movq %r(1693), %r(1655)
	movq $1, %rbx		# movq $1, %r(1694)
	movq %rbx, %r12		# movq %r(1694), %r(1654)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1722)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1723)
	cmpq %rbx, %r15		# cmpq %r(1722), %r(1723)
	jg .L471		# jg .L471
	.L472:		# .L472:
	movq $0, %rbx		# movq $0, %r(1695)
	movq %rbx, %r12		# movq %r(1695), %r(1654)
	.L471:		# .L471:
	movq $0, %rbx		# movq $0, %r(1724)
	movq %rbx, -16(%rbp)		# movq %r(1724), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1725)
	cmpq %rbx, %r12		# cmpq %r(1725), %r(1654)
	je .L473		# je .L473
	.L474:		# .L474:
	movq $0, %rbx		# movq $0, %r(1697)
	movq %rbx, %r14		# movq %r(1697), %r(1655)
	.L473:		# .L473:
	movq %r13, %rdi		# movq %r(1668), %rdi
	movq %r14, %rsi		# movq %r(1655), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L475(%rip), %rdi		# leaq .L475(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1670)
	movq $1, %rbx		# movq $1, %r(1699)
	movq %rbx, %r12		# movq %r(1699), %r(1657)
	movq $1, %rbx		# movq $1, %r(1700)
	movq %rbx, %r13		# movq %r(1700), %r(1656)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1726)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1727)
	cmpq %rbx, %r15		# cmpq %r(1726), %r(1727)
	jge .L476		# jge .L476
	.L477:		# .L477:
	movq $0, %rbx		# movq $0, %r(1701)
	movq %rbx, %r13		# movq %r(1701), %r(1656)
	.L476:		# .L476:
	movq $0, %rbx		# movq $0, %r(1728)
	movq %rbx, -8(%rbp)		# movq %r(1728), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1729)
	cmpq %rbx, %r13		# cmpq %r(1729), %r(1656)
	je .L478		# je .L478
	.L479:		# .L479:
	movq $0, %rbx		# movq $0, %r(1703)
	movq %rbx, %r12		# movq %r(1703), %r(1657)
	.L478:		# .L478:
	movq %r14, %rdi		# movq %r(1670), %rdi
	movq %r12, %rsi		# movq %r(1657), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L480(%rip), %rdi		# leaq .L480(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1672)
	movq $1, %rbx		# movq $1, %r(1705)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1730)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1731)
	cmpq %r12, %r14		# cmpq %r(1730), %r(1731)
	je .L481		# je .L481
	.L482:		# .L482:
	movq $0, %rbx		# movq $0, %r(1706)
	.L481:		# .L481:
	movq $1, %r12		# movq $1, %r(1707)
	xorq %r12, %rbx		# xorq %r(1707), %r(1708)
	movq %r13, %rdi		# movq %r(1672), %rdi
	movq %rbx, %rsi		# movq %r(1708), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L483(%rip), %rdi		# leaq .L483(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1674)
	movq $1, %rbx		# movq $1, %r(1710)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1732)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1733)
	cmpq %r13, %r14		# cmpq %r(1732), %r(1733)
	jne .L484		# jne .L484
	.L485:		# .L485:
	movq $0, %rbx		# movq $0, %r(1711)
	.L484:		# .L484:
	movq %r12, %rdi		# movq %r(1674), %rdi
	movq %rbx, %rsi		# movq %r(1659), %rsi
	call _Itest_paib		# call _Itest_paib
	.L459:		# .L459:
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
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %rbx		# movq (%r(p0)), %r(1734)
	movq %rbx, %r14		# movq %r(1734), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1735)
	salq $3, %rbx		# salq $3, %r(1735)
	movq $8, %r12		# movq $8, %r(1736)
	addq %r12, %rbx		# addq %r(1736), %r(1737)
	movq %rbx, %rdi		# movq %r(1737), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1676)
	movq %r12, -24(%rbp)		# movq %r(1749), -24(%rbp)
	.L16:		# .L16:
	movq %r14, %r12		# movq %r(t10), %r(1738)
	salq $3, %r12		# salq $3, %r(1738)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1750)
	movq %rbx, %r13		# movq %r(1750), %r(1739)
	addq %r12, %r13		# addq %r(1738), %r(1739)
	movq %r14, %rbx		# movq %r(t10), %r(1751)
	movq %rbx, -16(%rbp)		# movq %r(1751), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1752)
	salq $3, %rbx		# salq $3, %r(1752)
	movq %rbx, -16(%rbp)		# movq %r(1752), -16(%rbp)
	movq %r15, %rbx		# movq %r(p0), %r(1746)
	movq %rbx, -8(%rbp)		# movq %r(1746), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1747)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1753)
	addq %r12, %rbx		# addq %r(1753), %r(1747)
	movq %rbx, -8(%rbp)		# movq %r(1747), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1748)
	movq (%rbx), %rbx		# movq (%r(1748)), %r(1742)
	movq %rbx, (%r13)		# movq %r(1742), (%r(1739))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1743)
	cmpq %rbx, %r14		# cmpq %r(1743), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1744)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1754)
	addq %rbx, %r13		# addq %r(1744), %r(1745)
	movq %r13, %rax		# movq %r(1745), %rax
	.L18:		# .L18:
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
.L460:
	.quad 1
	.quad 60
	.text

#.section .rodata
.align 8
.L458:
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
.L465:
	.quad 2
	.quad 60
	.quad 61
	.text

#.section .rodata
.align 8
.L470:
	.quad 1
	.quad 62
	.text

#.section .rodata
.align 8
.L475:
	.quad 2
	.quad 62
	.quad 61
	.text

#.section .rodata
.align 8
.L483:
	.quad 2
	.quad 33
	.quad 61
	.text

#.section .rodata
.align 8
.L480:
	.quad 2
	.quad 61
	.quad 61
	.text

