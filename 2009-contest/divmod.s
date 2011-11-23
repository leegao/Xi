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
	movq $-3, %rbx		# movq $-3, %r(904)
	movq %rbx, %rax		# movq %r(904), %rax
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
	movq $2, %rbx		# movq $2, %r(905)
	movq %rbx, %rax		# movq %r(905), %rax
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
	movq $1, %r13		# movq $1, %r(906)
	movq %r13, %r13		# movq %r(906), %r(896)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(898)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(899)
	movq %rbx, %rax		# movq %r(898), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %r12		# idivq %r(899)
	movq %rax, %rbx		# movq %rax, %r(907)
	movq $-1, %r12		# movq $-1, %r(908)
	cmpq %r12, %rbx		# cmpq %r(908), %r(907)
	je .L119		# je .L119
	.L120:		# .L120:
	movq $0, %r13		# movq $0, %r(909)
	movq %r13, %r13		# movq %r(909), %r(896)
	.L119:		# .L119:
	movq %r13, %rdi		# movq %r(896), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(910)
	movq %r13, %r13		# movq %r(910), %r(897)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(901)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(902)
	movq %rbx, %rax		# movq %r(901), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %r12		# idivq %r(902)
	movq %rdx, %rbx		# movq %rdx, %r(911)
	movq $-1, %r12		# movq $-1, %r(912)
	cmpq %r12, %rbx		# cmpq %r(912), %r(911)
	je .L121		# je .L121
	.L122:		# .L122:
	movq $0, %r13		# movq $0, %r(913)
	movq %r13, %r13		# movq %r(913), %r(897)
	.L121:		# .L121:
	movq %r13, %rdi		# movq %r(897), %rdi
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
	
