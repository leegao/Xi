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
	leaq .L496(%rip), %rdi		# leaq .L496(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1646)
	movq %r13, %rdi		# movq %r(1646), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L495:		# .L495:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L498(%rip), %rdi		# leaq .L498(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1650)
	movq %r12, -16(%rbp)		# movq %r(1686), -16(%rbp)
	leaq .L499(%rip), %rdi		# leaq .L499(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1651)
	movq $16, %r12		# movq $16, %r(1668)
	movq %r12, %rdi		# movq %r(1668), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1652)
	movq %rbx, %rdi		# movq %r(1635), %rdi
	movq %r13, %rsi		# movq %r(question), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%rbx), %r13		# movq 0(%r(1635)), %r(n)
	movq 8(%rbx), %r14		# movq 8(%r(1635)), %r(ok)
	leaq .L500(%rip), %rdi		# leaq .L500(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1654)
	movq $1, %rbx		# movq $1, %r(1670)
	movq %rbx, %r15		# movq %r(1670), %r(1638)
	movq $0, %rbx		# movq $0, %r(1687)
	movq %rbx, -8(%rbp)		# movq %r(1687), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1688)
	cmpq %rbx, %r13		# cmpq %r(1688), %r(n)
	je .L501		# je .L501
	.L502:		# .L502:
	movq $0, %rbx		# movq $0, %r(1672)
	movq %rbx, %r15		# movq %r(1672), %r(1638)
	.L501:		# .L501:
	movq %r12, %rdi		# movq %r(1654), %rdi
	movq %r15, %rsi		# movq %r(1638), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L503(%rip), %rdi		# leaq .L503(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1656)
	movq $1, %r15		# movq $1, %r(1674)
	movq $0, %r13		# movq $0, %r(1675)
	cmpq %r13, %r14		# cmpq %r(1675), %r(ok)
	je .L504		# je .L504
	.L505:		# .L505:
	movq $0, %r15		# movq $0, %r(1676)
	.L504:		# .L504:
	movq %r12, %rdi		# movq %r(1656), %rdi
	movq %r15, %rsi		# movq %r(1639), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $16, %rbx		# movq $16, %r(1677)
	movq %rbx, %rdi		# movq %r(1677), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1658)
	movq %r13, %rdi		# movq %r(1641), %rdi
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1689)
	movq %r12, %rsi		# movq %r(1689), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r13), %r15		# movq 0(%r(1641)), %r(n2)
	movq 8(%r13), %r14		# movq 8(%r(1641)), %r(ok2)
	leaq .L506(%rip), %rdi		# leaq .L506(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1660)
	movq $1, %r12		# movq $1, %r(1679)
	movq %r12, %rbx		# movq %r(1679), %r(1644)
	movq $42, %r12		# movq $42, %r(1680)
	cmpq %r12, %r15		# cmpq %r(1680), %r(n2)
	je .L507		# je .L507
	.L508:		# .L508:
	movq $0, %rbx		# movq $0, %r(1681)
	.L507:		# .L507:
	movq %r13, %rdi		# movq %r(1660), %rdi
	movq %rbx, %rsi		# movq %r(1644), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L509(%rip), %rdi		# leaq .L509(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1662)
	movq $1, %r15		# movq $1, %r(1683)
	movq $1, %r13		# movq $1, %r(1684)
	cmpq %r13, %r14		# cmpq %r(1684), %r(ok2)
	je .L510		# je .L510
	.L511:		# .L511:
	movq $0, %r15		# movq $0, %r(1685)
	.L510:		# .L510:
	movq %r12, %rdi		# movq %r(1662), %rdi
	movq %r15, %rsi		# movq %r(1645), %rsi
	call _Itest_paib		# call _Itest_paib
	.L497:		# .L497:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1702)
	movq %rbx, -16(%rbp)		# movq %r(1702), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1703)
	movq (%rbx), %rbx		# movq (%r(1703)), %r(1690)
	movq %rbx, %r14		# movq %r(1690), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1691)
	salq $3, %rbx		# salq $3, %r(1691)
	movq $8, %r12		# movq $8, %r(1692)
	addq %r12, %rbx		# addq %r(1692), %r(1693)
	movq %rbx, %rdi		# movq %r(1693), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1664)
	movq %rbx, %r12		# movq %r(1664), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(1694)
	salq $3, %rbx		# salq $3, %r(1694)
	movq %r12, %r13		# movq %r(t27), %r(1695)
	addq %rbx, %r13		# addq %r(1694), %r(1695)
	movq %r14, %r15		# movq %r(t10), %r(1696)
	salq $3, %r15		# salq $3, %r(1696)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1704)
	movq %rbx, -8(%rbp)		# movq %r(1705), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1706)
	addq %r15, %rbx		# addq %r(1696), %r(1706)
	movq %rbx, -8(%rbp)		# movq %r(1706), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1707)
	movq (%rbx), %rbx		# movq (%r(1707)), %r(1698)
	movq %rbx, (%r13)		# movq %r(1698), (%r(1695))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1699)
	cmpq %rbx, %r14		# cmpq %r(1699), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1700)
	addq %rbx, %r12		# addq %r(1700), %r(1701)
	movq %r12, %rax		# movq %r(1701), %rax
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
.L500:
	.quad 1
	.quad 48
	.text

#.section .rodata
.align 8
.L503:
	.quad 1
	.quad 49
	.text

#.section .rodata
.align 8
.L509:
	.quad 1
	.quad 51
	.text

#.section .rodata
.align 8
.L498:
	.quad 2
	.quad 52
	.quad 50
	.text

#.section .rodata
.align 8
.L499:
	.quad 2
	.quad 63
	.quad 63
	.text

#.section .rodata
.align 8
.L496:
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
.L506:
	.quad 1
	.quad 50
	.text

