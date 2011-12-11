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
	movq %rdi, %rbx		# movq %rdi, %r(3942)
	movq $45, %r12		# movq $45, %r(3953)
	movq %r12, %r14		# movq %r(3953), %r(3943)
	jmp .L698		# jmp .L698
	.L698:		# .L698:
	movq $1, %r13		# movq $1, %r(3954)
	movq %r13, %r15		# movq %r(3954), %r(3944)
	movq $0, %rbx		# movq $0, %r(3955)
	cmpq %rbx, %r14		# cmpq %r(3955), %r(3943)
	jg .L701		# jg .L701
	.L702:		# .L702:
	movq $0, %r12		# movq $0, %r(3956)
	movq %r12, %r15		# movq %r(3956), %r(3944)
	jmp .L701		# jmp .L701
	.L701:		# .L701:
	movq $0, %rbx		# movq $0, %r(3957)
	cmpq %rbx, %r15		# cmpq %r(3957), %r(3944)
	je .L700		# je .L700
	.L699:		# .L699:
	movq $16, %rbx		# movq $16, %r(3958)
	movq %rbx, %rdi		# movq %r(3958), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3947)
	movq $1, %rbx		# movq $1, %r(3959)
	movq %rbx, (%r15)		# movq %r(3959), (%r(3947))
	movq $8, %rbx		# movq $8, %r(3960)
	movq %r15, %r13		# movq %r(3947), %r(3961)
	addq %rbx, %r13		# addq %r(3960), %r(3961)
	movq %r13, %r12		# movq %r(3961), %r(3966)
	movq %r12, -8(%rbp)		# movq %r(3966), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(3962)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(3967)
	movq %r15, %r12		# movq %r(3967), %r(3963)
	addq %rbx, %r12		# addq %r(3962), %r(3963)
	movq $55, %rbx		# movq $55, %r(3964)
	movq %rbx, (%r12)		# movq %r(3964), (%r(3963))
	leaq .L703(%rip), %rdi		# leaq .L703(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3948)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3968)
	movq %r12, %rdi		# movq %r(3968), %rdi
	movq %rbx, %rsi		# movq %r(3948), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(3949)
	movq %rbx, %rdi		# movq %r(3949), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r14		# decq %r(3943)
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
	movq %rdi, %rbx		# movq %rdi, %r(3981)
	movq %rbx, -16(%rbp)		# movq %r(3981), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3982)
	movq (%rbx), %r13		# movq (%r(3982)), %r(3969)
	movq %r13, %r12		# movq %r(3969), %r(3983)
	movq %r12, -24(%rbp)		# movq %r(3983), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3984)
	movq %r12, %r13		# movq %r(3984), %r(3970)
	salq $3, %r13		# salq $3, %r(3970)
	movq $8, %rbx		# movq $8, %r(3971)
	movq %r13, %r14		# movq %r(3970), %r(3972)
	addq %rbx, %r14		# addq %r(3971), %r(3972)
	movq %r14, %rdi		# movq %r(3972), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3951)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3985)
	movq %r13, %rbx		# movq %r(3985), %r(3973)
	salq $3, %rbx		# salq $3, %r(3973)
	movq %r15, %r13		# movq %r(3951), %r(3974)
	addq %rbx, %r13		# addq %r(3973), %r(3974)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3986)
	movq %rbx, %r12		# movq %r(3986), %r(3975)
	salq $3, %r12		# salq $3, %r(3975)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3987)
	movq %rbx, %r14		# movq %r(3987), %r(3988)
	movq %r14, -8(%rbp)		# movq %r(3988), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3989)
	addq %r12, %rbx		# addq %r(3975), %r(3989)
	movq %rbx, -8(%rbp)		# movq %r(3989), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3990)
	movq (%rbx), %r12		# movq (%r(3990)), %r(3977)
	movq %r12, (%r13)		# movq %r(3977), (%r(3974))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3991)
	decq %rbx		# decq %r(3991)
	movq %rbx, -24(%rbp)		# movq %r(3991), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(3978)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3992)
	cmpq %rbx, %r12		# cmpq %r(3978), %r(3992)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3979)
	movq %r15, %r13		# movq %r(3951), %r(3980)
	addq %rbx, %r13		# addq %r(3979), %r(3980)
	movq %r13, %rax		# movq %r(3980), %rax
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
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4016)
	movq %rbx, -32(%rbp)		# movq %r(4016), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4017)
	movq %rbx, -40(%rbp)		# movq %r(4017), -40(%rbp)
	movq $0, %r13		# movq $0, %r(3993)
	movq %r13, %rbx		# movq %r(3993), %r(4018)
	movq %rbx, -48(%rbp)		# movq %r(4018), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(3994)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4019)
	movq %r14, %r12		# movq %r(4019), %r(3995)
	subq %rbx, %r12		# subq %r(3994), %r(3995)
	movq (%r12), %r13		# movq (%r(3995)), %r(3996)
	movq %r13, %rbx		# movq %r(3996), %r(4020)
	movq %rbx, -16(%rbp)		# movq %r(4020), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(3997)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(4021)
	movq %r14, %r15		# movq %r(4021), %r(3998)
	subq %rbx, %r15		# subq %r(3997), %r(3998)
	movq (%r15), %r12		# movq (%r(3998)), %r(3999)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4022)
	movq %r14, %r13		# movq %r(4022), %r(4000)
	addq %r12, %r13		# addq %r(3999), %r(4000)
	movq %r13, %r12		# movq %r(4000), %r(4023)
	movq %r12, -56(%rbp)		# movq %r(4023), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(4001)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(4024)
	movq %r14, %r12		# movq %r(4024), %r(4002)
	addq %rbx, %r12		# addq %r(4001), %r(4002)
	movq %r12, %rdi		# movq %r(4002), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3952)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4025)
	movq %rbx, (%r14)		# movq %r(4025), (%r(3952))
	movq $8, %r13		# movq $8, %r(4003)
	movq %r14, %r12		# movq %r(3952), %r(4026)
	movq %r12, -72(%rbp)		# movq %r(4026), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4027)
	addq %r13, %rbx		# addq %r(4003), %r(4027)
	movq %rbx, -72(%rbp)		# movq %r(4027), -72(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(4028)
	movq %r13, %rbx		# movq %r(4028), %r(4029)
	movq %rbx, -64(%rbp)		# movq %r(4029), -64(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4030)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4031)
	cmpq %rbx, %r12		# cmpq %r(4030), %r(4031)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4032)
	movq %r12, %r14		# movq %r(4032), %r(4005)
	salq $3, %r14		# salq $3, %r(4005)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4033)
	movq %r13, %rbx		# movq %r(4033), %r(4034)
	movq %rbx, -88(%rbp)		# movq %r(4034), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4035)
	addq %r14, %rbx		# addq %r(4005), %r(4035)
	movq %rbx, -88(%rbp)		# movq %r(4035), -88(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4036)
	movq %r12, %r14		# movq %r(4036), %r(4007)
	salq $3, %r14		# salq $3, %r(4007)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4037)
	movq %r13, %rbx		# movq %r(4037), %r(4038)
	movq %rbx, -24(%rbp)		# movq %r(4038), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4039)
	addq %r14, %rbx		# addq %r(4007), %r(4039)
	movq %rbx, -24(%rbp)		# movq %r(4039), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4040)
	movq (%rbx), %r12		# movq (%r(4040)), %r(4009)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4041)
	movq %r12, (%rbx)		# movq %r(4009), (%r(4041))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4042)
	incq %rbx		# incq %r(4042)
	movq %rbx, -48(%rbp)		# movq %r(4042), -48(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4043)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4044)
	cmpq %r12, %rbx		# cmpq %r(4044), %r(4043)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4045)
	movq %r12, %r14		# movq %r(4045), %r(4010)
	salq $3, %r14		# salq $3, %r(4010)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4046)
	movq %r13, %rbx		# movq %r(4046), %r(4047)
	movq %rbx, -8(%rbp)		# movq %r(4047), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4048)
	addq %r14, %rbx		# addq %r(4010), %r(4048)
	movq %rbx, -8(%rbp)		# movq %r(4048), -8(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4049)
	movq %r13, %r12		# movq %r(4049), %r(4012)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4050)
	subq %rbx, %r12		# subq %r(4050), %r(4012)
	movq %r12, %r14		# movq %r(4012), %r(4013)
	salq $3, %r14		# salq $3, %r(4013)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4051)
	movq %r13, %rbx		# movq %r(4051), %r(4052)
	movq %rbx, -80(%rbp)		# movq %r(4052), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4053)
	addq %r14, %rbx		# addq %r(4013), %r(4053)
	movq %rbx, -80(%rbp)		# movq %r(4053), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4054)
	movq (%rbx), %r12		# movq (%r(4054)), %r(4015)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4055)
	movq %r12, (%rbx)		# movq %r(4015), (%r(4055))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4056)
	incq %rbx		# incq %r(4056)
	movq %rbx, -48(%rbp)		# movq %r(4056), -48(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4057)
	movq %rbx, %rax		# movq %r(4057), %rax
	jmp .L23		# jmp .L23
	.L23:		# .L23:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
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

