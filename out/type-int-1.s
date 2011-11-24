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
	leaq .L1038(%rip), %rdi		# leaq .L1038(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5697)
	movq %r13, %rdi		# movq %r(5697), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1037		# jmp .L1037
	.L1037:		# .L1037:
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
	leaq .L1040(%rip), %rdi		# leaq .L1040(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5701)
	.L1041:		# .L1041:
	.L1043:		# .L1043:
	movq $1, %r12		# movq $1, %r(5716)
	movq %rbx, %rdi		# movq %r(5701), %rdi
	movq %r12, %rsi		# movq %r(5716), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1045(%rip), %rdi		# leaq .L1045(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5703)
	.L1046:		# .L1046:
	.L1048:		# .L1048:
	movq $1, %r12		# movq $1, %r(5718)
	movq %rbx, %rdi		# movq %r(5703), %rdi
	movq %r12, %rsi		# movq %r(5718), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1050(%rip), %rdi		# leaq .L1050(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5705)
	movq $1, %r12		# movq $1, %r(5720)
	.L1052:		# .L1052:
	movq $0, %r15		# movq $0, %r(5721)
	jmp .L1051		# jmp .L1051
	.L1051:		# .L1051:
	movq $0, %r14		# movq $0, %r(5722)
	cmpq %r14, %r15		# cmpq %r(5722), %r(5691)
	je .L1053		# je .L1053
	.L1054:		# .L1054:
	movq $0, %r12		# movq $0, %r(5723)
	jmp .L1053		# jmp .L1053
	.L1053:		# .L1053:
	movq %r13, %rdi		# movq %r(5705), %rdi
	movq %r12, %rsi		# movq %r(5692), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1055(%rip), %rdi		# leaq .L1055(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5707)
	movq $1, %r12		# movq $1, %r(5725)
	.L1057:		# .L1057:
	movq $0, %r15		# movq $0, %r(5726)
	jmp .L1056		# jmp .L1056
	.L1056:		# .L1056:
	movq $0, %r14		# movq $0, %r(5727)
	cmpq %r14, %r15		# cmpq %r(5727), %r(5693)
	je .L1058		# je .L1058
	.L1059:		# .L1059:
	movq $0, %r12		# movq $0, %r(5728)
	jmp .L1058		# jmp .L1058
	.L1058:		# .L1058:
	movq %r13, %rdi		# movq %r(5707), %rdi
	movq %r12, %rsi		# movq %r(5694), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1060(%rip), %rdi		# leaq .L1060(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5709)
	.L1062:		# .L1062:
	movq $0, %rbx		# movq $0, %r(5730)
	jmp .L1061		# jmp .L1061
	.L1061:		# .L1061:
	movq $1, %r13		# movq $1, %r(5731)
	xorq %r13, %rbx		# xorq %r(5731), %r(5732)
	movq %r12, %rdi		# movq %r(5709), %rdi
	movq %rbx, %rsi		# movq %r(5732), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1063(%rip), %rdi		# leaq .L1063(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5711)
	.L1064:		# .L1064:
	movq $1, %r12		# movq $1, %r(5734)
	movq %rbx, %rdi		# movq %r(5711), %rdi
	movq %r12, %rsi		# movq %r(5734), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L1039		# jmp .L1039
	.L1039:		# .L1039:
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
	movq %rdi, %rbx		# movq %rdi, %r(5750)
	movq %rbx, -24(%rbp)		# movq %r(5750), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5751)
	movq (%rbx), %rbx		# movq (%r(5751)), %r(5735)
	movq %rbx, %r12		# movq %r(t10), %r(5736)
	salq $3, %r12		# salq $3, %r(5736)
	movq $8, %r13		# movq $8, %r(5737)
	addq %r13, %r12		# addq %r(5737), %r(5738)
	movq %r12, %rdi		# movq %r(5738), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(5752)
	movq %r12, -32(%rbp)		# movq %r(5752), -32(%rbp)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %rbx, %r14		# movq %r(t10), %r(5739)
	salq $3, %r14		# salq $3, %r(5739)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5753)
	addq %r14, %r12		# addq %r(5739), %r(5740)
	movq %rbx, %r14		# movq %r(t10), %r(5754)
	movq %r14, -16(%rbp)		# movq %r(5754), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5755)
	salq $3, %r13		# salq $3, %r(5755)
	movq %r13, -16(%rbp)		# movq %r(5755), -16(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5756)
	movq %r14, -8(%rbp)		# movq %r(5747), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5748)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5757)
	addq %r14, %r13		# addq %r(5757), %r(5748)
	movq %r13, -8(%rbp)		# movq %r(5748), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5749)
	movq (%r13), %r13		# movq (%r(5749)), %r(5743)
	movq %r13, (%r12)		# movq %r(5743), (%r(5740))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(5744)
	cmpq %r12, %rbx		# cmpq %r(5744), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5745)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5758)
	addq %rbx, %r13		# addq %r(5745), %r(5746)
	movq %r13, %rax		# movq %r(5746), %rax
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
.L1060:
	.quad 2
	.quad 61
	.quad 61
	.text

#.section .rodata
.align 8
.L1055:
	.quad 2
	.quad 62
	.quad 61
	.text

#.section .rodata
.align 8
.L1038:
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
.L1050:
	.quad 1
	.quad 62
	.text

#.section .rodata
.align 8
.L1045:
	.quad 2
	.quad 60
	.quad 61
	.text

#.section .rodata
.align 8
.L1040:
	.quad 1
	.quad 60
	.text

#.section .rodata
.align 8
.L1063:
	.quad 2
	.quad 33
	.quad 61
	.text

