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
	movq %rdi, %rbx		# movq %rdi, %r(3218)
	movq %rbx, -64(%rbp)		# movq %r(3218), -64(%rbp)
	movq $0, %r12		# movq $0, %r(3173)
	movq %r12, -48(%rbp)		# movq %r(3219), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(3174)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3220)
	subq %rbx, %r13		# subq %r(3174), %r(3175)
	movq (%r13), %r12		# movq (%r(3175)), %r(3176)
	movq %r12, -32(%rbp)		# movq %r(3221), -32(%rbp)
	jmp .L577		# jmp .L577
	.L577:		# .L577:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3222)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3223)
	cmpq %rbx, %r12		# cmpq %r(3222), %r(3223)
	jge .L579		# jge .L579
	.L578:		# .L578:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(3224)
	movq %r12, -8(%rbp)		# movq %r(3225), -8(%rbp)
	jmp .L580		# jmp .L580
	.L580:		# .L580:
	movq $0, %rbx		# movq $0, %r(3177)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3226)
	cmpq %rbx, %r12		# cmpq %r(3177), %r(3226)
	jle .L582		# jle .L582
	.L581:		# .L581:
	movq $1, %rbx		# movq $1, %r(3178)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3227)
	subq %rbx, %r12		# subq %r(3178), %r(3179)
	movq %r12, -56(%rbp)		# movq %r(3228), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(3180)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3229)
	subq %rbx, %r13		# subq %r(3180), %r(3181)
	movq (%r13), %rbx		# movq (%r(3181)), %r(3182)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(3230)
	cmpq %rbx, %r12		# cmpq %r(3182), %r(3230)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(3183)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3231)
	subq %rbx, %r13		# subq %r(3183), %r(3184)
	movq (%r13), %rbx		# movq (%r(3184)), %r(3185)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3232)
	cmpq %rbx, %r12		# cmpq %r(3185), %r(3232)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(3233)
	salq $3, %r13		# salq $3, %r(3186)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3234)
	addq %r13, %rbx		# addq %r(3186), %r(3187)
	movq (%rbx), %r13		# movq (%r(3187)), %r(3188)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3235)
	salq $3, %r14		# salq $3, %r(3189)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3236)
	movq %rbx, -80(%rbp)		# movq %r(3237), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3238)
	addq %r14, %r12		# addq %r(3189), %r(3238)
	movq %r12, -80(%rbp)		# movq %r(3238), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3239)
	movq (%rbx), %rbx		# movq (%r(3239)), %r(3191)
	cmpq %rbx, %r13		# cmpq %r(3191), %r(3188)
	jle .L588		# jle .L588
	.L587:		# .L587:
	movq $8, %rbx		# movq $8, %r(3192)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3240)
	subq %rbx, %r13		# subq %r(3192), %r(3193)
	movq (%r13), %rbx		# movq (%r(3193)), %r(3194)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3241)
	cmpq %rbx, %r12		# cmpq %r(3194), %r(3241)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3242)
	salq $3, %r13		# salq $3, %r(3195)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3243)
	addq %r13, %rbx		# addq %r(3195), %r(3196)
	movq (%rbx), %r12		# movq (%r(3196)), %r(3197)
	movq %r12, -72(%rbp)		# movq %r(3244), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(3198)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3245)
	subq %rbx, %r12		# subq %r(3198), %r(3199)
	movq %r12, -16(%rbp)		# movq %r(3246), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(3200)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3247)
	subq %rbx, %r13		# subq %r(3200), %r(3201)
	movq (%r13), %rbx		# movq (%r(3201)), %r(3202)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3248)
	cmpq %rbx, %r12		# cmpq %r(3202), %r(3248)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(3203)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3249)
	subq %rbx, %r13		# subq %r(3203), %r(3204)
	movq (%r13), %rbx		# movq (%r(3204)), %r(3205)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3250)
	cmpq %rbx, %r12		# cmpq %r(3205), %r(3250)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3251)
	salq $3, %r13		# salq $3, %r(3206)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3252)
	movq %rbx, -40(%rbp)		# movq %r(3253), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3254)
	addq %r13, %r12		# addq %r(3206), %r(3254)
	movq %r12, -40(%rbp)		# movq %r(3254), -40(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3255)
	salq $3, %r13		# salq $3, %r(3208)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3256)
	addq %r13, %rbx		# addq %r(3208), %r(3209)
	movq (%rbx), %rbx		# movq (%r(3209)), %r(3210)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3257)
	movq %rbx, (%r12)		# movq %r(3210), (%r(3257))
	movq $1, %rbx		# movq $1, %r(3211)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3258)
	subq %rbx, %r14		# subq %r(3211), %r(3212)
	movq $8, %r13		# movq $8, %r(3213)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3259)
	movq %r12, -24(%rbp)		# movq %r(3260), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3261)
	subq %r13, %rbx		# subq %r(3213), %r(3261)
	movq %rbx, -24(%rbp)		# movq %r(3261), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3262)
	movq (%rbx), %rbx		# movq (%r(3262)), %r(3215)
	cmpq %rbx, %r14		# cmpq %r(3215), %r(3143)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(3216)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(3263)
	addq %r14, %r13		# addq %r(3216), %r(3217)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(3264)
	movq %r12, (%r13)		# movq %r(3264), (%r(3217))
	jmp .L588		# jmp .L588
	.L588:		# .L588:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3265)
	decq %rbx		# decq %r(3265)
	movq %rbx, -8(%rbp)		# movq %r(3265), -8(%rbp)
	jmp .L580		# jmp .L580
	.L582:		# .L582:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3266)
	incq %rbx		# incq %r(3266)
	movq %rbx, -48(%rbp)		# movq %r(3266), -48(%rbp)
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
	movq %rax, %r13		# movq %rax, %r(3158)
	movq %r13, %rdi		# movq %r(3158), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(3295)
	movq %rbx, -96(%rbp)		# movq %r(3295), -96(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3296)
	movq %rbx, -8(%rbp)		# movq %r(3296), -8(%rbp)
	leaq .L600(%rip), %rdi		# leaq .L600(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3297)
	movq %rbx, -64(%rbp)		# movq %r(3297), -64(%rbp)
	movq $1, %r12		# movq $1, %r(3269)
	movq %r12, -72(%rbp)		# movq %r(3298), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(3270)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(3299)
	subq %rbx, %r13		# subq %r(3270), %r(3271)
	movq (%r13), %r13		# movq (%r(3271)), %r(3272)
	movq $8, %r12		# movq $8, %r(3273)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3300)
	movq %r14, -48(%rbp)		# movq %r(3301), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3302)
	subq %r12, %rbx		# subq %r(3273), %r(3302)
	movq %rbx, -48(%rbp)		# movq %r(3302), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(3303)
	movq (%rbx), %rbx		# movq (%r(3303)), %r(3275)
	cmpq %rbx, %r13		# cmpq %r(3275), %r(3272)
	je .L601		# je .L601
	.L602:		# .L602:
	movq $0, %r12		# movq $0, %r(3276)
	movq %r12, -72(%rbp)		# movq %r(3304), -72(%rbp)
	jmp .L601		# jmp .L601
	.L601:		# .L601:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3305)
	movq %rbx, %rdi		# movq %r(3305), %rdi
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3306)
	movq %rbx, %rsi		# movq %r(3306), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r12		# movq $0, %r(3277)
	movq %r12, -24(%rbp)		# movq %r(3307), -24(%rbp)
	jmp .L603		# jmp .L603
	.L603:		# .L603:
	movq $8, %rbx		# movq $8, %r(3278)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(3308)
	subq %rbx, %r13		# subq %r(3278), %r(3279)
	movq (%r13), %rbx		# movq (%r(3279)), %r(3280)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3309)
	cmpq %rbx, %r12		# cmpq %r(3280), %r(3309)
	jge .L605		# jge .L605
	.L604:		# .L604:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3310)
	movq %rbx, %rdi		# movq %r(3310), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(3311)
	movq %rbx, -56(%rbp)		# movq %r(3311), -56(%rbp)
	movq $1, %r12		# movq $1, %r(3281)
	movq %r12, -32(%rbp)		# movq %r(3312), -32(%rbp)
	movq $8, %r12		# movq $8, %r(3282)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(3313)
	movq %r13, -88(%rbp)		# movq %r(3314), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3315)
	subq %r12, %rbx		# subq %r(3282), %r(3315)
	movq %rbx, -88(%rbp)		# movq %r(3315), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3316)
	movq (%rbx), %rbx		# movq (%r(3316)), %r(3284)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3317)
	cmpq %rbx, %r12		# cmpq %r(3284), %r(3317)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(3285)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3318)
	movq %r13, -80(%rbp)		# movq %r(3319), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3320)
	subq %r12, %rbx		# subq %r(3285), %r(3320)
	movq %rbx, -80(%rbp)		# movq %r(3320), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3321)
	movq (%rbx), %rbx		# movq (%r(3321)), %r(3287)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3322)
	cmpq %rbx, %r12		# cmpq %r(3287), %r(3322)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3323)
	salq $3, %r13		# salq $3, %r(3288)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(3324)
	movq %rbx, -104(%rbp)		# movq %r(3325), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(3326)
	addq %r13, %r12		# addq %r(3288), %r(3326)
	movq %r12, -104(%rbp)		# movq %r(3326), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(3327)
	movq (%rbx), %rbx		# movq (%r(3327)), %r(3328)
	movq %rbx, -16(%rbp)		# movq %r(3328), -16(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(3329)
	salq $3, %r13		# salq $3, %r(3291)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3330)
	movq %rbx, -40(%rbp)		# movq %r(3331), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(3332)
	addq %r13, %r12		# addq %r(3291), %r(3332)
	movq %r12, -40(%rbp)		# movq %r(3332), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3333)
	movq (%rbx), %rbx		# movq (%r(3333)), %r(3293)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3334)
	cmpq %rbx, %r12		# cmpq %r(3293), %r(3334)
	je .L610		# je .L610
	.L611:		# .L611:
	movq $0, %r12		# movq $0, %r(3294)
	movq %r12, -32(%rbp)		# movq %r(3335), -32(%rbp)
	jmp .L610		# jmp .L610
	.L610:		# .L610:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3336)
	movq %rbx, %rdi		# movq %r(3336), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(3337)
	movq %rbx, %rsi		# movq %r(3337), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3338)
	incq %rbx		# incq %r(3338)
	movq %rbx, -24(%rbp)		# movq %r(3338), -24(%rbp)
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
	movq %rax, %rbx		# movq %rax, %r(3166)
	leaq .L614(%rip), %rdi		# leaq .L614(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(3167)
	movq %rbx, %rdi		# movq %r(3166), %rdi
	call _Isort_pai		# call _Isort_pai
	movq %rbx, %rdi		# movq %r(3166), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(3166), %rdi
	movq %r12, %rsi		# movq %r(3167), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(3353)
	movq %rbx, -16(%rbp)		# movq %r(3353), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3354)
	movq (%rbx), %r12		# movq (%r(3354)), %r(3341)
	movq %r12, -24(%rbp)		# movq %r(3355), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3356)
	salq $3, %rbx		# salq $3, %r(3342)
	movq $8, %r12		# movq $8, %r(3343)
	addq %r12, %rbx		# addq %r(3343), %r(3344)
	movq %rbx, %rdi		# movq %r(3344), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3171)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3357)
	salq $3, %r12		# salq $3, %r(3345)
	movq %r14, %r13		# movq %r(3171), %r(3346)
	addq %r12, %r13		# addq %r(3345), %r(3346)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3358)
	movq %rbx, %r12		# movq %r(3358), %r(3347)
	salq $3, %r12		# salq $3, %r(3347)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3359)
	movq %rbx, -8(%rbp)		# movq %r(3360), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3361)
	addq %r12, %rbx		# addq %r(3347), %r(3361)
	movq %rbx, -8(%rbp)		# movq %r(3361), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3362)
	movq (%rbx), %rbx		# movq (%r(3362)), %r(3349)
	movq %rbx, (%r13)		# movq %r(3349), (%r(3346))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3363)
	decq %rbx		# decq %r(3363)
	movq %rbx, -24(%rbp)		# movq %r(3363), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(3350)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3364)
	cmpq %rbx, %r12		# cmpq %r(3350), %r(3364)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(3351)
	movq %r14, %r12		# movq %r(3171), %r(3352)
	addq %rbx, %r12		# addq %r(3351), %r(3352)
	movq %r12, %rax		# movq %r(3352), %rax
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
.L600:
	.quad 6
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
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

error_outofbounds:
call _I_outOfBounds_p
