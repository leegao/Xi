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
	movq %rdi, %r15		# movq %rdi, %r(args)
	movq $0, %r13		# movq $0, %r(i)
	.L33:		# .L33:
	movq %r15, %r12		# movq %r(args), %r(62)
	subq $8, %r12		# subq $8, %r(62)
	movq (%r12), %rbx		# movq (%r(62)), %r(63)
	cmpq %rbx, %r13		# cmpq %r(63), %r(i)
	jge .L35		# jge .L35
	.L34:		# .L34:
	movq %r15, %r14		# movq %r(args), %r(58)
	movq %r13, %r12		# movq %r(i), %r(59)
	movq %r14, %rbx		# movq %r(58), %r(64)
	subq $8, %rbx		# subq $8, %r(64)
	movq (%rbx), %rbx		# movq (%r(64)), %r(65)
	cmpq %rbx, %r12		# cmpq %r(65), %r(59)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(66)
	movq %r14, %rbx		# movq %r(58), %r(67)
	addq %r12, %rbx		# addq %r(66), %r(67)
	movq (%rbx), %rbx		# movq (%r(67)), %r(68)
	movq %rbx, %rdi		# movq %r(68), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	incq %r13		# incq %r(i)
	jmp .L33		# jmp .L33
	.L35:		# .L35:
	.L32:		# .L32:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
