# Compiled using "xic" by Owen Arden, Catalin Dumitru, Wenzel Jakob, and Danfeng Zhang
# Command line: java -jar xic.jar runtime/x86_64/examples/fibonacci.xi --arch x86_64 --target windows --asmformat att -I runtime/x86_64/include -o runtime/x86_64/examples/fibonacci_windows.s

.file "runtime/x86_64/examples/fibonacci.xi"
.att_syntax prefix
.text

.globl _Ifib_ii
_Ifib_ii:
	pushq %r14
	pushq %rbx
	subq $40, %rsp
	movq %rcx, %rbx
	cmpq $2, %rbx
	jge .L1
	movq %rbx, %rax
.L2:
	jmp .E2
.L1:
	movq %rbx, %rcx
	subq $1, %rcx
	call _Ifib_ii
	movq %rax, %r14
	subq $2, %rbx
	movq %rbx, %rcx
	call _Ifib_ii
	addq %r14, %rax
	jmp .L2
.E2:
	addq $40, %rsp
	popq %rbx
	popq %r14
	ret

.globl _Imain_paai
_Imain_paai:
	subq $56, %rsp
	leaq .L4(%rip), %rcx
	call __internal_strdup
	movq %rax, %rcx
	call _Iprint_pai
	call _Ireadln_ai
	movq %rax, %rdx
	leaq 32(%rsp), %rcx
	call _IparseInt_t2ibai
	movq 32(%rsp), %rcx
	movq 40(%rsp), %rdx
	movq $1, %rax
	xorq %rdx, %rax
	testq %rax, %rax
	jnz .L5
	call _Ifib_ii
	movq %rax, %rcx
	call _IunparseInt_aii
	movq %rax, %rcx
	call _Iprintln_pai
.L8:
	jmp .E0
.L5:
	leaq .L7(%rip), %rcx
	call __internal_strdup
	movq %rax, %rcx
	call _Iprintln_pai
	jmp .L8
.E0:
	addq $56, %rsp
	ret

__internal_strdup:
	pushq %r14
	pushq %rbx
	subq $40, %rsp
	movq %rcx, %r14
	movq (%r14), %rbx
	leaq 8(,%rbx,8), %rcx
	call _I_alloc_i
.L9:
	movq (%r14,%rbx,8), %rcx
	movq %rcx, (%rax,%rbx,8)
	decq %rbx
	cmpq $0, %rbx
	jge .L9
	addq $8, %rax
	addq $40, %rsp
	popq %rbx
	popq %r14
	ret

	.section .rodata
	.align 8
.L7:
	.quad 14
	.quad 73
	.quad 110
	.quad 118
	.quad 97
	.quad 108
	.quad 105
	.quad 100
	.quad 32
	.quad 105
	.quad 110
	.quad 112
	.quad 117
	.quad 116
	.quad 33
	.text

	.section .rodata
	.align 8
.L4:
	.quad 33
	.quad 80
	.quad 108
	.quad 101
	.quad 97
	.quad 115
	.quad 101
	.quad 32
	.quad 101
	.quad 110
	.quad 116
	.quad 101
	.quad 114
	.quad 32
	.quad 97
	.quad 32
	.quad 112
	.quad 111
	.quad 115
	.quad 105
	.quad 116
	.quad 105
	.quad 118
	.quad 101
	.quad 32
	.quad 110
	.quad 117
	.quad 109
	.quad 98
	.quad 101
	.quad 114
	.quad 32
	.quad 58
	.quad 32
	.text

