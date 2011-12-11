.att_syntax prefix
.text
.globl _Isort_pai
_Isort_pai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3478)
	movq %rbx, -32(%rbp)		# movq %r(3478), -32(%rbp)
	movq $0, %r13		# movq $0, %r(3433)
	movq %r13, %rbx		# movq %r(3433), %r(3479)
	movq %rbx, -8(%rbp)		# movq %r(3479), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(3434)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3480)
	movq %r14, %r12		# movq %r(3480), %r(3435)
	subq %rbx, %r12		# subq %r(3434), %r(3435)
	movq (%r12), %r13		# movq (%r(3435)), %r(3436)
	movq %r13, %rbx		# movq %r(3436), %r(3481)
	movq %rbx, -24(%rbp)		# movq %r(3481), -24(%rbp)
	jmp .L577		# jmp .L577
	.L577:		# .L577:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3482)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3483)
	cmpq %r12, %rbx		# cmpq %r(3483), %r(3482)
	jge .L579		# jge .L579
	.L578:		# .L578:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3484)
	movq %r13, %rbx		# movq %r(3484), %r(3485)
	movq %rbx, -48(%rbp)		# movq %r(3485), -48(%rbp)
	jmp .L580		# jmp .L580
	.L580:		# .L580:
	movq $0, %rbx		# movq $0, %r(3437)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3486)
	cmpq %rbx, %r12		# cmpq %r(3437), %r(3486)
	jle .L582		# jle .L582
	.L581:		# .L581:
	movq $1, %rbx		# movq $1, %r(3438)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(3487)
	movq %r14, %r13		# movq %r(3487), %r(3439)
	subq %rbx, %r13		# subq %r(3438), %r(3439)
	movq %r13, %r12		# movq %r(3439), %r(3488)
	movq %r12, -56(%rbp)		# movq %r(3488), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(3440)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3489)
	movq %r14, %r12		# movq %r(3489), %r(3441)
	subq %rbx, %r12		# subq %r(3440), %r(3441)
	movq (%r12), %rbx		# movq (%r(3441)), %r(3442)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3490)
	cmpq %rbx, %r12		# cmpq %r(3442), %r(3490)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(3443)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3491)
	movq %r14, %r12		# movq %r(3491), %r(3444)
	subq %rbx, %r12		# subq %r(3443), %r(3444)
	movq (%r12), %rbx		# movq (%r(3444)), %r(3445)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3492)
	cmpq %rbx, %r12		# cmpq %r(3445), %r(3492)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(3493)
	movq %r13, %r14		# movq %r(3493), %r(3446)
	salq $3, %r14		# salq $3, %r(3446)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3494)
	movq %r12, %r15		# movq %r(3494), %r(3447)
	addq %r14, %r15		# addq %r(3446), %r(3447)
	movq (%r15), %rbx		# movq (%r(3447)), %r(3495)
	movq %rbx, -80(%rbp)		# movq %r(3495), -80(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(3496)
	movq %r13, %r14		# movq %r(3496), %r(3449)
	salq $3, %r14		# salq $3, %r(3449)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3497)
	movq %r12, %r15		# movq %r(3497), %r(3450)
	addq %r14, %r15		# addq %r(3449), %r(3450)
	movq (%r15), %rbx		# movq (%r(3450)), %r(3451)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3498)
	cmpq %rbx, %r12		# cmpq %r(3451), %r(3498)
	jle .L588		# jle .L588
	.L587:		# .L587:
	movq $8, %rbx		# movq $8, %r(3452)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3499)
	movq %r14, %r12		# movq %r(3499), %r(3453)
	subq %rbx, %r12		# subq %r(3452), %r(3453)
	movq (%r12), %rbx		# movq (%r(3453)), %r(3454)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3500)
	cmpq %rbx, %r12		# cmpq %r(3454), %r(3500)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(3501)
	movq %r13, %r14		# movq %r(3501), %r(3455)
	salq $3, %r14		# salq $3, %r(3455)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3502)
	movq %r12, %r15		# movq %r(3502), %r(3456)
	addq %r14, %r15		# addq %r(3455), %r(3456)
	movq (%r15), %r13		# movq (%r(3456)), %r(3457)
	movq %r13, %rbx		# movq %r(3457), %r(3503)
	movq %rbx, -72(%rbp)		# movq %r(3503), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(3458)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(3504)
	movq %r14, %r13		# movq %r(3504), %r(3459)
	subq %rbx, %r13		# subq %r(3458), %r(3459)
	movq %r13, %r12		# movq %r(3459), %r(3505)
	movq %r12, -64(%rbp)		# movq %r(3505), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(3460)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3506)
	movq %r14, %r12		# movq %r(3506), %r(3461)
	subq %rbx, %r12		# subq %r(3460), %r(3461)
	movq (%r12), %rbx		# movq (%r(3461)), %r(3462)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3507)
	cmpq %rbx, %r12		# cmpq %r(3462), %r(3507)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(3463)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3508)
	movq %r14, %r12		# movq %r(3508), %r(3464)
	subq %rbx, %r12		# subq %r(3463), %r(3464)
	movq (%r12), %rbx		# movq (%r(3464)), %r(3465)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3509)
	cmpq %rbx, %r12		# cmpq %r(3465), %r(3509)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3510)
	movq %r12, %r14		# movq %r(3510), %r(3466)
	salq $3, %r14		# salq $3, %r(3466)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3511)
	movq %r13, %rbx		# movq %r(3511), %r(3512)
	movq %rbx, -40(%rbp)		# movq %r(3512), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3513)
	addq %r14, %rbx		# addq %r(3466), %r(3513)
	movq %rbx, -40(%rbp)		# movq %r(3513), -40(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3514)
	movq %r13, %r14		# movq %r(3514), %r(3468)
	salq $3, %r14		# salq $3, %r(3468)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3515)
	movq %r12, %r15		# movq %r(3515), %r(3469)
	addq %r14, %r15		# addq %r(3468), %r(3469)
	movq (%r15), %rbx		# movq (%r(3469)), %r(3470)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3516)
	movq %rbx, (%r12)		# movq %r(3470), (%r(3516))
	movq $1, %rbx		# movq $1, %r(3471)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(3517)
	movq %r14, %r13		# movq %r(3517), %r(3472)
	subq %rbx, %r13		# subq %r(3471), %r(3472)
	movq %r13, %r12		# movq %r(3472), %r(3518)
	movq %r12, -16(%rbp)		# movq %r(3518), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(3473)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3519)
	movq %r14, %r12		# movq %r(3519), %r(3474)
	subq %rbx, %r12		# subq %r(3473), %r(3474)
	movq (%r12), %rbx		# movq (%r(3474)), %r(3475)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3520)
	cmpq %rbx, %r12		# cmpq %r(3475), %r(3520)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3521)
	movq %r13, %r14		# movq %r(3521), %r(3476)
	salq $3, %r14		# salq $3, %r(3476)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3522)
	movq %r12, %r15		# movq %r(3522), %r(3477)
	addq %r14, %r15		# addq %r(3476), %r(3477)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3523)
	movq %rbx, (%r15)		# movq %r(3523), (%r(3477))
	jmp .L588		# jmp .L588
	.L588:		# .L588:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3524)
	decq %rbx		# decq %r(3524)
	movq %rbx, -48(%rbp)		# movq %r(3524), -48(%rbp)
	jmp .L580		# jmp .L580
	.L582:		# .L582:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3525)
	incq %rbx		# incq %r(3525)
	movq %rbx, -8(%rbp)		# movq %r(3525), -8(%rbp)
	jmp .L577		# jmp .L577
	.L579:		# .L579:
	jmp .L576		# jmp .L576
	.L576:		# .L576:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3404)
	movq %rsi, %r12		# movq %rsi, %r(3405)
	leaq .L598(%rip), %rdi		# leaq .L598(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(3418)
	movq %r13, %rdi		# movq %r(3418), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(3404), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(3405), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L597		# jmp .L597
	.L597:		# .L597:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IassertSameArray_paiai
