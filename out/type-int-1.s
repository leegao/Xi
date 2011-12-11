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
	movq %rdi, %rbx		# movq %rdi, %r(6182)
	movq %rsi, %r12		# movq %rsi, %r(6183)
	leaq .L1038(%rip), %rdi		# leaq .L1038(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6197)
	movq %r13, %rdi		# movq %r(6197), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(6182), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(6183), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(6184)
	leaq .L1040(%rip), %rdi		# leaq .L1040(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6201)
	.L1041:		# .L1041:
	.L1043:		# .L1043:
	movq $1, %r12		# movq $1, %r(6216)
	movq %rbx, %rdi		# movq %r(6201), %rdi
	movq %r12, %rsi		# movq %r(6216), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1045(%rip), %rdi		# leaq .L1045(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6203)
	.L1046:		# .L1046:
	.L1048:		# .L1048:
	movq $1, %r12		# movq $1, %r(6218)
	movq %rbx, %rdi		# movq %r(6203), %rdi
	movq %r12, %rsi		# movq %r(6218), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1050(%rip), %rdi		# leaq .L1050(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6205)
	movq $1, %r12		# movq $1, %r(6220)
	movq %r12, %r13		# movq %r(6220), %r(6192)
	.L1052:		# .L1052:
	movq $0, %r12		# movq $0, %r(6221)
	movq %r12, %r14		# movq %r(6221), %r(6191)
	jmp .L1051		# jmp .L1051
	.L1051:		# .L1051:
	movq $0, %r12		# movq $0, %r(6222)
	cmpq %r12, %r14		# cmpq %r(6222), %r(6191)
	je .L1053		# je .L1053
	.L1054:		# .L1054:
	movq $0, %r12		# movq $0, %r(6223)
	movq %r12, %r13		# movq %r(6223), %r(6192)
	jmp .L1053		# jmp .L1053
	.L1053:		# .L1053:
	movq %rbx, %rdi		# movq %r(6205), %rdi
	movq %r13, %rsi		# movq %r(6192), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1055(%rip), %rdi		# leaq .L1055(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6207)
	movq $1, %r12		# movq $1, %r(6225)
	movq %r12, %r13		# movq %r(6225), %r(6194)
	.L1057:		# .L1057:
	movq $0, %r12		# movq $0, %r(6226)
	movq %r12, %r14		# movq %r(6226), %r(6193)
	jmp .L1056		# jmp .L1056
	.L1056:		# .L1056:
	movq $0, %r12		# movq $0, %r(6227)
	cmpq %r12, %r14		# cmpq %r(6227), %r(6193)
	je .L1058		# je .L1058
	.L1059:		# .L1059:
	movq $0, %r12		# movq $0, %r(6228)
	movq %r12, %r13		# movq %r(6228), %r(6194)
	jmp .L1058		# jmp .L1058
	.L1058:		# .L1058:
	movq %rbx, %rdi		# movq %r(6207), %rdi
	movq %r13, %rsi		# movq %r(6194), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1060(%rip), %rdi		# leaq .L1060(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6209)
	.L1062:		# .L1062:
	movq $0, %r12		# movq $0, %r(6230)
	movq %r12, %r15		# movq %r(6230), %r(6195)
	jmp .L1061		# jmp .L1061
	.L1061:		# .L1061:
	movq $1, %r12		# movq $1, %r(6231)
	movq %r15, %r13		# movq %r(6195), %r(6232)
	xorq %r12, %r13		# xorq %r(6231), %r(6232)
	movq %rbx, %rdi		# movq %r(6209), %rdi
	movq %r13, %rsi		# movq %r(6232), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1063(%rip), %rdi		# leaq .L1063(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6211)
	.L1064:		# .L1064:
	movq $1, %r12		# movq $1, %r(6234)
	movq %rbx, %rdi		# movq %r(6211), %rdi
	movq %r12, %rsi		# movq %r(6234), %rsi
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(6247)
	movq %rbx, -8(%rbp)		# movq %r(6247), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6248)
	movq (%rbx), %r13		# movq (%r(6248)), %r(6235)
	movq %r13, %r12		# movq %r(6235), %r(6249)
	movq %r12, -24(%rbp)		# movq %r(6249), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6250)
	movq %r12, %r13		# movq %r(6250), %r(6236)
	salq $3, %r13		# salq $3, %r(6236)
	movq $8, %rbx		# movq $8, %r(6237)
	movq %r13, %r14		# movq %r(6236), %r(6238)
	addq %rbx, %r14		# addq %r(6237), %r(6238)
	movq %r14, %rdi		# movq %r(6238), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6213)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(6251)
	movq %r13, %rbx		# movq %r(6251), %r(6239)
	salq $3, %rbx		# salq $3, %r(6239)
	movq %r15, %r13		# movq %r(6213), %r(6240)
	addq %rbx, %r13		# addq %r(6239), %r(6240)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6252)
	movq %rbx, %r12		# movq %r(6252), %r(6241)
	salq $3, %r12		# salq $3, %r(6241)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6253)
	movq %rbx, %r14		# movq %r(6253), %r(6254)
	movq %r14, -16(%rbp)		# movq %r(6254), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6255)
	addq %r12, %rbx		# addq %r(6241), %r(6255)
	movq %rbx, -16(%rbp)		# movq %r(6255), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6256)
	movq (%rbx), %r12		# movq (%r(6256)), %r(6243)
	movq %r12, (%r13)		# movq %r(6243), (%r(6240))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6257)
	decq %rbx		# decq %r(6257)
	movq %rbx, -24(%rbp)		# movq %r(6257), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(6244)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6258)
	cmpq %rbx, %r12		# cmpq %r(6244), %r(6258)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6245)
	movq %r15, %r13		# movq %r(6213), %r(6246)
	addq %rbx, %r13		# addq %r(6245), %r(6246)
	movq %r13, %rax		# movq %r(6246), %rax
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
.L1055:
	.quad 2
	.quad 62
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
.L1060:
	.quad 2
	.quad 61
	.quad 61
	.text

#.section .rodata
.align 8
.L1063:
	.quad 2
	.quad 33
	.quad 61
	.text

