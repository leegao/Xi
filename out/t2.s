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
	movq %rax, %rbx		# movq %rax, %r(3551)
	movq %rbx, %rdi		# movq %r(3551), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(3552)
	movq %rbx, %rdi		# movq %r(3552), %rdi
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
	movq $40, %rbx		# movq $40, %r(3561)
	movq %rbx, %rdi		# movq %r(3561), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3554)
	movq $4, %r12		# movq $4, %r(3562)
	movq %r12, (%r13)		# movq %r(3562), (%r(3554))
	movq $8, %r12		# movq $8, %r(3563)
	addq %r12, %r13		# addq %r(3563), %r(3564)
	movq %r13, %r15		# movq %r(3564), %r(3539)
	movq $24, %rbx		# movq $24, %r(3565)
	movq %rbx, %rdi		# movq %r(3565), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3555)
	movq $2, %rbx		# movq $2, %r(3566)
	movq %rbx, (%r13)		# movq %r(3566), (%r(3555))
	movq $8, %rbx		# movq $8, %r(3567)
	addq %rbx, %r13		# addq %r(3567), %r(3568)
	movq %r13, %r14		# movq %r(3568), %r(3541)
	movq $0, %rbx		# movq $0, %r(3569)
	movq %r14, %r13		# movq %r(3541), %r(3570)
	addq %rbx, %r13		# addq %r(3569), %r(3570)
	movq $1, %rbx		# movq $1, %r(3571)
	movq %rbx, (%r13)		# movq %r(3571), (%r(3570))
	movq $8, %rbx		# movq $8, %r(3572)
	movq %r14, %r13		# movq %r(3541), %r(3573)
	addq %rbx, %r13		# addq %r(3572), %r(3573)
	movq $1, %rbx		# movq $1, %r(3574)
	movq %rbx, (%r13)		# movq %r(3574), (%r(3573))
	movq $0, %rbx		# movq $0, %r(3575)
	movq %r15, %r13		# movq %r(3539), %r(3576)
	addq %rbx, %r13		# addq %r(3575), %r(3576)
	movq %r14, (%r13)		# movq %r(3541), (%r(3576))
	movq $24, %rbx		# movq $24, %r(3577)
	movq %rbx, %rdi		# movq %r(3577), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3556)
	movq $2, %rbx		# movq $2, %r(3578)
	movq %rbx, (%r13)		# movq %r(3578), (%r(3556))
	movq $8, %rbx		# movq $8, %r(3579)
	addq %rbx, %r13		# addq %r(3579), %r(3580)
	movq %r13, %r14		# movq %r(3580), %r(3543)
	movq $0, %rbx		# movq $0, %r(3581)
	movq %r14, %r13		# movq %r(3543), %r(3582)
	addq %rbx, %r13		# addq %r(3581), %r(3582)
	movq $1, %rbx		# movq $1, %r(3583)
	movq %rbx, (%r13)		# movq %r(3583), (%r(3582))
	movq $8, %rbx		# movq $8, %r(3584)
	movq %r14, %r13		# movq %r(3543), %r(3585)
	addq %rbx, %r13		# addq %r(3584), %r(3585)
	movq $0, %rbx		# movq $0, %r(3586)
	movq %rbx, (%r13)		# movq %r(3586), (%r(3585))
	movq $8, %rbx		# movq $8, %r(3587)
	movq %r15, %r13		# movq %r(3539), %r(3588)
	addq %rbx, %r13		# addq %r(3587), %r(3588)
	movq %r14, (%r13)		# movq %r(3543), (%r(3588))
	movq $24, %rbx		# movq $24, %r(3589)
	movq %rbx, %rdi		# movq %r(3589), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3557)
	movq $2, %rbx		# movq $2, %r(3590)
	movq %rbx, (%r13)		# movq %r(3590), (%r(3557))
	movq $8, %rbx		# movq $8, %r(3591)
	addq %rbx, %r13		# addq %r(3591), %r(3592)
	movq %r13, %r14		# movq %r(3592), %r(3545)
	movq $0, %rbx		# movq $0, %r(3593)
	movq %r14, %r13		# movq %r(3545), %r(3594)
	addq %rbx, %r13		# addq %r(3593), %r(3594)
	movq $0, %rbx		# movq $0, %r(3595)
	movq %rbx, (%r13)		# movq %r(3595), (%r(3594))
	movq $8, %rbx		# movq $8, %r(3596)
	movq %r14, %r13		# movq %r(3545), %r(3597)
	addq %rbx, %r13		# addq %r(3596), %r(3597)
	movq $1, %rbx		# movq $1, %r(3598)
	movq %rbx, (%r13)		# movq %r(3598), (%r(3597))
	movq $16, %rbx		# movq $16, %r(3599)
	movq %r15, %r13		# movq %r(3539), %r(3600)
	addq %rbx, %r13		# addq %r(3599), %r(3600)
	movq %r14, (%r13)		# movq %r(3545), (%r(3600))
	movq $24, %rbx		# movq $24, %r(3601)
	movq %rbx, %rdi		# movq %r(3601), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3558)
	movq $2, %rbx		# movq $2, %r(3602)
	movq %rbx, (%r13)		# movq %r(3602), (%r(3558))
	movq $8, %rbx		# movq $8, %r(3603)
	addq %rbx, %r13		# addq %r(3603), %r(3604)
	movq %r13, %r14		# movq %r(3604), %r(3547)
	movq $0, %rbx		# movq $0, %r(3605)
	movq %r14, %r13		# movq %r(3547), %r(3606)
	addq %rbx, %r13		# addq %r(3605), %r(3606)
	movq $0, %rbx		# movq $0, %r(3607)
	movq %rbx, (%r13)		# movq %r(3607), (%r(3606))
	movq $8, %rbx		# movq $8, %r(3608)
	movq %r14, %r13		# movq %r(3547), %r(3609)
	addq %rbx, %r13		# addq %r(3608), %r(3609)
	movq $0, %rbx		# movq $0, %r(3610)
	movq %rbx, (%r13)		# movq %r(3610), (%r(3609))
	movq $24, %rbx		# movq $24, %r(3611)
	movq %r15, %r13		# movq %r(3539), %r(3612)
	addq %rbx, %r13		# addq %r(3611), %r(3612)
	movq %r14, (%r13)		# movq %r(3547), (%r(3612))
	movq %r15, %rax		# movq %r(3539), %rax
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
	movq $1, %rbx		# movq $1, %r(3613)
	movq %rbx, %rax		# movq %r(3613), %rax
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
	movq $0, %rbx		# movq $0, %r(3614)
	movq %rbx, %rax		# movq %r(3614), %rax
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
	movq $1, %rbx		# movq $1, %r(3615)
	movq %rbx, %rax		# movq %r(3615), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(3628)
	movq %rbx, -16(%rbp)		# movq %r(3628), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3629)
	movq (%rbx), %rbx		# movq (%r(3629)), %r(3616)
	movq %rbx, %r14		# movq %r(3616), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(3617)
	salq $3, %rbx		# salq $3, %r(3617)
	movq $8, %r12		# movq $8, %r(3618)
	addq %r12, %rbx		# addq %r(3618), %r(3619)
	movq %rbx, %rdi		# movq %r(3619), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3559)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(3620)
	salq $3, %rbx		# salq $3, %r(3620)
	movq %r13, %r12		# movq %r(3559), %r(3621)
	addq %rbx, %r12		# addq %r(3620), %r(3621)
	movq %r14, %r15		# movq %r(t10), %r(3622)
	salq $3, %r15		# salq $3, %r(3622)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3630)
	movq %rbx, -8(%rbp)		# movq %r(3631), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3632)
	addq %r15, %rbx		# addq %r(3622), %r(3632)
	movq %rbx, -8(%rbp)		# movq %r(3632), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3633)
	movq (%rbx), %rbx		# movq (%r(3633)), %r(3624)
	movq %rbx, (%r12)		# movq %r(3624), (%r(3621))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(3625)
	cmpq %rbx, %r14		# cmpq %r(3625), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3626)
	movq %r13, %r12		# movq %r(3559), %r(3627)
	addq %rbx, %r12		# addq %r(3626), %r(3627)
	movq %r12, %rax		# movq %r(3627), %rax
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

