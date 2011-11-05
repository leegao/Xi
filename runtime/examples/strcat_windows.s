# Compiled using "xic" by Owen Arden, Catalin Dumitru, Wenzel Jakob, and Danfeng Zhang
# Command line: java -jar xic.jar runtime/x86_64/examples/strcat.xi --arch x86_64 --target windows --asmformat att -I runtime/x86_64/include -o runtime/x86_64/examples/strcat_windows.s

.file "runtime/x86_64/examples/strcat.xi"
.att_syntax prefix
.text

.globl _Imain_paai
_Imain_paai:
	pushq %rbx
	subq $32, %rsp
	leaq .L5(%rip), %rcx
	call __internal_strdup
	movq %rax, %rbx
	leaq .L6(%rip), %rcx
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
	subq $32, %rsp
	movq %rcx, %r14
	movq %rdx, %rdi
	movq -8(%r14), %rbx
	movq -8(%rdi), %rsi
	leaq (%rbx,%rsi,1), %r15
	leaq 8(,%r15,8), %rcx
	call _I_alloc_i
	movq %r15, (%rax)
	addq $8, %rax
	xorq %rcx, %rcx
.L1:
	cmpq %rbx, %rcx
	jge .L2
	movq (%r14,%rcx,8), %rdx
	movq %rdx, (%rax,%rcx,8)
	incq %rcx
	jmp .L1
.L2:
	xorq %r8, %r8
.L3:
	cmpq %rsi, %r8
	jge .L4
	movq (%rdi,%r8,8), %rdx
	leaq (%r8,%rbx,1), %rcx
	movq %rdx, (%rax,%rcx,8)
	incq %r8
	jmp .L3
.L4:
	addq $32, %rsp
	popq %rbx
	popq %rsi
	popq %rdi
	popq %r15
	popq %r14
	ret

__internal_strdup:
	pushq %r14
	pushq %rbx
	subq $40, %rsp
	movq %rcx, %r14
	movq (%r14), %rbx
	leaq 8(,%rbx,8), %rcx
	call _I_alloc_i
.L7:
	movq (%r14,%rbx,8), %rcx
	movq %rcx, (%rax,%rbx,8)
	decq %rbx
	cmpq $0, %rbx
	jge .L7
	addq $8, %rax
	addq $40, %rsp
	popq %rbx
	popq %r14
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

