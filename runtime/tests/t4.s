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
	movq $5, %rbx		# movq $5, %r(46984)
	movq %rbx, %rdi		# movq %r(46984), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(46980)
	movq %rbx, %rdi		# movq %r(46980), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(46981)
	movq %rbx, %rdi		# movq %r(46981), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L172:		# .L172:
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
	movq $1, %rbx		# movq $1, %r(46985)
	cmpq %rbx, %r12		# cmpq %r(46985), %r(a)
	jne .L175		# jne .L175
	.L174:		# .L174:
	movq $1, %rbx		# movq $1, %r(46986)
	movq %rbx, %rax		# movq %r(46986), %rax
	jmp .L173		# jmp .L173
	.L175:		# .L175:
	movq $1, %rbx		# movq $1, %r(46987)
	movq %r12, %r13		# movq %r(a), %r(46988)
	subq %rbx, %r13		# subq %r(46987), %r(46988)
	movq %r13, %rdi		# movq %r(46988), %rdi
	call _Ifact_ii		# call _Ifact_ii
	movq %rax, %rbx		# movq %rax, %r(46983)
	imulq %rbx, %r12		# imulq %r(46983), %r(46989)
	movq %r12, %rax		# movq %r(46989), %rax
	jmp .L173		# jmp .L173
	.L173:		# .L173:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
