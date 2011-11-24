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
	movq $5, %rbx		# movq $5, %r(1589)
	movq %rbx, %rdi		# movq %r(1589), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(1583)
	movq %rbx, %rdi		# movq %r(1583), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1584)
	movq %rbx, %rdi		# movq %r(1584), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L263:		# .L263:
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
	movq %r12, %rdi		# movq %r(a), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1586)
	movq %rbx, %rdi		# movq %r(1586), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %rbx		# movq $1, %r(1590)
	cmpq %rbx, %r12		# cmpq %r(1590), %r(a)
	jne .L266		# jne .L266
	.L265:		# .L265:
	movq $1, %rbx		# movq $1, %r(1591)
	movq %rbx, %rax		# movq %r(1591), %rax
	jmp .L264		# jmp .L264
	.L266:		# .L266:
	movq $1, %rbx		# movq $1, %r(1592)
	movq %r12, %r13		# movq %r(a), %r(1593)
	subq %rbx, %r13		# subq %r(1592), %r(1593)
	movq %r13, %rdi		# movq %r(1593), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(1588)
	imulq %rbx, %r12		# imulq %r(1588), %r(1594)
	movq %r12, %rax		# movq %r(1594), %rax
	jmp .L264		# jmp .L264
	.L264:		# .L264:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
