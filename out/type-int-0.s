.att_syntax prefix
.text
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L1004(%rip), %rdi		# leaq .L1004(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5630)
	movq %r13, %rdi		# movq %r(5630), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1003		# jmp .L1003
	.L1003:		# .L1003:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L1006(%rip), %rdi		# leaq .L1006(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5634)
	.L1007:		# .L1007:
	movq $1, %r12		# movq $1, %r(5651)
	movq %rbx, %rdi		# movq %r(5634), %rdi
	movq %r12, %rsi		# movq %r(5651), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1009(%rip), %rdi		# leaq .L1009(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5636)
	.L1010:		# .L1010:
	movq $1, %r12		# movq $1, %r(5653)
	movq %rbx, %rdi		# movq %r(5636), %rdi
	movq %r12, %rsi		# movq %r(5653), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1012(%rip), %rdi		# leaq .L1012(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5638)
	.L1013:		# .L1013:
	movq $1, %r12		# movq $1, %r(5655)
	movq %rbx, %rdi		# movq %r(5638), %rdi
	movq %r12, %rsi		# movq %r(5655), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1015(%rip), %rdi		# leaq .L1015(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5640)
	.L1016:		# .L1016:
	movq $1, %r12		# movq $1, %r(5657)
	movq %rbx, %rdi		# movq %r(5640), %rdi
	movq %r12, %rsi		# movq %r(5657), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1018(%rip), %rdi		# leaq .L1018(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5642)
	.L1019:		# .L1019:
	movq $1, %r12		# movq $1, %r(5659)
	movq %rbx, %rdi		# movq %r(5642), %rdi
	movq %r12, %rsi		# movq %r(5659), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1021(%rip), %rdi		# leaq .L1021(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5644)
	.L1022:		# .L1022:
	movq $1, %r12		# movq $1, %r(5661)
	movq %rbx, %rdi		# movq %r(5644), %rdi
	movq %r12, %rsi		# movq %r(5661), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1024(%rip), %rdi		# leaq .L1024(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5646)
	.L1025:		# .L1025:
	movq $1, %r12		# movq $1, %r(5663)
	movq %rbx, %rdi		# movq %r(5646), %rdi
	movq %r12, %rsi		# movq %r(5663), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L1005		# jmp .L1005
	.L1005:		# .L1005:
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
	movq %rdi, %rbx		# movq %rdi, %r(5676)
	movq %rbx, -16(%rbp)		# movq %r(5676), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5677)
	movq (%rbx), %rbx		# movq (%r(5677)), %r(5664)
	movq %rbx, %r14		# movq %r(5664), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(5665)
	salq $3, %rbx		# salq $3, %r(5665)
	movq $8, %r12		# movq $8, %r(5666)
	addq %r12, %rbx		# addq %r(5666), %r(5667)
	movq %rbx, %rdi		# movq %r(5667), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(5648)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(5668)
	salq $3, %rbx		# salq $3, %r(5668)
	movq %r12, %r13		# movq %r(5648), %r(5669)
	addq %rbx, %r13		# addq %r(5668), %r(5669)
	movq %r14, %r15		# movq %r(t10), %r(5670)
	salq $3, %r15		# salq $3, %r(5670)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5678)
	movq %rbx, -8(%rbp)		# movq %r(5679), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5680)
	addq %r15, %rbx		# addq %r(5670), %r(5680)
	movq %rbx, -8(%rbp)		# movq %r(5680), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5681)
	movq (%rbx), %rbx		# movq (%r(5681)), %r(5672)
	movq %rbx, (%r13)		# movq %r(5672), (%r(5669))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(5673)
	cmpq %rbx, %r14		# cmpq %r(5673), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5674)
	addq %rbx, %r12		# addq %r(5674), %r(5675)
	movq %r12, %rax		# movq %r(5675), %rax
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
.L1024:
	.quad 2
	.quad 37
	.quad 50
	.text

#.section .rodata
.align 8
.L1018:
	.quad 2
	.quad 47
	.quad 50
	.text

#.section .rodata
.align 8
.L1004:
	.quad 8
	.quad 84
	.quad 101
	.quad 115
	.quad 116
	.quad 105
	.quad 110
	.quad 103
	.quad 58
	.text

#.section .rodata
.align 8
.L1006:
	.quad 1
	.quad 43
	.text

#.section .rodata
.align 8
.L1012:
	.quad 1
	.quad 42
	.text

#.section .rodata
.align 8
.L1009:
	.quad 1
	.quad 45
	.text

#.section .rodata
.align 8
.L1021:
	.quad 1
	.quad 37
	.text

#.section .rodata
.align 8
.L1015:
	.quad 1
	.quad 47
	.text

