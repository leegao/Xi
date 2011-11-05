# Compiled using "xic" by Owen Arden, Catalin Dumitru, Wenzel Jakob, and Danfeng Zhang
# Command line: java -jar xic.jar runtime/x86_64/examples/strcat.xi -w64 --format att -I runtime/x86_64/include

.file "runtime/x86_64/examples/strcat.xi"
.att_syntax prefix
.text

.globl _Imain_paai
_Imain_paai:
	pushq %rbx
	movq $.L5, %rcx
	subq $32, %rsp
	call __internal_strdup
	movq %rax, %rbx
	movq $.L6, %rcx
	call __internal_strdup
	movq %rax, %rdx
	movq %rbx, %rcx
	call _Istrcat_aiaiai
	movq %rax, %rcx
	call _Iprintln_pai
	addq $32, %rsp
	popq %rbx
	ret

.globl _Istrcat_aiaiai
_Istrcat_aiaiai:
	pushq %r14
	pushq %r15
	pushq %rdi
	pushq %rsi
	pushq %rbx
	movq %rcx, %r15
	movq %rdx, %rsi
	movq -8(%r15), %rdi
	movq -8(%rsi), %r14
	leaq (%rdi,%r14,1), %rbx
	leaq 8(,%rbx,8), %rcx
	subq $32, %rsp
	call _I_alloc_i
	addq $32, %rsp
	movq %rbx, (%rax)
	addq $8, %rax
	xorq %rcx, %rcx
.L1:
	cmpq %rdi, %rcx
	jge .L2
	movq (%r15,%rcx,8), %rdx
	movq %rdx, (%rax,%rcx,8)
	incq %rcx
	jmp .L1
.L2:
	xorq %r8, %r8
.L3:
	cmpq %r14, %r8
	jge .L4
	movq (%rsi,%r8,8), %rdx
	leaq (%r8,%rdi,1), %rcx
	movq %rdx, (%rax,%rcx,8)
	incq %r8
	jmp .L3
.L4:
	popq %rbx
	popq %rsi
	popq %rdi
	popq %r15
	popq %r14
	ret

__internal_strdup:
	subq $8, %rsp
	pushq %r14
	pushq %rbx
	movq %rcx, %rbx
	movq (%rbx), %r14
	leaq 8(,%r14,8), %rcx
	subq $32, %rsp
	call _I_alloc_i
	addq $32, %rsp
.L7:
	movq (%rbx,%r14,8), %rcx
	movq %rcx, (%rax,%r14,8)
	decq %r14
	cmpq $0, %r14
	jge .L7
	addq $8, %rax
	popq %rbx
	popq %r14
	addq $8, %rsp
	ret

	.section .rodata
	.align 8
.L5:
	.quad 6
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

	.section .rodata
	.align 8
.L6:
	.quad 6
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.quad 33
	.text

