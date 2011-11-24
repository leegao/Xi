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
	movq $5, %rbx		# movq $5, %r(609)
	movq %rbx, %rdi		# movq %r(609), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(605)
	movq %rbx, %rdi		# movq %r(605), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(606)
	movq %rbx, %rdi		# movq %r(606), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L106:		# .L106:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ifact_ii
_Ifact_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq $1, %rbx		# movq $1, %r(610)
	cmpq %rbx, %r12		# cmpq %r(610), %r(a)
	jne .L109		# jne .L109
	.L108:		# .L108:
	movq $1, %rbx		# movq $1, %r(611)
	movq %rbx, %rax		# movq %r(611), %rax
	jmp .L107		# jmp .L107
	.L109:		# .L109:
	movq $1, %rbx		# movq $1, %r(612)
	movq %r12, %r13		# movq %r(a), %r(613)
	subq %rbx, %r13		# subq %r(612), %r(613)
	movq %r13, %rdi		# movq %r(613), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(608)
	imulq %rbx, %r12		# imulq %r(608), %r(614)
	movq %r12, %rax		# movq %r(614), %rax
	jmp .L107		# jmp .L107
	.L107:		# .L107:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
