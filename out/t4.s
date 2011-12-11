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
	movq %rdi, %rbx		# movq %rdi, %r(4058)
	movq $5, %rbx		# movq $5, %r(4066)
	movq %rbx, %rdi		# movq %r(4066), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(4060)
	movq %rbx, %rdi		# movq %r(4060), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(4061)
	movq %rbx, %rdi		# movq %r(4061), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L713		# jmp .L713
	.L713:		# .L713:
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
	movq %rdi, %r15		# movq %rdi, %r(4059)
	movq %r15, %rdi		# movq %r(4059), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(4063)
	movq %rbx, %rdi		# movq %r(4063), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %rbx		# movq $1, %r(4067)
	cmpq %rbx, %r15		# cmpq %r(4067), %r(4059)
	jne .L716		# jne .L716
	.L715:		# .L715:
	movq $1, %rbx		# movq $1, %r(4068)
	movq %rbx, %rax		# movq %r(4068), %rax
	jmp .L714		# jmp .L714
	.L714:		# .L714:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L716:		# .L716:
	movq $1, %rbx		# movq $1, %r(4069)
	movq %r15, %r13		# movq %r(4059), %r(4070)
	subq %rbx, %r13		# subq %r(4069), %r(4070)
	movq %r13, %rdi		# movq %r(4070), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(4065)
	movq %r15, %r13		# movq %r(4059), %r(4071)
	imulq %rbx, %r13		# imulq %r(4065), %r(4071)
	movq %r13, %rax		# movq %r(4071), %rax
	jmp .L714		# jmp .L714
	
