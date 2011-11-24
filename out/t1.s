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
	movq $32, %rbx		# movq $32, %r(3431)
	movq %rbx, %rdi		# movq %r(3431), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3425)
	movq $3, %r12		# movq $3, %r(3432)
	movq %r12, (%r14)		# movq %r(3432), (%r(3425))
	movq $8, %r12		# movq $8, %r(3433)
	addq %r12, %r14		# addq %r(3433), %r(3434)
	movq $0, %r12		# movq $0, %r(3435)
	movq %r14, %rbx		# movq %r(3423), %r(3436)
	addq %r12, %rbx		# addq %r(3435), %r(3436)
	movq $7, %r12		# movq $7, %r(3437)
	movq %r12, (%rbx)		# movq %r(3437), (%r(3436))
	movq $8, %r12		# movq $8, %r(3438)
	movq %r14, %rbx		# movq %r(3423), %r(3439)
	addq %r12, %rbx		# addq %r(3438), %r(3439)
	movq $8, %r12		# movq $8, %r(3440)
	movq %r12, (%rbx)		# movq %r(3440), (%r(3439))
	movq $16, %r12		# movq $16, %r(3441)
	movq %r14, %rbx		# movq %r(3423), %r(3442)
	addq %r12, %rbx		# addq %r(3441), %r(3442)
	movq $9, %r12		# movq $9, %r(3443)
	movq %r12, (%rbx)		# movq %r(3443), (%r(3442))
	movq %r14, %rdi		# movq %r(3423), %rdi
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
	movq $60, %rbx		# movq $60, %r(3444)
	movq %rbx, %rax		# movq %r(3444), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(3488)
	movq %rbx, -80(%rbp)		# movq %r(3488), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(3445)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(3489)
	subq %rbx, %r13		# subq %r(3445), %r(3446)
	movq (%r13), %r12		# movq (%r(3446)), %r(3447)
	movq %r12, -64(%rbp)		# movq %r(3490), -64(%rbp)
	movq $1, %r12		# movq $1, %r(3448)
	movq %r12, -8(%rbp)		# movq %r(3491), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(3449)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3492)
	cmpq %rbx, %r12		# cmpq %r(3449), %r(3492)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(3450)
	movq %rbx, %rax		# movq %r(3450), %rax
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
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3493)
	salq $3, %r12		# salq $3, %r(3451)
	movq %r12, %rdi		# movq %r(3451), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(3427)
	movq $1, %r12		# movq $1, %r(3452)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(3494)
	movq %r14, -16(%rbp)		# movq %r(3495), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3496)
	subq %r12, %rbx		# subq %r(3452), %r(3496)
	movq %rbx, -16(%rbp)		# movq %r(3496), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3497)
	movq %rbx, (%r13)		# movq %r(3497), (%r(3427))
	movq $8, %rbx		# movq $8, %r(3454)
	addq %rbx, %r13		# addq %r(3454), %r(3455)
	movq %r13, -48(%rbp)		# movq %r(3498), -48(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3499)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3500)
	cmpq %r12, %rbx		# cmpq %r(3500), %r(3499)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(3456)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(3501)
	subq %rbx, %r13		# subq %r(3456), %r(3457)
	movq (%r13), %rbx		# movq (%r(3457)), %r(3458)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3502)
	cmpq %rbx, %r12		# cmpq %r(3458), %r(3502)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(3459)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3503)
	subq %rbx, %r14		# subq %r(3459), %r(3460)
	movq $8, %r13		# movq $8, %r(3461)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3504)
	movq %r12, -24(%rbp)		# movq %r(3505), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3506)
	subq %r13, %rbx		# subq %r(3461), %r(3506)
	movq %rbx, -24(%rbp)		# movq %r(3506), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3507)
	movq (%rbx), %rbx		# movq (%r(3507)), %r(3463)
	cmpq %rbx, %r14		# cmpq %r(3463), %r(1728)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(3464)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3508)
	addq %r14, %rbx		# addq %r(3464), %r(3465)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3509)
	salq $3, %r14		# salq $3, %r(3466)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3510)
	movq %r12, -72(%rbp)		# movq %r(3511), -72(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(3512)
	addq %r14, %r13		# addq %r(3466), %r(3512)
	movq %r13, -72(%rbp)		# movq %r(3512), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3513)
	movq (%r12), %r12		# movq (%r(3513)), %r(3468)
	movq %r12, (%rbx)		# movq %r(3468), (%r(3465))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3514)
	incq %rbx		# incq %r(3514)
	movq %rbx, -8(%rbp)		# movq %r(3514), -8(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(3469)
	movq $8, %r12		# movq $8, %r(3470)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(3515)
	subq %r12, %r14		# subq %r(3470), %r(3471)
	movq (%r14), %rbx		# movq (%r(3471)), %r(3472)
	cmpq %rbx, %r13		# cmpq %r(3472), %r(3469)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3473)
	salq $3, %r13		# salq $3, %r(3474)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3516)
	addq %r13, %rbx		# addq %r(3474), %r(3475)
	movq (%rbx), %r12		# movq (%r(3475)), %r(3476)
	movq %r12, -8(%rbp)		# movq %r(3517), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(3477)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3518)
	addq %rbx, %r12		# addq %r(3477), %r(3478)
	salq $3, %r12		# salq $3, %r(3479)
	movq %r12, %rdi		# movq %r(3479), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(3428)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3519)
	movq %r12, (%rbx)		# movq %r(3519), (%r(3428))
	movq $8, %r12		# movq $8, %r(3480)
	addq %r12, %rbx		# addq %r(3480), %r(3481)
	movq %rbx, -40(%rbp)		# movq %r(3520), -40(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(3482)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3521)
	cmpq %rbx, %r12		# cmpq %r(3482), %r(3521)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3522)
	decq %rbx		# decq %r(3522)
	movq %rbx, -8(%rbp)		# movq %r(3522), -8(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3523)
	movq %rbx, %rdi		# movq %r(3523), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(3524)
	movq %rbx, -32(%rbp)		# movq %r(3524), -32(%rbp)
	movq $8, %r12		# movq $8, %r(3483)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(3525)
	movq %r13, -88(%rbp)		# movq %r(3526), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3527)
	subq %r12, %rbx		# subq %r(3483), %r(3527)
	movq %rbx, -88(%rbp)		# movq %r(3527), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3528)
	movq (%rbx), %rbx		# movq (%r(3528)), %r(3485)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3529)
	cmpq %rbx, %r12		# cmpq %r(3485), %r(3529)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3530)
	salq $3, %r13		# salq $3, %r(3486)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3531)
	movq %rbx, -56(%rbp)		# movq %r(3532), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3533)
	addq %r13, %r12		# addq %r(3486), %r(3533)
	movq %r12, -56(%rbp)		# movq %r(3533), -56(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3534)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3535)
	movq %rbx, (%r12)		# movq %r(3534), (%r(3535))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3536)
	movq %rbx, %rax		# movq %r(3536), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
