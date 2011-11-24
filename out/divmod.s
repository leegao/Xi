.att_syntax prefix
.text
.globl _If_i
_If_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $-3, %rbx		# movq $-3, %r(2081)
	movq %rbx, %rax		# movq %r(2081), %rax
	jmp .L359		# jmp .L359
	.L359:		# .L359:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_i
_Ig_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $2, %rbx		# movq $2, %r(2082)
	movq %rbx, %rax		# movq %r(2082), %rax
	jmp .L360		# jmp .L360
	.L360:		# .L360:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq $1, %r13		# movq $1, %r(2083)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(2075)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(2076)
	movq %rbx, %rax		# movq %r(2075), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2076)
	movq %rax, %rbx		# movq %rax, %r(2084)
	movq $-1, %r12		# movq $-1, %r(2085)
	cmpq %r12, %rbx		# cmpq %r(2085), %r(2084)
	je .L362		# je .L362
	.L363:		# .L363:
	movq $0, %r13		# movq $0, %r(2086)
	jmp .L362		# jmp .L362
	.L362:		# .L362:
	movq %r13, %rdi		# movq %r(2073), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2087)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(2078)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(2079)
	movq %rbx, %rax		# movq %r(2078), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2079)
	movq %rdx, %rbx		# movq %rdx, %r(2088)
	movq $-1, %r12		# movq $-1, %r(2089)
	cmpq %r12, %rbx		# cmpq %r(2089), %r(2088)
	je .L364		# je .L364
	.L365:		# .L365:
	movq $0, %r13		# movq $0, %r(2090)
	jmp .L364		# jmp .L364
	.L364:		# .L364:
	movq %r13, %rdi		# movq %r(2074), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L361		# jmp .L361
	.L361:		# .L361:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
