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
	movq $0, %r15		# movq $0, %r(2252)
	movq $8, %r14		# movq $8, %r(2253)
	movq $-8, %r13		# movq $-8, %r(2254)
	subq %r14, %r15		# subq %r(b), %r(2255)
	movq $1, %r12		# movq $1, %r(2256)
	movq %r12, %rbx		# movq %r(2256), %r(2248)
	movq $8, %r12		# movq $8, %r(2257)
	movq %r13, %rax		# movq %r(c), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2257)
	movq %rax, %r12		# movq %rax, %r(2258)
	movq $-1, %r13		# movq $-1, %r(2259)
	cmpq %r13, %r12		# cmpq %r(2259), %r(2258)
	je .L332		# je .L332
	.L333:		# .L333:
	movq $0, %r12		# movq $0, %r(2260)
	movq %r12, %rbx		# movq %r(2260), %r(2248)
	.L332:		# .L332:
	movq %rbx, %rdi		# movq %r(2248), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2261)
	movq $8, %r12		# movq $8, %r(2262)
	movq %r15, %rax		# movq %r(d), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2262)
	movq %rax, %rbx		# movq %rax, %r(2263)
	movq $-1, %r12		# movq $-1, %r(2264)
	cmpq %r12, %rbx		# cmpq %r(2264), %r(2263)
	je .L334		# je .L334
	.L335:		# .L335:
	movq $0, %r13		# movq $0, %r(2265)
	.L334:		# .L334:
	movq %r13, %rdi		# movq %r(2249), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L331:		# .L331:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
