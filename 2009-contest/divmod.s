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
	movq $-3, %rbx		# movq $-3, %r(907)
	movq %rbx, %rax		# movq %r(907), %rax
	jmp .L116		# jmp .L116
	.L116:		# .L116:
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
	movq $2, %rbx		# movq $2, %r(908)
	movq %rbx, %rax		# movq %r(908), %rax
	jmp .L117		# jmp .L117
	.L117:		# .L117:
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
	movq $1, %r13		# movq $1, %r(909)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(901)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(902)
	movq %rbx, %rax		# movq %r(901), %rax
	cltq		# cltq
	idivq %r12		# idivq %r(902)
	movq %rax, %rbx		# movq %rax, %r(910)
	movq $-1, %r12		# movq $-1, %r(911)
	cmpq %r12, %rbx		# cmpq %r(911), %r(910)
	je .L119		# je .L119
	.L120:		# .L120:
	movq $0, %r13		# movq $0, %r(912)
	.L119:		# .L119:
	movq %r13, %rdi		# movq %r(899), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(913)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(904)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(905)
	movq %rbx, %rax		# movq %r(904), %rax
	cltq		# cltq
	idivq %r12		# idivq %r(905)
	movq %rdx, %rbx		# movq %rdx, %r(914)
	movq $-1, %r12		# movq $-1, %r(915)
	cmpq %r12, %rbx		# cmpq %r(915), %r(914)
	je .L121		# je .L121
	.L122:		# .L122:
	movq $0, %r13		# movq $0, %r(916)
	.L121:		# .L121:
	movq %r13, %rdi		# movq %r(900), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L118:		# .L118:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