_IassertSameArray_paiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3554)
	movq %rbx, -64(%rbp)		# movq %r(3554), -64(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3555)
	movq %rbx, -40(%rbp)		# movq %r(3555), -40(%rbp)
	leaq .L600(%rip), %rdi		# leaq .L600(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3556)
	movq %rbx, -80(%rbp)		# movq %r(3556), -80(%rbp)
	movq $1, %r13		# movq $1, %r(3528)
	movq %r13, %rbx		# movq %r(3528), %r(3557)
	movq %rbx, -8(%rbp)		# movq %r(3557), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(3529)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(3558)
	movq %r14, %r12		# movq %r(3558), %r(3530)
	subq %rbx, %r12		# subq %r(3529), %r(3530)
	movq (%r12), %rbx		# movq (%r(3530)), %r(3559)
	movq %rbx, -32(%rbp)		# movq %r(3559), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(3532)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(3560)
	movq %r14, %r12		# movq %r(3560), %r(3533)
	subq %rbx, %r12		# subq %r(3532), %r(3533)
	movq (%r12), %rbx		# movq (%r(3533)), %r(3534)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3561)
	cmpq %rbx, %r12		# cmpq %r(3534), %r(3561)
	je .L601		# je .L601
	.L602:		# .L602:
	movq $0, %r13		# movq $0, %r(3535)
	movq %r13, %rbx		# movq %r(3535), %r(3562)
	movq %rbx, -8(%rbp)		# movq %r(3562), -8(%rbp)
	jmp .L601		# jmp .L601
	.L601:		# .L601:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3563)
	movq %rbx, %rdi		# movq %r(3563), %rdi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3564)
	movq %rbx, %rsi		# movq %r(3564), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r13		# movq $0, %r(3536)
	movq %r13, %rbx		# movq %r(3536), %r(3565)
	movq %rbx, -88(%rbp)		# movq %r(3565), -88(%rbp)
	jmp .L603		# jmp .L603
	.L603:		# .L603:
	movq $8, %rbx		# movq $8, %r(3537)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(3566)
	movq %r14, %r12		# movq %r(3566), %r(3538)
	subq %rbx, %r12		# subq %r(3537), %r(3538)
	movq (%r12), %rbx		# movq (%r(3538)), %r(3539)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(3567)
	cmpq %rbx, %r12		# cmpq %r(3539), %r(3567)
	jge .L605		# jge .L605
	.L604:		# .L604:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3568)
	movq %rbx, %rdi		# movq %r(3568), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(3569)
	movq %rbx, -24(%rbp)		# movq %r(3569), -24(%rbp)
	movq $1, %r13		# movq $1, %r(3540)
	movq %r13, %rbx		# movq %r(3540), %r(3570)
	movq %rbx, -16(%rbp)		# movq %r(3570), -16(%rbp)
	movq $8, %r13		# movq $8, %r(3541)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(3571)
	movq %r14, %rbx		# movq %r(3571), %r(3572)
	movq %rbx, -48(%rbp)		# movq %r(3572), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3573)
	subq %r13, %rbx		# subq %r(3541), %r(3573)
	movq %rbx, -48(%rbp)		# movq %r(3573), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3574)
	movq (%rbx), %r12		# movq (%r(3574)), %r(3543)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3575)
	cmpq %r12, %rbx		# cmpq %r(3543), %r(3575)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r13		# movq $8, %r(3544)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(3576)
	movq %r14, %rbx		# movq %r(3576), %r(3577)
	movq %rbx, -72(%rbp)		# movq %r(3577), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3578)
	subq %r13, %rbx		# subq %r(3544), %r(3578)
	movq %rbx, -72(%rbp)		# movq %r(3578), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3579)
	movq (%rbx), %r12		# movq (%r(3579)), %r(3546)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3580)
	cmpq %r12, %rbx		# cmpq %r(3546), %r(3580)
	jae error_outofbounds		# jae error_outofbounds
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(3581)
	movq %r12, %r14		# movq %r(3581), %r(3547)
	salq $3, %r14		# salq $3, %r(3547)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3582)
	movq %r13, %rbx		# movq %r(3582), %r(3583)
	movq %rbx, -56(%rbp)		# movq %r(3583), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3584)
	addq %r14, %rbx		# addq %r(3547), %r(3584)
	movq %rbx, -56(%rbp)		# movq %r(3584), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3585)
	movq (%rbx), %r12		# movq (%r(3585)), %r(3586)
	movq %r12, -104(%rbp)		# movq %r(3586), -104(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(3587)
	movq %r12, %r14		# movq %r(3587), %r(3550)
	salq $3, %r14		# salq $3, %r(3550)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(3588)
	movq %r13, %rbx		# movq %r(3588), %r(3589)
	movq %rbx, -96(%rbp)		# movq %r(3589), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(3590)
	addq %r14, %rbx		# addq %r(3550), %r(3590)
	movq %rbx, -96(%rbp)		# movq %r(3590), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(3591)
	movq (%rbx), %r12		# movq (%r(3591)), %r(3552)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(3592)
	cmpq %r12, %rbx		# cmpq %r(3552), %r(3592)
	je .L610		# je .L610
	.L611:		# .L611:
	movq $0, %r13		# movq $0, %r(3553)
	movq %r13, %rbx		# movq %r(3553), %r(3593)
	movq %rbx, -16(%rbp)		# movq %r(3593), -16(%rbp)
	jmp .L610		# jmp .L610
	.L610:		# .L610:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3594)
	movq %rbx, %rdi		# movq %r(3594), %rdi
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3595)
	movq %rbx, %rsi		# movq %r(3595), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3596)
	incq %rbx		# incq %r(3596)
	movq %rbx, -88(%rbp)		# movq %r(3596), -88(%rbp)
	jmp .L603		# jmp .L603
	.L605:		# .L605:
	jmp .L599		# jmp .L599
	.L599:		# .L599:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	movq %rdi, %rbx		# movq %rdi, %r(3415)
	leaq .L613(%rip), %rdi		# leaq .L613(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3426)
	leaq .L614(%rip), %rdi		# leaq .L614(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(3427)
	movq %rbx, %rdi		# movq %r(3426), %rdi
	call _Isort_pai		# call _Isort_pai
	movq %rbx, %rdi		# movq %r(3426), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(3426), %rdi
	movq %r12, %rsi		# movq %r(3427), %rsi
	call _IassertSameArray_paiai		# call _IassertSameArray_paiai
	jmp .L612		# jmp .L612
	.L612:		# .L612:
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
	movq %rdi, %rbx		# movq %rdi, %r(3611)
	movq %rbx, -16(%rbp)		# movq %r(3611), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3612)
	movq (%rbx), %r13		# movq (%r(3612)), %r(3599)
	movq %r13, %r12		# movq %r(3599), %r(3613)
	movq %r12, -24(%rbp)		# movq %r(3613), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3614)
	movq %r12, %r13		# movq %r(3614), %r(3600)
	salq $3, %r13		# salq $3, %r(3600)
	movq $8, %rbx		# movq $8, %r(3601)
	movq %r13, %r14		# movq %r(3600), %r(3602)
	addq %rbx, %r14		# addq %r(3601), %r(3602)
	movq %r14, %rdi		# movq %r(3602), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3431)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3615)
	movq %r13, %rbx		# movq %r(3615), %r(3603)
	salq $3, %rbx		# salq $3, %r(3603)
	movq %r15, %r13		# movq %r(3431), %r(3604)
	addq %rbx, %r13		# addq %r(3603), %r(3604)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3616)
	movq %rbx, %r12		# movq %r(3616), %r(3605)
	salq $3, %r12		# salq $3, %r(3605)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3617)
	movq %rbx, %r14		# movq %r(3617), %r(3618)
	movq %r14, -8(%rbp)		# movq %r(3618), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3619)
	addq %r12, %rbx		# addq %r(3605), %r(3619)
	movq %rbx, -8(%rbp)		# movq %r(3619), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3620)
	movq (%rbx), %r12		# movq (%r(3620)), %r(3607)
	movq %r12, (%r13)		# movq %r(3607), (%r(3604))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3621)
	decq %rbx		# decq %r(3621)
	movq %rbx, -24(%rbp)		# movq %r(3621), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(3608)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3622)
	cmpq %rbx, %r12		# cmpq %r(3608), %r(3622)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3609)
	movq %r15, %r13		# movq %r(3431), %r(3610)
	addq %rbx, %r13		# addq %r(3609), %r(3610)
	movq %r13, %rax		# movq %r(3610), %rax
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
.L614:
	.quad 111
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 44
	.quad 45
	.quad 46
	.quad 65
	.quad 73
	.quad 84
	.quad 84
	.quad 91
	.quad 93
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 98
	.quad 99
	.quad 99
	.quad 100
	.quad 100
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 102
	.quad 102
	.quad 102
	.quad 102
	.quad 103
	.quad 103
	.quad 104
	.quad 104
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 108
	.quad 108
	.quad 108
	.quad 108
	.quad 109
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 111
	.quad 111
	.quad 112
	.quad 113
	.quad 114
	.quad 114
	.quad 114
	.quad 114
	.quad 114
	.quad 115
	.quad 115
	.quad 115
	.quad 115
	.quad 115
	.quad 116
	.quad 116
	.quad 116
	.quad 116
	.quad 116
	.quad 117
	.quad 117
	.quad 120
	.quad 121
	.quad 121
	.quad 121
	.text

