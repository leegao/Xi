# Compiled using "xic" by Owen Arden, Catalin Dumitru, Wenzel Jakob, and Danfeng Zhang
# Command line: java -jar xic.jar runtime/x86_64/examples/fibonacci.xi --arch x86_64 --target linux --asmformat att -I runtime/x86_64/include --dump_ir final -o runtime/x86_64/examples/fibonacci_sysv_linux.s

.file "runtime/x86_64/examples/fibonacci.xi"
.att_syntax prefix
.text

.globl _Ifib_ii
_Ifib_ii:
	pushq %rbx
	pushq %r14
	subq $8, %rsp
	movq %rdi, %rbx
	cmpq $2, %rbx
	jge .L1
	movq %rbx, %rax
.L2:
	jmp .E2
.L1:
	movq %rbx, %rdi
	subq $1, %rdi
	call _Ifib_ii
	movq %rax, %r14
	subq $2, %rbx
	movq %rbx, %rdi
	call _Ifib_ii
	addq %r14, %rax
	jmp .L2
.E2:
	addq $8, %rsp
	popq %r14
	popq %rbx
	ret

.globl _Imain_paai
_Imain_paai:
	subq $24, %rsp
	leaq .L4(%rip), %rdi
	call __internal_strdup
	movq %rax, %rdi
	call _Iprint_pai
	call _Ireadln_ai
	movq %rax, %rsi
	movq %rsp, %rdi
	call _IparseInt_t2ibai
	movq (%rsp), %rdi
	movq 8(%rsp), %rcx
	movq $1, %rax
	xorq %rcx, %rax
	testq %rax, %rax
	jnz .L5
	call _Ifib_ii
	movq %rax, %rdi
	call _IunparseInt_aii
	movq %rax, %rdi
	call _Iprintln_pai
.L8:
	jmp .E0
.L5:
	leaq .L7(%rip), %rdi
	call __internal_strdup
	movq %rax, %rdi
	call _Iprintln_pai
	jmp .L8
.E0:
	addq $24, %rsp
	ret

__internal_strdup:
	pushq %rbx
	pushq %r14
	subq $8, %rsp
	movq %rdi, %r14
	movq (%r14), %rbx
	leaq 8(,%rbx,8), %rdi
	call _I_alloc_i
.L9:
	movq (%r14,%rbx,8), %rcx
	movq %rcx, (%rax,%rbx,8)
	decq %rbx
	cmpq $0, %rbx
	jge .L9
	addq $8, %rax
	addq $8, %rsp
	popq %r14
	popq %rbx
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

