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
	movq %rdi, %rbx		# movq %rdi, %r(4934)
	movq %rbx, -8(%rbp)		# movq %r(4934), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4935)
	movq %rbx, -16(%rbp)		# movq %r(4935), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(4918)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4936)
	addq %rbx, %r14		# addq %r(4918), %r(4919)
	movq $1, %r13		# movq $1, %r(4920)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4937)
	addq %r13, %r12		# addq %r(4920), %r(4921)
	movq %r12, (%r14)		# movq %r(4921), (%r(4919))
	movq $8, %rbx		# movq $8, %r(4922)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4938)
	addq %rbx, %r14		# addq %r(4922), %r(4923)
	movq $2, %r13		# movq $2, %r(4924)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4939)
	addq %r13, %r12		# addq %r(4924), %r(4925)
	movq %r12, (%r14)		# movq %r(4925), (%r(4923))
	movq $16, %rbx		# movq $16, %r(4926)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4940)
	addq %rbx, %r14		# addq %r(4926), %r(4927)
	movq $3, %r13		# movq $3, %r(4928)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4941)
	addq %r13, %r12		# addq %r(4928), %r(4929)
	movq %r12, (%r14)		# movq %r(4929), (%r(4927))
	movq $24, %rbx		# movq $24, %r(4930)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4942)
	addq %rbx, %r14		# addq %r(4930), %r(4931)
	movq $4, %r13		# movq $4, %r(4932)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4943)
	addq %r13, %r12		# addq %r(4932), %r(4933)
	movq %r12, (%r14)		# movq %r(4933), (%r(4931))
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
	movq $32, %rbx		# movq $32, %r(4944)
	movq %rbx, %rdi		# movq %r(4944), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(4912)
	movq %r15, %r13		# movq %r(4912), %r(4903)
	movq $1, %r12		# movq $1, %r(4945)
	movq %r13, %rdi		# movq %r(4903), %rdi
	movq %r12, %rsi		# movq %r(4945), %rsi
	call _IretTuple_t4iiiii		# call _IretTuple_t4iiiii
	movq 0(%r15), %r14		# movq 0(%r(4912)), %r(a)
	movq 8(%r15), %rbx		# movq 8(%r(4912)), %r(4958)
	movq %rbx, -8(%rbp)		# movq %r(4958), -8(%rbp)
	movq 16(%r15), %rbx		# movq 16(%r(4912)), %r(4959)
	movq %rbx, -16(%rbp)		# movq %r(4959), -16(%rbp)
	movq 24(%r15), %rbx		# movq 24(%r(4912)), %r(4960)
	movq %rbx, -24(%rbp)		# movq %r(4960), -24(%rbp)
	movq $1, %r12		# movq $1, %r(4946)
	movq $2, %rbx		# movq $2, %r(4947)
	cmpq %rbx, %r14		# cmpq %r(4947), %r(a)
	je .L835		# je .L835
	.L836:		# .L836:
	movq $0, %r12		# movq $0, %r(4948)
	jmp .L835		# jmp .L835
	.L835:		# .L835:
	movq %r12, %rdi		# movq %r(4908), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(4949)
	movq $3, %rbx		# movq $3, %r(4950)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4961)
	cmpq %rbx, %r12		# cmpq %r(4950), %r(4961)
	je .L837		# je .L837
	.L838:		# .L838:
	movq $0, %r13		# movq $0, %r(4951)
	jmp .L837		# jmp .L837
	.L837:		# .L837:
	movq %r13, %rdi		# movq %r(4909), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(4952)
	movq $4, %rbx		# movq $4, %r(4953)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4962)
	cmpq %rbx, %r12		# cmpq %r(4953), %r(4962)
	je .L839		# je .L839
	.L840:		# .L840:
	movq $0, %r13		# movq $0, %r(4954)
	jmp .L839		# jmp .L839
	.L839:		# .L839:
	movq %r13, %rdi		# movq %r(4910), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(4955)
	movq $5, %rbx		# movq $5, %r(4956)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4963)
	cmpq %rbx, %r12		# cmpq %r(4956), %r(4963)
	je .L841		# je .L841
	.L842:		# .L842:
	movq $0, %r13		# movq $0, %r(4957)
	jmp .L841		# jmp .L841
	.L841:		# .L841:
	movq %r13, %rdi		# movq %r(4911), %rdi
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
	
