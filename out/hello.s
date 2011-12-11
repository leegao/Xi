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
	movq %rdi, %rbx		# movq %rdi, %r(2634)
	leaq .L466(%rip), %rdi		# leaq .L466(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2635)
	movq %rbx, %rdi		# movq %r(2635), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(2651)
	movq %rbx, -8(%rbp)		# movq %r(2651), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2652)
	movq (%rbx), %r13		# movq (%r(2652)), %r(2639)
	movq %r13, %r12		# movq %r(2639), %r(2653)
	movq %r12, -16(%rbp)		# movq %r(2653), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2654)
	movq %r12, %r13		# movq %r(2654), %r(2640)
	salq $3, %r13		# salq $3, %r(2640)
	movq $8, %rbx		# movq $8, %r(2641)
	movq %r13, %r14		# movq %r(2640), %r(2642)
	addq %rbx, %r14		# addq %r(2641), %r(2642)
	movq %r14, %rdi		# movq %r(2642), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2637)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(2655)
	movq %r13, %rbx		# movq %r(2655), %r(2643)
	salq $3, %rbx		# salq $3, %r(2643)
	movq %r15, %r13		# movq %r(2637), %r(2644)
	addq %rbx, %r13		# addq %r(2643), %r(2644)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2656)
	movq %rbx, %r12		# movq %r(2656), %r(2645)
	salq $3, %r12		# salq $3, %r(2645)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2657)
	movq %rbx, %r14		# movq %r(2657), %r(2658)
	movq %r14, -24(%rbp)		# movq %r(2658), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2659)
	addq %r12, %rbx		# addq %r(2645), %r(2659)
	movq %rbx, -24(%rbp)		# movq %r(2659), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(2660)
	movq (%rbx), %r12		# movq (%r(2660)), %r(2647)
	movq %r12, (%r13)		# movq %r(2647), (%r(2644))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2661)
	decq %rbx		# decq %r(2661)
	movq %rbx, -16(%rbp)		# movq %r(2661), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(2648)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(2662)
	cmpq %rbx, %r12		# cmpq %r(2648), %r(2662)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(2649)
	movq %r15, %r13		# movq %r(2637), %r(2650)
	addq %rbx, %r13		# addq %r(2649), %r(2650)
	movq %r13, %rax		# movq %r(2650), %rax
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

