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
	movq %rdi, %rbx		# movq %rdi, %r(3208)
	movq %rbx, -8(%rbp)		# movq %r(3208), -8(%rbp)
	movq $0, %r12		# movq $0, %r(3163)
	movq %r12, -56(%rbp)		# movq %r(3209), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(3164)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3210)
	subq %rbx, %r13		# subq %r(3164), %r(3165)
	movq (%r13), %r12		# movq (%r(3165)), %r(3166)
	movq %r12, -24(%rbp)		# movq %r(3211), -24(%rbp)
	jmp .L577		# jmp .L577
	.L577:		# .L577:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3212)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3213)
	cmpq %rbx, %r12		# cmpq %r(3212), %r(3213)
	jge .L579		# jge .L579
	.L578:		# .L578:
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3214)
	movq %r12, -80(%rbp)		# movq %r(3215), -80(%rbp)
	jmp .L580		# jmp .L580
	.L580:		# .L580:
	movq $0, %rbx		# movq $0, %r(3167)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3216)
	cmpq %rbx, %r12		# cmpq %r(3167), %r(3216)
	jle .L582		# jle .L582
	.L581:		# .L581:
	movq $1, %rbx		# movq $1, %r(3168)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3217)
	subq %rbx, %r12		# subq %r(3168), %r(3169)
	movq %r12, -64(%rbp)		# movq %r(3218), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(3170)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3219)
	subq %rbx, %r13		# subq %r(3170), %r(3171)
	movq (%r13), %rbx		# movq (%r(3171)), %r(3172)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3220)
	cmpq %rbx, %r12		# cmpq %r(3172), %r(3220)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(3173)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3221)
	subq %rbx, %r13		# subq %r(3173), %r(3174)
	movq (%r13), %rbx		# movq (%r(3174)), %r(3175)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3222)
	cmpq %rbx, %r12		# cmpq %r(3175), %r(3222)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3223)
	salq $3, %r13		# salq $3, %r(3176)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3224)
	addq %r13, %rbx		# addq %r(3176), %r(3177)
	movq (%rbx), %r13		# movq (%r(3177)), %r(3178)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(3225)
	salq $3, %r14		# salq $3, %r(3179)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3226)
	movq %rbx, -40(%rbp)		# movq %r(3227), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3228)
	addq %r14, %r12		# addq %r(3179), %r(3228)
	movq %r12, -40(%rbp)		# movq %r(3228), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3229)
	movq (%rbx), %rbx		# movq (%r(3229)), %r(3181)
	cmpq %rbx, %r13		# cmpq %r(3181), %r(3178)
	jle .L588		# jle .L588
	.L587:		# .L587:
	movq $8, %rbx		# movq $8, %r(3182)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3230)
	subq %rbx, %r13		# subq %r(3182), %r(3183)
	movq (%r13), %rbx		# movq (%r(3183)), %r(3184)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3231)
	cmpq %rbx, %r12		# cmpq %r(3184), %r(3231)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(3232)
	salq $3, %r13		# salq $3, %r(3185)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3233)
	addq %r13, %rbx		# addq %r(3185), %r(3186)
	movq (%rbx), %r12		# movq (%r(3186)), %r(3187)
	movq %r12, -16(%rbp)		# movq %r(3234), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(3188)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3235)
	subq %rbx, %r12		# subq %r(3188), %r(3189)
	movq %r12, -32(%rbp)		# movq %r(3236), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(3190)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3237)
	subq %rbx, %r13		# subq %r(3190), %r(3191)
	movq (%r13), %rbx		# movq (%r(3191)), %r(3192)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3238)
	cmpq %rbx, %r12		# cmpq %r(3192), %r(3238)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(3193)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3239)
	subq %rbx, %r13		# subq %r(3193), %r(3194)
	movq (%r13), %rbx		# movq (%r(3194)), %r(3195)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3240)
	cmpq %rbx, %r12		# cmpq %r(3195), %r(3240)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(3241)
	salq $3, %r13		# salq $3, %r(3196)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3242)
	movq %rbx, -48(%rbp)		# movq %r(3243), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3244)
	addq %r13, %r12		# addq %r(3196), %r(3244)
	movq %r12, -48(%rbp)		# movq %r(3244), -48(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3245)
	salq $3, %r13		# salq $3, %r(3198)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3246)
	addq %r13, %rbx		# addq %r(3198), %r(3199)
	movq (%rbx), %rbx		# movq (%r(3199)), %r(3200)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3247)
	movq %rbx, (%r12)		# movq %r(3200), (%r(3247))
	movq $1, %rbx		# movq $1, %r(3201)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(3248)
	subq %rbx, %r14		# subq %r(3201), %r(3202)
	movq $8, %r13		# movq $8, %r(3203)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3249)
	movq %r12, -72(%rbp)		# movq %r(3250), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3251)
	subq %r13, %rbx		# subq %r(3203), %r(3251)
	movq %rbx, -72(%rbp)		# movq %r(3251), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3252)
	movq (%rbx), %rbx		# movq (%r(3252)), %r(3205)
	cmpq %rbx, %r14		# cmpq %r(3205), %r(3133)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(3206)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3253)
	addq %r14, %r13		# addq %r(3206), %r(3207)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3254)
	movq %r12, (%r13)		# movq %r(3254), (%r(3207))
	jmp .L588		# jmp .L588
	.L588:		# .L588:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3255)
	decq %rbx		# decq %r(3255)
	movq %rbx, -80(%rbp)		# movq %r(3255), -80(%rbp)
	jmp .L580		# jmp .L580
	.L582:		# .L582:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3256)
	incq %rbx		# incq %r(3256)
	movq %rbx, -56(%rbp)		# movq %r(3256), -56(%rbp)
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
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L598(%rip), %rdi		# leaq .L598(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(3148)
	movq %r13, %rdi		# movq %r(3148), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(3285)
	movq %rbx, -104(%rbp)		# movq %r(3285), -104(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3286)
	movq %rbx, -72(%rbp)		# movq %r(3286), -72(%rbp)
	leaq .L600(%rip), %rdi		# leaq .L600(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3287)
	movq %rbx, -88(%rbp)		# movq %r(3287), -88(%rbp)
	movq $1, %r12		# movq $1, %r(3259)
	movq %r12, -96(%rbp)		# movq %r(3288), -96(%rbp)
	movq $8, %rbx		# movq $8, %r(3260)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(3289)
	subq %rbx, %r13		# subq %r(3260), %r(3261)
	movq (%r13), %r13		# movq (%r(3261)), %r(3262)
	movq $8, %r12		# movq $8, %r(3263)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(3290)
	movq %r14, -56(%rbp)		# movq %r(3291), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3292)
	subq %r12, %rbx		# subq %r(3263), %r(3292)
	movq %rbx, -56(%rbp)		# movq %r(3292), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3293)
	movq (%rbx), %rbx		# movq (%r(3293)), %r(3265)
	cmpq %rbx, %r13		# cmpq %r(3265), %r(3262)
	je .L601		# je .L601
	.L602:		# .L602:
	movq $0, %r12		# movq $0, %r(3266)
	movq %r12, -96(%rbp)		# movq %r(3294), -96(%rbp)
	jmp .L601		# jmp .L601
	.L601:		# .L601:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3295)
	movq %rbx, %rdi		# movq %r(3295), %rdi
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(3296)
	movq %rbx, %rsi		# movq %r(3296), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r12		# movq $0, %r(3267)
	movq %r12, -40(%rbp)		# movq %r(3297), -40(%rbp)
	jmp .L603		# jmp .L603
	.L603:		# .L603:
	movq $8, %rbx		# movq $8, %r(3268)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(3298)
	subq %rbx, %r13		# subq %r(3268), %r(3269)
	movq (%r13), %rbx		# movq (%r(3269)), %r(3270)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3299)
	cmpq %rbx, %r12		# cmpq %r(3270), %r(3299)
	jge .L605		# jge .L605
	.L604:		# .L604:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3300)
	movq %rbx, %rdi		# movq %r(3300), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(3301)
	movq %rbx, -48(%rbp)		# movq %r(3301), -48(%rbp)
	movq $1, %r12		# movq $1, %r(3271)
	movq %r12, -16(%rbp)		# movq %r(3302), -16(%rbp)
	movq $8, %r12		# movq $8, %r(3272)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(3303)
	movq %r13, -32(%rbp)		# movq %r(3304), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3305)
	subq %r12, %rbx		# subq %r(3272), %r(3305)
	movq %rbx, -32(%rbp)		# movq %r(3305), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3306)
	movq (%rbx), %rbx		# movq (%r(3306)), %r(3274)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3307)
	cmpq %rbx, %r12		# cmpq %r(3274), %r(3307)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(3275)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(3308)
	movq %r13, -24(%rbp)		# movq %r(3309), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3310)
	subq %r12, %rbx		# subq %r(3275), %r(3310)
	movq %rbx, -24(%rbp)		# movq %r(3310), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3311)
	movq (%rbx), %rbx		# movq (%r(3311)), %r(3277)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3312)
	cmpq %rbx, %r12		# cmpq %r(3277), %r(3312)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(3313)
	salq $3, %r13		# salq $3, %r(3278)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(3314)
	movq %rbx, -8(%rbp)		# movq %r(3315), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3316)
	addq %r13, %r12		# addq %r(3278), %r(3316)
	movq %r12, -8(%rbp)		# movq %r(3316), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3317)
	movq (%rbx), %rbx		# movq (%r(3317)), %r(3318)
	movq %rbx, -80(%rbp)		# movq %r(3318), -80(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(3319)
	salq $3, %r13		# salq $3, %r(3281)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3320)
	movq %rbx, -64(%rbp)		# movq %r(3321), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3322)
	addq %r13, %r12		# addq %r(3281), %r(3322)
	movq %r12, -64(%rbp)		# movq %r(3322), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3323)
	movq (%rbx), %rbx		# movq (%r(3323)), %r(3283)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3324)
	cmpq %rbx, %r12		# cmpq %r(3283), %r(3324)
	je .L610		# je .L610
	.L611:		# .L611:
	movq $0, %r12		# movq $0, %r(3284)
	movq %r12, -16(%rbp)		# movq %r(3325), -16(%rbp)
	jmp .L610		# jmp .L610
	.L610:		# .L610:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3326)
	movq %rbx, %rdi		# movq %r(3326), %rdi
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3327)
	movq %rbx, %rsi		# movq %r(3327), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3328)
	incq %rbx		# incq %r(3328)
	movq %rbx, -40(%rbp)		# movq %r(3328), -40(%rbp)
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
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L613(%rip), %rdi		# leaq .L613(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3156)
	leaq .L614(%rip), %rdi		# leaq .L614(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(3157)
	movq %rbx, %rdi		# movq %r(3156), %rdi
	call _Isort_pai		# call _Isort_pai
	movq %rbx, %rdi		# movq %r(3156), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(3156), %rdi
	movq %r12, %rsi		# movq %r(3157), %rsi
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3346)
	movq %rbx, -16(%rbp)		# movq %r(3346), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3347)
	movq (%rbx), %rbx		# movq (%r(3347)), %r(3331)
	movq %rbx, %r12		# movq %r(t10), %r(3332)
	salq $3, %r12		# salq $3, %r(3332)
	movq $8, %r13		# movq $8, %r(3333)
	addq %r13, %r12		# addq %r(3333), %r(3334)
	movq %r12, %rdi		# movq %r(3334), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(3348)
	movq %r12, -24(%rbp)		# movq %r(3348), -24(%rbp)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %rbx, %r14		# movq %r(t10), %r(3335)
	salq $3, %r14		# salq $3, %r(3335)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3349)
	movq %r13, -32(%rbp)		# movq %r(3350), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(3351)
	addq %r14, %r12		# addq %r(3335), %r(3351)
	movq %r12, -32(%rbp)		# movq %r(3351), -32(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(3337)
	salq $3, %r14		# salq $3, %r(3337)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3352)
	movq %r13, -8(%rbp)		# movq %r(3343), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3344)
	addq %r14, %r12		# addq %r(3337), %r(3344)
	movq %r12, -8(%rbp)		# movq %r(3344), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3345)
	movq (%r12), %r12		# movq (%r(3345)), %r(3339)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3353)
	movq %r12, (%r13)		# movq %r(3339), (%r(3353))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(3340)
	cmpq %r12, %rbx		# cmpq %r(3340), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3341)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3354)
	addq %rbx, %r13		# addq %r(3341), %r(3342)
	movq %r13, %rax		# movq %r(3342), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
