# Compiled using "xic" by Owen Arden, Catalin Dumitru, Wenzel Jakob, and Danfeng Zhang
# Command line: java -jar xic.jar runtime/x86_64/examples/strcat.xi --arch x86_64 --target darwin --asmformat att -I runtime/x86_64/include -o runtime/x86_64/examples/strcat_sysv_darwin.s

.file "runtime/x86_64/examples/strcat.xi"
.att_syntax prefix
.text

.globl _Imain_paai
_Imain_paai:
	pushq %rbx
	leaq .L5(%rip), %rdi
	call __internal_strdup
	movq %rax, %rbx
	leaq .L6(%rip), %rdi
	call __internal_strdup
	movq %rax, %rsi
	movq %rbx, %rdi
	call _Istrcat_aiaiai
	movq %rax, %rdi
	call _Iprintln_pai
	popq %rbx
	ret

.globl _Istrcat_aiaiai
_Istrcat_aiaiai:
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r14
	movq %rsi, %r12
	movq -8(%r14), %rbx
	movq -8(%r12), %r13
	leaq (%rbx,%r13,1), %r15
	leaq 8(,%r15,8), %rdi
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
	xorq %rdi, %rdi
.L3:
	cmpq %r13, %rdi
	jge .L4
	movq (%r12,%rdi,8), %rdx
	leaq (%rdi,%rbx,1), %rcx
	movq %rdx, (%rax,%rcx,8)
	incq %rdi
	jmp .L3
.L4:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	ret

__internal_strdup:
	pushq %rbx
	pushq %r14
	subq $8, %rsp
	movq %rdi, %r14
	movq (%r14), %rbx
	leaq 8(,%rbx,8), %rdi
	call _I_alloc_i
.L7:
	movq (%r14,%rbx,8), %rcx
	movq %rcx, (%rax,%rbx,8)
	decq %rbx
	cmpq $0, %rbx
	jge .L7
	addq $8, %rax
	addq $8, %rsp
	popq %r14
	popq %rbx
	ret

	.const_data
	.align 3
.L5:
	.quad 6
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

	.const_data
	.align 3
.L6:
	.quad 6
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.quad 33
	.text

