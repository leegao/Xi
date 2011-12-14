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
	movq %rdi, %rbx		# movq %rdi, %r(6358)
	.L1096:		# .L1096:
	movq $1, %rbx		# movq $1, %r(6363)
	movq %rbx, %rdi		# movq %r(6363), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1095		# jmp .L1095
	.L1095:		# .L1095:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