#.section .rodata
.align 8
.L613:
	.quad 111
	.quad 65
	.quad 110
	.quad 32
	.quad 97
	.quad 114
	.quad 114
	.quad 97
	.quad 121
	.quad 32
	.quad 84
	.quad 91
	.quad 93
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 32
	.quad 102
	.quad 105
	.quad 120
	.quad 101
	.quad 100
	.quad 45
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
	.quad 32
	.quad 115
	.quad 101
	.quad 113
	.quad 117
	.quad 101
	.quad 110
	.quad 99
	.quad 101
	.quad 32
	.quad 111
	.quad 102
	.quad 32
	.quad 109
	.quad 117
	.quad 116
	.quad 97
	.quad 98
	.quad 108
	.quad 101
	.quad 32
	.quad 99
	.quad 101
	.quad 108
	.quad 108
	.quad 115
	.quad 32
	.quad 111
	.quad 102
	.quad 32
	.quad 116
	.quad 121
	.quad 112
	.quad 101
	.quad 32
	.quad 84
	.quad 32
	.quad 46
	.quad 32
	.quad 73
	.quad 102
	.quad 32
	.quad 97
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 110
	.quad 32
	.quad 97
	.quad 114
	.quad 114
	.quad 97
	.quad 121
	.quad 32
	.quad 97
	.quad 110
	.quad 100
	.quad 32
	.quad 105
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 110
	.quad 32
	.quad 105
	.quad 110
	.quad 116
	.quad 101
	.quad 103
	.quad 101
	.quad 114
	.quad 44
	.quad 32
	.quad 116
	.quad 104
	.quad 101
	.quad 110
	.text

#.section .rodata
.align 8
.L598:
	.quad 8
	.quad 84
	.quad 101
	.quad 115
	.quad 116
	.quad 105
	.quad 110
	.quad 103
	.quad 58
	.text

#.section .rodata
.align 8
.L600:
	.quad 6
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
	.text

error_outofbounds:
call _I_outOfBounds_p
