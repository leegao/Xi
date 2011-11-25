.att_syntax prefix
.text
.globl _IIam____t2baiibbiiiai
_IIam____t2baiibbiiiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $352, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3582)
	movq %rbx, -208(%rbp)		# movq %r(3582), -208(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3583)
	movq %rbx, -168(%rbp)		# movq %r(3583), -168(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(3584)
	movq %rbx, -152(%rbp)		# movq %r(3584), -152(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(3585)
	movq %rbx, -128(%rbp)		# movq %r(3585), -128(%rbp)
	movq %r8, %rbx		# movq %r8, %r(3586)
	movq %rbx, -64(%rbp)		# movq %r(3586), -64(%rbp)
	movq %r9, %rbx		# movq %r9, %r(3587)
	movq %rbx, -104(%rbp)		# movq %r(3587), -104(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(3588)
	movq %rbx, -32(%rbp)		# movq %r(3588), -32(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(3589)
	movq %rbx, -248(%rbp)		# movq %r(3589), -248(%rbp)
	movq $24, %rbx		# movq $24, %r(3590)
	movq %rbx, -296(%rbp)		# movq %r(3590), -296(%rbp)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(3591)
	movq %rbx, %rdi		# movq %r(3591), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3592)
	movq %rbx, -176(%rbp)		# movq %r(3592), -176(%rbp)
	movq $2, %rbx		# movq $2, %r(3593)
	movq %rbx, -8(%rbp)		# movq %r(3593), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3594)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(3595)
	movq %rbx, (%r12)		# movq %r(3594), (%r(3595))
	movq $8, %rbx		# movq $8, %r(3596)
	movq %rbx, -24(%rbp)		# movq %r(3596), -24(%rbp)
	movq -176(%rbp), %r13		# movq -176(%rbp), %r(3597)
	movq %r13, %rbx		# movq %r(3597), %r(3598)
	movq %rbx, -112(%rbp)		# movq %r(3598), -112(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3599)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(3600)
	addq %rbx, %r12		# addq %r(3599), %r(3600)
	movq %r12, -112(%rbp)		# movq %r(3600), -112(%rbp)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(3601)
	movq %r13, %rbx		# movq %r(3601), %r(3602)
	movq %rbx, -184(%rbp)		# movq %r(3602), -184(%rbp)
	movq $24, %rbx		# movq $24, %r(3603)
	movq %rbx, -136(%rbp)		# movq %r(3603), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(3604)
	movq %rbx, %rdi		# movq %r(3604), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3605)
	movq %rbx, -232(%rbp)		# movq %r(3605), -232(%rbp)
	movq $2, %rbx		# movq $2, %r(3606)
	movq %rbx, -312(%rbp)		# movq %r(3606), -312(%rbp)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(3607)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(3608)
	movq %r12, (%rbx)		# movq %r(3608), (%r(3607))
	movq $8, %rbx		# movq $8, %r(3609)
	movq %rbx, -272(%rbp)		# movq %r(3609), -272(%rbp)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(3610)
	movq %r13, %rbx		# movq %r(3610), %r(3611)
	movq %rbx, -216(%rbp)		# movq %r(3611), -216(%rbp)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(3612)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(3613)
	addq %rbx, %r12		# addq %r(3612), %r(3613)
	movq %r12, -216(%rbp)		# movq %r(3613), -216(%rbp)
	movq -216(%rbp), %r13		# movq -216(%rbp), %r(3614)
	movq %r13, %rbx		# movq %r(3614), %r(3615)
	movq %rbx, -160(%rbp)		# movq %r(3615), -160(%rbp)
	movq $0, %rbx		# movq $0, %r(3616)
	movq %rbx, -40(%rbp)		# movq %r(3616), -40(%rbp)
	movq -160(%rbp), %r13		# movq -160(%rbp), %r(3617)
	movq %r13, %rbx		# movq %r(3617), %r(3618)
	movq %rbx, -80(%rbp)		# movq %r(3618), -80(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3619)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3620)
	addq %rbx, %r12		# addq %r(3619), %r(3620)
	movq %r12, -80(%rbp)		# movq %r(3620), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(3621)
	movq %rbx, -192(%rbp)		# movq %r(3621), -192(%rbp)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(3622)
	movq %r13, %rbx		# movq %r(3622), %r(3623)
	movq %rbx, -304(%rbp)		# movq %r(3623), -304(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(3624)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(3625)
	xorq %rbx, %r12		# xorq %r(3624), %r(3625)
	movq %r12, -304(%rbp)		# movq %r(3625), -304(%rbp)
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(3626)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3627)
	movq %rbx, (%r12)		# movq %r(3626), (%r(3627))
	movq $1, %r13		# movq $1, %r(3450)
	movq %r13, %rbx		# movq %r(3450), %r(3628)
	movq %rbx, -200(%rbp)		# movq %r(3628), -200(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(3629)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3630)
	cmpq %r12, %rbx		# cmpq %r(3630), %r(3629)
	jl .L711		# jl .L711
	.L712:		# .L712:
	movq $0, %r13		# movq $0, %r(3451)
	movq %r13, %rbx		# movq %r(3451), %r(3631)
	movq %rbx, -200(%rbp)		# movq %r(3631), -200(%rbp)
	jmp .L711		# jmp .L711
	.L711:		# .L711:
	movq $8, %r13		# movq $8, %r(3452)
	movq -160(%rbp), %r14		# movq -160(%rbp), %r(3632)
	movq %r14, %rbx		# movq %r(3632), %r(3633)
	movq %rbx, -48(%rbp)		# movq %r(3633), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3634)
	addq %r13, %rbx		# addq %r(3452), %r(3634)
	movq %rbx, -48(%rbp)		# movq %r(3634), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3635)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(3636)
	movq %r12, (%rbx)		# movq %r(3636), (%r(3635))
	movq $0, %r13		# movq $0, %r(3454)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(3637)
	movq %r14, %rbx		# movq %r(3637), %r(3638)
	movq %rbx, -144(%rbp)		# movq %r(3638), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(3639)
	addq %r13, %rbx		# addq %r(3454), %r(3639)
	movq %rbx, -144(%rbp)		# movq %r(3639), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(3640)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(3641)
	movq %r12, (%rbx)		# movq %r(3641), (%r(3640))
	movq $24, %rbx		# movq $24, %r(3456)
	movq %rbx, %rdi		# movq %r(3456), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3642)
	movq %rbx, -280(%rbp)		# movq %r(3642), -280(%rbp)
	movq $2, %rbx		# movq $2, %r(3457)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(3643)
	movq %rbx, (%r12)		# movq %r(3457), (%r(3643))
	movq $8, %r13		# movq $8, %r(3458)
	movq -280(%rbp), %r14		# movq -280(%rbp), %r(3644)
	movq %r14, %rbx		# movq %r(3644), %r(3645)
	movq %rbx, -256(%rbp)		# movq %r(3645), -256(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(3646)
	addq %r13, %rbx		# addq %r(3458), %r(3646)
	movq %rbx, -256(%rbp)		# movq %r(3646), -256(%rbp)
	movq -256(%rbp), %r13		# movq -256(%rbp), %r(3647)
	movq %r13, %rbx		# movq %r(3647), %r(3648)
	movq %rbx, -72(%rbp)		# movq %r(3648), -72(%rbp)
	movq $0, %r13		# movq $0, %r(3460)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(3649)
	movq %r14, %rbx		# movq %r(3649), %r(3650)
	movq %rbx, -224(%rbp)		# movq %r(3650), -224(%rbp)
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(3651)
	addq %r13, %rbx		# addq %r(3460), %r(3651)
	movq %rbx, -224(%rbp)		# movq %r(3651), -224(%rbp)
	movq $1, %r13		# movq $1, %r(3462)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(3652)
	movq %r14, %rbx		# movq %r(3652), %r(3653)
	movq %rbx, -88(%rbp)		# movq %r(3653), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3654)
	xorq %r13, %rbx		# xorq %r(3462), %r(3654)
	movq %rbx, -88(%rbp)		# movq %r(3654), -88(%rbp)
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(3655)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(3656)
	movq %r12, (%rbx)		# movq %r(3656), (%r(3655))
	movq $1, %r12		# movq $1, %r(3464)
	movq %r12, %r15		# movq %r(3464), %r(3391)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(3657)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(3658)
	cmpq %r12, %rbx		# cmpq %r(3658), %r(3657)
	jge .L713		# jge .L713
	.L714:		# .L714:
	movq $0, %r12		# movq $0, %r(3465)
	movq %r12, %r15		# movq %r(3465), %r(3391)
	jmp .L713		# jmp .L713
	.L713:		# .L713:
	movq $8, %rbx		# movq $8, %r(3466)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(3659)
	movq %r13, %r12		# movq %r(3659), %r(3467)
	addq %rbx, %r12		# addq %r(3466), %r(3467)
	movq %r15, (%r12)		# movq %r(3391), (%r(3467))
	movq $8, %rbx		# movq $8, %r(3468)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(3660)
	movq %r14, %r12		# movq %r(3660), %r(3469)
	addq %rbx, %r12		# addq %r(3468), %r(3469)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3661)
	movq %rbx, (%r12)		# movq %r(3661), (%r(3469))
	movq $0, %r13		# movq $0, %r(3470)
	movq $8, %rbx		# movq $8, %r(3471)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(3662)
	movq %r12, %r14		# movq %r(3662), %r(3472)
	subq %rbx, %r14		# subq %r(3471), %r(3472)
	movq (%r14), %rbx		# movq (%r(3472)), %r(3473)
	cmpq %rbx, %r13		# cmpq %r(3473), %r(3470)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3474)
	movq %r13, %r14		# movq %r(3474), %r(3475)
	salq $3, %r14		# salq $3, %r(3475)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(3663)
	movq %r12, %r15		# movq %r(3663), %r(3476)
	addq %r14, %r15		# addq %r(3475), %r(3476)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3664)
	movq %r13, %rbx		# movq %r(3664), %r(3703)
	movq %rbx, -328(%rbp)		# movq %r(3703), -328(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(3665)
	movq -328(%rbp), %r12		# movq -328(%rbp), %r(3704)
	imulq %rbx, %r12		# imulq %r(3665), %r(3704)
	movq %r12, -328(%rbp)		# movq %r(3704), -328(%rbp)
	movq -328(%rbp), %r13		# movq -328(%rbp), %r(3705)
	movq %r13, %rbx		# movq %r(3705), %r(3706)
	movq %rbx, -320(%rbp)		# movq %r(3706), -320(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3666)
	movq -320(%rbp), %r12		# movq -320(%rbp), %r(3707)
	imulq %rbx, %r12		# imulq %r(3666), %r(3707)
	movq %r12, -320(%rbp)		# movq %r(3707), -320(%rbp)
	movq $17179869184, %r12		# movq $17179869184, %r(3479)
	movq -320(%rbp), %r14		# movq -320(%rbp), %r(3708)
	movq %r14, %rbx		# movq %r(3708), %r(3709)
	movq %rbx, -336(%rbp)		# movq %r(3709), -336(%rbp)
	movq -336(%rbp), %rbx		# movq -336(%rbp), %r(3710)
	imulq %r12, %rbx		# imulq %r(3479), %r(3710)
	movq %rbx, -336(%rbp)		# movq %r(3710), -336(%rbp)
	movq $72, %rbx		# movq $72, %r(3481)
	movq -336(%rbp), %r14		# movq -336(%rbp), %r(3711)
	movq %r14, %r12		# movq %r(3711), %r(3482)
	addq %rbx, %r12		# addq %r(3481), %r(3482)
	movq $128, %rbx		# movq $128, %r(3483)
	movq %r12, %rax		# movq %r(3482), %rax
	cqto		# cqto
	idivq %rbx		# idivq %r(3483)
	movq %rdx, %rbx		# movq %rdx, %r(3484)
	movq %rbx, (%r15)		# movq %r(3484), (%r(3476))
	movq $1, %r13		# movq $1, %r(3485)
	movq %r13, %rbx		# movq %r(3485), %r(3667)
	movq %rbx, -240(%rbp)		# movq %r(3667), -240(%rbp)
	movq $0, %r13		# movq $0, %r(3486)
	movq $8, %rbx		# movq $8, %r(3487)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3668)
	movq %r12, %r14		# movq %r(3668), %r(3488)
	subq %rbx, %r14		# subq %r(3487), %r(3488)
	movq (%r14), %rbx		# movq (%r(3488)), %r(3489)
	cmpq %rbx, %r13		# cmpq %r(3489), %r(3486)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3490)
	movq %r13, %r14		# movq %r(3490), %r(3491)
	salq $3, %r14		# salq $3, %r(3491)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3669)
	movq %r12, %r15		# movq %r(3669), %r(3492)
	addq %r14, %r15		# addq %r(3491), %r(3492)
	movq (%r15), %r13		# movq (%r(3492)), %r(3493)
	movq %r13, %rbx		# movq %r(3493), %r(3670)
	movq %rbx, -288(%rbp)		# movq %r(3670), -288(%rbp)
	movq $0, %r13		# movq $0, %r(3494)
	movq $8, %rbx		# movq $8, %r(3495)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(3671)
	movq %r12, %r14		# movq %r(3671), %r(3496)
	subq %rbx, %r14		# subq %r(3495), %r(3496)
	movq (%r14), %rbx		# movq (%r(3496)), %r(3497)
	cmpq %rbx, %r13		# cmpq %r(3497), %r(3494)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3498)
	movq %r13, %r14		# movq %r(3498), %r(3499)
	salq $3, %r14		# salq $3, %r(3499)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(3672)
	movq %r12, %r15		# movq %r(3672), %r(3500)
	addq %r14, %r15		# addq %r(3499), %r(3500)
	movq (%r15), %rbx		# movq (%r(3500)), %r(3501)
	testq $1, %rbx		# testq $1, %r(3501)
	jne .L729		# jne .L729
	.L731:		# .L731:
	movq $1, %r13		# movq $1, %r(3502)
	movq $8, %rbx		# movq $8, %r(3503)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3673)
	movq %r12, %r14		# movq %r(3673), %r(3504)
	subq %rbx, %r14		# subq %r(3503), %r(3504)
	movq (%r14), %rbx		# movq (%r(3504)), %r(3505)
	cmpq %rbx, %r13		# cmpq %r(3505), %r(3502)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(3506)
	movq %r13, %r14		# movq %r(3506), %r(3507)
	salq $3, %r14		# salq $3, %r(3507)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3674)
	movq %r12, %r15		# movq %r(3674), %r(3508)
	addq %r14, %r15		# addq %r(3507), %r(3508)
	movq (%r15), %r13		# movq (%r(3508)), %r(3509)
	movq %r13, %rbx		# movq %r(3509), %r(3675)
	movq %rbx, -16(%rbp)		# movq %r(3675), -16(%rbp)
	movq $1, %r13		# movq $1, %r(3510)
	movq $8, %rbx		# movq $8, %r(3511)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3676)
	movq %r12, %r14		# movq %r(3676), %r(3512)
	subq %rbx, %r14		# subq %r(3511), %r(3512)
	movq (%r14), %rbx		# movq (%r(3512)), %r(3513)
	cmpq %rbx, %r13		# cmpq %r(3513), %r(3510)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(3514)
	movq %r13, %r14		# movq %r(3514), %r(3515)
	salq $3, %r14		# salq $3, %r(3515)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3677)
	movq %r12, %r15		# movq %r(3677), %r(3516)
	addq %r14, %r15		# addq %r(3515), %r(3516)
	movq (%r15), %rbx		# movq (%r(3516)), %r(3517)
	testq $1, %rbx		# testq $1, %r(3517)
	jne .L729		# jne .L729
	.L730:		# .L730:
	movq $0, %r13		# movq $0, %r(3518)
	movq %r13, %rbx		# movq %r(3518), %r(3678)
	movq %rbx, -240(%rbp)		# movq %r(3678), -240(%rbp)
	jmp .L729		# jmp .L729
	.L729:		# .L729:
	movq $0, %r13		# movq $0, %r(3519)
	movq $8, %rbx		# movq $8, %r(3520)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3679)
	movq %r12, %r14		# movq %r(3679), %r(3521)
	subq %rbx, %r14		# subq %r(3520), %r(3521)
	movq (%r14), %rbx		# movq (%r(3521)), %r(3522)
	cmpq %rbx, %r13		# cmpq %r(3522), %r(3519)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3523)
	movq %r13, %r14		# movq %r(3523), %r(3524)
	salq $3, %r14		# salq $3, %r(3524)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3680)
	movq %r12, %r15		# movq %r(3680), %r(3525)
	addq %r14, %r15		# addq %r(3524), %r(3525)
	movq (%r15), %r12		# movq (%r(3525)), %r(3526)
	movq %r12, %r14		# movq %r(3526), %r(3396)
	movq $0, %r13		# movq $0, %r(3527)
	movq $8, %r12		# movq $8, %r(3528)
	movq %r14, %rbx		# movq %r(3396), %r(3681)
	movq %rbx, -96(%rbp)		# movq %r(3681), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(3682)
	subq %r12, %rbx		# subq %r(3528), %r(3682)
	movq %rbx, -96(%rbp)		# movq %r(3682), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(3683)
	movq (%rbx), %r12		# movq (%r(3683)), %r(3530)
	cmpq %r12, %r13		# cmpq %r(3530), %r(3527)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3531)
	movq %r13, %rbx		# movq %r(3531), %r(3532)
	salq $3, %rbx		# salq $3, %r(3532)
	movq %r14, %r12		# movq %r(3396), %r(3533)
	addq %rbx, %r12		# addq %r(3532), %r(3533)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(3684)
	movq %rbx, (%r12)		# movq %r(3684), (%r(3533))
	movq $0, %r13		# movq $0, %r(3534)
	movq $8, %rbx		# movq $8, %r(3535)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(3685)
	movq %r12, %r14		# movq %r(3685), %r(3536)
	subq %rbx, %r14		# subq %r(3535), %r(3536)
	movq (%r14), %rbx		# movq (%r(3536)), %r(3537)
	cmpq %rbx, %r13		# cmpq %r(3537), %r(3534)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3538)
	movq %r13, %r14		# movq %r(3538), %r(3539)
	salq $3, %r14		# salq $3, %r(3539)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(3686)
	movq %r12, %r15		# movq %r(3686), %r(3540)
	addq %r14, %r15		# addq %r(3539), %r(3540)
	movq (%r15), %rbx		# movq (%r(3540)), %r(3541)
	movq %rbx, %rdi		# movq %r(3541), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(3429)
	movq %rbx, %rdi		# movq %r(3429), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r13		# movq $1, %r(3542)
	movq %r13, %rbx		# movq %r(3542), %r(3687)
	movq %rbx, -120(%rbp)		# movq %r(3687), -120(%rbp)
	movq $0, %r13		# movq $0, %r(3543)
	movq $8, %rbx		# movq $8, %r(3544)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3688)
	movq %r12, %r14		# movq %r(3688), %r(3545)
	subq %rbx, %r14		# subq %r(3544), %r(3545)
	movq (%r14), %rbx		# movq (%r(3545)), %r(3546)
	cmpq %rbx, %r13		# cmpq %r(3546), %r(3543)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3547)
	movq %r13, %r14		# movq %r(3547), %r(3548)
	salq $3, %r14		# salq $3, %r(3548)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3689)
	movq %r12, %r15		# movq %r(3689), %r(3549)
	addq %r14, %r15		# addq %r(3548), %r(3549)
	movq (%r15), %r12		# movq (%r(3549)), %r(3550)
	movq %r12, %rbx		# movq %r(3550), %r(3411)
	movq $0, %r14		# movq $0, %r(3551)
	movq $8, %r13		# movq $8, %r(3552)
	movq %rbx, %r12		# movq %r(3411), %r(3690)
	movq %r12, -264(%rbp)		# movq %r(3690), -264(%rbp)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(3691)
	subq %r13, %r12		# subq %r(3552), %r(3691)
	movq %r12, -264(%rbp)		# movq %r(3691), -264(%rbp)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(3692)
	movq (%r12), %r13		# movq (%r(3692)), %r(3554)
	cmpq %r13, %r14		# cmpq %r(3554), %r(3551)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3555)
	movq %r13, %r14		# movq %r(3555), %r(3556)
	salq $3, %r14		# salq $3, %r(3556)
	movq %rbx, %r12		# movq %r(3411), %r(3557)
	addq %r14, %r12		# addq %r(3556), %r(3557)
	movq (%r12), %r14		# movq (%r(3557)), %r(3558)
	movq $1, %rbx		# movq $1, %r(3559)
	movq %r14, %r13		# movq %r(3558), %r(3560)
	xorq %rbx, %r13		# xorq %r(3559), %r(3560)
	testq $1, %r13		# testq $1, %r(3560)
	jne .L743		# jne .L743
	.L744:		# .L744:
	movq $1, %r13		# movq $1, %r(3561)
	movq $8, %rbx		# movq $8, %r(3562)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3693)
	movq %r12, %r14		# movq %r(3693), %r(3563)
	subq %rbx, %r14		# subq %r(3562), %r(3563)
	movq (%r14), %rbx		# movq (%r(3563)), %r(3564)
	cmpq %rbx, %r13		# cmpq %r(3564), %r(3561)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(3565)
	movq %r13, %r14		# movq %r(3565), %r(3566)
	salq $3, %r14		# salq $3, %r(3566)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(3694)
	movq %r12, %r15		# movq %r(3694), %r(3567)
	addq %r14, %r15		# addq %r(3566), %r(3567)
	movq (%r15), %r13		# movq (%r(3567)), %r(3568)
	movq %r13, %rbx		# movq %r(3568), %r(3695)
	movq %rbx, -56(%rbp)		# movq %r(3695), -56(%rbp)
	movq $1, %r13		# movq $1, %r(3569)
	movq $8, %rbx		# movq $8, %r(3570)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3696)
	movq %r12, %r14		# movq %r(3696), %r(3571)
	subq %rbx, %r14		# subq %r(3570), %r(3571)
	movq (%r14), %rbx		# movq (%r(3571)), %r(3572)
	cmpq %rbx, %r13		# cmpq %r(3572), %r(3569)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(3573)
	movq %r13, %r14		# movq %r(3573), %r(3574)
	salq $3, %r14		# salq $3, %r(3574)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3697)
	movq %r12, %r15		# movq %r(3697), %r(3575)
	addq %r14, %r15		# addq %r(3574), %r(3575)
	movq (%r15), %rbx		# movq (%r(3575)), %r(3576)
	testq $1, %rbx		# testq $1, %r(3576)
	jne .L742		# jne .L742
	.L743:		# .L743:
	movq $0, %r13		# movq $0, %r(3577)
	movq %r13, %rbx		# movq %r(3577), %r(3698)
	movq %rbx, -120(%rbp)		# movq %r(3698), -120(%rbp)
	jmp .L742		# jmp .L742
	.L742:		# .L742:
	movq $0, %rbx		# movq $0, %r(3578)
	movq -208(%rbp), %r14		# movq -208(%rbp), %r(3699)
	movq %r14, %r12		# movq %r(3699), %r(3579)
	addq %rbx, %r12		# addq %r(3578), %r(3579)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(3700)
	movq %rbx, (%r12)		# movq %r(3700), (%r(3579))
	movq $8, %rbx		# movq $8, %r(3580)
	movq -208(%rbp), %r14		# movq -208(%rbp), %r(3701)
	movq %r14, %r12		# movq %r(3701), %r(3581)
	addq %rbx, %r12		# addq %r(3580), %r(3581)
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(3702)
	movq %rbx, (%r12)		# movq %r(3702), (%r(3581))
	jmp .L710		# jmp .L710
	.L710:		# .L710:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $352, %rsp
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
	movq $16, %rbx		# movq $16, %r(3712)
	movq %rbx, %rdi		# movq %r(3712), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3735)
	movq %rbx, -48(%rbp)		# movq %r(3735), -48(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(3736)
	movq %r13, %rbx		# movq %r(3736), %r(3737)
	movq %rbx, -32(%rbp)		# movq %r(3737), -32(%rbp)
	leaq .L746(%rip), %rdi		# leaq .L746(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3738)
	movq %rbx, -64(%rbp)		# movq %r(3738), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(3739)
	movq %rbx, -72(%rbp)		# movq %r(3739), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(3740)
	movq %rbx, -40(%rbp)		# movq %r(3740), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(3741)
	movq %rbx, -8(%rbp)		# movq %r(3741), -8(%rbp)
	movq $2, %rbx		# movq $2, %r(3742)
	movq %rbx, -16(%rbp)		# movq %r(3742), -16(%rbp)
	movq $3, %rbx		# movq $3, %r(3743)
	movq %rbx, -56(%rbp)		# movq %r(3743), -56(%rbp)
	movq $4, %rbx		# movq $4, %r(3744)
	movq %rbx, -24(%rbp)		# movq %r(3744), -24(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3745)
	movq %rbx, %rdi		# movq %r(3745), %rdi
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3746)
	movq %rbx, %rsi		# movq %r(3746), %rsi
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3747)
	movq %rbx, %rdx		# movq %r(3747), %rdx
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3748)
	movq %rbx, %rcx		# movq %r(3748), %rcx
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3749)
	movq %rbx, %r8		# movq %r(3749), %r8
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3750)
	movq %rbx, %r9		# movq %r(3750), %r9
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3751)
	pushq %rbx		# pushq %r(3751)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3752)
	pushq %rbx		# pushq %r(3752)
	call _IIam____t2baiibbiiiai		# call _IIam____t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3753)
	movq 0(%rbx), %r13		# movq 0(%r(3753)), %r(toB)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3754)
	movq 8(%rbx), %r15		# movq 8(%r(3754)), %r(a)
	testq $1, %r13		# testq $1, %r(toB)
	jne .L747		# jne .L747
	.L749:		# .L749:
	movq $1, %rbx		# movq $1, %r(3720)
	movq %r13, %r12		# movq %r(toB), %r(3721)
	xorq %rbx, %r12		# xorq %r(3720), %r(3721)
	movq $1, %rbx		# movq $1, %r(3722)
	movq %r12, %r13		# movq %r(3721), %r(3723)
	xorq %rbx, %r13		# xorq %r(3722), %r(3723)
	testq $1, %r13		# testq $1, %r(3723)
	jne .L748		# jne .L748
	.L747:		# .L747:
	movq %r15, %rdi		# movq %r(a), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L748		# jmp .L748
	.L748:		# .L748:
	movq $1, %r12		# movq $1, %r(3724)
	movq %r12, %r13		# movq %r(3724), %r(3425)
	movq $0, %r12		# movq $0, %r(3725)
	movq $8, %rbx		# movq $8, %r(3726)
	movq %r15, %r14		# movq %r(a), %r(3727)
	subq %rbx, %r14		# subq %r(3726), %r(3727)
	movq (%r14), %rbx		# movq (%r(3727)), %r(3728)
	cmpq %rbx, %r12		# cmpq %r(3728), %r(3725)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %rbx		# movq $0, %r(3729)
	movq %rbx, %r12		# movq %r(3729), %r(3730)
	salq $3, %r12		# salq $3, %r(3730)
	movq %r15, %rbx		# movq %r(a), %r(3731)
	addq %r12, %rbx		# addq %r(3730), %r(3731)
	movq (%rbx), %r12		# movq (%r(3731)), %r(3732)
	movq $72, %rbx		# movq $72, %r(3733)
	cmpq %rbx, %r12		# cmpq %r(3733), %r(3732)
	je .L752		# je .L752
	.L753:		# .L753:
	movq $0, %r12		# movq $0, %r(3734)
	movq %r12, %r13		# movq %r(3734), %r(3425)
	jmp .L752		# jmp .L752
	.L752:		# .L752:
	movq %r13, %rdi		# movq %r(3425), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L745		# jmp .L745
	.L745:		# .L745:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3767)
	movq %rbx, -24(%rbp)		# movq %r(3767), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3768)
	movq (%rbx), %r13		# movq (%r(3768)), %r(3755)
	movq %r13, %r12		# movq %r(3755), %r(3769)
	movq %r12, -8(%rbp)		# movq %r(3769), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3770)
	movq %r12, %r13		# movq %r(3770), %r(3756)
	salq $3, %r13		# salq $3, %r(3756)
	movq $8, %rbx		# movq $8, %r(3757)
	movq %r13, %r14		# movq %r(3756), %r(3758)
	addq %rbx, %r14		# addq %r(3757), %r(3758)
	movq %r14, %rdi		# movq %r(3758), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3436)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3771)
	movq %r13, %rbx		# movq %r(3771), %r(3759)
	salq $3, %rbx		# salq $3, %r(3759)
	movq %r15, %r13		# movq %r(3436), %r(3760)
	addq %rbx, %r13		# addq %r(3759), %r(3760)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3772)
	movq %rbx, %r12		# movq %r(3772), %r(3761)
	salq $3, %r12		# salq $3, %r(3761)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3773)
	movq %rbx, %r14		# movq %r(3773), %r(3774)
	movq %r14, -16(%rbp)		# movq %r(3774), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3775)
	addq %r12, %rbx		# addq %r(3761), %r(3775)
	movq %rbx, -16(%rbp)		# movq %r(3775), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3776)
	movq (%rbx), %r12		# movq (%r(3776)), %r(3763)
	movq %r12, (%r13)		# movq %r(3763), (%r(3760))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3777)
	decq %rbx		# decq %r(3777)
	movq %rbx, -8(%rbp)		# movq %r(3777), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(3764)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3778)
	cmpq %rbx, %r12		# cmpq %r(3764), %r(3778)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(3765)
	movq %r15, %r13		# movq %r(3436), %r(3766)
	addq %rbx, %r13		# addq %r(3765), %r(3766)
	movq %r13, %rax		# movq %r(3766), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
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
.L746:
	.quad 10
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
