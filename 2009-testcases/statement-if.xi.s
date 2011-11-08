.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	movq $0, %r15
	movq %r15, %r12
	movq $1, %r13
	movq %r12, %r15
	cmpq %r13, %r15
	jne .L251
	.L250:
	movq $0, -8(%rbp)
	movq -8(%rbp), %rdi
	call _Iassert_pb
	
	.L251:
	movq %r12, %r15
	cmpq %r12, %r15
	jne .L253
	.L252:
	movq $1, -16(%rbp)
	movq -16(%rbp), %rdi
	call _Iassert_pb
	
	jmp .L254
	.L253:
	movq $0, -24(%rbp)
	movq -24(%rbp), %rdi
	call _Iassert_pb
	
	.L254:
	.L249:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
