.att_syntax prefix
.text
.globl _IretTuple_t4iiiii
_IretTuple_t4iiiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3078)
	movq %rbx, -8(%rbp)		# movq %r(3078), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3079)
	movq %rbx, -16(%rbp)		# movq %r(3079), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(3062)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3080)
	addq %rbx, %r14		# addq %r(3062), %r(3063)
	movq $1, %r13		# movq $1, %r(3064)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3081)
	addq %r13, %r12		# addq %r(3064), %r(3065)
	movq %r12, (%r14)		# movq %r(3065), (%r(3063))
	movq $8, %rbx		# movq $8, %r(3066)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3082)
	addq %rbx, %r14		# addq %r(3066), %r(3067)
	movq $2, %r13		# movq $2, %r(3068)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3083)
	addq %r13, %r12		# addq %r(3068), %r(3069)
	movq %r12, (%r14)		# movq %r(3069), (%r(3067))
	movq $16, %rbx		# movq $16, %r(3070)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3084)
	addq %rbx, %r14		# addq %r(3070), %r(3071)
	movq $3, %r13		# movq $3, %r(3072)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3085)
	addq %r13, %r12		# addq %r(3072), %r(3073)
	movq %r12, (%r14)		# movq %r(3073), (%r(3071))
	movq $24, %rbx		# movq $24, %r(3074)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(3086)
	addq %rbx, %r14		# addq %r(3074), %r(3075)
	movq $4, %r13		# movq $4, %r(3076)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3087)
	addq %r13, %r12		# addq %r(3076), %r(3077)
	movq %r12, (%r14)		# movq %r(3077), (%r(3075))
	jmp .L678		# jmp .L678
	.L678:		# .L678:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $32, %rbx		# movq $32, %r(3088)
	movq %rbx, %rdi		# movq %r(3088), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(3056)
	movq %r15, %r13		# movq %r(3056), %r(3047)
	movq $1, %r12		# movq $1, %r(3089)
	movq %r13, %rdi		# movq %r(3047), %rdi
	movq %r12, %rsi		# movq %r(3089), %rsi
	call _IretTuple_t4iiiii		# call _IretTuple_t4iiiii
	movq 0(%r15), %r14		# movq 0(%r(3056)), %r(a)
	movq 8(%r15), %rbx		# movq 8(%r(3056)), %r(3102)
	movq %rbx, -24(%rbp)		# movq %r(3102), -24(%rbp)
	movq 16(%r15), %rbx		# movq 16(%r(3056)), %r(3103)
	movq %rbx, -16(%rbp)		# movq %r(3103), -16(%rbp)
	movq 24(%r15), %rbx		# movq 24(%r(3056)), %r(3104)
	movq %rbx, -8(%rbp)		# movq %r(3104), -8(%rbp)
	movq $1, %r12		# movq $1, %r(3090)
	movq $2, %rbx		# movq $2, %r(3091)
	cmpq %rbx, %r14		# cmpq %r(3091), %r(a)
	je .L680		# je .L680
	.L681:		# .L681:
	movq $0, %r12		# movq $0, %r(3092)
	jmp .L680		# jmp .L680
	.L680:		# .L680:
	movq %r12, %rdi		# movq %r(3052), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(3093)
	movq $3, %rbx		# movq $3, %r(3094)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3105)
	cmpq %rbx, %r12		# cmpq %r(3094), %r(3105)
	je .L682		# je .L682
	.L683:		# .L683:
	movq $0, %r13		# movq $0, %r(3095)
	jmp .L682		# jmp .L682
	.L682:		# .L682:
	movq %r13, %rdi		# movq %r(3053), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(3096)
	movq $4, %rbx		# movq $4, %r(3097)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3106)
	cmpq %rbx, %r12		# cmpq %r(3097), %r(3106)
	je .L684		# je .L684
	.L685:		# .L685:
	movq $0, %r13		# movq $0, %r(3098)
	jmp .L684		# jmp .L684
	.L684:		# .L684:
	movq %r13, %rdi		# movq %r(3054), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(3099)
	movq $5, %rbx		# movq $5, %r(3100)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3107)
	cmpq %rbx, %r12		# cmpq %r(3100), %r(3107)
	je .L686		# je .L686
	.L687:		# .L687:
	movq $0, %r13		# movq $0, %r(3101)
	jmp .L686		# jmp .L686
	.L686:		# .L686:
	movq %r13, %rdi		# movq %r(3055), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L679		# jmp .L679
	.L679:		# .L679:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
