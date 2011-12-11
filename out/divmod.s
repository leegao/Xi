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
	movq $-3, %rbx		# movq $-3, %r(2263)
	movq %rbx, %rax		# movq %r(2263), %rax
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
	movq $2, %rbx		# movq $2, %r(2264)
	movq %rbx, %rax		# movq %r(2264), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(2254)
	movq $1, %r12		# movq $1, %r(2265)
	movq %r12, %r13		# movq %r(2265), %r(2255)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(2257)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(2258)
	movq %rbx, %rax		# movq %r(2257), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2258)
	movq %rax, %rbx		# movq %rax, %r(2266)
	movq $-1, %r12		# movq $-1, %r(2267)
	cmpq %r12, %rbx		# cmpq %r(2267), %r(2266)
	je .L362		# je .L362
	.L363:		# .L363:
	movq $0, %r12		# movq $0, %r(2268)
	movq %r12, %r13		# movq %r(2268), %r(2255)
	jmp .L362		# jmp .L362
	.L362:		# .L362:
	movq %r13, %rdi		# movq %r(2255), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2269)
	movq %r12, %r13		# movq %r(2269), %r(2256)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(2260)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(2261)
	movq %rbx, %rax		# movq %r(2260), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2261)
	movq %rdx, %rbx		# movq %rdx, %r(2270)
	movq $-1, %r12		# movq $-1, %r(2271)
	cmpq %r12, %rbx		# cmpq %r(2271), %r(2270)
	je .L364		# je .L364
	.L365:		# .L365:
	movq $0, %r12		# movq $0, %r(2272)
	movq %r12, %r13		# movq %r(2272), %r(2256)
	jmp .L364		# jmp .L364
	.L364:		# .L364:
	movq %r13, %rdi		# movq %r(2256), %rdi
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
	
