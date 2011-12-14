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
	movq %rdi, %rbx		# movq %rdi, %r(3817)
	leaq .L686(%rip), %rdi		# leaq .L686(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3831)
	movq %rbx, %rdi		# movq %r(3831), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(3832)
	movq %rbx, %rdi		# movq %r(3832), %rdi
	call _If_aabb		# call _If_aabb
	jmp .L685		# jmp .L685
	.L685:		# .L685:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_aabb
_If_aabb:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3818)
	movq $40, %rbx		# movq $40, %r(3841)
	movq %rbx, %rdi		# movq %r(3841), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3834)
	movq $4, %rbx		# movq $4, %r(3842)
	movq %rbx, (%r14)		# movq %r(3842), (%r(3834))
	movq $8, %rbx		# movq $8, %r(3843)
	movq %r14, %r13		# movq %r(3834), %r(3844)
	addq %rbx, %r13		# addq %r(3843), %r(3844)
	movq %r13, %r12		# movq %r(3844), %r(3893)
	movq %r12, -8(%rbp)		# movq %r(3893), -8(%rbp)
	movq $24, %rbx		# movq $24, %r(3845)
	movq %rbx, %rdi		# movq %r(3845), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3835)
	movq $2, %rbx		# movq $2, %r(3846)
	movq %rbx, (%r14)		# movq %r(3846), (%r(3835))
	movq $8, %rbx		# movq $8, %r(3847)
	movq %r14, %r13		# movq %r(3835), %r(3848)
	addq %rbx, %r13		# addq %r(3847), %r(3848)
	movq %r13, %r12		# movq %r(3848), %r(3899)
	movq %r12, -24(%rbp)		# movq %r(3899), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(3849)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(3900)
	movq %r14, %r12		# movq %r(3900), %r(3850)
	addq %rbx, %r12		# addq %r(3849), %r(3850)
	movq $1, %rbx		# movq $1, %r(3851)
	movq %rbx, (%r12)		# movq %r(3851), (%r(3850))
	movq $8, %rbx		# movq $8, %r(3852)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(3901)
	movq %r14, %r12		# movq %r(3901), %r(3853)
	addq %rbx, %r12		# addq %r(3852), %r(3853)
	movq $1, %rbx		# movq $1, %r(3854)
	movq %rbx, (%r12)		# movq %r(3854), (%r(3853))
	movq $0, %rbx		# movq $0, %r(3855)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3894)
	movq %r14, %r12		# movq %r(3894), %r(3856)
	addq %rbx, %r12		# addq %r(3855), %r(3856)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3902)
	movq %rbx, (%r12)		# movq %r(3902), (%r(3856))
	movq $24, %rbx		# movq $24, %r(3857)
	movq %rbx, %rdi		# movq %r(3857), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3836)
	movq $2, %rbx		# movq $2, %r(3858)
	movq %rbx, (%r14)		# movq %r(3858), (%r(3836))
	movq $8, %rbx		# movq $8, %r(3859)
	movq %r14, %r13		# movq %r(3836), %r(3860)
	addq %rbx, %r13		# addq %r(3859), %r(3860)
	movq %r13, %r12		# movq %r(3860), %r(3903)
	movq %r12, -16(%rbp)		# movq %r(3903), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(3861)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(3904)
	movq %r14, %r12		# movq %r(3904), %r(3862)
	addq %rbx, %r12		# addq %r(3861), %r(3862)
	movq $1, %rbx		# movq $1, %r(3863)
	movq %rbx, (%r12)		# movq %r(3863), (%r(3862))
	movq $8, %rbx		# movq $8, %r(3864)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(3905)
	movq %r14, %r12		# movq %r(3905), %r(3865)
	addq %rbx, %r12		# addq %r(3864), %r(3865)
	movq $0, %rbx		# movq $0, %r(3866)
	movq %rbx, (%r12)		# movq %r(3866), (%r(3865))
	movq $8, %rbx		# movq $8, %r(3867)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3895)
	movq %r14, %r12		# movq %r(3895), %r(3868)
	addq %rbx, %r12		# addq %r(3867), %r(3868)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3906)
	movq %rbx, (%r12)		# movq %r(3906), (%r(3868))
	movq $24, %rbx		# movq $24, %r(3869)
	movq %rbx, %rdi		# movq %r(3869), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3837)
	movq $2, %rbx		# movq $2, %r(3870)
	movq %rbx, (%r14)		# movq %r(3870), (%r(3837))
	movq $8, %rbx		# movq $8, %r(3871)
	movq %r14, %r13		# movq %r(3837), %r(3872)
	addq %rbx, %r13		# addq %r(3871), %r(3872)
	movq %r13, %r12		# movq %r(3872), %r(3907)
	movq %r12, -40(%rbp)		# movq %r(3907), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(3873)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(3908)
	movq %r14, %r12		# movq %r(3908), %r(3874)
	addq %rbx, %r12		# addq %r(3873), %r(3874)
	movq $0, %rbx		# movq $0, %r(3875)
	movq %rbx, (%r12)		# movq %r(3875), (%r(3874))
	movq $8, %rbx		# movq $8, %r(3876)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(3909)
	movq %r14, %r12		# movq %r(3909), %r(3877)
	addq %rbx, %r12		# addq %r(3876), %r(3877)
	movq $1, %rbx		# movq $1, %r(3878)
	movq %rbx, (%r12)		# movq %r(3878), (%r(3877))
	movq $16, %rbx		# movq $16, %r(3879)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3896)
	movq %r14, %r12		# movq %r(3896), %r(3880)
	addq %rbx, %r12		# addq %r(3879), %r(3880)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3910)
	movq %rbx, (%r12)		# movq %r(3910), (%r(3880))
	movq $24, %rbx		# movq $24, %r(3881)
	movq %rbx, %rdi		# movq %r(3881), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3838)
	movq $2, %rbx		# movq $2, %r(3882)
	movq %rbx, (%r14)		# movq %r(3882), (%r(3838))
	movq $8, %rbx		# movq $8, %r(3883)
	movq %r14, %r13		# movq %r(3838), %r(3884)
	addq %rbx, %r13		# addq %r(3883), %r(3884)
	movq %r13, %r12		# movq %r(3884), %r(3911)
	movq %r12, -32(%rbp)		# movq %r(3911), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(3885)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3912)
	movq %r14, %r12		# movq %r(3912), %r(3886)
	addq %rbx, %r12		# addq %r(3885), %r(3886)
	movq $0, %rbx		# movq $0, %r(3887)
	movq %rbx, (%r12)		# movq %r(3887), (%r(3886))
	movq $8, %rbx		# movq $8, %r(3888)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3913)
	movq %r14, %r12		# movq %r(3913), %r(3889)
	addq %rbx, %r12		# addq %r(3888), %r(3889)
	movq $0, %rbx		# movq $0, %r(3890)
	movq %rbx, (%r12)		# movq %r(3890), (%r(3889))
	movq $24, %rbx		# movq $24, %r(3891)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3897)
	movq %r14, %r12		# movq %r(3897), %r(3892)
	addq %rbx, %r12		# addq %r(3891), %r(3892)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3914)
	movq %rbx, (%r12)		# movq %r(3914), (%r(3892))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3898)
	movq %rbx, %rax		# movq %r(3898), %rax
	jmp .L687		# jmp .L687
	.L687:		# .L687:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_b
