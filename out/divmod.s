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
	movq $-3, %rbx		# movq $-3, %r(2069)
	movq %rbx, %rax		# movq %r(2069), %rax
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
	movq $2, %rbx		# movq $2, %r(2070)
	movq %rbx, %rax		# movq %r(2070), %rax
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
	movq $1, %r13		# movq $1, %r(2071)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(2063)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(2064)
	movq %rbx, %rax		# movq %r(2063), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2064)
	movq %rax, %rbx		# movq %rax, %r(2072)
	movq $-1, %r12		# movq $-1, %r(2073)
	cmpq %r12, %rbx		# cmpq %r(2073), %r(2072)
	je .L362		# je .L362
	.L363:		# .L363:
	movq $0, %r13		# movq $0, %r(2074)
	jmp .L362		# jmp .L362
	.L362:		# .L362:
	movq %r13, %rdi		# movq %r(2061), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2075)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(2066)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(2067)
	movq %rbx, %rax		# movq %r(2066), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2067)
	movq %rdx, %rbx		# movq %rdx, %r(2076)
	movq $-1, %r12		# movq $-1, %r(2077)
	cmpq %r12, %rbx		# cmpq %r(2077), %r(2076)
	je .L364		# je .L364
	.L365:		# .L365:
	movq $0, %r13		# movq $0, %r(2078)
	jmp .L364		# jmp .L364
	.L364:		# .L364:
	movq %r13, %rdi		# movq %r(2062), %rdi
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
	
