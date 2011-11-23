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
	movq $0, %r15		# movq $0, %r(2258)
	movq $8, %r14		# movq $8, %r(2259)
	movq $-8, %r13		# movq $-8, %r(2260)
	subq %r14, %r15		# subq %r(b), %r(2261)
	movq $1, %r12		# movq $1, %r(2262)
	movq %r12, %rbx		# movq %r(2262), %r(2254)
	movq $8, %r12		# movq $8, %r(2263)
	movq %r13, %rax		# movq %r(c), %rax
	cltq		# cltq
	idivq %r12		# idivq %r(2263)
	movq %rax, %r12		# movq %rax, %r(2264)
	movq $-1, %r13		# movq $-1, %r(2265)
	cmpq %r13, %r12		# cmpq %r(2265), %r(2264)
	je .L331		# je .L331
	.L332:		# .L332:
	movq $0, %r12		# movq $0, %r(2266)
	movq %r12, %rbx		# movq %r(2266), %r(2254)
	.L331:		# .L331:
	movq %rbx, %rdi		# movq %r(2254), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2267)
	movq $8, %r12		# movq $8, %r(2268)
	movq %r15, %rax		# movq %r(d), %rax
	cltq		# cltq
	idivq %r12		# idivq %r(2268)
	movq %rax, %rbx		# movq %rax, %r(2269)
	movq $-1, %r12		# movq $-1, %r(2270)
	cmpq %r12, %rbx		# cmpq %r(2270), %r(2269)
	je .L333		# je .L333
	.L334:		# .L334:
	movq $0, %r13		# movq $0, %r(2271)
	.L333:		# .L333:
	movq %r13, %rdi		# movq %r(2255), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L330:		# .L330:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
