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
	movq %rax, %r13		# movq %rax, %r(5657)
	movq %r13, %rdi		# movq %r(5657), %rdi
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
	movq %rax, %rbx		# movq %rax, %r(5661)
	.L1007:		# .L1007:
	movq $1, %r12		# movq $1, %r(5678)
	movq %rbx, %rdi		# movq %r(5661), %rdi
	movq %r12, %rsi		# movq %r(5678), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1009(%rip), %rdi		# leaq .L1009(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5663)
	.L1010:		# .L1010:
	movq $1, %r12		# movq $1, %r(5680)
	movq %rbx, %rdi		# movq %r(5663), %rdi
	movq %r12, %rsi		# movq %r(5680), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1012(%rip), %rdi		# leaq .L1012(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5665)
	.L1013:		# .L1013:
	movq $1, %r12		# movq $1, %r(5682)
	movq %rbx, %rdi		# movq %r(5665), %rdi
	movq %r12, %rsi		# movq %r(5682), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1015(%rip), %rdi		# leaq .L1015(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5667)
	.L1016:		# .L1016:
	movq $1, %r12		# movq $1, %r(5684)
	movq %rbx, %rdi		# movq %r(5667), %rdi
	movq %r12, %rsi		# movq %r(5684), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1018(%rip), %rdi		# leaq .L1018(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5669)
	.L1019:		# .L1019:
	movq $1, %r12		# movq $1, %r(5686)
	movq %rbx, %rdi		# movq %r(5669), %rdi
	movq %r12, %rsi		# movq %r(5686), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1021(%rip), %rdi		# leaq .L1021(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5671)
	.L1022:		# .L1022:
	movq $1, %r12		# movq $1, %r(5688)
	movq %rbx, %rdi		# movq %r(5671), %rdi
	movq %r12, %rsi		# movq %r(5688), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1024(%rip), %rdi		# leaq .L1024(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5673)
	.L1025:		# .L1025:
	movq $1, %r12		# movq $1, %r(5690)
	movq %rbx, %rdi		# movq %r(5673), %rdi
	movq %r12, %rsi		# movq %r(5690), %rsi
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5706)
	movq %rbx, -16(%rbp)		# movq %r(5706), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5707)
	movq (%rbx), %r12		# movq (%r(5707)), %r(5691)
	movq %r12, -32(%rbp)		# movq %r(5708), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5709)
	salq $3, %rbx		# salq $3, %r(5692)
	movq $8, %r12		# movq $8, %r(5693)
	addq %r12, %rbx		# addq %r(5693), %r(5694)
	movq %rbx, %rdi		# movq %r(5694), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5710)
	movq %rbx, -40(%rbp)		# movq %r(5710), -40(%rbp)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5711)
	salq $3, %r13		# salq $3, %r(5695)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5712)
	movq %rbx, -24(%rbp)		# movq %r(5713), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5714)
	addq %r13, %r12		# addq %r(5695), %r(5714)
	movq %r12, -24(%rbp)		# movq %r(5714), -24(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5715)
	salq $3, %r13		# salq $3, %r(5697)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5716)
	movq %rbx, -8(%rbp)		# movq %r(5703), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5704)
	addq %r13, %r12		# addq %r(5697), %r(5704)
	movq %r12, -8(%rbp)		# movq %r(5704), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5705)
	movq (%rbx), %rbx		# movq (%r(5705)), %r(5699)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5717)
	movq %rbx, (%r12)		# movq %r(5699), (%r(5717))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5718)
	decq %rbx		# decq %r(5718)
	movq %rbx, -32(%rbp)		# movq %r(5718), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(5700)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5719)
	cmpq %rbx, %r12		# cmpq %r(5700), %r(5719)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5701)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5720)
	addq %rbx, %r13		# addq %r(5701), %r(5702)
	movq %r13, %rax		# movq %r(5702), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L1021:
	.quad 1
	.quad 37
	.text

#.section .rodata
.align 8
.L1006:
	.quad 1
	.quad 43
	.text

#.section .rodata
.align 8
.L1015:
	.quad 1
	.quad 47
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
.L1009:
	.quad 1
	.quad 45
	.text

#.section .rodata
.align 8
.L1012:
	.quad 1
	.quad 42
	.text

#.section .rodata
.align 8
.L1024:
	.quad 2
	.quad 37
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

