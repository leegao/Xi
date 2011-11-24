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
	leaq .L1077(%rip), %rdi		# leaq .L1077(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5815)
	movq %r13, %rdi		# movq %r(5815), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1076		# jmp .L1076
	.L1076:		# .L1076:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L1079(%rip), %rdi		# leaq .L1079(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5855)
	movq %rbx, -24(%rbp)		# movq %r(5855), -24(%rbp)
	leaq .L1080(%rip), %rdi		# leaq .L1080(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5820)
	movq $16, %rbx		# movq $16, %r(5837)
	movq %rbx, %rdi		# movq %r(5837), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5821)
	movq %r15, %r13		# movq %r(5821), %r(5804)
	movq %r13, %rdi		# movq %r(5804), %rdi
	movq %r12, %rsi		# movq %r(5820), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r15), %r14		# movq 0(%r(5821)), %r(n)
	movq 8(%r15), %rbx		# movq 8(%r(5821)), %r(5856)
	movq %rbx, -8(%rbp)		# movq %r(5856), -8(%rbp)
	leaq .L1081(%rip), %rdi		# leaq .L1081(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5857)
	movq %rbx, -16(%rbp)		# movq %r(5857), -16(%rbp)
	movq $1, %r12		# movq $1, %r(5839)
	movq $0, %rbx		# movq $0, %r(5840)
	cmpq %rbx, %r14		# cmpq %r(5840), %r(n)
	je .L1082		# je .L1082
	.L1083:		# .L1083:
	movq $0, %r12		# movq $0, %r(5841)
	jmp .L1082		# jmp .L1082
	.L1082:		# .L1082:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5858)
	movq %rbx, %rdi		# movq %r(5858), %rdi
	movq %r12, %rsi		# movq %r(5807), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1084(%rip), %rdi		# leaq .L1084(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5825)
	movq $1, %rbx		# movq $1, %r(5843)
	movq $0, %r13		# movq $0, %r(5844)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5859)
	cmpq %r13, %r14		# cmpq %r(5844), %r(5859)
	je .L1085		# je .L1085
	.L1086:		# .L1086:
	movq $0, %rbx		# movq $0, %r(5845)
	jmp .L1085		# jmp .L1085
	.L1085:		# .L1085:
	movq %r12, %rdi		# movq %r(5825), %rdi
	movq %rbx, %rsi		# movq %r(5808), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $16, %rbx		# movq $16, %r(5846)
	movq %rbx, %rdi		# movq %r(5846), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5827)
	movq %r13, %r12		# movq %r(5827), %r(5810)
	movq %r12, %rdi		# movq %r(5810), %rdi
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5860)
	movq %rbx, %rsi		# movq %r(5860), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r13), %r15		# movq 0(%r(5827)), %r(n2)
	movq 8(%r13), %r14		# movq 8(%r(5827)), %r(ok2)
	leaq .L1087(%rip), %rdi		# leaq .L1087(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5829)
	movq $1, %r12		# movq $1, %r(5848)
	movq %r12, %rbx		# movq %r(5848), %r(5813)
	movq $42, %r12		# movq $42, %r(5849)
	cmpq %r12, %r15		# cmpq %r(5849), %r(n2)
	je .L1088		# je .L1088
	.L1089:		# .L1089:
	movq $0, %rbx		# movq $0, %r(5850)
	jmp .L1088		# jmp .L1088
	.L1088:		# .L1088:
	movq %r13, %rdi		# movq %r(5829), %rdi
	movq %rbx, %rsi		# movq %r(5813), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1090(%rip), %rdi		# leaq .L1090(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5831)
	movq $1, %r15		# movq $1, %r(5852)
	movq $1, %r13		# movq $1, %r(5853)
	cmpq %r13, %r14		# cmpq %r(5853), %r(ok2)
	je .L1091		# je .L1091
	.L1092:		# .L1092:
	movq $0, %r15		# movq $0, %r(5854)
	jmp .L1091		# jmp .L1091
	.L1091:		# .L1091:
	movq %r12, %rdi		# movq %r(5831), %rdi
	movq %r15, %rsi		# movq %r(5814), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L1078		# jmp .L1078
	.L1078:		# .L1078:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(5861)
	movq %r12, -16(%rbp)		# movq %r(5873), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5874)
	salq $3, %rbx		# salq $3, %r(5862)
	movq $8, %r12		# movq $8, %r(5863)
	addq %r12, %rbx		# addq %r(5863), %r(5864)
	movq %rbx, %rdi		# movq %r(5864), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5833)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5875)
	salq $3, %r12		# salq $3, %r(5865)
	movq %r13, %r15		# movq %r(5833), %r(5866)
	addq %r12, %r15		# addq %r(5865), %r(5866)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5876)
	movq %rbx, %r12		# movq %r(5876), %r(5867)
	salq $3, %r12		# salq $3, %r(5867)
	movq %r14, %rbx		# movq %r(p0), %r(5877)
	movq %rbx, -8(%rbp)		# movq %r(5877), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5878)
	addq %r12, %rbx		# addq %r(5867), %r(5878)
	movq %rbx, -8(%rbp)		# movq %r(5878), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5879)
	movq (%rbx), %rbx		# movq (%r(5879)), %r(5869)
	movq %rbx, (%r15)		# movq %r(5869), (%r(5866))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5880)
	decq %rbx		# decq %r(5880)
	movq %rbx, -16(%rbp)		# movq %r(5880), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(5870)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5881)
	cmpq %rbx, %r12		# cmpq %r(5870), %r(5881)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5871)
	movq %r13, %r12		# movq %r(5833), %r(5872)
	addq %rbx, %r12		# addq %r(5871), %r(5872)
	movq %r12, %rax		# movq %r(5872), %rax
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
.L1080:
	.quad 2
	.quad 63
	.quad 63
	.text

#.section .rodata
.align 8
.L1084:
	.quad 1
	.quad 49
	.text

#.section .rodata
.align 8
.L1077:
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
.L1087:
	.quad 1
	.quad 50
	.text

#.section .rodata
.align 8
.L1079:
	.quad 2
	.quad 52
	.quad 50
	.text

#.section .rodata
.align 8
.L1081:
	.quad 1
	.quad 48
	.text

#.section .rodata
.align 8
.L1090:
	.quad 1
	.quad 51
	.text

