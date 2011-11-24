.att_syntax prefix
.text
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
	movq $45, %rbx		# movq $45, %r(3645)
	movq %rbx, %r13		# movq %r(3645), %r(x)
	jmp .L698		# jmp .L698
	.L698:		# .L698:
	movq $1, %r14		# movq $1, %r(3646)
	movq $0, %rbx		# movq $0, %r(3647)
	cmpq %rbx, %r13		# cmpq %r(3647), %r(x)
	jg .L701		# jg .L701
	.L702:		# .L702:
	movq $0, %r14		# movq $0, %r(3648)
	jmp .L701		# jmp .L701
	.L701:		# .L701:
	movq $0, %rbx		# movq $0, %r(3649)
	cmpq %rbx, %r14		# cmpq %r(3649), %r(3636)
	je .L700		# je .L700
	.L699:		# .L699:
	movq $16, %rbx		# movq $16, %r(3650)
	movq %rbx, %rdi		# movq %r(3650), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3639)
	movq $1, %rbx		# movq $1, %r(3651)
	movq %rbx, (%r15)		# movq %r(3651), (%r(3639))
	movq $8, %rbx		# movq $8, %r(3652)
	addq %rbx, %r15		# addq %r(3652), %r(3653)
	movq $0, %rbx		# movq $0, %r(3654)
	movq %r15, %r12		# movq %r(3637), %r(3655)
	addq %rbx, %r12		# addq %r(3654), %r(3655)
	movq $55, %rbx		# movq $55, %r(3656)
	movq %rbx, (%r12)		# movq %r(3656), (%r(3655))
	leaq .L703(%rip), %rdi		# leaq .L703(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3640)
	movq %r15, %rdi		# movq %r(3637), %rdi
	movq %rbx, %rsi		# movq %r(3640), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(3641)
	movq %rbx, %rdi		# movq %r(3641), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(x)
	jmp .L698		# jmp .L698
	.L700:		# .L700:
	jmp .L697		# jmp .L697
	.L697:		# .L697:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3673)
	movq %rbx, -24(%rbp)		# movq %r(3673), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3674)
	movq (%rbx), %rbx		# movq (%r(3674)), %r(3658)
	movq %rbx, %r12		# movq %r(t10), %r(3659)
	salq $3, %r12		# salq $3, %r(3659)
	movq $8, %r13		# movq $8, %r(3660)
	addq %r13, %r12		# addq %r(3660), %r(3661)
	movq %r12, %rdi		# movq %r(3661), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(3675)
	movq %r12, -32(%rbp)		# movq %r(3675), -32(%rbp)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %rbx, %r14		# movq %r(t10), %r(3662)
	salq $3, %r14		# salq $3, %r(3662)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3676)
	movq %r13, -16(%rbp)		# movq %r(3677), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3678)
	addq %r14, %r12		# addq %r(3662), %r(3678)
	movq %r12, -16(%rbp)		# movq %r(3678), -16(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(3664)
	salq $3, %r14		# salq $3, %r(3664)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3679)
	movq %r13, -8(%rbp)		# movq %r(3670), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3671)
	addq %r14, %r12		# addq %r(3664), %r(3671)
	movq %r12, -8(%rbp)		# movq %r(3671), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3672)
	movq (%r12), %r12		# movq (%r(3672)), %r(3666)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3680)
	movq %r12, (%r13)		# movq %r(3666), (%r(3680))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(3667)
	cmpq %r12, %rbx		# cmpq %r(3667), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3668)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3681)
	addq %rbx, %r13		# addq %r(3668), %r(3669)
	movq %r13, %rax		# movq %r(3669), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3705)
	movq %rbx, -8(%rbp)		# movq %r(3705), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3706)
	movq %rbx, -56(%rbp)		# movq %r(3706), -56(%rbp)
	movq $0, %r12		# movq $0, %r(3682)
	movq %r12, -32(%rbp)		# movq %r(3707), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(3683)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3708)
	subq %rbx, %r13		# subq %r(3683), %r(3684)
	movq (%r13), %r12		# movq (%r(3684)), %r(3685)
	movq %r12, -72(%rbp)		# movq %r(3709), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(3686)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(3710)
	subq %rbx, %r13		# subq %r(3686), %r(3687)
	movq (%r13), %rbx		# movq (%r(3687)), %r(3688)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3711)
	addq %rbx, %r12		# addq %r(3688), %r(3689)
	movq %r12, -64(%rbp)		# movq %r(3712), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(3690)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3713)
	addq %rbx, %r13		# addq %r(3690), %r(3691)
	movq %r13, %rdi		# movq %r(3691), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3644)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3714)
	movq %r12, (%rbx)		# movq %r(3714), (%r(3644))
	movq $8, %r12		# movq $8, %r(3692)
	addq %r12, %rbx		# addq %r(3692), %r(3693)
	movq %rbx, -16(%rbp)		# movq %r(3715), -16(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3716)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3717)
	cmpq %r12, %rbx		# cmpq %r(3717), %r(3716)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3718)
	salq $3, %r13		# salq $3, %r(3694)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3719)
	movq %rbx, -48(%rbp)		# movq %r(3720), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3721)
	addq %r13, %r12		# addq %r(3694), %r(3721)
	movq %r12, -48(%rbp)		# movq %r(3721), -48(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3722)
	salq $3, %r13		# salq $3, %r(3696)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3723)
	movq %rbx, -40(%rbp)		# movq %r(3724), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3725)
	addq %r13, %r12		# addq %r(3696), %r(3725)
	movq %r12, -40(%rbp)		# movq %r(3725), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3726)
	movq (%rbx), %rbx		# movq (%r(3726)), %r(3698)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3727)
	movq %rbx, (%r12)		# movq %r(3698), (%r(3727))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3728)
	incq %rbx		# incq %r(3728)
	movq %rbx, -32(%rbp)		# movq %r(3728), -32(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3729)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3730)
	cmpq %r12, %rbx		# cmpq %r(3730), %r(3729)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3731)
	salq $3, %r13		# salq $3, %r(3699)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(3732)
	addq %r13, %r14		# addq %r(3699), %r(3700)
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(3733)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(3734)
	subq %r13, %r15		# subq %r(3734), %r(3701)
	salq $3, %r15		# salq $3, %r(3702)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3735)
	movq %rbx, -24(%rbp)		# movq %r(3736), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3737)
	addq %r15, %r13		# addq %r(3702), %r(3737)
	movq %r13, -24(%rbp)		# movq %r(3737), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3738)
	movq (%rbx), %rbx		# movq (%r(3738)), %r(3704)
	movq %rbx, (%r14)		# movq %r(3704), (%r(3700))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3739)
	incq %rbx		# incq %r(3739)
	movq %rbx, -32(%rbp)		# movq %r(3739), -32(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3740)
	movq %rbx, %rax		# movq %r(3740), %rax
	jmp .L23		# jmp .L23
	.L23:		# .L23:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L703:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

