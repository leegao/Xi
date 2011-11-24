.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $144, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L725(%rip), %rdi		# leaq .L725(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3838)
	leaq .L726(%rip), %rdi		# leaq .L726(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(3839)
	movq %rbx, %rdi		# movq %r(3838), %rdi
	movq %r12, %rsi		# movq %r(3839), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(3840)
	movq $24, %rbx		# movq $24, %r(3870)
	movq %rbx, %rdi		# movq %r(3870), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3841)
	movq $2, %rbx		# movq $2, %r(3871)
	movq %rbx, (%r13)		# movq %r(3871), (%r(3841))
	movq $8, %rbx		# movq $8, %r(3872)
	addq %rbx, %r13		# addq %r(3872), %r(3873)
	movq %r13, %r15		# movq %r(3873), %r(3780)
	movq $0, %rbx		# movq $0, %r(3874)
	movq %r15, %r13		# movq %r(3780), %r(3875)
	addq %rbx, %r13		# addq %r(3874), %r(3875)
	movq $100, %rbx		# movq $100, %r(3876)
	movq %rbx, (%r13)		# movq %r(3876), (%r(3875))
	movq $8, %rbx		# movq $8, %r(3877)
	movq %r15, %r12		# movq %r(3780), %r(3878)
	addq %rbx, %r12		# addq %r(3877), %r(3878)
	movq $101, %rbx		# movq $101, %r(3879)
	movq %rbx, (%r12)		# movq %r(3879), (%r(3878))
	movq %r14, %rdi		# movq %r(3840), %rdi
	movq %r15, %rsi		# movq %r(3780), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(3988)
	movq %rbx, -120(%rbp)		# movq %r(3988), -120(%rbp)
	movq $32, %rbx		# movq $32, %r(3880)
	movq %rbx, %rdi		# movq %r(3880), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3843)
	movq $3, %r12		# movq $3, %r(3881)
	movq %r12, (%rbx)		# movq %r(3881), (%r(3843))
	movq $8, %r12		# movq $8, %r(3882)
	addq %r12, %rbx		# addq %r(3882), %r(3883)
	movq %rbx, -8(%rbp)		# movq %r(3989), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(3884)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3990)
	addq %rbx, %r13		# addq %r(3884), %r(3885)
	movq $1, %rbx		# movq $1, %r(3886)
	movq %rbx, (%r13)		# movq %r(3886), (%r(3885))
	movq $8, %rbx		# movq $8, %r(3887)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3991)
	addq %rbx, %r13		# addq %r(3887), %r(3888)
	movq $1, %rbx		# movq $1, %r(3889)
	movq %rbx, (%r13)		# movq %r(3889), (%r(3888))
	movq $16, %rbx		# movq $16, %r(3890)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3992)
	addq %rbx, %r13		# addq %r(3890), %r(3891)
	movq $1, %rbx		# movq $1, %r(3892)
	movq %rbx, (%r13)		# movq %r(3892), (%r(3891))
	movq $32, %rbx		# movq $32, %r(3893)
	movq %rbx, %rdi		# movq %r(3893), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3844)
	movq $3, %r12		# movq $3, %r(3894)
	movq %r12, (%rbx)		# movq %r(3894), (%r(3844))
	movq $8, %r12		# movq $8, %r(3895)
	addq %r12, %rbx		# addq %r(3895), %r(3896)
	movq %rbx, -40(%rbp)		# movq %r(3993), -40(%rbp)
	movq $24, %rbx		# movq $24, %r(3897)
	movq %rbx, %rdi		# movq %r(3897), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3845)
	movq $2, %r12		# movq $2, %r(3898)
	movq %r12, (%r14)		# movq %r(3898), (%r(3845))
	movq $8, %r12		# movq $8, %r(3899)
	addq %r12, %r14		# addq %r(3899), %r(3900)
	movq $0, %r12		# movq $0, %r(3901)
	movq %r14, %rbx		# movq %r(3790), %r(3902)
	addq %r12, %rbx		# addq %r(3901), %r(3902)
	movq $1, %r12		# movq $1, %r(3903)
	movq %r12, (%rbx)		# movq %r(3903), (%r(3902))
	movq $8, %r12		# movq $8, %r(3904)
	movq %r14, %rbx		# movq %r(3790), %r(3905)
	addq %r12, %rbx		# addq %r(3904), %r(3905)
	movq $2, %r12		# movq $2, %r(3906)
	movq %r12, (%rbx)		# movq %r(3906), (%r(3905))
	movq $0, %r13		# movq $0, %r(3907)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3994)
	addq %r13, %rbx		# addq %r(3907), %r(3908)
	movq %r14, (%rbx)		# movq %r(3790), (%r(3908))
	movq $24, %rbx		# movq $24, %r(3909)
	movq %rbx, %rdi		# movq %r(3909), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3846)
	movq $2, %r12		# movq $2, %r(3910)
	movq %r12, (%r14)		# movq %r(3910), (%r(3846))
	movq $8, %r12		# movq $8, %r(3911)
	addq %r12, %r14		# addq %r(3911), %r(3912)
	movq $0, %r12		# movq $0, %r(3913)
	movq %r14, %rbx		# movq %r(3792), %r(3914)
	addq %r12, %rbx		# addq %r(3913), %r(3914)
	movq $3, %r12		# movq $3, %r(3915)
	movq %r12, (%rbx)		# movq %r(3915), (%r(3914))
	movq $8, %r12		# movq $8, %r(3916)
	movq %r14, %rbx		# movq %r(3792), %r(3917)
	addq %r12, %rbx		# addq %r(3916), %r(3917)
	movq $4, %r12		# movq $4, %r(3918)
	movq %r12, (%rbx)		# movq %r(3918), (%r(3917))
	movq $8, %r13		# movq $8, %r(3919)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3995)
	addq %r13, %rbx		# addq %r(3919), %r(3920)
	movq %r14, (%rbx)		# movq %r(3792), (%r(3920))
	movq $24, %rbx		# movq $24, %r(3921)
	movq %rbx, %rdi		# movq %r(3921), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3847)
	movq $2, %r12		# movq $2, %r(3922)
	movq %r12, (%r14)		# movq %r(3922), (%r(3847))
	movq $8, %r12		# movq $8, %r(3923)
	addq %r12, %r14		# addq %r(3923), %r(3924)
	movq $0, %r12		# movq $0, %r(3925)
	movq %r14, %rbx		# movq %r(3794), %r(3926)
	addq %r12, %rbx		# addq %r(3925), %r(3926)
	movq $5, %r12		# movq $5, %r(3927)
	movq %r12, (%rbx)		# movq %r(3927), (%r(3926))
	movq $8, %r12		# movq $8, %r(3928)
	movq %r14, %rbx		# movq %r(3794), %r(3929)
	addq %r12, %rbx		# addq %r(3928), %r(3929)
	movq $6, %r12		# movq $6, %r(3930)
	movq %r12, (%rbx)		# movq %r(3930), (%r(3929))
	movq $16, %r13		# movq $16, %r(3931)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3996)
	addq %r13, %rbx		# addq %r(3931), %r(3932)
	movq %r14, (%rbx)		# movq %r(3794), (%r(3932))
	movq $32, %rbx		# movq $32, %r(3933)
	movq %rbx, %rdi		# movq %r(3933), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3848)
	movq $3, %r12		# movq $3, %r(3934)
	movq %r12, (%rbx)		# movq %r(3934), (%r(3848))
	movq $8, %r12		# movq $8, %r(3935)
	addq %r12, %rbx		# addq %r(3935), %r(3936)
	movq %rbx, -80(%rbp)		# movq %r(3997), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(3937)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(3998)
	addq %rbx, %r13		# addq %r(3937), %r(3938)
	movq $1, %rbx		# movq $1, %r(3939)
	movq %rbx, (%r13)		# movq %r(3939), (%r(3938))
	movq $8, %rbx		# movq $8, %r(3940)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(3999)
	addq %rbx, %r13		# addq %r(3940), %r(3941)
	movq $2, %rbx		# movq $2, %r(3942)
	movq %rbx, (%r13)		# movq %r(3942), (%r(3941))
	movq $16, %rbx		# movq $16, %r(3943)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(4000)
	addq %rbx, %r13		# addq %r(3943), %r(3944)
	movq $3, %rbx		# movq $3, %r(3945)
	movq %rbx, (%r13)		# movq %r(3945), (%r(3944))
	leaq .L727(%rip), %rdi		# leaq .L727(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4001)
	movq %rbx, -48(%rbp)		# movq %r(4001), -48(%rbp)
	movq $16, %rbx		# movq $16, %r(3947)
	movq %rbx, %rdi		# movq %r(3947), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3850)
	movq $1, %r12		# movq $1, %r(3948)
	movq %r12, (%rbx)		# movq %r(3948), (%r(3850))
	movq $8, %r12		# movq $8, %r(4002)
	movq %r12, -32(%rbp)		# movq %r(4002), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4003)
	addq %r12, %rbx		# addq %r(4003), %r(3950)
	movq %rbx, -104(%rbp)		# movq %r(4004), -104(%rbp)
	movq $32, %rbx		# movq $32, %r(3951)
	movq %rbx, %rdi		# movq %r(3951), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3851)
	movq $3, %r12		# movq $3, %r(3952)
	movq %r12, (%rbx)		# movq %r(3952), (%r(3851))
	movq $8, %r12		# movq $8, %r(4005)
	movq %r12, -88(%rbp)		# movq %r(4005), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4006)
	addq %r12, %rbx		# addq %r(4006), %r(3954)
	movq %rbx, -136(%rbp)		# movq %r(4007), -136(%rbp)
	movq $16, %rbx		# movq $16, %r(3955)
	movq %rbx, %rdi		# movq %r(3955), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3852)
	movq $1, %r12		# movq $1, %r(3956)
	movq %r12, (%rbx)		# movq %r(3956), (%r(3852))
	movq $8, %r12		# movq $8, %r(4008)
	movq %r12, -64(%rbp)		# movq %r(4008), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4009)
	addq %r12, %rbx		# addq %r(4009), %r(3958)
	movq %rbx, -56(%rbp)		# movq %r(4010), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(3959)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4011)
	addq %rbx, %r13		# addq %r(3959), %r(3960)
	movq $1, %rbx		# movq $1, %r(3961)
	movq %rbx, (%r13)		# movq %r(3961), (%r(3960))
	movq $0, %rbx		# movq $0, %r(3962)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(4012)
	addq %rbx, %r13		# addq %r(3962), %r(3963)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4013)
	movq %rbx, (%r13)		# movq %r(4013), (%r(3963))
	movq $16, %rbx		# movq $16, %r(3964)
	movq %rbx, %rdi		# movq %r(3964), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3853)
	movq $1, %r12		# movq $1, %r(3965)
	movq %r12, (%rbx)		# movq %r(3965), (%r(3853))
	movq $8, %r12		# movq $8, %r(4014)
	movq %r12, -128(%rbp)		# movq %r(4014), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(4015)
	addq %r12, %rbx		# addq %r(4015), %r(3967)
	movq %rbx, -24(%rbp)		# movq %r(4016), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(3968)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4017)
	addq %rbx, %r13		# addq %r(3968), %r(3969)
	movq $1, %rbx		# movq $1, %r(3970)
	movq %rbx, (%r13)		# movq %r(3970), (%r(3969))
	movq $8, %rbx		# movq $8, %r(3971)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(4018)
	addq %rbx, %r13		# addq %r(3971), %r(3972)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4019)
	movq %rbx, (%r13)		# movq %r(4019), (%r(3972))
	movq $16, %rbx		# movq $16, %r(3973)
	movq %rbx, %rdi		# movq %r(3973), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3854)
	movq $1, %r12		# movq $1, %r(3974)
	movq %r12, (%rbx)		# movq %r(3974), (%r(3854))
	movq $8, %r12		# movq $8, %r(4020)
	movq %r12, -16(%rbp)		# movq %r(4020), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4021)
	addq %r12, %rbx		# addq %r(4021), %r(3976)
	movq %rbx, -112(%rbp)		# movq %r(4022), -112(%rbp)
	movq $0, %rbx		# movq $0, %r(3977)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(4023)
	addq %rbx, %r13		# addq %r(3977), %r(3978)
	movq $1, %rbx		# movq $1, %r(3979)
	movq %rbx, (%r13)		# movq %r(3979), (%r(3978))
	movq $16, %rbx		# movq $16, %r(3980)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(4024)
	addq %rbx, %r13		# addq %r(3980), %r(3981)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(4025)
	movq %rbx, (%r13)		# movq %r(4025), (%r(3981))
	movq $0, %rbx		# movq $0, %r(3982)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(4026)
	addq %rbx, %r13		# addq %r(3982), %r(3983)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(4027)
	movq %rbx, (%r13)		# movq %r(4027), (%r(3983))
	movq $32, %rbx		# movq $32, %r(3984)
	movq %rbx, %rdi		# movq %r(3984), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3855)
	movq $0, %r13		# movq $0, %r(3985)
	movq $195, %r12		# movq $195, %r(4028)
	movq %r12, -96(%rbp)		# movq %r(4028), -96(%rbp)
	movq $1, %r12		# movq $1, %r(4029)
	movq %r12, -72(%rbp)		# movq %r(4029), -72(%rbp)
	movq %rbx, %rdi		# movq %r(3816), %rdi
	movq %r13, %rsi		# movq %r(3985), %rsi
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(4030)
	movq %rbx, %rdx		# movq %r(4030), %rdx
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4031)
	movq %rbx, %rcx		# movq %r(4031), %rcx
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4032)
	movq %rbx, %r8		# movq %r(4032), %r8
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(4033)
	movq %rbx, %r9		# movq %r(4033), %r9
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(4034)
	pushq %rbx		# pushq %r(4034)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4035)
	pushq %rbx		# pushq %r(4035)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4036)
	pushq %rbx		# pushq %r(4036)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4037)
	pushq %rbx		# pushq %r(4037)
	call _If_t4iaiaabaibaiabaaiibaiaiaaai		# call _If_t4iaiaabaibaiabaaiibaiaiaaai
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	jmp .L724		# jmp .L724
	.L724:		# .L724:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $144, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_t4iaiaabaibaiabaaiibaiaiaaai
