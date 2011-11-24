.att_syntax prefix
.text
.globl _IA_aiai
_IA_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(x)
	movq $8, %rbx		# movq $8, %r(1649)
	movq %r15, %r13		# movq %r(x), %r(1650)
	subq %rbx, %r13		# subq %r(1649), %r(1650)
	movq (%r13), %r13		# movq (%r(1650)), %r(1651)
	movq $1, %r12		# movq $1, %r(1652)
	subq %r12, %r13		# subq %r(1652), %r(1653)
	movq %r13, %r14		# movq %r(1653), %r(1631)
	movq $8, %rbx		# movq $8, %r(1654)
	movq %r15, %r12		# movq %r(x), %r(1655)
	subq %rbx, %r12		# subq %r(1654), %r(1655)
	movq (%r12), %rbx		# movq (%r(1655)), %r(1656)
	cmpq %rbx, %r14		# cmpq %r(1656), %r(1631)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(1657)
	movq %r15, %r12		# movq %r(x), %r(1658)
	subq %rbx, %r12		# subq %r(1657), %r(1658)
	movq (%r12), %rbx		# movq (%r(1658)), %r(1659)
	movq $1, %r12		# movq $1, %r(1660)
	subq %r12, %rbx		# subq %r(1660), %r(1661)
	movq %rbx, %r12		# movq %r(1661), %r(1629)
	movq $8, %rbx		# movq $8, %r(1662)
	movq %r15, %r13		# movq %r(x), %r(1663)
	subq %rbx, %r13		# subq %r(1662), %r(1663)
	movq (%r13), %rbx		# movq (%r(1663)), %r(1664)
	cmpq %rbx, %r12		# cmpq %r(1664), %r(1629)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(1629), %r(1665)
	salq $3, %rbx		# salq $3, %r(1665)
	movq %r15, %r13		# movq %r(x), %r(1666)
	addq %rbx, %r13		# addq %r(1665), %r(1666)
	movq %r14, %rbx		# movq %r(1631), %r(1667)
	salq $3, %rbx		# salq $3, %r(1667)
	movq %r15, %r12		# movq %r(x), %r(1668)
	addq %rbx, %r12		# addq %r(1667), %r(1668)
	movq (%r12), %rbx		# movq (%r(1668)), %r(1669)
	movq $1, %r12		# movq $1, %r(1670)
	subq %r12, %rbx		# subq %r(1670), %r(1671)
	movq %rbx, (%r13)		# movq %r(1671), (%r(1666))
	movq %r15, %rax		# movq %r(x), %rax
	jmp .L270		# jmp .L270
	.L270:		# .L270:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IB_aiai
_IB_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(x)
	movq $0, %r12		# movq $0, %r(1672)
	movq $8, %rbx		# movq $8, %r(1673)
	movq %r15, %r14		# movq %r(x), %r(1674)
	subq %rbx, %r14		# subq %r(1673), %r(1674)
	movq (%r14), %rbx		# movq (%r(1674)), %r(1675)
	cmpq %rbx, %r12		# cmpq %r(1675), %r(1672)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(1676)
	movq $8, %rbx		# movq $8, %r(1677)
	movq %r15, %r14		# movq %r(x), %r(1678)
	subq %rbx, %r14		# subq %r(1677), %r(1678)
	movq (%r14), %rbx		# movq (%r(1678)), %r(1679)
	cmpq %rbx, %r12		# cmpq %r(1679), %r(1676)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(1680)
	salq $3, %r12		# salq $3, %r(1681)
	movq %r15, %r13		# movq %r(x), %r(1682)
	addq %r12, %r13		# addq %r(1681), %r(1682)
	movq $0, %r12		# movq $0, %r(1683)
	salq $3, %r12		# salq $3, %r(1684)
	movq %r15, %rbx		# movq %r(x), %r(1685)
	addq %r12, %rbx		# addq %r(1684), %r(1685)
	movq (%rbx), %rbx		# movq (%r(1685)), %r(1686)
	movq $1, %r12		# movq $1, %r(1687)
	addq %r12, %rbx		# addq %r(1687), %r(1688)
	movq %rbx, (%r13)		# movq %r(1688), (%r(1682))
	movq %r15, %rax		# movq %r(x), %rax
	jmp .L275		# jmp .L275
	.L275:		# .L275:
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L281(%rip), %rdi		# leaq .L281(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1641)
	movq %r13, %r12		# movq %r(1641), %r(1692)
	movq %r12, -8(%rbp)		# movq %r(1692), -8(%rbp)
	movq $10, %r15		# movq $10, %r(1690)
	movq %r13, %rdi		# movq %r(1641), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L282:		# .L282:
	movq $0, %r12		# movq $0, %r(1691)
	cmpq %r12, %r15		# cmpq %r(1691), %r(count)
	jle .L284		# jle .L284
	.L283:		# .L283:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1693)
	movq %r12, %rdi		# movq %r(1693), %rdi
	call _IA_aiai		# call _IA_aiai
	movq %rax, %r12		# movq %rax, %r(1643)
	movq %r12, %rdi		# movq %r(1643), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(1643), %rdi
	call _IB_aiai		# call _IB_aiai
	movq %rax, %r14		# movq %rax, %r(1645)
	movq %r14, %r12		# movq %r(1645), %r(1694)
	movq %r12, -8(%rbp)		# movq %r(1694), -8(%rbp)
	movq %r14, %rdi		# movq %r(1645), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r15		# decq %r(count)
	jmp .L282		# jmp .L282
	.L284:		# .L284:
	.L280:		# .L280:
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
	movq %rdi, %rbx		# movq %rdi, %r(1707)
	movq %rbx, -24(%rbp)		# movq %r(1707), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1708)
	movq (%rbx), %r12		# movq (%r(1708)), %r(1695)
	movq %r12, -16(%rbp)		# movq %r(1709), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1710)
	salq $3, %rbx		# salq $3, %r(1696)
	movq $8, %r12		# movq $8, %r(1697)
	addq %r12, %rbx		# addq %r(1697), %r(1698)
	movq %rbx, %rdi		# movq %r(1698), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1647)
	.L165:		# .L165:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1711)
	salq $3, %r12		# salq $3, %r(1699)
	movq %r14, %r13		# movq %r(1647), %r(1700)
	addq %r12, %r13		# addq %r(1699), %r(1700)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1712)
	movq %rbx, %r12		# movq %r(1712), %r(1701)
	salq $3, %r12		# salq $3, %r(1701)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1713)
	movq %rbx, -8(%rbp)		# movq %r(1714), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1715)
	addq %r12, %rbx		# addq %r(1701), %r(1715)
	movq %rbx, -8(%rbp)		# movq %r(1715), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1716)
	movq (%rbx), %rbx		# movq (%r(1716)), %r(1703)
	movq %rbx, (%r13)		# movq %r(1703), (%r(1700))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1717)
	decq %rbx		# decq %r(1717)
	movq %rbx, -16(%rbp)		# movq %r(1717), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1704)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1718)
	cmpq %rbx, %r12		# cmpq %r(1704), %r(1718)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq $8, %rbx		# movq $8, %r(1705)
	movq %r14, %r12		# movq %r(1647), %r(1706)
	addq %rbx, %r12		# addq %r(1705), %r(1706)
	movq %r12, %rax		# movq %r(1706), %rax
	.L167:		# .L167:
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
.L281:
	.quad 11
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
