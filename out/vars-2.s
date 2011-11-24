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
	leaq .L645(%rip), %rdi		# leaq .L645(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(3003)
	movq %rbx, -8(%rbp)		# movq %r(3003), -8(%rbp)
	.L646:		# .L646:
	movq $1, %rbx		# movq $1, %r(2963)
	movq %rbx, %rdi		# movq %r(2963), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2964)
	movq $8, %r12		# movq $8, %r(2965)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3004)
	subq %r12, %r14		# subq %r(2965), %r(2966)
	movq (%r14), %rbx		# movq (%r(2966)), %r(2967)
	movq $3, %r12		# movq $3, %r(2968)
	cmpq %r12, %rbx		# cmpq %r(2968), %r(2967)
	je .L648		# je .L648
	.L649:		# .L649:
	movq $0, %r13		# movq $0, %r(2969)
	jmp .L648		# jmp .L648
	.L648:		# .L648:
	movq %r13, %rdi		# movq %r(2944), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(2970)
	movq %rbx, %r13		# movq %r(2970), %r(2947)
	movq $0, %r14		# movq $0, %r(2971)
	movq $8, %r12		# movq $8, %r(2972)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3005)
	subq %r12, %rbx		# subq %r(2972), %r(2973)
	movq (%rbx), %rbx		# movq (%r(2973)), %r(2974)
	cmpq %rbx, %r14		# cmpq %r(2974), %r(2971)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(2975)
	salq $3, %r14		# salq $3, %r(2976)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3006)
	addq %r14, %rbx		# addq %r(2976), %r(2977)
	movq (%rbx), %rbx		# movq (%r(2977)), %r(2978)
	movq $65, %r12		# movq $65, %r(2979)
	cmpq %r12, %rbx		# cmpq %r(2979), %r(2978)
	je .L652		# je .L652
	.L653:		# .L653:
	movq $0, %r13		# movq $0, %r(2980)
	jmp .L652		# jmp .L652
	.L652:		# .L652:
	movq %r13, %rdi		# movq %r(2947), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(2981)
	movq %rbx, %r13		# movq %r(2981), %r(2950)
	movq $1, %r12		# movq $1, %r(2982)
	movq $8, %r14		# movq $8, %r(2983)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3007)
	subq %r14, %rbx		# subq %r(2983), %r(2984)
	movq (%rbx), %rbx		# movq (%r(2984)), %r(2985)
	cmpq %rbx, %r12		# cmpq %r(2985), %r(2982)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(2986)
	salq $3, %r14		# salq $3, %r(2987)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3008)
	addq %r14, %rbx		# addq %r(2987), %r(2988)
	movq (%rbx), %rbx		# movq (%r(2988)), %r(2989)
	movq $66, %r12		# movq $66, %r(2990)
	cmpq %r12, %rbx		# cmpq %r(2990), %r(2989)
	je .L656		# je .L656
	.L657:		# .L657:
	movq $0, %r13		# movq $0, %r(2991)
	jmp .L656		# jmp .L656
	.L656:		# .L656:
	movq %r13, %rdi		# movq %r(2950), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(2992)
	movq %rbx, %r13		# movq %r(2992), %r(2953)
	movq $2, %r12		# movq $2, %r(2993)
	movq $8, %r14		# movq $8, %r(2994)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3009)
	subq %r14, %rbx		# subq %r(2994), %r(2995)
	movq (%rbx), %rbx		# movq (%r(2995)), %r(2996)
	cmpq %rbx, %r12		# cmpq %r(2996), %r(2993)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r14		# movq $2, %r(2997)
	salq $3, %r14		# salq $3, %r(2998)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3010)
	addq %r14, %rbx		# addq %r(2998), %r(2999)
	movq (%rbx), %rbx		# movq (%r(2999)), %r(3000)
	movq $67, %r12		# movq $67, %r(3001)
	cmpq %r12, %rbx		# cmpq %r(3001), %r(3000)
	je .L660		# je .L660
	.L661:		# .L661:
	movq $0, %r13		# movq $0, %r(3002)
	jmp .L660		# jmp .L660
	.L660:		# .L660:
	movq %r13, %rdi		# movq %r(2953), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L644		# jmp .L644
	.L644:		# .L644:
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
	movq %rdi, %rbx		# movq %rdi, %r(3023)
	movq %rbx, -16(%rbp)		# movq %r(3023), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3024)
	movq (%rbx), %rbx		# movq (%r(3024)), %r(3011)
	movq %rbx, %r14		# movq %r(3011), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(3012)
	salq $3, %rbx		# salq $3, %r(3012)
	movq $8, %r12		# movq $8, %r(3013)
	addq %r12, %rbx		# addq %r(3013), %r(3014)
	movq %rbx, %rdi		# movq %r(3014), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(2960)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(3015)
	salq $3, %rbx		# salq $3, %r(3015)
	movq %r12, %r15		# movq %r(2960), %r(3016)
	addq %rbx, %r15		# addq %r(3015), %r(3016)
	movq %r14, %r13		# movq %r(t10), %r(3017)
	salq $3, %r13		# salq $3, %r(3017)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3025)
	movq %rbx, -8(%rbp)		# movq %r(3026), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3027)
	addq %r13, %rbx		# addq %r(3017), %r(3027)
	movq %rbx, -8(%rbp)		# movq %r(3027), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3028)
	movq (%rbx), %rbx		# movq (%r(3028)), %r(3019)
	movq %rbx, (%r15)		# movq %r(3019), (%r(3016))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(3020)
	cmpq %rbx, %r14		# cmpq %r(3020), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(3021)
	addq %rbx, %r12		# addq %r(3021), %r(3022)
	movq %r12, %rax		# movq %r(3022), %rax
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
