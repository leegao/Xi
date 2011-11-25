.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L645(%rip), %rdi		# leaq .L645(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3243)
	movq %rbx, -8(%rbp)		# movq %r(3243), -8(%rbp)
	.L646:		# .L646:
	movq $1, %rbx		# movq $1, %r(3203)
	movq %rbx, %rdi		# movq %r(3203), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(3204)
	movq %r13, %rbx		# movq %r(3204), %r(3251)
	movq %rbx, -48(%rbp)		# movq %r(3251), -48(%rbp)
	movq $8, %r13		# movq $8, %r(3205)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3244)
	movq %r14, %rbx		# movq %r(3244), %r(3252)
	movq %rbx, -24(%rbp)		# movq %r(3252), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3253)
	subq %r13, %rbx		# subq %r(3205), %r(3253)
	movq %rbx, -24(%rbp)		# movq %r(3253), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3254)
	movq (%rbx), %r12		# movq (%r(3254)), %r(3207)
	movq $3, %rbx		# movq $3, %r(3208)
	cmpq %rbx, %r12		# cmpq %r(3208), %r(3207)
	je .L648		# je .L648
	.L649:		# .L649:
	movq $0, %r13		# movq $0, %r(3209)
	movq %r13, %rbx		# movq %r(3209), %r(3255)
	movq %rbx, -48(%rbp)		# movq %r(3255), -48(%rbp)
	jmp .L648		# jmp .L648
	.L648:		# .L648:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3256)
	movq %rbx, %rdi		# movq %r(3256), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(3210)
	movq %r13, %rbx		# movq %r(3210), %r(3257)
	movq %rbx, -32(%rbp)		# movq %r(3257), -32(%rbp)
	movq $0, %r13		# movq $0, %r(3211)
	movq $8, %rbx		# movq $8, %r(3212)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3245)
	movq %r12, %r14		# movq %r(3245), %r(3213)
	subq %rbx, %r14		# subq %r(3212), %r(3213)
	movq (%r14), %rbx		# movq (%r(3213)), %r(3214)
	cmpq %rbx, %r13		# cmpq %r(3214), %r(3211)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(3215)
	movq %r13, %r14		# movq %r(3215), %r(3216)
	salq $3, %r14		# salq $3, %r(3216)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3246)
	movq %r12, %r15		# movq %r(3246), %r(3217)
	addq %r14, %r15		# addq %r(3216), %r(3217)
	movq (%r15), %rbx		# movq (%r(3217)), %r(3218)
	movq $65, %r12		# movq $65, %r(3219)
	cmpq %r12, %rbx		# cmpq %r(3219), %r(3218)
	je .L652		# je .L652
	.L653:		# .L653:
	movq $0, %r13		# movq $0, %r(3220)
	movq %r13, %rbx		# movq %r(3220), %r(3258)
	movq %rbx, -32(%rbp)		# movq %r(3258), -32(%rbp)
	jmp .L652		# jmp .L652
	.L652:		# .L652:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3259)
	movq %rbx, %rdi		# movq %r(3259), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(3221)
	movq %r13, %rbx		# movq %r(3221), %r(3260)
	movq %rbx, -16(%rbp)		# movq %r(3260), -16(%rbp)
	movq $1, %r13		# movq $1, %r(3222)
	movq $8, %rbx		# movq $8, %r(3223)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3247)
	movq %r12, %r14		# movq %r(3247), %r(3224)
	subq %rbx, %r14		# subq %r(3223), %r(3224)
	movq (%r14), %rbx		# movq (%r(3224)), %r(3225)
	cmpq %rbx, %r13		# cmpq %r(3225), %r(3222)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(3226)
	movq %r13, %r14		# movq %r(3226), %r(3227)
	salq $3, %r14		# salq $3, %r(3227)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3248)
	movq %r12, %r15		# movq %r(3248), %r(3228)
	addq %r14, %r15		# addq %r(3227), %r(3228)
	movq (%r15), %rbx		# movq (%r(3228)), %r(3229)
	movq $66, %r12		# movq $66, %r(3230)
	cmpq %r12, %rbx		# cmpq %r(3230), %r(3229)
	je .L656		# je .L656
	.L657:		# .L657:
	movq $0, %r13		# movq $0, %r(3231)
	movq %r13, %rbx		# movq %r(3231), %r(3261)
	movq %rbx, -16(%rbp)		# movq %r(3261), -16(%rbp)
	jmp .L656		# jmp .L656
	.L656:		# .L656:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3262)
	movq %rbx, %rdi		# movq %r(3262), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(3232)
	movq %r13, %rbx		# movq %r(3232), %r(3263)
	movq %rbx, -40(%rbp)		# movq %r(3263), -40(%rbp)
	movq $2, %r13		# movq $2, %r(3233)
	movq $8, %rbx		# movq $8, %r(3234)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3249)
	movq %r12, %r14		# movq %r(3249), %r(3235)
	subq %rbx, %r14		# subq %r(3234), %r(3235)
	movq (%r14), %rbx		# movq (%r(3235)), %r(3236)
	cmpq %rbx, %r13		# cmpq %r(3236), %r(3233)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(3237)
	movq %r13, %r14		# movq %r(3237), %r(3238)
	salq $3, %r14		# salq $3, %r(3238)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3250)
	movq %r12, %r15		# movq %r(3250), %r(3239)
	addq %r14, %r15		# addq %r(3238), %r(3239)
	movq (%r15), %rbx		# movq (%r(3239)), %r(3240)
	movq $67, %r12		# movq $67, %r(3241)
	cmpq %r12, %rbx		# cmpq %r(3241), %r(3240)
	je .L660		# je .L660
	.L661:		# .L661:
	movq $0, %r13		# movq $0, %r(3242)
	movq %r13, %rbx		# movq %r(3242), %r(3264)
	movq %rbx, -40(%rbp)		# movq %r(3264), -40(%rbp)
	jmp .L660		# jmp .L660
	.L660:		# .L660:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3265)
	movq %rbx, %rdi		# movq %r(3265), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L644		# jmp .L644
	.L644:		# .L644:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $64, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(3278)
	movq %rbx, -24(%rbp)		# movq %r(3278), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3279)
	movq (%rbx), %r13		# movq (%r(3279)), %r(3266)
	movq %r13, %r12		# movq %r(3266), %r(3280)
	movq %r12, -16(%rbp)		# movq %r(3280), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3281)
	movq %r12, %r13		# movq %r(3281), %r(3267)
	salq $3, %r13		# salq $3, %r(3267)
	movq $8, %rbx		# movq $8, %r(3268)
	movq %r13, %r14		# movq %r(3267), %r(3269)
	addq %rbx, %r14		# addq %r(3268), %r(3269)
	movq %r14, %rdi		# movq %r(3269), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3200)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3282)
	movq %r13, %rbx		# movq %r(3282), %r(3270)
	salq $3, %rbx		# salq $3, %r(3270)
	movq %r15, %r13		# movq %r(3200), %r(3271)
	addq %rbx, %r13		# addq %r(3270), %r(3271)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3283)
	movq %rbx, %r12		# movq %r(3283), %r(3272)
	salq $3, %r12		# salq $3, %r(3272)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3284)
	movq %rbx, %r14		# movq %r(3284), %r(3285)
	movq %r14, -8(%rbp)		# movq %r(3285), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3286)
	addq %r12, %rbx		# addq %r(3272), %r(3286)
	movq %rbx, -8(%rbp)		# movq %r(3286), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3287)
	movq (%rbx), %r12		# movq (%r(3287)), %r(3274)
	movq %r12, (%r13)		# movq %r(3274), (%r(3271))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3288)
	decq %rbx		# decq %r(3288)
	movq %rbx, -16(%rbp)		# movq %r(3288), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(3275)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3289)
	cmpq %rbx, %r12		# cmpq %r(3275), %r(3289)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(3276)
	movq %r15, %r13		# movq %r(3200), %r(3277)
	addq %rbx, %r13		# addq %r(3276), %r(3277)
	movq %r13, %rax		# movq %r(3277), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
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
.L645:
	.quad 3
	.quad 65
	.quad 66
	.quad 67
	.text

error_outofbounds:
call _I_outOfBounds_p