_Ig_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(3915)
	movq %rbx, %rax		# movq %r(3915), %rax
	jmp .L688		# jmp .L688
	.L688:		# .L688:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ih_bi
_Ih_bi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3829)
	movq $0, %rbx		# movq $0, %r(3916)
	movq %rbx, %rax		# movq %r(3916), %rax
	jmp .L689		# jmp .L689
	.L689:		# .L689:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ii_bai
_Ii_bai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3830)
	movq $1, %rbx		# movq $1, %r(3917)
	movq %rbx, %rax		# movq %r(3917), %rax
	jmp .L690		# jmp .L690
	.L690:		# .L690:
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
	movq %rdi, %rbx		# movq %rdi, %r(3930)
	movq %rbx, -16(%rbp)		# movq %r(3930), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3931)
	movq (%rbx), %r13		# movq (%r(3931)), %r(3918)
	movq %r13, %r12		# movq %r(3918), %r(3932)
	movq %r12, -8(%rbp)		# movq %r(3932), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3933)
	movq %r12, %r13		# movq %r(3933), %r(3919)
	salq $3, %r13		# salq $3, %r(3919)
	movq $8, %rbx		# movq $8, %r(3920)
	movq %r13, %r14		# movq %r(3919), %r(3921)
	addq %rbx, %r14		# addq %r(3920), %r(3921)
	movq %r14, %rdi		# movq %r(3921), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3839)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3934)
	movq %r13, %rbx		# movq %r(3934), %r(3922)
	salq $3, %rbx		# salq $3, %r(3922)
	movq %r15, %r13		# movq %r(3839), %r(3923)
	addq %rbx, %r13		# addq %r(3922), %r(3923)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3935)
	movq %rbx, %r12		# movq %r(3935), %r(3924)
	salq $3, %r12		# salq $3, %r(3924)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3936)
	movq %rbx, %r14		# movq %r(3936), %r(3937)
	movq %r14, -24(%rbp)		# movq %r(3937), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3938)
	addq %r12, %rbx		# addq %r(3924), %r(3938)
	movq %rbx, -24(%rbp)		# movq %r(3938), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3939)
	movq (%rbx), %r12		# movq (%r(3939)), %r(3926)
	movq %r12, (%r13)		# movq %r(3926), (%r(3923))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3940)
	decq %rbx		# decq %r(3940)
	movq %rbx, -8(%rbp)		# movq %r(3940), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(3927)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3941)
	cmpq %rbx, %r12		# cmpq %r(3927), %r(3941)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3928)
	movq %r15, %r13		# movq %r(3839), %r(3929)
	addq %rbx, %r13		# addq %r(3928), %r(3929)
	movq %r13, %rax		# movq %r(3929), %rax
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
.L686:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

