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
	movq %rax, %r13		# movq %rax, %r(1537)
	movq %r13, %rdi		# movq %r(1537), %rdi
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
	movq $30, %r12		# movq $30, %r(1555)
	movq %r12, -16(%rbp)		# movq %r(1589), -16(%rbp)
	movq $42, %r12		# movq $42, %r(1556)
	movq %r12, -48(%rbp)		# movq %r(1590), -48(%rbp)
	leaq .L459(%rip), %rdi		# leaq .L459(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1541)
	movq $1, %rbx		# movq $1, %r(1558)
	movq %rbx, %r14		# movq %r(1558), %r(1528)
	movq $1, %rbx		# movq $1, %r(1559)
	movq %rbx, %r12		# movq %r(1559), %r(1527)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1591)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1592)
	cmpq %r15, %rbx		# cmpq %r(1592), %r(1591)
	jl .L460		# jl .L460
	.L461:		# .L461:
	movq $0, %rbx		# movq $0, %r(1560)
	movq %rbx, %r12		# movq %r(1560), %r(1527)
	.L460:		# .L460:
	movq $1, %rbx		# movq $1, %r(1593)
	movq %rbx, -40(%rbp)		# movq %r(1593), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1594)
	cmpq %rbx, %r12		# cmpq %r(1594), %r(1527)
	je .L462		# je .L462
	.L463:		# .L463:
	movq $0, %rbx		# movq $0, %r(1562)
	movq %rbx, %r14		# movq %r(1562), %r(1528)
	.L462:		# .L462:
	movq %r13, %rdi		# movq %r(1541), %rdi
	movq %r14, %rsi		# movq %r(1528), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L464(%rip), %rdi		# leaq .L464(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1543)
	movq $1, %rbx		# movq $1, %r(1564)
	movq %rbx, %r14		# movq %r(1564), %r(1530)
	movq $1, %rbx		# movq $1, %r(1565)
	movq %rbx, %r12		# movq %r(1565), %r(1529)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1595)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1596)
	cmpq %r15, %rbx		# cmpq %r(1596), %r(1595)
	jle .L465		# jle .L465
	.L466:		# .L466:
	movq $0, %rbx		# movq $0, %r(1566)
	movq %rbx, %r12		# movq %r(1566), %r(1529)
	.L465:		# .L465:
	movq $1, %rbx		# movq $1, %r(1597)
	movq %rbx, -32(%rbp)		# movq %r(1597), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1598)
	cmpq %rbx, %r12		# cmpq %r(1598), %r(1529)
	je .L467		# je .L467
	.L468:		# .L468:
	movq $0, %rbx		# movq $0, %r(1568)
	movq %rbx, %r14		# movq %r(1568), %r(1530)
	.L467:		# .L467:
	movq %r13, %rdi		# movq %r(1543), %rdi
	movq %r14, %rsi		# movq %r(1530), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L469(%rip), %rdi		# leaq .L469(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(1545)
	movq $1, %rbx		# movq $1, %r(1570)
	movq %rbx, %r12		# movq %r(1570), %r(1532)
	movq $1, %rbx		# movq $1, %r(1571)
	movq %rbx, %r13		# movq %r(1571), %r(1531)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1599)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1600)
	cmpq %r15, %rbx		# cmpq %r(1600), %r(1599)
	jg .L470		# jg .L470
	.L471:		# .L471:
	movq $0, %rbx		# movq $0, %r(1572)
	movq %rbx, %r13		# movq %r(1572), %r(1531)
	.L470:		# .L470:
	movq $0, %rbx		# movq $0, %r(1601)
	movq %rbx, -8(%rbp)		# movq %r(1601), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1602)
	cmpq %rbx, %r13		# cmpq %r(1602), %r(1531)
	je .L472		# je .L472
	.L473:		# .L473:
	movq $0, %rbx		# movq $0, %r(1574)
	movq %rbx, %r12		# movq %r(1574), %r(1532)
	.L472:		# .L472:
	movq %r14, %rdi		# movq %r(1545), %rdi
	movq %r12, %rsi		# movq %r(1532), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L474(%rip), %rdi		# leaq .L474(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1547)
	movq $1, %rbx		# movq $1, %r(1576)
	movq %rbx, %r14		# movq %r(1576), %r(1534)
	movq $1, %rbx		# movq $1, %r(1577)
	movq %rbx, %r12		# movq %r(1577), %r(1533)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1603)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1604)
	cmpq %r15, %rbx		# cmpq %r(1604), %r(1603)
	jge .L475		# jge .L475
	.L476:		# .L476:
	movq $0, %rbx		# movq $0, %r(1578)
	movq %rbx, %r12		# movq %r(1578), %r(1533)
	.L475:		# .L475:
	movq $0, %rbx		# movq $0, %r(1605)
	movq %rbx, -24(%rbp)		# movq %r(1605), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1606)
	cmpq %rbx, %r12		# cmpq %r(1606), %r(1533)
	je .L477		# je .L477
	.L478:		# .L478:
	movq $0, %rbx		# movq $0, %r(1580)
	movq %rbx, %r14		# movq %r(1580), %r(1534)
	.L477:		# .L477:
	movq %r13, %rdi		# movq %r(1547), %rdi
	movq %r14, %rsi		# movq %r(1534), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L479(%rip), %rdi		# leaq .L479(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1549)
	movq $1, %rbx		# movq $1, %r(1582)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1607)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1608)
	cmpq %r14, %r12		# cmpq %r(1608), %r(1607)
	je .L480		# je .L480
	.L481:		# .L481:
	movq $0, %rbx		# movq $0, %r(1583)
	.L480:		# .L480:
	movq $1, %r12		# movq $1, %r(1584)
	xorq %r12, %rbx		# xorq %r(1584), %r(1585)
	movq %r13, %rdi		# movq %r(1549), %rdi
	movq %rbx, %rsi		# movq %r(1585), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L482(%rip), %rdi		# leaq .L482(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1551)
	movq $1, %rbx		# movq $1, %r(1587)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1609)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1610)
	cmpq %r14, %r13		# cmpq %r(1610), %r(1609)
	jne .L483		# jne .L483
	.L484:		# .L484:
	movq $0, %rbx		# movq $0, %r(1588)
	.L483:		# .L483:
	movq %r12, %rdi		# movq %r(1551), %rdi
	movq %rbx, %rsi		# movq %r(1536), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1623)
	movq %rbx, -16(%rbp)		# movq %r(1623), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1624)
	movq (%rbx), %rbx		# movq (%r(1624)), %r(1611)
	movq %rbx, %r14		# movq %r(1611), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1612)
	salq $3, %rbx		# salq $3, %r(1612)
	movq $8, %r12		# movq $8, %r(1613)
	addq %r12, %rbx		# addq %r(1613), %r(1614)
	movq %rbx, %rdi		# movq %r(1614), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1553)
	movq %rbx, %r12		# movq %r(1553), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(1615)
	salq $3, %rbx		# salq $3, %r(1615)
	movq %r12, %r15		# movq %r(t27), %r(1616)
	addq %rbx, %r15		# addq %r(1615), %r(1616)
	movq %r14, %r13		# movq %r(t10), %r(1617)
	salq $3, %r13		# salq $3, %r(1617)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1625)
	movq %rbx, -8(%rbp)		# movq %r(1626), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1627)
	addq %r13, %rbx		# addq %r(1617), %r(1627)
	movq %rbx, -8(%rbp)		# movq %r(1627), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1628)
	movq (%rbx), %rbx		# movq (%r(1628)), %r(1619)
	movq %rbx, (%r15)		# movq %r(1619), (%r(1616))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1620)
	cmpq %rbx, %r14		# cmpq %r(1620), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1621)
	addq %rbx, %r12		# addq %r(1621), %r(1622)
	movq %r12, %rax		# movq %r(1622), %rax
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
.L482:
	.quad 2
	.quad 33
	.quad 61
	.text

#.section .rodata
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

#.section .rodata
.align 8
.L474:
	.quad 2
	.quad 62
	.quad 61
	.text

#.section .rodata
.align 8
.L479:
	.quad 2
	.quad 61
	.quad 61
	.text

#.section .rodata
.align 8
.L464:
	.quad 2
	.quad 60
	.quad 61
	.text

#.section .rodata
.align 8
.L459:
	.quad 1
	.quad 60
	.text

#.section .rodata
.align 8
.L469:
	.quad 1
	.quad 62
	.text

