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
	movq %rdi, %rbx		# movq %rdi, %r(3693)
	movq $32, %rbx		# movq $32, %r(3705)
	movq %rbx, %rdi		# movq %r(3705), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3699)
	movq $3, %rbx		# movq $3, %r(3706)
	movq %rbx, (%r14)		# movq %r(3706), (%r(3699))
	movq $8, %rbx		# movq $8, %r(3707)
	movq %r14, %r13		# movq %r(3699), %r(3708)
	addq %rbx, %r13		# addq %r(3707), %r(3708)
	movq %r13, %r14		# movq %r(3708), %r(3697)
	movq $0, %rbx		# movq $0, %r(3709)
	movq %r14, %r13		# movq %r(3697), %r(3710)
	addq %rbx, %r13		# addq %r(3709), %r(3710)
	movq $7, %rbx		# movq $7, %r(3711)
	movq %rbx, (%r13)		# movq %r(3711), (%r(3710))
	movq $8, %rbx		# movq $8, %r(3712)
	movq %r14, %r13		# movq %r(3697), %r(3713)
	addq %rbx, %r13		# addq %r(3712), %r(3713)
	movq $8, %rbx		# movq $8, %r(3714)
	movq %rbx, (%r13)		# movq %r(3714), (%r(3713))
	movq $16, %rbx		# movq $16, %r(3715)
	movq %r14, %r13		# movq %r(3697), %r(3716)
	addq %rbx, %r13		# addq %r(3715), %r(3716)
	movq $9, %rbx		# movq $9, %r(3717)
	movq %rbx, (%r13)		# movq %r(3717), (%r(3716))
	movq %r14, %rdi		# movq %r(3697), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L672		# jmp .L672
	.L672:		# .L672:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_i
