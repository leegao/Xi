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
	movq %rdi, %rbx		# movq %rdi, %r(3623)
	movq %rsi, %r12		# movq %rsi, %r(3624)
	leaq .L626(%rip), %rdi		# leaq .L626(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(3631)
	movq %r13, %rdi		# movq %r(3631), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(3623), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(3624), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L625		# jmp .L625
	.L625:		# .L625:
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
	movq %rdi, %rbx		# movq %rdi, %r(3625)
	movq $0, %r12		# movq $0, %r(3643)
	movq %r12, %r15		# movq %r(3643), %r(3626)
	jmp .L628		# jmp .L628
	.L628:		# .L628:
	movq $10, %rbx		# movq $10, %r(3644)
	cmpq %rbx, %r15		# cmpq %r(3644), %r(3626)
	jge .L630		# jge .L630
	.L629:		# .L629:
	movq $5, %rbx		# movq $5, %r(3645)
	cmpq %rbx, %r15		# cmpq %r(3645), %r(3626)
	jne .L632		# jne .L632
	.L631:		# .L631:
	jmp .L630		# jmp .L630
	.L630:		# .L630:
	leaq .L633(%rip), %rdi		# leaq .L633(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3635)
	movq $1, %r12		# movq $1, %r(3647)
	movq %r12, %r14		# movq %r(3647), %r(3627)
	movq $5, %r12		# movq $5, %r(3648)
	cmpq %r12, %r15		# cmpq %r(3648), %r(3626)
	je .L634		# je .L634
	.L635:		# .L635:
	movq $0, %r12		# movq $0, %r(3649)
	movq %r12, %r14		# movq %r(3649), %r(3627)
	jmp .L634		# jmp .L634
	.L634:		# .L634:
	movq %rbx, %rdi		# movq %r(3635), %rdi
	movq %r14, %rsi		# movq %r(3627), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r12		# movq $0, %r(3650)
	movq %r12, %r14		# movq %r(3650), %r(3628)
	movq $0, %r12		# movq $0, %r(3651)
	movq %r12, %r15		# movq %r(3651), %r(3626)
	jmp .L636		# jmp .L636
	.L636:		# .L636:
	movq $10, %rbx		# movq $10, %r(3652)
	cmpq %rbx, %r15		# cmpq %r(3652), %r(3626)
	jge .L638		# jge .L638
	.L637:		# .L637:
	jmp .L639		# jmp .L639
	.L639:		# .L639:
	movq $10, %rbx		# movq $10, %r(3653)
	cmpq %rbx, %r14		# cmpq %r(3653), %r(3628)
	jge .L641		# jge .L641
	.L640:		# .L640:
	movq $5, %rbx		# movq $5, %r(3654)
	cmpq %rbx, %r14		# cmpq %r(3654), %r(3628)
	jne .L643		# jne .L643
	.L642:		# .L642:
	jmp .L641		# jmp .L641
	.L641:		# .L641:
	incq %r15		# incq %r(3626)
	jmp .L636		# jmp .L636
	.L643:		# .L643:
	incq %r14		# incq %r(3628)
	jmp .L639		# jmp .L639
	.L638:		# .L638:
	leaq .L644(%rip), %rdi		# leaq .L644(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(3637)
	movq $1, %rbx		# movq $1, %r(3656)
	movq %rbx, %r13		# movq %r(3656), %r(3629)
	movq $5, %rbx		# movq $5, %r(3657)
	cmpq %rbx, %r14		# cmpq %r(3657), %r(3628)
	je .L645		# je .L645
	.L646:		# .L646:
	movq $0, %rbx		# movq $0, %r(3658)
	movq %rbx, %r13		# movq %r(3658), %r(3629)
	jmp .L645		# jmp .L645
	.L645:		# .L645:
	movq %r12, %rdi		# movq %r(3637), %rdi
	movq %r13, %rsi		# movq %r(3629), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L647(%rip), %rdi		# leaq .L647(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(3639)
	movq $1, %rbx		# movq $1, %r(3660)
	movq %rbx, %r12		# movq %r(3660), %r(3630)
	movq $10, %rbx		# movq $10, %r(3661)
	cmpq %rbx, %r15		# cmpq %r(3661), %r(3626)
	je .L648		# je .L648
	.L649:		# .L649:
	movq $0, %rbx		# movq $0, %r(3662)
	movq %rbx, %r12		# movq %r(3662), %r(3630)
	jmp .L648		# jmp .L648
	.L648:		# .L648:
	movq %r14, %rdi		# movq %r(3639), %rdi
	movq %r12, %rsi		# movq %r(3630), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L627		# jmp .L627
	.L627:		# .L627:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L632:		# .L632:
	incq %r15		# incq %r(3626)
	jmp .L628		# jmp .L628
	
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
	movq %rdi, %rbx		# movq %rdi, %r(3675)
	movq %rbx, -16(%rbp)		# movq %r(3675), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3676)
	movq (%rbx), %r13		# movq (%r(3676)), %r(3663)
	movq %r13, %r12		# movq %r(3663), %r(3677)
	movq %r12, -24(%rbp)		# movq %r(3677), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3678)
	movq %r12, %r13		# movq %r(3678), %r(3664)
	salq $3, %r13		# salq $3, %r(3664)
	movq $8, %rbx		# movq $8, %r(3665)
	movq %r13, %r14		# movq %r(3664), %r(3666)
	addq %rbx, %r14		# addq %r(3665), %r(3666)
	movq %r14, %rdi		# movq %r(3666), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3641)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3679)
	movq %r13, %rbx		# movq %r(3679), %r(3667)
	salq $3, %rbx		# salq $3, %r(3667)
	movq %r15, %r13		# movq %r(3641), %r(3668)
	addq %rbx, %r13		# addq %r(3667), %r(3668)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3680)
	movq %rbx, %r12		# movq %r(3680), %r(3669)
	salq $3, %r12		# salq $3, %r(3669)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3681)
	movq %rbx, %r14		# movq %r(3681), %r(3682)
	movq %r14, -8(%rbp)		# movq %r(3682), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3683)
	addq %r12, %rbx		# addq %r(3669), %r(3683)
	movq %rbx, -8(%rbp)		# movq %r(3683), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3684)
	movq (%rbx), %r12		# movq (%r(3684)), %r(3671)
	movq %r12, (%r13)		# movq %r(3671), (%r(3668))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3685)
	decq %rbx		# decq %r(3685)
	movq %rbx, -24(%rbp)		# movq %r(3685), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(3672)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3686)
	cmpq %rbx, %r12		# cmpq %r(3672), %r(3686)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3673)
	movq %r15, %r13		# movq %r(3641), %r(3674)
	addq %rbx, %r13		# addq %r(3673), %r(3674)
	movq %r13, %rax		# movq %r(3674), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
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
.L626:
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
.L647:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L644:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L633:
	.quad 2
	.quad 35
	.quad 49
	.text

