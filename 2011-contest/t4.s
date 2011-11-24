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
	movq $5, %rbx		# movq $5, %r(1436)
	movq %rbx, %rdi		# movq %r(1436), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(1430)
	movq %rbx, %rdi		# movq %r(1430), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1431)
	movq %rbx, %rdi		# movq %r(1431), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L233:		# .L233:
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
	movq %rax, %rbx		# movq %rax, %r(1433)
	movq %rbx, %rdi		# movq %r(1433), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %rbx		# movq $1, %r(1437)
	cmpq %rbx, %r15		# cmpq %r(1437), %r(a)
	jne .L236		# jne .L236
	.L235:		# .L235:
	movq $1, %rbx		# movq $1, %r(1438)
	movq %rbx, %rax		# movq %r(1438), %rax
	jmp .L234		# jmp .L234
	.L234:		# .L234:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L236:		# .L236:
	movq $1, %rbx		# movq $1, %r(1439)
	movq %r15, %r13		# movq %r(a), %r(1440)
	subq %rbx, %r13		# subq %r(1439), %r(1440)
	movq %r13, %rdi		# movq %r(1440), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(1435)
	movq %r15, %r13		# movq %r(a), %r(1441)
	imulq %rbx, %r13		# imulq %r(1435), %r(1441)
	movq %r13, %rax		# movq %r(1441), %rax
	jmp .L234		# jmp .L234
	
