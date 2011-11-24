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
	movq %rdi, %rbx		# movq %rdi, %r(4959)
	movq %rbx, -8(%rbp)		# movq %r(4959), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4960)
	movq %rbx, -16(%rbp)		# movq %r(4960), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(4943)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4961)
	addq %rbx, %r14		# addq %r(4943), %r(4944)
	movq $1, %r13		# movq $1, %r(4945)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4962)
	addq %r13, %r12		# addq %r(4945), %r(4946)
	movq %r12, (%r14)		# movq %r(4946), (%r(4944))
	movq $8, %rbx		# movq $8, %r(4947)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4963)
	addq %rbx, %r14		# addq %r(4947), %r(4948)
	movq $2, %r13		# movq $2, %r(4949)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4964)
	addq %r13, %r12		# addq %r(4949), %r(4950)
	movq %r12, (%r14)		# movq %r(4950), (%r(4948))
	movq $16, %rbx		# movq $16, %r(4951)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4965)
	addq %rbx, %r14		# addq %r(4951), %r(4952)
	movq $3, %r13		# movq $3, %r(4953)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4966)
	addq %r13, %r12		# addq %r(4953), %r(4954)
	movq %r12, (%r14)		# movq %r(4954), (%r(4952))
	movq $24, %rbx		# movq $24, %r(4955)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4967)
	addq %rbx, %r14		# addq %r(4955), %r(4956)
	movq $4, %r13		# movq $4, %r(4957)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4968)
	addq %r13, %r12		# addq %r(4957), %r(4958)
	movq %r12, (%r14)		# movq %r(4958), (%r(4956))
	jmp .L833		# jmp .L833
	.L833:		# .L833:
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
	movq $32, %rbx		# movq $32, %r(4969)
	movq %rbx, %rdi		# movq %r(4969), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(4937)
	movq %r15, %r13		# movq %r(4937), %r(4928)
	movq $1, %r12		# movq $1, %r(4970)
	movq %r13, %rdi		# movq %r(4928), %rdi
	movq %r12, %rsi		# movq %r(4970), %rsi
	call _IretTuple_t4iiiii		# call _IretTuple_t4iiiii
	movq 0(%r15), %r14		# movq 0(%r(4937)), %r(a)
	movq 8(%r15), %rbx		# movq 8(%r(4937)), %r(4983)
	movq %rbx, -24(%rbp)		# movq %r(4983), -24(%rbp)
	movq 16(%r15), %rbx		# movq 16(%r(4937)), %r(4984)
	movq %rbx, -8(%rbp)		# movq %r(4984), -8(%rbp)
	movq 24(%r15), %rbx		# movq 24(%r(4937)), %r(4985)
	movq %rbx, -16(%rbp)		# movq %r(4985), -16(%rbp)
	movq $1, %r12		# movq $1, %r(4971)
	movq $2, %rbx		# movq $2, %r(4972)
	cmpq %rbx, %r14		# cmpq %r(4972), %r(a)
	je .L835		# je .L835
	.L836:		# .L836:
	movq $0, %r12		# movq $0, %r(4973)
	jmp .L835		# jmp .L835
	.L835:		# .L835:
	movq %r12, %rdi		# movq %r(4933), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(4974)
	movq $3, %rbx		# movq $3, %r(4975)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4986)
	cmpq %rbx, %r12		# cmpq %r(4975), %r(4986)
	je .L837		# je .L837
	.L838:		# .L838:
	movq $0, %r13		# movq $0, %r(4976)
	jmp .L837		# jmp .L837
	.L837:		# .L837:
	movq %r13, %rdi		# movq %r(4934), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(4977)
	movq $4, %rbx		# movq $4, %r(4978)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4987)
	cmpq %rbx, %r12		# cmpq %r(4978), %r(4987)
	je .L839		# je .L839
	.L840:		# .L840:
	movq $0, %r13		# movq $0, %r(4979)
	jmp .L839		# jmp .L839
	.L839:		# .L839:
	movq %r13, %rdi		# movq %r(4935), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(4980)
	movq $5, %rbx		# movq $5, %r(4981)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4988)
	cmpq %rbx, %r12		# cmpq %r(4981), %r(4988)
	je .L841		# je .L841
	.L842:		# .L842:
	movq $0, %r13		# movq $0, %r(4982)
	jmp .L841		# jmp .L841
	.L841:		# .L841:
	movq %r13, %rdi		# movq %r(4936), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L834		# jmp .L834
	.L834:		# .L834:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
