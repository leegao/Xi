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
	movq %rax, %rbx		# movq %rax, %r(3816)
	leaq .L726(%rip), %rdi		# leaq .L726(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(3817)
	movq %rbx, %rdi		# movq %r(3816), %rdi
	movq %r12, %rsi		# movq %r(3817), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(3818)
	movq $24, %rbx		# movq $24, %r(3848)
	movq %rbx, %rdi		# movq %r(3848), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3819)
	movq $2, %rbx		# movq $2, %r(3849)
	movq %rbx, (%r13)		# movq %r(3849), (%r(3819))
	movq $8, %rbx		# movq $8, %r(3850)
	addq %rbx, %r13		# addq %r(3850), %r(3851)
	movq %r13, %r15		# movq %r(3851), %r(3758)
	movq $0, %rbx		# movq $0, %r(3852)
	movq %r15, %r13		# movq %r(3758), %r(3853)
	addq %rbx, %r13		# addq %r(3852), %r(3853)
	movq $100, %rbx		# movq $100, %r(3854)
	movq %rbx, (%r13)		# movq %r(3854), (%r(3853))
	movq $8, %rbx		# movq $8, %r(3855)
	movq %r15, %r12		# movq %r(3758), %r(3856)
	addq %rbx, %r12		# addq %r(3855), %r(3856)
	movq $101, %rbx		# movq $101, %r(3857)
	movq %rbx, (%r12)		# movq %r(3857), (%r(3856))
	movq %r14, %rdi		# movq %r(3818), %rdi
	movq %r15, %rsi		# movq %r(3758), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(3966)
	movq %rbx, -128(%rbp)		# movq %r(3966), -128(%rbp)
	movq $32, %rbx		# movq $32, %r(3858)
	movq %rbx, %rdi		# movq %r(3858), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3821)
	movq $3, %r12		# movq $3, %r(3859)
	movq %r12, (%rbx)		# movq %r(3859), (%r(3821))
	movq $8, %r12		# movq $8, %r(3860)
	addq %r12, %rbx		# addq %r(3860), %r(3861)
	movq %rbx, -32(%rbp)		# movq %r(3967), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(3862)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3968)
	addq %rbx, %r13		# addq %r(3862), %r(3863)
	movq $1, %rbx		# movq $1, %r(3864)
	movq %rbx, (%r13)		# movq %r(3864), (%r(3863))
	movq $8, %rbx		# movq $8, %r(3865)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3969)
	addq %rbx, %r13		# addq %r(3865), %r(3866)
	movq $1, %rbx		# movq $1, %r(3867)
	movq %rbx, (%r13)		# movq %r(3867), (%r(3866))
	movq $16, %rbx		# movq $16, %r(3868)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3970)
	addq %rbx, %r13		# addq %r(3868), %r(3869)
	movq $1, %rbx		# movq $1, %r(3870)
	movq %rbx, (%r13)		# movq %r(3870), (%r(3869))
	movq $32, %rbx		# movq $32, %r(3871)
	movq %rbx, %rdi		# movq %r(3871), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3822)
	movq $3, %r12		# movq $3, %r(3872)
	movq %r12, (%rbx)		# movq %r(3872), (%r(3822))
	movq $8, %r12		# movq $8, %r(3873)
	addq %r12, %rbx		# addq %r(3873), %r(3874)
	movq %rbx, -112(%rbp)		# movq %r(3971), -112(%rbp)
	movq $24, %rbx		# movq $24, %r(3875)
	movq %rbx, %rdi		# movq %r(3875), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3823)
	movq $2, %r12		# movq $2, %r(3876)
	movq %r12, (%r14)		# movq %r(3876), (%r(3823))
	movq $8, %r12		# movq $8, %r(3877)
	addq %r12, %r14		# addq %r(3877), %r(3878)
	movq $0, %r12		# movq $0, %r(3879)
	movq %r14, %rbx		# movq %r(3768), %r(3880)
	addq %r12, %rbx		# addq %r(3879), %r(3880)
	movq $1, %r12		# movq $1, %r(3881)
	movq %r12, (%rbx)		# movq %r(3881), (%r(3880))
	movq $8, %r12		# movq $8, %r(3882)
	movq %r14, %rbx		# movq %r(3768), %r(3883)
	addq %r12, %rbx		# addq %r(3882), %r(3883)
	movq $2, %r12		# movq $2, %r(3884)
	movq %r12, (%rbx)		# movq %r(3884), (%r(3883))
	movq $0, %r13		# movq $0, %r(3885)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(3972)
	addq %r13, %rbx		# addq %r(3885), %r(3886)
	movq %r14, (%rbx)		# movq %r(3768), (%r(3886))
	movq $24, %rbx		# movq $24, %r(3887)
	movq %rbx, %rdi		# movq %r(3887), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3824)
	movq $2, %r12		# movq $2, %r(3888)
	movq %r12, (%r14)		# movq %r(3888), (%r(3824))
	movq $8, %r12		# movq $8, %r(3889)
	addq %r12, %r14		# addq %r(3889), %r(3890)
	movq $0, %r12		# movq $0, %r(3891)
	movq %r14, %rbx		# movq %r(3770), %r(3892)
	addq %r12, %rbx		# addq %r(3891), %r(3892)
	movq $3, %r12		# movq $3, %r(3893)
	movq %r12, (%rbx)		# movq %r(3893), (%r(3892))
	movq $8, %r12		# movq $8, %r(3894)
	movq %r14, %rbx		# movq %r(3770), %r(3895)
	addq %r12, %rbx		# addq %r(3894), %r(3895)
	movq $4, %r12		# movq $4, %r(3896)
	movq %r12, (%rbx)		# movq %r(3896), (%r(3895))
	movq $8, %r13		# movq $8, %r(3897)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(3973)
	addq %r13, %rbx		# addq %r(3897), %r(3898)
	movq %r14, (%rbx)		# movq %r(3770), (%r(3898))
	movq $24, %rbx		# movq $24, %r(3899)
	movq %rbx, %rdi		# movq %r(3899), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3825)
	movq $2, %r12		# movq $2, %r(3900)
	movq %r12, (%r14)		# movq %r(3900), (%r(3825))
	movq $8, %r12		# movq $8, %r(3901)
	addq %r12, %r14		# addq %r(3901), %r(3902)
	movq $0, %r12		# movq $0, %r(3903)
	movq %r14, %rbx		# movq %r(3772), %r(3904)
	addq %r12, %rbx		# addq %r(3903), %r(3904)
	movq $5, %r12		# movq $5, %r(3905)
	movq %r12, (%rbx)		# movq %r(3905), (%r(3904))
	movq $8, %r12		# movq $8, %r(3906)
	movq %r14, %rbx		# movq %r(3772), %r(3907)
	addq %r12, %rbx		# addq %r(3906), %r(3907)
	movq $6, %r12		# movq $6, %r(3908)
	movq %r12, (%rbx)		# movq %r(3908), (%r(3907))
	movq $16, %r13		# movq $16, %r(3909)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(3974)
	addq %r13, %rbx		# addq %r(3909), %r(3910)
	movq %r14, (%rbx)		# movq %r(3772), (%r(3910))
	movq $32, %rbx		# movq $32, %r(3911)
	movq %rbx, %rdi		# movq %r(3911), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3826)
	movq $3, %r12		# movq $3, %r(3912)
	movq %r12, (%rbx)		# movq %r(3912), (%r(3826))
	movq $8, %r12		# movq $8, %r(3913)
	addq %r12, %rbx		# addq %r(3913), %r(3914)
	movq %rbx, -96(%rbp)		# movq %r(3975), -96(%rbp)
	movq $0, %rbx		# movq $0, %r(3915)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(3976)
	addq %rbx, %r13		# addq %r(3915), %r(3916)
	movq $1, %rbx		# movq $1, %r(3917)
	movq %rbx, (%r13)		# movq %r(3917), (%r(3916))
	movq $8, %rbx		# movq $8, %r(3918)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(3977)
	addq %rbx, %r13		# addq %r(3918), %r(3919)
	movq $2, %rbx		# movq $2, %r(3920)
	movq %rbx, (%r13)		# movq %r(3920), (%r(3919))
	movq $16, %rbx		# movq $16, %r(3921)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(3978)
	addq %rbx, %r13		# addq %r(3921), %r(3922)
	movq $3, %rbx		# movq $3, %r(3923)
	movq %rbx, (%r13)		# movq %r(3923), (%r(3922))
	leaq .L727(%rip), %rdi		# leaq .L727(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3979)
	movq %rbx, -64(%rbp)		# movq %r(3979), -64(%rbp)
	movq $16, %rbx		# movq $16, %r(3925)
	movq %rbx, %rdi		# movq %r(3925), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3828)
	movq $1, %r12		# movq $1, %r(3926)
	movq %r12, (%rbx)		# movq %r(3926), (%r(3828))
	movq $8, %r12		# movq $8, %r(3980)
	movq %r12, -48(%rbp)		# movq %r(3980), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3981)
	addq %r12, %rbx		# addq %r(3981), %r(3928)
	movq %rbx, -88(%rbp)		# movq %r(3982), -88(%rbp)
	movq $32, %rbx		# movq $32, %r(3929)
	movq %rbx, %rdi		# movq %r(3929), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3829)
	movq $3, %r12		# movq $3, %r(3930)
	movq %r12, (%rbx)		# movq %r(3930), (%r(3829))
	movq $8, %r12		# movq $8, %r(3983)
	movq %r12, -72(%rbp)		# movq %r(3983), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3984)
	addq %r12, %rbx		# addq %r(3984), %r(3932)
	movq %rbx, -104(%rbp)		# movq %r(3985), -104(%rbp)
	movq $16, %rbx		# movq $16, %r(3933)
	movq %rbx, %rdi		# movq %r(3933), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3830)
	movq $1, %r12		# movq $1, %r(3934)
	movq %r12, (%rbx)		# movq %r(3934), (%r(3830))
	movq $8, %r12		# movq $8, %r(3986)
	movq %r12, -40(%rbp)		# movq %r(3986), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3987)
	addq %r12, %rbx		# addq %r(3987), %r(3936)
	movq %rbx, -16(%rbp)		# movq %r(3988), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(3937)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3989)
	addq %rbx, %r13		# addq %r(3937), %r(3938)
	movq $1, %rbx		# movq $1, %r(3939)
	movq %rbx, (%r13)		# movq %r(3939), (%r(3938))
	movq $0, %rbx		# movq $0, %r(3940)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(3990)
	addq %rbx, %r13		# addq %r(3940), %r(3941)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3991)
	movq %rbx, (%r13)		# movq %r(3991), (%r(3941))
	movq $16, %rbx		# movq $16, %r(3942)
	movq %rbx, %rdi		# movq %r(3942), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3831)
	movq $1, %r12		# movq $1, %r(3943)
	movq %r12, (%rbx)		# movq %r(3943), (%r(3831))
	movq $8, %r12		# movq $8, %r(3992)
	movq %r12, -8(%rbp)		# movq %r(3992), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3993)
	addq %r12, %rbx		# addq %r(3993), %r(3945)
	movq %rbx, -80(%rbp)		# movq %r(3994), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(3946)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(3995)
	addq %rbx, %r13		# addq %r(3946), %r(3947)
	movq $1, %rbx		# movq $1, %r(3948)
	movq %rbx, (%r13)		# movq %r(3948), (%r(3947))
	movq $8, %rbx		# movq $8, %r(3949)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(3996)
	addq %rbx, %r13		# addq %r(3949), %r(3950)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3997)
	movq %rbx, (%r13)		# movq %r(3997), (%r(3950))
	movq $16, %rbx		# movq $16, %r(3951)
	movq %rbx, %rdi		# movq %r(3951), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3832)
	movq $1, %r12		# movq $1, %r(3952)
	movq %r12, (%rbx)		# movq %r(3952), (%r(3832))
	movq $8, %r12		# movq $8, %r(3998)
	movq %r12, -136(%rbp)		# movq %r(3998), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(3999)
	addq %r12, %rbx		# addq %r(3999), %r(3954)
	movq %rbx, -120(%rbp)		# movq %r(4000), -120(%rbp)
	movq $0, %rbx		# movq $0, %r(3955)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(4001)
	addq %rbx, %r13		# addq %r(3955), %r(3956)
	movq $1, %rbx		# movq $1, %r(3957)
	movq %rbx, (%r13)		# movq %r(3957), (%r(3956))
	movq $16, %rbx		# movq $16, %r(3958)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(4002)
	addq %rbx, %r13		# addq %r(3958), %r(3959)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(4003)
	movq %rbx, (%r13)		# movq %r(4003), (%r(3959))
	movq $0, %rbx		# movq $0, %r(3960)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4004)
	addq %rbx, %r13		# addq %r(3960), %r(3961)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(4005)
	movq %rbx, (%r13)		# movq %r(4005), (%r(3961))
	movq $32, %rbx		# movq $32, %r(3962)
	movq %rbx, %rdi		# movq %r(3962), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3833)
	movq $0, %r13		# movq $0, %r(3963)
	movq $195, %r12		# movq $195, %r(4006)
	movq %r12, -56(%rbp)		# movq %r(4006), -56(%rbp)
	movq $1, %r12		# movq $1, %r(4007)
	movq %r12, -24(%rbp)		# movq %r(4007), -24(%rbp)
	movq %rbx, %rdi		# movq %r(3794), %rdi
	movq %r13, %rsi		# movq %r(3963), %rsi
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(4008)
	movq %rbx, %rdx		# movq %r(4008), %rdx
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4009)
	movq %rbx, %rcx		# movq %r(4009), %rcx
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(4010)
	movq %rbx, %r8		# movq %r(4010), %r8
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4011)
	movq %rbx, %r9		# movq %r(4011), %r9
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4012)
	pushq %rbx		# pushq %r(4012)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4013)
	pushq %rbx		# pushq %r(4013)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(4014)
	pushq %rbx		# pushq %r(4014)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4015)
	pushq %rbx		# pushq %r(4015)
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
	movq %rdi, %rbx		# movq %rdi, %r(4067)
	movq %rbx, -16(%rbp)		# movq %r(4067), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(a)
	movq %rdx, %rbx		# movq %rdx, %r(b)
	movq %rcx, %rbx		# movq %rcx, %r(c)
	movq %r8, %rbx		# movq %r8, %r(d)
	movq %r9, %rbx		# movq %r9, %r(e)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(f_)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(g)
	movq 32(%rbp), %rbx		# movq 32(%rbp), %r(h)
	movq 40(%rbp), %rbx		# movq 40(%rbp), %r(i)
	movq $0, %rbx		# movq $0, %r(4016)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4068)
	addq %rbx, %r13		# addq %r(4016), %r(4017)
	movq $1, %rbx		# movq $1, %r(4018)
	movq %rbx, (%r13)		# movq %r(4018), (%r(4017))
	movq $32, %rbx		# movq $32, %r(4019)
	movq %rbx, %rdi		# movq %r(4019), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3835)
	movq $3, %r12		# movq $3, %r(4020)
	movq %r12, (%r14)		# movq %r(4020), (%r(3835))
	movq $8, %r12		# movq $8, %r(4021)
	addq %r12, %r14		# addq %r(4021), %r(4022)
	movq $0, %r12		# movq $0, %r(4023)
	movq %r14, %rbx		# movq %r(3808), %r(4024)
	addq %r12, %rbx		# addq %r(4023), %r(4024)
	movq $100, %r12		# movq $100, %r(4025)
	movq %r12, (%rbx)		# movq %r(4025), (%r(4024))
	movq $8, %r12		# movq $8, %r(4026)
	movq %r14, %rbx		# movq %r(3808), %r(4027)
	addq %r12, %rbx		# addq %r(4026), %r(4027)
	movq $3, %r12		# movq $3, %r(4028)
	movq %r12, (%rbx)		# movq %r(4028), (%r(4027))
	movq $16, %r12		# movq $16, %r(4029)
	movq %r14, %rbx		# movq %r(3808), %r(4030)
	addq %r12, %rbx		# addq %r(4029), %r(4030)
	movq $2, %r12		# movq $2, %r(4031)
	movq %r12, (%rbx)		# movq %r(4031), (%r(4030))
	movq $8, %r13		# movq $8, %r(4032)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4069)
	addq %r13, %rbx		# addq %r(4032), %r(4033)
	movq %r14, (%rbx)		# movq %r(3808), (%r(4033))
	movq $24, %rbx		# movq $24, %r(4034)
	movq %rbx, %rdi		# movq %r(4034), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3836)
	movq $2, %r12		# movq $2, %r(4035)
	movq %r12, (%rbx)		# movq %r(4035), (%r(3836))
	movq $8, %r12		# movq $8, %r(4036)
	addq %r12, %rbx		# addq %r(4036), %r(4037)
	movq %rbx, -8(%rbp)		# movq %r(4070), -8(%rbp)
	movq $24, %rbx		# movq $24, %r(4038)
	movq %rbx, %rdi		# movq %r(4038), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3837)
	movq $2, %r12		# movq $2, %r(4039)
	movq %r12, (%r14)		# movq %r(4039), (%r(3837))
	movq $8, %r12		# movq $8, %r(4040)
	addq %r12, %r14		# addq %r(4040), %r(4041)
	movq $0, %r12		# movq $0, %r(4042)
	movq %r14, %rbx		# movq %r(3812), %r(4043)
	addq %r12, %rbx		# addq %r(4042), %r(4043)
	movq $1, %r12		# movq $1, %r(4044)
	movq %r12, (%rbx)		# movq %r(4044), (%r(4043))
	movq $8, %r12		# movq $8, %r(4045)
	movq %r14, %rbx		# movq %r(3812), %r(4046)
	addq %r12, %rbx		# addq %r(4045), %r(4046)
	movq $0, %r12		# movq $0, %r(4047)
	movq %r12, (%rbx)		# movq %r(4047), (%r(4046))
	movq $0, %r13		# movq $0, %r(4048)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4071)
	addq %r13, %rbx		# addq %r(4048), %r(4049)
	movq %r14, (%rbx)		# movq %r(3812), (%r(4049))
	movq $24, %rbx		# movq $24, %r(4050)
	movq %rbx, %rdi		# movq %r(4050), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3838)
	movq $2, %r12		# movq $2, %r(4051)
	movq %r12, (%r14)		# movq %r(4051), (%r(3838))
	movq $8, %r12		# movq $8, %r(4052)
	addq %r12, %r14		# addq %r(4052), %r(4053)
	movq $0, %r12		# movq $0, %r(4054)
	movq %r14, %rbx		# movq %r(3814), %r(4055)
	addq %r12, %rbx		# addq %r(4054), %r(4055)
	movq $0, %r12		# movq $0, %r(4056)
	movq %r12, (%rbx)		# movq %r(4056), (%r(4055))
	movq $8, %r12		# movq $8, %r(4057)
	movq %r14, %rbx		# movq %r(3814), %r(4058)
	addq %r12, %rbx		# addq %r(4057), %r(4058)
	movq $1, %r12		# movq $1, %r(4059)
	movq %r12, (%rbx)		# movq %r(4059), (%r(4058))
	movq $8, %r13		# movq $8, %r(4060)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4072)
	addq %r13, %rbx		# addq %r(4060), %r(4061)
	movq %r14, (%rbx)		# movq %r(3814), (%r(4061))
	movq $16, %rbx		# movq $16, %r(4062)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4073)
	addq %rbx, %r13		# addq %r(4062), %r(4063)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4074)
	movq %rbx, (%r13)		# movq %r(4074), (%r(4063))
	leaq .L730(%rip), %rdi		# leaq .L730(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(3839)
	movq $24, %r13		# movq $24, %r(4065)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4075)
	addq %r13, %r14		# addq %r(4065), %r(4066)
	movq %r12, (%r14)		# movq %r(3839), (%r(4066))
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
	movq %rdi, %rbx		# movq %rdi, %r(4119)
	movq %rbx, -64(%rbp)		# movq %r(4119), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(4076)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4120)
	subq %rbx, %r13		# subq %r(4076), %r(4077)
	movq (%r13), %r12		# movq (%r(4077)), %r(4078)
	movq %r12, -48(%rbp)		# movq %r(4121), -48(%rbp)
	movq $1, %r12		# movq $1, %r(4079)
	movq %r12, -8(%rbp)		# movq %r(4122), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(4080)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4123)
	cmpq %rbx, %r12		# cmpq %r(4080), %r(4123)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(4081)
	movq %rbx, %rax		# movq %r(4081), %rax
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
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4124)
	salq $3, %r12		# salq $3, %r(4082)
	movq %r12, %rdi		# movq %r(4082), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3840)
	movq $1, %r12		# movq $1, %r(4083)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(4125)
	movq %r14, -80(%rbp)		# movq %r(4126), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4127)
	subq %r12, %rbx		# subq %r(4083), %r(4127)
	movq %rbx, -80(%rbp)		# movq %r(4127), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4128)
	movq %rbx, (%r13)		# movq %r(4128), (%r(3840))
	movq $8, %rbx		# movq $8, %r(4085)
	addq %rbx, %r13		# addq %r(4085), %r(4086)
	movq %r13, -32(%rbp)		# movq %r(4129), -32(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4130)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4131)
	cmpq %r12, %rbx		# cmpq %r(4131), %r(4130)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(4087)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4132)
	subq %rbx, %r13		# subq %r(4087), %r(4088)
	movq (%r13), %rbx		# movq (%r(4088)), %r(4089)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4133)
	cmpq %rbx, %r12		# cmpq %r(4089), %r(4133)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4090)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4134)
	subq %rbx, %r14		# subq %r(4090), %r(4091)
	movq $8, %r13		# movq $8, %r(4092)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4135)
	movq %r12, -56(%rbp)		# movq %r(4136), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4137)
	subq %r13, %rbx		# subq %r(4092), %r(4137)
	movq %rbx, -56(%rbp)		# movq %r(4137), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4138)
	movq (%rbx), %rbx		# movq (%r(4138)), %r(4094)
	cmpq %rbx, %r14		# cmpq %r(4094), %r(1728)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4095)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4139)
	addq %r14, %rbx		# addq %r(4095), %r(4096)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4140)
	salq $3, %r14		# salq $3, %r(4097)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4141)
	movq %r12, -88(%rbp)		# movq %r(4142), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4143)
	addq %r14, %r13		# addq %r(4097), %r(4143)
	movq %r13, -88(%rbp)		# movq %r(4143), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4144)
	movq (%r12), %r12		# movq (%r(4144)), %r(4099)
	movq %r12, (%rbx)		# movq %r(4099), (%r(4096))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4145)
	incq %rbx		# incq %r(4145)
	movq %rbx, -8(%rbp)		# movq %r(4145), -8(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(4100)
	movq $8, %r12		# movq $8, %r(4101)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(4146)
	subq %r12, %r14		# subq %r(4101), %r(4102)
	movq (%r14), %rbx		# movq (%r(4102)), %r(4103)
	cmpq %rbx, %r13		# cmpq %r(4103), %r(4100)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4104)
	salq $3, %r13		# salq $3, %r(4105)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4147)
	addq %r13, %rbx		# addq %r(4105), %r(4106)
	movq (%rbx), %r12		# movq (%r(4106)), %r(4107)
	movq %r12, -8(%rbp)		# movq %r(4148), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(4108)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4149)
	addq %rbx, %r12		# addq %r(4108), %r(4109)
	salq $3, %r12		# salq $3, %r(4110)
	movq %r12, %rdi		# movq %r(4110), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3841)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4150)
	movq %r12, (%rbx)		# movq %r(4150), (%r(3841))
	movq $8, %r12		# movq $8, %r(4111)
	addq %r12, %rbx		# addq %r(4111), %r(4112)
	movq %rbx, -24(%rbp)		# movq %r(4151), -24(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(4113)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4152)
	cmpq %rbx, %r12		# cmpq %r(4113), %r(4152)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4153)
	decq %rbx		# decq %r(4153)
	movq %rbx, -8(%rbp)		# movq %r(4153), -8(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4154)
	movq %rbx, %rdi		# movq %r(4154), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4155)
	movq %rbx, -72(%rbp)		# movq %r(4155), -72(%rbp)
	movq $8, %r12		# movq $8, %r(4114)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4156)
	movq %r13, -16(%rbp)		# movq %r(4157), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4158)
	subq %r12, %rbx		# subq %r(4114), %r(4158)
	movq %rbx, -16(%rbp)		# movq %r(4158), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4159)
	movq (%rbx), %rbx		# movq (%r(4159)), %r(4116)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4160)
	cmpq %rbx, %r12		# cmpq %r(4116), %r(4160)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4161)
	salq $3, %r13		# salq $3, %r(4117)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4162)
	movq %rbx, -40(%rbp)		# movq %r(4163), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4164)
	addq %r13, %r12		# addq %r(4117), %r(4164)
	movq %r12, -40(%rbp)		# movq %r(4164), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4165)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4166)
	movq %r12, (%rbx)		# movq %r(4166), (%r(4165))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4167)
	movq %rbx, %rax		# movq %r(4167), %rax
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
	movq (%r14), %rbx		# movq (%r(p0)), %r(4168)
	movq %rbx, %r15		# movq %r(4168), %r(t10)
	movq %r15, %rbx		# movq %r(t10), %r(4169)
	salq $3, %rbx		# salq $3, %r(4169)
	movq $8, %r13		# movq $8, %r(4170)
	addq %r13, %rbx		# addq %r(4170), %r(4171)
	movq %rbx, %rdi		# movq %r(4171), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4183)
	movq %rbx, -16(%rbp)		# movq %r(4183), -16(%rbp)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r15, %r13		# movq %r(t10), %r(4172)
	salq $3, %r13		# salq $3, %r(4172)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4184)
	movq %rbx, %r12		# movq %r(4184), %r(4173)
	addq %r13, %r12		# addq %r(4172), %r(4173)
	movq %r15, %rbx		# movq %r(t10), %r(4185)
	movq %rbx, -24(%rbp)		# movq %r(4185), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4186)
	salq $3, %rbx		# salq $3, %r(4186)
	movq %rbx, -24(%rbp)		# movq %r(4186), -24(%rbp)
	movq %r14, %rbx		# movq %r(p0), %r(4180)
	movq %rbx, -8(%rbp)		# movq %r(4180), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4181)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4187)
	addq %r13, %rbx		# addq %r(4187), %r(4181)
	movq %rbx, -8(%rbp)		# movq %r(4181), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4182)
	movq (%rbx), %rbx		# movq (%r(4182)), %r(4176)
	movq %rbx, (%r12)		# movq %r(4176), (%r(4173))
	decq %r15		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(4177)
	cmpq %rbx, %r15		# cmpq %r(4177), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(4178)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4188)
	addq %rbx, %r13		# addq %r(4178), %r(4179)
	movq %r13, %rax		# movq %r(4179), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(4212)
	movq %rbx, -8(%rbp)		# movq %r(4212), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4213)
	movq %rbx, -48(%rbp)		# movq %r(4213), -48(%rbp)
	movq $0, %r12		# movq $0, %r(4189)
	movq %r12, -24(%rbp)		# movq %r(4214), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(4190)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4215)
	subq %rbx, %r13		# subq %r(4190), %r(4191)
	movq (%r13), %r12		# movq (%r(4191)), %r(4192)
	movq %r12, -72(%rbp)		# movq %r(4216), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(4193)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4217)
	subq %rbx, %r13		# subq %r(4193), %r(4194)
	movq (%r13), %rbx		# movq (%r(4194)), %r(4195)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4218)
	addq %rbx, %r12		# addq %r(4195), %r(4196)
	movq %r12, -56(%rbp)		# movq %r(4219), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(4197)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4220)
	addq %rbx, %r13		# addq %r(4197), %r(4198)
	movq %r13, %rdi		# movq %r(4198), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3844)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4221)
	movq %r12, (%rbx)		# movq %r(4221), (%r(3844))
	movq $8, %r12		# movq $8, %r(4199)
	addq %r12, %rbx		# addq %r(4199), %r(4200)
	movq %rbx, -16(%rbp)		# movq %r(4222), -16(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4223)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4224)
	cmpq %r12, %rbx		# cmpq %r(4224), %r(4223)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4225)
	salq $3, %r13		# salq $3, %r(4201)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4226)
	movq %rbx, -64(%rbp)		# movq %r(4227), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4228)
	addq %r13, %r12		# addq %r(4201), %r(4228)
	movq %r12, -64(%rbp)		# movq %r(4228), -64(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4229)
	salq $3, %r13		# salq $3, %r(4203)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4230)
	movq %rbx, -32(%rbp)		# movq %r(4231), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4232)
	addq %r13, %r12		# addq %r(4203), %r(4232)
	movq %r12, -32(%rbp)		# movq %r(4232), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4233)
	movq (%rbx), %rbx		# movq (%r(4233)), %r(4205)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4234)
	movq %rbx, (%r12)		# movq %r(4205), (%r(4234))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4235)
	incq %rbx		# incq %r(4235)
	movq %rbx, -24(%rbp)		# movq %r(4235), -24(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4236)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4237)
	cmpq %r12, %rbx		# cmpq %r(4237), %r(4236)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4238)
	salq $3, %r13		# salq $3, %r(4206)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4239)
	addq %r13, %r14		# addq %r(4206), %r(4207)
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(4240)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(4241)
	subq %r13, %r15		# subq %r(4241), %r(4208)
	salq $3, %r15		# salq $3, %r(4209)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4242)
	movq %rbx, -40(%rbp)		# movq %r(4243), -40(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4244)
	addq %r15, %r13		# addq %r(4209), %r(4244)
	movq %r13, -40(%rbp)		# movq %r(4244), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4245)
	movq (%rbx), %rbx		# movq (%r(4245)), %r(4211)
	movq %rbx, (%r14)		# movq %r(4211), (%r(4207))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4246)
	incq %rbx		# incq %r(4246)
	movq %rbx, -24(%rbp)		# movq %r(4246), -24(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4247)
	movq %rbx, %rax		# movq %r(4247), %rax
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
