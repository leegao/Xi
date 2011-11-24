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
	movq $-3, %rbx		# movq $-3, %r(2921)
	movq %rbx, %rax		# movq %r(2921), %rax
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
	movq $2, %rbx		# movq $2, %r(2922)
	movq %rbx, %rax		# movq %r(2922), %rax
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
	movq $1, %r13		# movq $1, %r(2923)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(2915)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(2916)
	movq %rbx, %rax		# movq %r(2915), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2916)
	movq %rax, %rbx		# movq %rax, %r(2924)
	movq $-1, %r12		# movq $-1, %r(2925)
	cmpq %r12, %rbx		# cmpq %r(2925), %r(2924)
	je .L626		# je .L626
	.L627:		# .L627:
	movq $0, %r13		# movq $0, %r(2926)
	jmp .L626		# jmp .L626
	.L626:		# .L626:
	movq %r13, %rdi		# movq %r(2913), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2927)
	call _If_i		# call _If_i
	movq %rax, %rbx		# movq %rax, %r(2918)
	call _Ig_i		# call _Ig_i
	movq %rax, %r12		# movq %rax, %r(2919)
	movq %rbx, %rax		# movq %r(2918), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(2919)
	movq %rdx, %rbx		# movq %rdx, %r(2928)
	movq $-1, %r12		# movq $-1, %r(2929)
	cmpq %r12, %rbx		# cmpq %r(2929), %r(2928)
	je .L628		# je .L628
	.L629:		# .L629:
	movq $0, %r13		# movq $0, %r(2930)
	jmp .L628		# jmp .L628
	.L628:		# .L628:
	movq %r13, %rdi		# movq %r(2914), %rdi
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
	