_Ig_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $60, %rbx		# movq $60, %r(3718)
	movq %rbx, %rax		# movq %r(3718), %rax
	jmp .L674		# jmp .L674
	.L674:		# .L674:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3762)
	movq %rbx, -80(%rbp)		# movq %r(3762), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(3719)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(3763)
	movq %r14, %r12		# movq %r(3763), %r(3720)
	subq %rbx, %r12		# subq %r(3719), %r(3720)
	movq (%r12), %r13		# movq (%r(3720)), %r(3721)
	movq %r13, %rbx		# movq %r(3721), %r(3764)
	movq %rbx, -8(%rbp)		# movq %r(3764), -8(%rbp)
	movq $1, %r13		# movq $1, %r(3722)
	movq %r13, %rbx		# movq %r(3722), %r(3765)
	movq %rbx, -72(%rbp)		# movq %r(3765), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(3723)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3766)
	cmpq %rbx, %r12		# cmpq %r(3723), %r(3766)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(3724)
	movq %rbx, %rax		# movq %r(3724), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L318:		# .L318:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3767)
	movq %r13, %rbx		# movq %r(3767), %r(3725)
	salq $3, %rbx		# salq $3, %r(3725)
	movq %rbx, %rdi		# movq %r(3725), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3768)
	movq %rbx, -96(%rbp)		# movq %r(3768), -96(%rbp)
	movq $1, %rbx		# movq $1, %r(3726)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3769)
	movq %r14, %r12		# movq %r(3769), %r(3727)
	subq %rbx, %r12		# subq %r(3726), %r(3727)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(3770)
	movq %r12, (%rbx)		# movq %r(3727), (%r(3770))
	movq $8, %rbx		# movq $8, %r(3728)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(3771)
	movq %r14, %r13		# movq %r(3771), %r(3729)
	addq %rbx, %r13		# addq %r(3728), %r(3729)
	movq %r13, %r12		# movq %r(3729), %r(3772)
	movq %r12, -16(%rbp)		# movq %r(3772), -16(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3773)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3774)
	cmpq %rbx, %r12		# cmpq %r(3773), %r(3774)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(3730)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(3775)
	movq %r14, %r12		# movq %r(3775), %r(3731)
	subq %rbx, %r12		# subq %r(3730), %r(3731)
	movq (%r12), %rbx		# movq (%r(3731)), %r(3732)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3776)
	cmpq %rbx, %r12		# cmpq %r(3732), %r(3776)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(3733)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(3777)
	movq %r14, %r13		# movq %r(3777), %r(3734)
	subq %rbx, %r13		# subq %r(3733), %r(3734)
	movq %r13, %r12		# movq %r(3734), %r(3778)
	movq %r12, -32(%rbp)		# movq %r(3778), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(3735)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(3779)
	movq %r14, %r12		# movq %r(3779), %r(3736)
	subq %rbx, %r12		# subq %r(3735), %r(3736)
	movq (%r12), %rbx		# movq (%r(3736)), %r(3737)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3780)
	cmpq %rbx, %r12		# cmpq %r(3737), %r(3780)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3781)
	movq %r13, %r14		# movq %r(3781), %r(3738)
	salq $3, %r14		# salq $3, %r(3738)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3782)
	movq %r12, %r15		# movq %r(3782), %r(3739)
	addq %r14, %r15		# addq %r(3738), %r(3739)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(3783)
	movq %r13, %rbx		# movq %r(3783), %r(3814)
	movq %rbx, -104(%rbp)		# movq %r(3814), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(3815)
	salq $3, %rbx		# salq $3, %r(3815)
	movq %rbx, -104(%rbp)		# movq %r(3815), -104(%rbp)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(3784)
	movq %r13, %rbx		# movq %r(3784), %r(3785)
	movq %rbx, -88(%rbp)		# movq %r(3785), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3786)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(3816)
	addq %r12, %rbx		# addq %r(3816), %r(3786)
	movq %rbx, -88(%rbp)		# movq %r(3786), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3787)
	movq (%rbx), %r12		# movq (%r(3787)), %r(3742)
	movq %r12, (%r15)		# movq %r(3742), (%r(3739))
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3788)
	incq %rbx		# incq %r(3788)
	movq %rbx, -72(%rbp)		# movq %r(3788), -72(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(3743)
	movq $8, %rbx		# movq $8, %r(3744)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3789)
	movq %r12, %r14		# movq %r(3789), %r(3745)
	subq %rbx, %r14		# subq %r(3744), %r(3745)
	movq (%r14), %rbx		# movq (%r(3745)), %r(3746)
	cmpq %rbx, %r13		# cmpq %r(3746), %r(3743)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3747)
	movq %r13, %r14		# movq %r(3747), %r(3748)
	salq $3, %r14		# salq $3, %r(3748)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3790)
	movq %r12, %r15		# movq %r(3790), %r(3749)
	addq %r14, %r15		# addq %r(3748), %r(3749)
	movq (%r15), %r13		# movq (%r(3749)), %r(3750)
	movq %r13, %rbx		# movq %r(3750), %r(3791)
	movq %rbx, -72(%rbp)		# movq %r(3791), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(3751)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(3792)
	movq %r14, %r13		# movq %r(3792), %r(3752)
	addq %rbx, %r13		# addq %r(3751), %r(3752)
	movq %r13, %r12		# movq %r(3752), %r(3753)
	salq $3, %r12		# salq $3, %r(3753)
	movq %r12, %rdi		# movq %r(3753), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3702)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3793)
	movq %rbx, (%r14)		# movq %r(3793), (%r(3702))
	movq $8, %r13		# movq $8, %r(3754)
	movq %r14, %r12		# movq %r(3702), %r(3794)
	movq %r12, -64(%rbp)		# movq %r(3794), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3795)
	addq %r13, %rbx		# addq %r(3754), %r(3795)
	movq %rbx, -64(%rbp)		# movq %r(3795), -64(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3796)
	movq %r13, %rbx		# movq %r(3796), %r(3797)
	movq %rbx, -40(%rbp)		# movq %r(3797), -40(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(3756)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3798)
	cmpq %rbx, %r12		# cmpq %r(3756), %r(3798)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3799)
	decq %rbx		# decq %r(3799)
	movq %rbx, -72(%rbp)		# movq %r(3799), -72(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3800)
	movq %rbx, %rdi		# movq %r(3800), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(3801)
	movq %rbx, -24(%rbp)		# movq %r(3801), -24(%rbp)
	movq $8, %r13		# movq $8, %r(3757)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(3802)
	movq %r14, %rbx		# movq %r(3802), %r(3803)
	movq %rbx, -48(%rbp)		# movq %r(3803), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3804)
	subq %r13, %rbx		# subq %r(3757), %r(3804)
	movq %rbx, -48(%rbp)		# movq %r(3804), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3805)
	movq (%rbx), %r12		# movq (%r(3805)), %r(3759)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3806)
	cmpq %r12, %rbx		# cmpq %r(3759), %r(3806)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3807)
	movq %r12, %r14		# movq %r(3807), %r(3760)
	salq $3, %r14		# salq $3, %r(3760)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(3808)
	movq %r13, %rbx		# movq %r(3808), %r(3809)
	movq %rbx, -56(%rbp)		# movq %r(3809), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3810)
	addq %r14, %rbx		# addq %r(3760), %r(3810)
	movq %rbx, -56(%rbp)		# movq %r(3810), -56(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3811)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3812)
	movq %rbx, (%r12)		# movq %r(3811), (%r(3812))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3813)
	movq %rbx, %rax		# movq %r(3813), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
