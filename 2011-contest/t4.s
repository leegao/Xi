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
	movq $5, %rbx		# movq $5, %r(229)
	movq %rbx, %rdi		# movq %r(229), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(223)
	movq %rbx, %rdi		# movq %r(223), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(224)
	movq %rbx, %rdi		# movq %r(224), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L128:		# .L128:
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
	movq %rax, %rbx		# movq %rax, %r(226)
	movq %rbx, %rdi		# movq %r(226), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %rbx		# movq $1, %r(230)
	cmpq %rbx, %r15		# cmpq %r(230), %r(a)
	jne .L133		# jne .L133
	movq $1, %rbx		# movq $1, %r(231)
	movq %rbx, %rax		# movq %r(231), %rax
	jmp .L132		# jmp .L132
	.L132:		# .L132:
	.L129:		# .L129:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L133:		# .L133:
	movq $1, %rbx		# movq $1, %r(232)
	movq %r15, %r13		# movq %r(a), %r(233)
	subq %rbx, %r13		# subq %r(232), %r(233)
	movq %r13, %rdi		# movq %r(233), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(228)
	movq %r15, %r13		# movq %r(a), %r(234)
	imulq %rbx, %r13		# imulq %r(228), %r(234)
	movq %r13, %rax		# movq %r(234), %rax
	jmp .L132		# jmp .L132
	
