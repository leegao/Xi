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
	movq $45, %rbx		# movq $45, %r(3667)
	movq %rbx, %r13		# movq %r(3667), %r(x)
	jmp .L698		# jmp .L698
	.L698:		# .L698:
	movq $1, %r14		# movq $1, %r(3668)
	movq $0, %rbx		# movq $0, %r(3669)
	cmpq %rbx, %r13		# cmpq %r(3669), %r(x)
	jg .L701		# jg .L701
	.L702:		# .L702:
	movq $0, %r14		# movq $0, %r(3670)
	jmp .L701		# jmp .L701
	.L701:		# .L701:
	movq $0, %rbx		# movq $0, %r(3671)
	cmpq %rbx, %r14		# cmpq %r(3671), %r(3658)
	je .L700		# je .L700
	.L699:		# .L699:
	movq $16, %rbx		# movq $16, %r(3672)
	movq %rbx, %rdi		# movq %r(3672), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3661)
	movq $1, %rbx		# movq $1, %r(3673)
	movq %rbx, (%r15)		# movq %r(3673), (%r(3661))
	movq $8, %rbx		# movq $8, %r(3674)
	addq %rbx, %r15		# addq %r(3674), %r(3675)
	movq $0, %rbx		# movq $0, %r(3676)
	movq %r15, %r12		# movq %r(3659), %r(3677)
	addq %rbx, %r12		# addq %r(3676), %r(3677)
	movq $55, %rbx		# movq $55, %r(3678)
	movq %rbx, (%r12)		# movq %r(3678), (%r(3677))
	leaq .L703(%rip), %rdi		# leaq .L703(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3662)
	movq %r15, %rdi		# movq %r(3659), %rdi
	movq %rbx, %rsi		# movq %r(3662), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(3663)
	movq %rbx, %rdi		# movq %r(3663), %rdi
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3692)
	movq %rbx, -16(%rbp)		# movq %r(3692), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3693)
	movq (%rbx), %r12		# movq (%r(3693)), %r(3680)
	movq %r12, -24(%rbp)		# movq %r(3694), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3695)
	salq $3, %rbx		# salq $3, %r(3681)
	movq $8, %r12		# movq $8, %r(3682)
	addq %r12, %rbx		# addq %r(3682), %r(3683)
	movq %rbx, %rdi		# movq %r(3683), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3665)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3696)
	salq $3, %r12		# salq $3, %r(3684)
	movq %r14, %r13		# movq %r(3665), %r(3685)
	addq %r12, %r13		# addq %r(3684), %r(3685)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3697)
	movq %rbx, %r12		# movq %r(3697), %r(3686)
	salq $3, %r12		# salq $3, %r(3686)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3698)
	movq %rbx, -8(%rbp)		# movq %r(3699), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3700)
	addq %r12, %rbx		# addq %r(3686), %r(3700)
	movq %rbx, -8(%rbp)		# movq %r(3700), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3701)
	movq (%rbx), %rbx		# movq (%r(3701)), %r(3688)
	movq %rbx, (%r13)		# movq %r(3688), (%r(3685))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3702)
	decq %rbx		# decq %r(3702)
	movq %rbx, -24(%rbp)		# movq %r(3702), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(3689)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3703)
	cmpq %rbx, %r12		# cmpq %r(3689), %r(3703)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3690)
	movq %r14, %r12		# movq %r(3665), %r(3691)
	addq %rbx, %r12		# addq %r(3690), %r(3691)
	movq %r12, %rax		# movq %r(3691), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(3727)
	movq %rbx, -24(%rbp)		# movq %r(3727), -24(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3728)
	movq %rbx, -40(%rbp)		# movq %r(3728), -40(%rbp)
	movq $0, %r12		# movq $0, %r(3704)
	movq %r12, -8(%rbp)		# movq %r(3729), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(3705)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3730)
	subq %rbx, %r13		# subq %r(3705), %r(3706)
	movq (%r13), %r12		# movq (%r(3706)), %r(3707)
	movq %r12, -32(%rbp)		# movq %r(3731), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(3708)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(3732)
	subq %rbx, %r13		# subq %r(3708), %r(3709)
	movq (%r13), %rbx		# movq (%r(3709)), %r(3710)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3733)
	addq %rbx, %r12		# addq %r(3710), %r(3711)
	movq %r12, -48(%rbp)		# movq %r(3734), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(3712)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(3735)
	addq %rbx, %r13		# addq %r(3712), %r(3713)
	movq %r13, %rdi		# movq %r(3713), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3666)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3736)
	movq %r12, (%rbx)		# movq %r(3736), (%r(3666))
	movq $8, %r12		# movq $8, %r(3714)
	addq %r12, %rbx		# addq %r(3714), %r(3715)
	movq %rbx, -16(%rbp)		# movq %r(3737), -16(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3738)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3739)
	cmpq %r12, %rbx		# cmpq %r(3739), %r(3738)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3740)
	salq $3, %r13		# salq $3, %r(3716)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3741)
	movq %rbx, -72(%rbp)		# movq %r(3742), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3743)
	addq %r13, %r12		# addq %r(3716), %r(3743)
	movq %r12, -72(%rbp)		# movq %r(3743), -72(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3744)
	salq $3, %r13		# salq $3, %r(3718)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3745)
	movq %rbx, -56(%rbp)		# movq %r(3746), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3747)
	addq %r13, %r12		# addq %r(3718), %r(3747)
	movq %r12, -56(%rbp)		# movq %r(3747), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3748)
	movq (%rbx), %rbx		# movq (%r(3748)), %r(3720)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3749)
	movq %rbx, (%r12)		# movq %r(3720), (%r(3749))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3750)
	incq %rbx		# incq %r(3750)
	movq %rbx, -8(%rbp)		# movq %r(3750), -8(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3751)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3752)
	cmpq %r12, %rbx		# cmpq %r(3752), %r(3751)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3753)
	salq $3, %r13		# salq $3, %r(3721)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(3754)
	addq %r13, %r14		# addq %r(3721), %r(3722)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(3755)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3756)
	subq %r13, %r15		# subq %r(3756), %r(3723)
	salq $3, %r15		# salq $3, %r(3724)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3757)
	movq %rbx, -64(%rbp)		# movq %r(3758), -64(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3759)
	addq %r15, %r13		# addq %r(3724), %r(3759)
	movq %r13, -64(%rbp)		# movq %r(3759), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3760)
	movq (%rbx), %rbx		# movq (%r(3760)), %r(3726)
	movq %rbx, (%r14)		# movq %r(3726), (%r(3722))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3761)
	incq %rbx		# incq %r(3761)
	movq %rbx, -8(%rbp)		# movq %r(3761), -8(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3762)
	movq %rbx, %rax		# movq %r(3762), %rax
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

