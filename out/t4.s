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
	movq $5, %rbx		# movq $5, %r(3749)
	movq %rbx, %rdi		# movq %r(3749), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(3743)
	movq %rbx, %rdi		# movq %r(3743), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(3744)
	movq %rbx, %rdi		# movq %r(3744), %rdi
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
	movq %rdi, %r15		# movq %rdi, %r(a)
	movq %r15, %rdi		# movq %r(a), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(3746)
	movq %rbx, %rdi		# movq %r(3746), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %rbx		# movq $1, %r(3750)
	cmpq %rbx, %r15		# cmpq %r(3750), %r(a)
	jne .L716		# jne .L716
	.L715:		# .L715:
	movq $1, %rbx		# movq $1, %r(3751)
	movq %rbx, %rax		# movq %r(3751), %rax
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
	movq $1, %rbx		# movq $1, %r(3752)
	movq %r15, %r13		# movq %r(a), %r(3753)
	subq %rbx, %r13		# subq %r(3752), %r(3753)
	movq %r13, %rdi		# movq %r(3753), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(3748)
	movq %r15, %r13		# movq %r(a), %r(3754)
	imulq %rbx, %r13		# imulq %r(3748), %r(3754)
	movq %r13, %rax		# movq %r(3754), %rax
	jmp .L714		# jmp .L714
	