_If_t4iaiaabaibaiabaaiibaiaiaaai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4089)
	movq %rbx, -8(%rbp)		# movq %r(4089), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(a)
	movq %rdx, %rbx		# movq %rdx, %r(b)
	movq %rcx, %rbx		# movq %rcx, %r(c)
	movq %r8, %rbx		# movq %r8, %r(d)
	movq %r9, %rbx		# movq %r9, %r(e)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(f_)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(g)
	movq 32(%rbp), %rbx		# movq 32(%rbp), %r(h)
	movq 40(%rbp), %rbx		# movq 40(%rbp), %r(i)
	movq $0, %rbx		# movq $0, %r(4038)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4090)
	addq %rbx, %r13		# addq %r(4038), %r(4039)
	movq $1, %rbx		# movq $1, %r(4040)
	movq %rbx, (%r13)		# movq %r(4040), (%r(4039))
	movq $32, %rbx		# movq $32, %r(4041)
	movq %rbx, %rdi		# movq %r(4041), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3857)
	movq $3, %r12		# movq $3, %r(4042)
	movq %r12, (%r14)		# movq %r(4042), (%r(3857))
	movq $8, %r12		# movq $8, %r(4043)
	addq %r12, %r14		# addq %r(4043), %r(4044)
	movq $0, %r12		# movq $0, %r(4045)
	movq %r14, %rbx		# movq %r(3830), %r(4046)
	addq %r12, %rbx		# addq %r(4045), %r(4046)
	movq $100, %r12		# movq $100, %r(4047)
	movq %r12, (%rbx)		# movq %r(4047), (%r(4046))
	movq $8, %r12		# movq $8, %r(4048)
	movq %r14, %rbx		# movq %r(3830), %r(4049)
	addq %r12, %rbx		# addq %r(4048), %r(4049)
	movq $3, %r12		# movq $3, %r(4050)
	movq %r12, (%rbx)		# movq %r(4050), (%r(4049))
	movq $16, %r12		# movq $16, %r(4051)
	movq %r14, %rbx		# movq %r(3830), %r(4052)
	addq %r12, %rbx		# addq %r(4051), %r(4052)
	movq $2, %r12		# movq $2, %r(4053)
	movq %r12, (%rbx)		# movq %r(4053), (%r(4052))
	movq $8, %r13		# movq $8, %r(4054)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4091)
	addq %r13, %rbx		# addq %r(4054), %r(4055)
	movq %r14, (%rbx)		# movq %r(3830), (%r(4055))
	movq $24, %rbx		# movq $24, %r(4056)
	movq %rbx, %rdi		# movq %r(4056), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3858)
	movq $2, %r12		# movq $2, %r(4057)
	movq %r12, (%rbx)		# movq %r(4057), (%r(3858))
	movq $8, %r12		# movq $8, %r(4058)
	addq %r12, %rbx		# addq %r(4058), %r(4059)
	movq %rbx, -16(%rbp)		# movq %r(4092), -16(%rbp)
	movq $24, %rbx		# movq $24, %r(4060)
	movq %rbx, %rdi		# movq %r(4060), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3859)
	movq $2, %r12		# movq $2, %r(4061)
	movq %r12, (%r14)		# movq %r(4061), (%r(3859))
	movq $8, %r12		# movq $8, %r(4062)
	addq %r12, %r14		# addq %r(4062), %r(4063)
	movq $0, %r12		# movq $0, %r(4064)
	movq %r14, %rbx		# movq %r(3834), %r(4065)
	addq %r12, %rbx		# addq %r(4064), %r(4065)
	movq $1, %r12		# movq $1, %r(4066)
	movq %r12, (%rbx)		# movq %r(4066), (%r(4065))
	movq $8, %r12		# movq $8, %r(4067)
	movq %r14, %rbx		# movq %r(3834), %r(4068)
	addq %r12, %rbx		# addq %r(4067), %r(4068)
	movq $0, %r12		# movq $0, %r(4069)
	movq %r12, (%rbx)		# movq %r(4069), (%r(4068))
	movq $0, %r13		# movq $0, %r(4070)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4093)
	addq %r13, %rbx		# addq %r(4070), %r(4071)
	movq %r14, (%rbx)		# movq %r(3834), (%r(4071))
	movq $24, %rbx		# movq $24, %r(4072)
	movq %rbx, %rdi		# movq %r(4072), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3860)
	movq $2, %r12		# movq $2, %r(4073)
	movq %r12, (%r14)		# movq %r(4073), (%r(3860))
	movq $8, %r12		# movq $8, %r(4074)
	addq %r12, %r14		# addq %r(4074), %r(4075)
	movq $0, %r12		# movq $0, %r(4076)
	movq %r14, %rbx		# movq %r(3836), %r(4077)
	addq %r12, %rbx		# addq %r(4076), %r(4077)
	movq $0, %r12		# movq $0, %r(4078)
	movq %r12, (%rbx)		# movq %r(4078), (%r(4077))
	movq $8, %r12		# movq $8, %r(4079)
	movq %r14, %rbx		# movq %r(3836), %r(4080)
	addq %r12, %rbx		# addq %r(4079), %r(4080)
	movq $1, %r12		# movq $1, %r(4081)
	movq %r12, (%rbx)		# movq %r(4081), (%r(4080))
	movq $8, %r13		# movq $8, %r(4082)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4094)
	addq %r13, %rbx		# addq %r(4082), %r(4083)
	movq %r14, (%rbx)		# movq %r(3836), (%r(4083))
	movq $16, %rbx		# movq $16, %r(4084)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4095)
	addq %rbx, %r13		# addq %r(4084), %r(4085)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4096)
	movq %rbx, (%r13)		# movq %r(4096), (%r(4085))
	leaq .L730(%rip), %rdi		# leaq .L730(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(3861)
	movq $24, %r12		# movq $24, %r(4087)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4097)
	addq %r12, %r14		# addq %r(4087), %r(4088)
	movq %r13, (%r14)		# movq %r(3861), (%r(4088))
	jmp .L729		# jmp .L729
	.L729:		# .L729:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4141)
	movq %rbx, -24(%rbp)		# movq %r(4141), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(4098)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4142)
	subq %rbx, %r13		# subq %r(4098), %r(4099)
	movq (%r13), %r12		# movq (%r(4099)), %r(4100)
	movq %r12, -80(%rbp)		# movq %r(4143), -80(%rbp)
	movq $1, %r12		# movq $1, %r(4101)
	movq %r12, -40(%rbp)		# movq %r(4144), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(4102)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(4145)
	cmpq %rbx, %r12		# cmpq %r(4102), %r(4145)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(4103)
	movq %rbx, %rax		# movq %r(4103), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L318:		# .L318:
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(4146)
	salq $3, %r12		# salq $3, %r(4104)
	movq %r12, %rdi		# movq %r(4104), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3862)
	movq $1, %r12		# movq $1, %r(4105)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(4147)
	movq %r14, -32(%rbp)		# movq %r(4148), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4149)
	subq %r12, %rbx		# subq %r(4105), %r(4149)
	movq %rbx, -32(%rbp)		# movq %r(4149), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4150)
	movq %rbx, (%r13)		# movq %r(4150), (%r(3862))
	movq $8, %rbx		# movq $8, %r(4107)
	addq %rbx, %r13		# addq %r(4107), %r(4108)
	movq %r13, -64(%rbp)		# movq %r(4151), -64(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4152)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(4153)
	cmpq %r12, %rbx		# cmpq %r(4153), %r(4152)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(4109)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4154)
	subq %rbx, %r13		# subq %r(4109), %r(4110)
	movq (%r13), %rbx		# movq (%r(4110)), %r(4111)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4155)
	cmpq %rbx, %r12		# cmpq %r(4111), %r(4155)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4112)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(4156)
	subq %rbx, %r14		# subq %r(4112), %r(4113)
	movq $8, %r13		# movq $8, %r(4114)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4157)
	movq %r12, -88(%rbp)		# movq %r(4158), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4159)
	subq %r13, %rbx		# subq %r(4114), %r(4159)
	movq %rbx, -88(%rbp)		# movq %r(4159), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4160)
	movq (%rbx), %rbx		# movq (%r(4160)), %r(4116)
	cmpq %rbx, %r14		# cmpq %r(4116), %r(1740)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4117)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4161)
	addq %r14, %rbx		# addq %r(4117), %r(4118)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(4162)
	salq $3, %r14		# salq $3, %r(4119)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4163)
	movq %r12, -56(%rbp)		# movq %r(4164), -56(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4165)
	addq %r14, %r13		# addq %r(4119), %r(4165)
	movq %r13, -56(%rbp)		# movq %r(4165), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4166)
	movq (%r12), %r12		# movq (%r(4166)), %r(4121)
	movq %r12, (%rbx)		# movq %r(4121), (%r(4118))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4167)
	incq %rbx		# incq %r(4167)
	movq %rbx, -40(%rbp)		# movq %r(4167), -40(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(4122)
	movq $8, %r12		# movq $8, %r(4123)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4168)
	subq %r12, %r14		# subq %r(4123), %r(4124)
	movq (%r14), %rbx		# movq (%r(4124)), %r(4125)
	cmpq %rbx, %r13		# cmpq %r(4125), %r(4122)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4126)
	salq $3, %r13		# salq $3, %r(4127)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4169)
	addq %r13, %rbx		# addq %r(4127), %r(4128)
	movq (%rbx), %r12		# movq (%r(4128)), %r(4129)
	movq %r12, -40(%rbp)		# movq %r(4170), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(4130)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4171)
	addq %rbx, %r12		# addq %r(4130), %r(4131)
	salq $3, %r12		# salq $3, %r(4132)
	movq %r12, %rdi		# movq %r(4132), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3863)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4172)
	movq %r12, (%rbx)		# movq %r(4172), (%r(3863))
	movq $8, %r12		# movq $8, %r(4133)
	addq %r12, %rbx		# addq %r(4133), %r(4134)
	movq %rbx, -48(%rbp)		# movq %r(4173), -48(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(4135)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4174)
	cmpq %rbx, %r12		# cmpq %r(4135), %r(4174)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4175)
	decq %rbx		# decq %r(4175)
	movq %rbx, -40(%rbp)		# movq %r(4175), -40(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4176)
	movq %rbx, %rdi		# movq %r(4176), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4177)
	movq %rbx, -72(%rbp)		# movq %r(4177), -72(%rbp)
	movq $8, %r12		# movq $8, %r(4136)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4178)
	movq %r13, -16(%rbp)		# movq %r(4179), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4180)
	subq %r12, %rbx		# subq %r(4136), %r(4180)
	movq %rbx, -16(%rbp)		# movq %r(4180), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4181)
	movq (%rbx), %rbx		# movq (%r(4181)), %r(4138)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4182)
	cmpq %rbx, %r12		# cmpq %r(4138), %r(4182)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4183)
	salq $3, %r13		# salq $3, %r(4139)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4184)
	movq %rbx, -8(%rbp)		# movq %r(4185), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4186)
	addq %r13, %r12		# addq %r(4139), %r(4186)
	movq %r12, -8(%rbp)		# movq %r(4186), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4187)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4188)
	movq %r12, (%rbx)		# movq %r(4188), (%r(4187))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4189)
	movq %rbx, %rax		# movq %r(4189), %rax
	jmp .L320		# jmp .L320
	
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(4190)
	movq %r12, -16(%rbp)		# movq %r(4202), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4203)
	salq $3, %rbx		# salq $3, %r(4191)
	movq $8, %r12		# movq $8, %r(4192)
	addq %r12, %rbx		# addq %r(4192), %r(4193)
	movq %rbx, %rdi		# movq %r(4193), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3865)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4204)
	salq $3, %r12		# salq $3, %r(4194)
	movq %r13, %r15		# movq %r(3865), %r(4195)
	addq %r12, %r15		# addq %r(4194), %r(4195)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4205)
	movq %rbx, %r12		# movq %r(4205), %r(4196)
	salq $3, %r12		# salq $3, %r(4196)
	movq %r14, %rbx		# movq %r(p0), %r(4206)
	movq %rbx, -8(%rbp)		# movq %r(4206), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4207)
	addq %r12, %rbx		# addq %r(4196), %r(4207)
	movq %rbx, -8(%rbp)		# movq %r(4207), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4208)
	movq (%rbx), %rbx		# movq (%r(4208)), %r(4198)
	movq %rbx, (%r15)		# movq %r(4198), (%r(4195))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4209)
	decq %rbx		# decq %r(4209)
	movq %rbx, -16(%rbp)		# movq %r(4209), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(4199)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4210)
	cmpq %rbx, %r12		# cmpq %r(4199), %r(4210)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(4200)
	movq %r13, %r12		# movq %r(3865), %r(4201)
	addq %rbx, %r12		# addq %r(4200), %r(4201)
	movq %r12, %rax		# movq %r(4201), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(4234)
	movq %rbx, -24(%rbp)		# movq %r(4234), -24(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4235)
	movq %rbx, -48(%rbp)		# movq %r(4235), -48(%rbp)
	movq $0, %r12		# movq $0, %r(4211)
	movq %r12, -8(%rbp)		# movq %r(4236), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(4212)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4237)
	subq %rbx, %r13		# subq %r(4212), %r(4213)
	movq (%r13), %r12		# movq (%r(4213)), %r(4214)
	movq %r12, -40(%rbp)		# movq %r(4238), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(4215)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4239)
	subq %rbx, %r13		# subq %r(4215), %r(4216)
	movq (%r13), %rbx		# movq (%r(4216)), %r(4217)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4240)
	addq %rbx, %r12		# addq %r(4217), %r(4218)
	movq %r12, -56(%rbp)		# movq %r(4241), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(4219)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4242)
	addq %rbx, %r13		# addq %r(4219), %r(4220)
	movq %r13, %rdi		# movq %r(4220), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3866)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4243)
	movq %r12, (%rbx)		# movq %r(4243), (%r(3866))
	movq $8, %r12		# movq $8, %r(4221)
	addq %r12, %rbx		# addq %r(4221), %r(4222)
	movq %rbx, -16(%rbp)		# movq %r(4244), -16(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4245)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4246)
	cmpq %r12, %rbx		# cmpq %r(4246), %r(4245)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4247)
	salq $3, %r13		# salq $3, %r(4223)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4248)
	movq %rbx, -72(%rbp)		# movq %r(4249), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4250)
	addq %r13, %r12		# addq %r(4223), %r(4250)
	movq %r12, -72(%rbp)		# movq %r(4250), -72(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4251)
	salq $3, %r13		# salq $3, %r(4225)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4252)
	movq %rbx, -64(%rbp)		# movq %r(4253), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4254)
	addq %r13, %r12		# addq %r(4225), %r(4254)
	movq %r12, -64(%rbp)		# movq %r(4254), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4255)
	movq (%rbx), %rbx		# movq (%r(4255)), %r(4227)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4256)
	movq %rbx, (%r12)		# movq %r(4227), (%r(4256))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4257)
	incq %rbx		# incq %r(4257)
	movq %rbx, -8(%rbp)		# movq %r(4257), -8(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4258)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4259)
	cmpq %r12, %rbx		# cmpq %r(4259), %r(4258)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4260)
	salq $3, %r13		# salq $3, %r(4228)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4261)
	addq %r13, %r14		# addq %r(4228), %r(4229)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(4262)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4263)
	subq %r13, %r15		# subq %r(4263), %r(4230)
	salq $3, %r15		# salq $3, %r(4231)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4264)
	movq %rbx, -32(%rbp)		# movq %r(4265), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4266)
	addq %r15, %r13		# addq %r(4231), %r(4266)
	movq %r13, -32(%rbp)		# movq %r(4266), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4267)
	movq (%rbx), %rbx		# movq (%r(4267)), %r(4233)
	movq %rbx, (%r14)		# movq %r(4233), (%r(4229))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4268)
	incq %rbx		# incq %r(4268)
	movq %rbx, -8(%rbp)		# movq %r(4268), -8(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4269)
	movq %rbx, %rax		# movq %r(4269), %rax
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
.L730:
	.quad 7
	.quad 78
	.quad 111
	.quad 116
	.quad 104
	.quad 105
	.quad 110
	.quad 103
	.text

#.section .rodata
.align 8
.L727:
	.quad 9
	.quad 71
	.quad 111
	.quad 111
	.quad 100
	.quad 32
	.quad 76
	.quad 117
	.quad 99
	.quad 107
	.text

#.section .rodata
.align 8
.L725:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

#.section .rodata
.align 8
.L726:
	.quad 5
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
