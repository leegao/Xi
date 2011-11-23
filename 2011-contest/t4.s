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
	movq $5, %rbx		# movq $5, %r(1509)
	movq %rbx, %rdi		# movq %r(1509), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(1505)
	movq %rbx, %rdi		# movq %r(1505), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(1506)
	movq %rbx, %rdi		# movq %r(1506), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L231:		# .L231:
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
	movq $1, %rbx		# movq $1, %r(1510)
	cmpq %rbx, %r12		# cmpq %r(1510), %r(a)
	jne .L234		# jne .L234
	.L233:		# .L233:
	movq $1, %rbx		# movq $1, %r(1511)
	movq %rbx, %rax		# movq %r(1511), %rax
	jmp .L232		# jmp .L232
	.L234:		# .L234:
	movq $1, %rbx		# movq $1, %r(1512)
	movq %r12, %r13		# movq %r(a), %r(1513)
	subq %rbx, %r13		# subq %r(1512), %r(1513)
	movq %r13, %rdi		# movq %r(1513), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(1508)
	imulq %rbx, %r12		# imulq %r(1508), %r(1514)
	movq %r12, %rax		# movq %r(1514), %rax
	jmp .L232		# jmp .L232
	.L232:		# .L232:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
