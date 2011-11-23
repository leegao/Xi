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
	movq $0, %r15		# movq $0, %r(2211)
	movq %r15, %r15		# movq %r(2211), %r(a)
	movq $8, %r14		# movq $8, %r(2212)
	movq %r14, %r14		# movq %r(2212), %r(b)
	movq $-8, %r13		# movq $-8, %r(2213)
	movq %r13, %r13		# movq %r(2213), %r(c)
	movq %r15, %r15		# movq %r(a), %r(2214)
	subq %r14, %r15		# subq %r(b), %r(2214)
	movq %r15, %r15		# movq %r(2214), %r(d)
	movq $1, %r12		# movq $1, %r(2215)
	movq %r12, %rbx		# movq %r(2215), %r(2207)
	movq $8, %r12		# movq $8, %r(2216)
	movq %r13, %rax		# movq %r(c), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %r12		# idivq %r(2216)
	movq %rax, %r12		# movq %rax, %r(2217)
	movq $-1, %r13		# movq $-1, %r(2218)
	cmpq %r13, %r12		# cmpq %r(2218), %r(2217)
	je .L313		# je .L313
	.L314:		# .L314:
	movq $0, %r12		# movq $0, %r(2219)
	movq %r12, %rbx		# movq %r(2219), %r(2207)
	.L313:		# .L313:
	movq %rbx, %rdi		# movq %r(2207), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2220)
	movq %r13, %r13		# movq %r(2220), %r(2208)
	movq $8, %r12		# movq $8, %r(2221)
	movq %r15, %rax		# movq %r(d), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %r12		# idivq %r(2221)
	movq %rax, %rbx		# movq %rax, %r(2222)
	movq $-1, %r12		# movq $-1, %r(2223)
	cmpq %r12, %rbx		# cmpq %r(2223), %r(2222)
	je .L315		# je .L315
	.L316:		# .L316:
	movq $0, %r13		# movq $0, %r(2224)
	movq %r13, %r13		# movq %r(2224), %r(2208)
	.L315:		# .L315:
	movq %r13, %rdi		# movq %r(2208), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L312:		# .L312:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
