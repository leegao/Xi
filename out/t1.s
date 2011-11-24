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
	movq $32, %rbx		# movq $32, %r(3447)
	movq %rbx, %rdi		# movq %r(3447), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3441)
	movq $3, %r12		# movq $3, %r(3448)
	movq %r12, (%r14)		# movq %r(3448), (%r(3441))
	movq $8, %r12		# movq $8, %r(3449)
	addq %r12, %r14		# addq %r(3449), %r(3450)
	movq $0, %r12		# movq $0, %r(3451)
	movq %r14, %rbx		# movq %r(3439), %r(3452)
	addq %r12, %rbx		# addq %r(3451), %r(3452)
	movq $7, %r12		# movq $7, %r(3453)
	movq %r12, (%rbx)		# movq %r(3453), (%r(3452))
	movq $8, %r12		# movq $8, %r(3454)
	movq %r14, %rbx		# movq %r(3439), %r(3455)
	addq %r12, %rbx		# addq %r(3454), %r(3455)
	movq $8, %r12		# movq $8, %r(3456)
	movq %r12, (%rbx)		# movq %r(3456), (%r(3455))
	movq $16, %r12		# movq $16, %r(3457)
	movq %r14, %rbx		# movq %r(3439), %r(3458)
	addq %r12, %rbx		# addq %r(3457), %r(3458)
	movq $9, %r12		# movq $9, %r(3459)
	movq %r12, (%rbx)		# movq %r(3459), (%r(3458))
	movq %r14, %rdi		# movq %r(3439), %rdi
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
	movq $60, %rbx		# movq $60, %r(3460)
	movq %rbx, %rax		# movq %r(3460), %rax
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
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3504)
	movq %rbx, -24(%rbp)		# movq %r(3504), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(3461)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3505)
	subq %rbx, %r13		# subq %r(3461), %r(3462)
	movq (%r13), %r12		# movq (%r(3462)), %r(3463)
	movq %r12, -80(%rbp)		# movq %r(3506), -80(%rbp)
	movq $1, %r12		# movq $1, %r(3464)
	movq %r12, -48(%rbp)		# movq %r(3507), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(3465)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3508)
	cmpq %rbx, %r12		# cmpq %r(3465), %r(3508)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(3466)
	movq %rbx, %rax		# movq %r(3466), %rax
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
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3509)
	salq $3, %r12		# salq $3, %r(3467)
	movq %r12, %rdi		# movq %r(3467), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3443)
	movq $1, %r12		# movq $1, %r(3468)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(3510)
	movq %r14, -32(%rbp)		# movq %r(3511), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3512)
	subq %r12, %rbx		# subq %r(3468), %r(3512)
	movq %rbx, -32(%rbp)		# movq %r(3512), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3513)
	movq %rbx, (%r13)		# movq %r(3513), (%r(3443))
	movq $8, %rbx		# movq $8, %r(3470)
	addq %rbx, %r13		# addq %r(3470), %r(3471)
	movq %r13, -72(%rbp)		# movq %r(3514), -72(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3515)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3516)
	cmpq %r12, %rbx		# cmpq %r(3516), %r(3515)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(3472)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3517)
	subq %rbx, %r13		# subq %r(3472), %r(3473)
	movq (%r13), %rbx		# movq (%r(3473)), %r(3474)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3518)
	cmpq %rbx, %r12		# cmpq %r(3474), %r(3518)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(3475)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(3519)
	subq %rbx, %r14		# subq %r(3475), %r(3476)
	movq $8, %r13		# movq $8, %r(3477)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3520)
	movq %r12, -64(%rbp)		# movq %r(3521), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3522)
	subq %r13, %rbx		# subq %r(3477), %r(3522)
	movq %rbx, -64(%rbp)		# movq %r(3522), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3523)
	movq (%rbx), %rbx		# movq (%r(3523)), %r(3479)
	cmpq %rbx, %r14		# cmpq %r(3479), %r(1740)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(3480)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3524)
	addq %r14, %rbx		# addq %r(3480), %r(3481)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(3525)
	salq $3, %r14		# salq $3, %r(3482)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3526)
	movq %r12, -16(%rbp)		# movq %r(3527), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3528)
	addq %r14, %r13		# addq %r(3482), %r(3528)
	movq %r13, -16(%rbp)		# movq %r(3528), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3529)
	movq (%r12), %r12		# movq (%r(3529)), %r(3484)
	movq %r12, (%rbx)		# movq %r(3484), (%r(3481))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3530)
	incq %rbx		# incq %r(3530)
	movq %rbx, -48(%rbp)		# movq %r(3530), -48(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(3485)
	movq $8, %r12		# movq $8, %r(3486)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(3531)
	subq %r12, %r14		# subq %r(3486), %r(3487)
	movq (%r14), %rbx		# movq (%r(3487)), %r(3488)
	cmpq %rbx, %r13		# cmpq %r(3488), %r(3485)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3489)
	salq $3, %r13		# salq $3, %r(3490)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3532)
	addq %r13, %rbx		# addq %r(3490), %r(3491)
	movq (%rbx), %r12		# movq (%r(3491)), %r(3492)
	movq %r12, -48(%rbp)		# movq %r(3533), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(3493)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3534)
	addq %rbx, %r12		# addq %r(3493), %r(3494)
	salq $3, %r12		# salq $3, %r(3495)
	movq %r12, %rdi		# movq %r(3495), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3444)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3535)
	movq %r12, (%rbx)		# movq %r(3535), (%r(3444))
	movq $8, %r12		# movq $8, %r(3496)
	addq %r12, %rbx		# addq %r(3496), %r(3497)
	movq %rbx, -56(%rbp)		# movq %r(3536), -56(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(3498)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3537)
	cmpq %rbx, %r12		# cmpq %r(3498), %r(3537)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3538)
	decq %rbx		# decq %r(3538)
	movq %rbx, -48(%rbp)		# movq %r(3538), -48(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3539)
	movq %rbx, %rdi		# movq %r(3539), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(3540)
	movq %rbx, -8(%rbp)		# movq %r(3540), -8(%rbp)
	movq $8, %r12		# movq $8, %r(3499)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(3541)
	movq %r13, -88(%rbp)		# movq %r(3542), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3543)
	subq %r12, %rbx		# subq %r(3499), %r(3543)
	movq %rbx, -88(%rbp)		# movq %r(3543), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3544)
	movq (%rbx), %rbx		# movq (%r(3544)), %r(3501)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3545)
	cmpq %rbx, %r12		# cmpq %r(3501), %r(3545)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(3546)
	salq $3, %r13		# salq $3, %r(3502)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3547)
	movq %rbx, -40(%rbp)		# movq %r(3548), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3549)
	addq %r13, %r12		# addq %r(3502), %r(3549)
	movq %r12, -40(%rbp)		# movq %r(3549), -40(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3550)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3551)
	movq %rbx, (%r12)		# movq %r(3550), (%r(3551))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3552)
	movq %rbx, %rax		# movq %r(3552), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
