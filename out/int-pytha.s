.att_syntax prefix
.text
.globl _Isqr_ii
_Isqr_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %r13, %rbx		# movq %r(a), %r(5841)
	imulq %r13, %rbx		# imulq %r(a), %r(5841)
	movq %rbx, %rax		# movq %r(5841), %rax
	jmp .L1091		# jmp .L1091
	.L1091:		# .L1091:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ihypo_iii
_Ihypo_iii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq %rbx, %rdi		# movq %r(a), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r14		# movq %rax, %r(5826)
	movq %r12, %rdi		# movq %r(b), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r12		# movq %rax, %r(5827)
	addq %r12, %r14		# addq %r(5827), %r(5842)
	movq $0, %r12		# movq $0, %r(5843)
	jmp .L1093		# jmp .L1093
	.L1093:		# .L1093:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(5828)
	cmpq %r14, %r13		# cmpq %r(goal), %r(5828)
	jge .L1095		# jge .L1095
	.L1094:		# .L1094:
	incq %r12		# incq %r(h)
	jmp .L1093		# jmp .L1093
	.L1095:		# .L1095:
	movq %r12, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %r13		# movq %rax, %r(5829)
	cmpq %r14, %r13		# cmpq %r(goal), %r(5829)
	jne .L1097		# jne .L1097
	.L1096:		# .L1096:
	movq %r12, %rax		# movq %r(h), %rax
	jmp .L1092		# jmp .L1092
	.L1092:		# .L1092:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L1097:		# .L1097:
	movq $1, %rbx		# movq $1, %r(5844)
	movq %r12, %r14		# movq %r(h), %r(5845)
	subq %rbx, %r14		# subq %r(5844), %r(5845)
	movq %r14, %rax		# movq %r(5845), %rax
	jmp .L1092		# jmp .L1092
	
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
	leaq .L1100(%rip), %rdi		# leaq .L1100(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5830)
	movq %r13, %rdi		# movq %r(5830), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1099		# jmp .L1099
	.L1099:		# .L1099:
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
	leaq .L1102(%rip), %rdi		# leaq .L1102(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5834)
	movq $1, %rbx		# movq $1, %r(5848)
	movq %rbx, %r12		# movq %r(5848), %r(5824)
	movq $3, %rbx		# movq $3, %r(5849)
	movq $4, %r13		# movq $4, %r(5850)
	movq %rbx, %rdi		# movq %r(5849), %rdi
	movq %r13, %rsi		# movq %r(5850), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(5835)
	movq $5, %r13		# movq $5, %r(5851)
	cmpq %r13, %rbx		# cmpq %r(5851), %r(5835)
	je .L1103		# je .L1103
	.L1104:		# .L1104:
	movq $0, %rbx		# movq $0, %r(5852)
	movq %rbx, %r12		# movq %r(5852), %r(5824)
	jmp .L1103		# jmp .L1103
	.L1103:		# .L1103:
	movq %r14, %rdi		# movq %r(5834), %rdi
	movq %r12, %rsi		# movq %r(5824), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1105(%rip), %rdi		# leaq .L1105(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5837)
	movq $1, %rbx		# movq $1, %r(5854)
	movq %rbx, %r12		# movq %r(5854), %r(5825)
	movq $21, %rbx		# movq $21, %r(5855)
	movq $15, %r13		# movq $15, %r(5856)
	movq %rbx, %rdi		# movq %r(5855), %rdi
	movq %r13, %rsi		# movq %r(5856), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %rbx		# movq %rax, %r(5838)
	movq $25, %r13		# movq $25, %r(5857)
	cmpq %r13, %rbx		# cmpq %r(5857), %r(5838)
	je .L1106		# je .L1106
	.L1107:		# .L1107:
	movq $0, %rbx		# movq $0, %r(5858)
	movq %rbx, %r12		# movq %r(5858), %r(5825)
	jmp .L1106		# jmp .L1106
	.L1106:		# .L1106:
	movq %r14, %rdi		# movq %r(5837), %rdi
	movq %r12, %rsi		# movq %r(5825), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L1101		# jmp .L1101
	.L1101:		# .L1101:
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
	movq %rdi, %rbx		# movq %rdi, %r(5874)
	movq %rbx, -24(%rbp)		# movq %r(5874), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5875)
	movq (%rbx), %rbx		# movq (%r(5875)), %r(5859)
	movq %rbx, %r12		# movq %r(t10), %r(5860)
	salq $3, %r12		# salq $3, %r(5860)
	movq $8, %r13		# movq $8, %r(5861)
	addq %r13, %r12		# addq %r(5861), %r(5862)
	movq %r12, %rdi		# movq %r(5862), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(5876)
	movq %r12, -32(%rbp)		# movq %r(5876), -32(%rbp)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %rbx, %r14		# movq %r(t10), %r(5863)
	salq $3, %r14		# salq $3, %r(5863)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5877)
	movq %r13, -16(%rbp)		# movq %r(5878), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5879)
	addq %r14, %r12		# addq %r(5863), %r(5879)
	movq %r12, -16(%rbp)		# movq %r(5879), -16(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(5865)
	salq $3, %r14		# salq $3, %r(5865)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5880)
	movq %r13, -8(%rbp)		# movq %r(5871), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5872)
	addq %r14, %r12		# addq %r(5865), %r(5872)
	movq %r12, -8(%rbp)		# movq %r(5872), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5873)
	movq (%r12), %r12		# movq (%r(5873)), %r(5867)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5881)
	movq %r12, (%r13)		# movq %r(5867), (%r(5881))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(5868)
	cmpq %r12, %rbx		# cmpq %r(5868), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(5869)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5882)
	addq %rbx, %r13		# addq %r(5869), %r(5870)
	movq %r13, %rax		# movq %r(5870), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
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
.L1100:
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
.L1102:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L1105:
	.quad 2
	.quad 35
	.quad 50
	.text

