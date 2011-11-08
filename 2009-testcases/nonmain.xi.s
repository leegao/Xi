.att_syntax prefix
.text
.globl _Ifoo_ii
_Ifoo_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %r14
	pushq %r15
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	movq $0, %r15
	movq %r15, %r12
	movq %rbx, %r14
	subq %r14, %r12
	movq %r12, %r15
	movq %r15, %rax
	jmp .L163
	.L163:
	popq %r13
	popq %r12
	popq %rbx
	popq %r15
	popq %r14
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
