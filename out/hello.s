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
	leaq .L466(%rip), %rdi		# leaq .L466(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2415)
	movq %rbx, %rdi		# movq %r(2415), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L465		# jmp .L465
	.L465:		# .L465:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strdup_aii
_I_c_internal_strdup_aii:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(2431)
	movq %rbx, -16(%rbp)		# movq %r(2431), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2432)
	movq (%rbx), %r12		# movq (%r(2432)), %r(2419)
	movq %r12, -24(%rbp)		# movq %r(2433), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2434)
	salq $3, %rbx		# salq $3, %r(2420)
	movq $8, %r12		# movq $8, %r(2421)
	addq %r12, %rbx		# addq %r(2421), %r(2422)
	movq %rbx, %rdi		# movq %r(2422), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2417)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2435)
	salq $3, %r12		# salq $3, %r(2423)
	movq %r14, %r13		# movq %r(2417), %r(2424)
	addq %r12, %r13		# addq %r(2423), %r(2424)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2436)
	movq %rbx, %r12		# movq %r(2436), %r(2425)
	salq $3, %r12		# salq $3, %r(2425)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2437)
	movq %rbx, -8(%rbp)		# movq %r(2438), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2439)
	addq %r12, %rbx		# addq %r(2425), %r(2439)
	movq %rbx, -8(%rbp)		# movq %r(2439), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2440)
	movq (%rbx), %rbx		# movq (%r(2440)), %r(2427)
	movq %rbx, (%r13)		# movq %r(2427), (%r(2424))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2441)
	decq %rbx		# decq %r(2441)
	movq %rbx, -24(%rbp)		# movq %r(2441), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(2428)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(2442)
	cmpq %rbx, %r12		# cmpq %r(2428), %r(2442)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(2429)
	movq %r14, %r12		# movq %r(2417), %r(2430)
	addq %rbx, %r12		# addq %r(2429), %r(2430)
	movq %r12, %rax		# movq %r(2430), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L466:
	.quad 13
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 44
	.quad 32
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.quad 33
	.text

