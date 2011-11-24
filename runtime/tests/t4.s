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
	movq $5, %rbx		# movq $5, %r(1180)
	movq %rbx, %rdi		# movq %r(1180), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(1176)
	movq %rbx, %rdi		# movq %r(1176), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1177)
	movq %rbx, %rdi		# movq %r(1177), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L261:		# .L261:
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
	movq %rdi, %r14		# movq %rdi, %r(a)
	movq $1, %rbx		# movq $1, %r(1181)
	cmpq %rbx, %r14		# cmpq %r(1181), %r(a)
	jne .L264		# jne .L264
	.L263:		# .L263:
	movq $1, %rax		# movq $1, %rax
	jmp .L262		# jmp .L262
	.L264:		# .L264:
	movq %r14, %r12		# movq %r(a), %r(1182)
	subq $1, %r12		# subq $1, %r(1182)
	movq %r12, %rdi		# movq %r(1182), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(1179)
	imulq %rbx, %r14		# imulq %r(1179), %r(1183)
	movq %r14, %rax		# movq %r(1183), %rax
	jmp .L262		# jmp .L262
	.L262:		# .L262:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
