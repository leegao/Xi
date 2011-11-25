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
	movq $-3, %rbx		# movq $-3, %r(3161)
	movq %rbx, %rax		# movq %r(3161), %rax
	jmp .L623		# jmp .L623
	.L623:		# .L623:
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
	movq $2, %rbx		# movq $2, %r(3162)
	movq %rbx, %rax		# movq %r(3162), %rax
	jmp .L624		# jmp .L624
	.L624:		# .L624:
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
	movq $1, %r12		# movq $1, %r(3163)
	movq %r12, %r13		# movq %r(3163), %r(3153)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(3155)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(3156)
	movq %rbx, %rax		# movq %r(3155), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(3156)
	movq %rax, %rbx		# movq %rax, %r(3164)
	movq $-1, %r12		# movq $-1, %r(3165)
	cmpq %r12, %rbx		# cmpq %r(3165), %r(3164)
	je .L626		# je .L626
	.L627:		# .L627:
	movq $0, %r12		# movq $0, %r(3166)
	movq %r12, %r13		# movq %r(3166), %r(3153)
	jmp .L626		# jmp .L626
	.L626:		# .L626:
	movq %r13, %rdi		# movq %r(3153), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(3167)
	movq %r12, %r13		# movq %r(3167), %r(3154)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(3158)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(3159)
	movq %rbx, %rax		# movq %r(3158), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(3159)
	movq %rdx, %rbx		# movq %rdx, %r(3168)
	movq $-1, %r12		# movq $-1, %r(3169)
	cmpq %r12, %rbx		# cmpq %r(3169), %r(3168)
	je .L628		# je .L628
	.L629:		# .L629:
	movq $0, %r12		# movq $0, %r(3170)
	movq %r12, %r13		# movq %r(3170), %r(3154)
	jmp .L628		# jmp .L628
	.L628:		# .L628:
	movq %r13, %rdi		# movq %r(3154), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L625		# jmp .L625
	.L625:		# .L625:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
