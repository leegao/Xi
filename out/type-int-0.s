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
	movq %rdi, %rbx		# movq %rdi, %r(6112)
	movq %rsi, %r12		# movq %rsi, %r(6113)
	leaq .L1004(%rip), %rdi		# leaq .L1004(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6124)
	movq %r13, %rdi		# movq %r(6124), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(6112), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(6113), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(6114)
	leaq .L1006(%rip), %rdi		# leaq .L1006(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6128)
	.L1007:		# .L1007:
	movq $1, %r12		# movq $1, %r(6145)
	movq %rbx, %rdi		# movq %r(6128), %rdi
	movq %r12, %rsi		# movq %r(6145), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1009(%rip), %rdi		# leaq .L1009(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6130)
	.L1010:		# .L1010:
	movq $1, %r12		# movq $1, %r(6147)
	movq %rbx, %rdi		# movq %r(6130), %rdi
	movq %r12, %rsi		# movq %r(6147), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1012(%rip), %rdi		# leaq .L1012(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6132)
	.L1013:		# .L1013:
	movq $1, %r12		# movq $1, %r(6149)
	movq %rbx, %rdi		# movq %r(6132), %rdi
	movq %r12, %rsi		# movq %r(6149), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1015(%rip), %rdi		# leaq .L1015(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6134)
	.L1016:		# .L1016:
	movq $1, %r12		# movq $1, %r(6151)
	movq %rbx, %rdi		# movq %r(6134), %rdi
	movq %r12, %rsi		# movq %r(6151), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1018(%rip), %rdi		# leaq .L1018(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6136)
	.L1019:		# .L1019:
	movq $1, %r12		# movq $1, %r(6153)
	movq %rbx, %rdi		# movq %r(6136), %rdi
	movq %r12, %rsi		# movq %r(6153), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1021(%rip), %rdi		# leaq .L1021(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6138)
	.L1022:		# .L1022:
	movq $1, %r12		# movq $1, %r(6155)
	movq %rbx, %rdi		# movq %r(6138), %rdi
	movq %r12, %rsi		# movq %r(6155), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1024(%rip), %rdi		# leaq .L1024(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6140)
	.L1025:		# .L1025:
	movq $1, %r12		# movq $1, %r(6157)
	movq %rbx, %rdi		# movq %r(6140), %rdi
	movq %r12, %rsi		# movq %r(6157), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(6170)
	movq %rbx, -16(%rbp)		# movq %r(6170), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6171)
	movq (%rbx), %r13		# movq (%r(6171)), %r(6158)
	movq %r13, %r12		# movq %r(6158), %r(6172)
	movq %r12, -24(%rbp)		# movq %r(6172), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6173)
	movq %r12, %r13		# movq %r(6173), %r(6159)
	salq $3, %r13		# salq $3, %r(6159)
	movq $8, %rbx		# movq $8, %r(6160)
	movq %r13, %r14		# movq %r(6159), %r(6161)
	addq %rbx, %r14		# addq %r(6160), %r(6161)
	movq %r14, %rdi		# movq %r(6161), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6142)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(6174)
	movq %r13, %rbx		# movq %r(6174), %r(6162)
	salq $3, %rbx		# salq $3, %r(6162)
	movq %r15, %r13		# movq %r(6142), %r(6163)
	addq %rbx, %r13		# addq %r(6162), %r(6163)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6175)
	movq %rbx, %r12		# movq %r(6175), %r(6164)
	salq $3, %r12		# salq $3, %r(6164)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6176)
	movq %rbx, %r14		# movq %r(6176), %r(6177)
	movq %r14, -8(%rbp)		# movq %r(6177), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6178)
	addq %r12, %rbx		# addq %r(6164), %r(6178)
	movq %rbx, -8(%rbp)		# movq %r(6178), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6179)
	movq (%rbx), %r12		# movq (%r(6179)), %r(6166)
	movq %r12, (%r13)		# movq %r(6166), (%r(6163))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6180)
	decq %rbx		# decq %r(6180)
	movq %rbx, -24(%rbp)		# movq %r(6180), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(6167)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6181)
	cmpq %rbx, %r12		# cmpq %r(6167), %r(6181)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6168)
	movq %r15, %r13		# movq %r(6142), %r(6169)
	addq %rbx, %r13		# addq %r(6168), %r(6169)
	movq %r13, %rax		# movq %r(6169), %rax
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
.L1021:
	.quad 1
	.quad 37
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
.L1024:
	.quad 2
	.quad 37
	.quad 50
	.text

#.section .rodata
.align 8
.L1015:
	.quad 1
	.quad 47
	.text

#.section .rodata
.align 8
.L1006:
	.quad 1
	.quad 43
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

