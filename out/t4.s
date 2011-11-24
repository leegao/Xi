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
	movq $5, %rbx		# movq $5, %r(3037)
	movq %rbx, %rdi		# movq %r(3037), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(3031)
	movq %rbx, %rdi		# movq %r(3031), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(3032)
	movq %rbx, %rdi		# movq %r(3032), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L671		# jmp .L671
	.L671:		# .L671:
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
	movq %rdi, %r15		# movq %rdi, %r(a)
	movq %r15, %rdi		# movq %r(a), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(3034)
	movq %rbx, %rdi		# movq %r(3034), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %rbx		# movq $1, %r(3038)
	cmpq %rbx, %r15		# cmpq %r(3038), %r(a)
	jne .L674		# jne .L674
	.L673:		# .L673:
	movq $1, %rbx		# movq $1, %r(3039)
	movq %rbx, %rax		# movq %r(3039), %rax
	jmp .L672		# jmp .L672
	.L672:		# .L672:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L674:		# .L674:
	movq $1, %rbx		# movq $1, %r(3040)
	movq %r15, %r13		# movq %r(a), %r(3041)
	subq %rbx, %r13		# subq %r(3040), %r(3041)
	movq %r13, %rdi		# movq %r(3041), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(3036)
	movq %r15, %r13		# movq %r(a), %r(3042)
	imulq %rbx, %r13		# imulq %r(3036), %r(3042)
	movq %r13, %rax		# movq %r(3042), %rax
	jmp .L672		# jmp .L672
	
