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
	leaq .L686(%rip), %rdi		# leaq .L686(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3567)
	movq %rbx, %rdi		# movq %r(3567), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(3568)
	movq %rbx, %rdi		# movq %r(3568), %rdi
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(b)
	movq $40, %rbx		# movq $40, %r(3577)
	movq %rbx, %rdi		# movq %r(3577), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3570)
	movq $4, %r12		# movq $4, %r(3578)
	movq %r12, (%r13)		# movq %r(3578), (%r(3570))
	movq $8, %r12		# movq $8, %r(3579)
	addq %r12, %r13		# addq %r(3579), %r(3580)
	movq %r13, %r15		# movq %r(3580), %r(3555)
	movq $24, %rbx		# movq $24, %r(3581)
	movq %rbx, %rdi		# movq %r(3581), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3571)
	movq $2, %rbx		# movq $2, %r(3582)
	movq %rbx, (%r13)		# movq %r(3582), (%r(3571))
	movq $8, %rbx		# movq $8, %r(3583)
	addq %rbx, %r13		# addq %r(3583), %r(3584)
	movq %r13, %r14		# movq %r(3584), %r(3557)
	movq $0, %rbx		# movq $0, %r(3585)
	movq %r14, %r13		# movq %r(3557), %r(3586)
	addq %rbx, %r13		# addq %r(3585), %r(3586)
	movq $1, %rbx		# movq $1, %r(3587)
	movq %rbx, (%r13)		# movq %r(3587), (%r(3586))
	movq $8, %rbx		# movq $8, %r(3588)
	movq %r14, %r13		# movq %r(3557), %r(3589)
	addq %rbx, %r13		# addq %r(3588), %r(3589)
	movq $1, %rbx		# movq $1, %r(3590)
	movq %rbx, (%r13)		# movq %r(3590), (%r(3589))
	movq $0, %rbx		# movq $0, %r(3591)
	movq %r15, %r13		# movq %r(3555), %r(3592)
	addq %rbx, %r13		# addq %r(3591), %r(3592)
	movq %r14, (%r13)		# movq %r(3557), (%r(3592))
	movq $24, %rbx		# movq $24, %r(3593)
	movq %rbx, %rdi		# movq %r(3593), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3572)
	movq $2, %rbx		# movq $2, %r(3594)
	movq %rbx, (%r13)		# movq %r(3594), (%r(3572))
	movq $8, %rbx		# movq $8, %r(3595)
	addq %rbx, %r13		# addq %r(3595), %r(3596)
	movq %r13, %r14		# movq %r(3596), %r(3559)
	movq $0, %rbx		# movq $0, %r(3597)
	movq %r14, %r13		# movq %r(3559), %r(3598)
	addq %rbx, %r13		# addq %r(3597), %r(3598)
	movq $1, %rbx		# movq $1, %r(3599)
	movq %rbx, (%r13)		# movq %r(3599), (%r(3598))
	movq $8, %rbx		# movq $8, %r(3600)
	movq %r14, %r13		# movq %r(3559), %r(3601)
	addq %rbx, %r13		# addq %r(3600), %r(3601)
	movq $0, %rbx		# movq $0, %r(3602)
	movq %rbx, (%r13)		# movq %r(3602), (%r(3601))
	movq $8, %rbx		# movq $8, %r(3603)
	movq %r15, %r13		# movq %r(3555), %r(3604)
	addq %rbx, %r13		# addq %r(3603), %r(3604)
	movq %r14, (%r13)		# movq %r(3559), (%r(3604))
	movq $24, %rbx		# movq $24, %r(3605)
	movq %rbx, %rdi		# movq %r(3605), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3573)
	movq $2, %rbx		# movq $2, %r(3606)
	movq %rbx, (%r13)		# movq %r(3606), (%r(3573))
	movq $8, %rbx		# movq $8, %r(3607)
	addq %rbx, %r13		# addq %r(3607), %r(3608)
	movq %r13, %r14		# movq %r(3608), %r(3561)
	movq $0, %rbx		# movq $0, %r(3609)
	movq %r14, %r13		# movq %r(3561), %r(3610)
	addq %rbx, %r13		# addq %r(3609), %r(3610)
	movq $0, %rbx		# movq $0, %r(3611)
	movq %rbx, (%r13)		# movq %r(3611), (%r(3610))
	movq $8, %rbx		# movq $8, %r(3612)
	movq %r14, %r13		# movq %r(3561), %r(3613)
	addq %rbx, %r13		# addq %r(3612), %r(3613)
	movq $1, %rbx		# movq $1, %r(3614)
	movq %rbx, (%r13)		# movq %r(3614), (%r(3613))
	movq $16, %rbx		# movq $16, %r(3615)
	movq %r15, %r13		# movq %r(3555), %r(3616)
	addq %rbx, %r13		# addq %r(3615), %r(3616)
	movq %r14, (%r13)		# movq %r(3561), (%r(3616))
	movq $24, %rbx		# movq $24, %r(3617)
	movq %rbx, %rdi		# movq %r(3617), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3574)
	movq $2, %rbx		# movq $2, %r(3618)
	movq %rbx, (%r13)		# movq %r(3618), (%r(3574))
	movq $8, %rbx		# movq $8, %r(3619)
	addq %rbx, %r13		# addq %r(3619), %r(3620)
	movq %r13, %r14		# movq %r(3620), %r(3563)
	movq $0, %rbx		# movq $0, %r(3621)
	movq %r14, %r13		# movq %r(3563), %r(3622)
	addq %rbx, %r13		# addq %r(3621), %r(3622)
	movq $0, %rbx		# movq $0, %r(3623)
	movq %rbx, (%r13)		# movq %r(3623), (%r(3622))
	movq $8, %rbx		# movq $8, %r(3624)
	movq %r14, %r13		# movq %r(3563), %r(3625)
	addq %rbx, %r13		# addq %r(3624), %r(3625)
	movq $0, %rbx		# movq $0, %r(3626)
	movq %rbx, (%r13)		# movq %r(3626), (%r(3625))
	movq $24, %rbx		# movq $24, %r(3627)
	movq %r15, %r13		# movq %r(3555), %r(3628)
	addq %rbx, %r13		# addq %r(3627), %r(3628)
	movq %r14, (%r13)		# movq %r(3563), (%r(3628))
	movq %r15, %rax		# movq %r(3555), %rax
	jmp .L687		# jmp .L687
	.L687:		# .L687:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq $1, %rbx		# movq $1, %r(3629)
	movq %rbx, %rax		# movq %r(3629), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $0, %rbx		# movq $0, %r(3630)
	movq %rbx, %rax		# movq %r(3630), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $1, %rbx		# movq $1, %r(3631)
	movq %rbx, %rax		# movq %r(3631), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(3644)
	movq %rbx, -16(%rbp)		# movq %r(3644), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3645)
	movq (%rbx), %r12		# movq (%r(3645)), %r(3632)
	movq %r12, -24(%rbp)		# movq %r(3646), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3647)
	salq $3, %rbx		# salq $3, %r(3633)
	movq $8, %r12		# movq $8, %r(3634)
	addq %r12, %rbx		# addq %r(3634), %r(3635)
	movq %rbx, %rdi		# movq %r(3635), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3575)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3648)
	salq $3, %r12		# salq $3, %r(3636)
	movq %r14, %r13		# movq %r(3575), %r(3637)
	addq %r12, %r13		# addq %r(3636), %r(3637)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3649)
	movq %rbx, %r12		# movq %r(3649), %r(3638)
	salq $3, %r12		# salq $3, %r(3638)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3650)
	movq %rbx, -8(%rbp)		# movq %r(3651), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3652)
	addq %r12, %rbx		# addq %r(3638), %r(3652)
	movq %rbx, -8(%rbp)		# movq %r(3652), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3653)
	movq (%rbx), %rbx		# movq (%r(3653)), %r(3640)
	movq %rbx, (%r13)		# movq %r(3640), (%r(3637))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3654)
	decq %rbx		# decq %r(3654)
	movq %rbx, -24(%rbp)		# movq %r(3654), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(3641)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3655)
	cmpq %rbx, %r12		# cmpq %r(3641), %r(3655)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3642)
	movq %r14, %r12		# movq %r(3575), %r(3643)
	addq %rbx, %r12		# addq %r(3642), %r(3643)
	movq %r12, %rax		# movq %r(3643), %rax
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

