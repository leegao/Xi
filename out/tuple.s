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
	movq %rdi, %rbx		# movq %rdi, %r(3339)
	movq %rbx, -16(%rbp)		# movq %r(3339), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3340)
	movq %rbx, -8(%rbp)		# movq %r(3340), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(3323)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3341)
	movq %r13, %r12		# movq %r(3341), %r(3324)
	addq %rbx, %r12		# addq %r(3323), %r(3324)
	movq $1, %rbx		# movq $1, %r(3325)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(3342)
	movq %r15, %r13		# movq %r(3342), %r(3326)
	addq %rbx, %r13		# addq %r(3325), %r(3326)
	movq %r13, (%r12)		# movq %r(3326), (%r(3324))
	movq $8, %rbx		# movq $8, %r(3327)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3343)
	movq %r13, %r12		# movq %r(3343), %r(3328)
	addq %rbx, %r12		# addq %r(3327), %r(3328)
	movq $2, %rbx		# movq $2, %r(3329)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(3344)
	movq %r15, %r13		# movq %r(3344), %r(3330)
	addq %rbx, %r13		# addq %r(3329), %r(3330)
	movq %r13, (%r12)		# movq %r(3330), (%r(3328))
	movq $16, %rbx		# movq $16, %r(3331)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3345)
	movq %r13, %r12		# movq %r(3345), %r(3332)
	addq %rbx, %r12		# addq %r(3331), %r(3332)
	movq $3, %rbx		# movq $3, %r(3333)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(3346)
	movq %r15, %r13		# movq %r(3346), %r(3334)
	addq %rbx, %r13		# addq %r(3333), %r(3334)
	movq %r13, (%r12)		# movq %r(3334), (%r(3332))
	movq $24, %rbx		# movq $24, %r(3335)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3347)
	movq %r13, %r12		# movq %r(3347), %r(3336)
	addq %rbx, %r12		# addq %r(3335), %r(3336)
	movq $4, %rbx		# movq $4, %r(3337)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(3348)
	movq %r15, %r13		# movq %r(3348), %r(3338)
	addq %rbx, %r13		# addq %r(3337), %r(3338)
	movq %r13, (%r12)		# movq %r(3338), (%r(3336))
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
	movq $32, %rbx		# movq $32, %r(3349)
	movq %rbx, %rdi		# movq %r(3349), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(3317)
	movq %r14, %r13		# movq %r(3317), %r(3308)
	movq $1, %r12		# movq $1, %r(3350)
	movq %r13, %rdi		# movq %r(3308), %rdi
	movq %r12, %rsi		# movq %r(3350), %rsi
	call _IretTuple_t4iiiii		# call _IretTuple_t4iiiii
	movq 0(%r14), %r12		# movq 0(%r(3317)), %r(a)
	movq 8(%r14), %rbx		# movq 8(%r(3317)), %r(3363)
	movq %rbx, -24(%rbp)		# movq %r(3363), -24(%rbp)
	movq 16(%r14), %rbx		# movq 16(%r(3317)), %r(3364)
	movq %rbx, -8(%rbp)		# movq %r(3364), -8(%rbp)
	movq 24(%r14), %rbx		# movq 24(%r(3317)), %r(3365)
	movq %rbx, -16(%rbp)		# movq %r(3365), -16(%rbp)
	movq $1, %r14		# movq $1, %r(3351)
	movq %r14, %r13		# movq %r(3351), %r(3313)
	movq $2, %rbx		# movq $2, %r(3352)
	cmpq %rbx, %r12		# cmpq %r(3352), %r(a)
	je .L680		# je .L680
	.L681:		# .L681:
	movq $0, %r12		# movq $0, %r(3353)
	movq %r12, %r13		# movq %r(3353), %r(3313)
	jmp .L680		# jmp .L680
	.L680:		# .L680:
	movq %r13, %rdi		# movq %r(3313), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(3354)
	movq %r12, %r13		# movq %r(3354), %r(3314)
	movq $3, %rbx		# movq $3, %r(3355)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(3366)
	cmpq %rbx, %r12		# cmpq %r(3355), %r(3366)
	je .L682		# je .L682
	.L683:		# .L683:
	movq $0, %r12		# movq $0, %r(3356)
	movq %r12, %r13		# movq %r(3356), %r(3314)
	jmp .L682		# jmp .L682
	.L682:		# .L682:
	movq %r13, %rdi		# movq %r(3314), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(3357)
	movq %r12, %r13		# movq %r(3357), %r(3315)
	movq $4, %rbx		# movq $4, %r(3358)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3367)
	cmpq %rbx, %r12		# cmpq %r(3358), %r(3367)
	je .L684		# je .L684
	.L685:		# .L685:
	movq $0, %r12		# movq $0, %r(3359)
	movq %r12, %r13		# movq %r(3359), %r(3315)
	jmp .L684		# jmp .L684
	.L684:		# .L684:
	movq %r13, %rdi		# movq %r(3315), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(3360)
	movq %r12, %r13		# movq %r(3360), %r(3316)
	movq $5, %rbx		# movq $5, %r(3361)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3368)
	cmpq %rbx, %r12		# cmpq %r(3361), %r(3368)
	je .L686		# je .L686
	.L687:		# .L687:
	movq $0, %r12		# movq $0, %r(3362)
	movq %r12, %r13		# movq %r(3362), %r(3316)
	jmp .L686		# jmp .L686
	.L686:		# .L686:
	movq %r13, %rdi		# movq %r(3316), %rdi
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
	
