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
	movq %rdi, %rbx		# movq %rdi, %r(6119)
	movq %rsi, %r12		# movq %rsi, %r(6120)
	leaq .L1004(%rip), %rdi		# leaq .L1004(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6131)
	movq %r13, %rdi		# movq %r(6131), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(6119), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(6120), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(6121)
	leaq .L1006(%rip), %rdi		# leaq .L1006(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6135)
	.L1007:		# .L1007:
	movq $1, %r12		# movq $1, %r(6152)
	movq %rbx, %rdi		# movq %r(6135), %rdi
	movq %r12, %rsi		# movq %r(6152), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1009(%rip), %rdi		# leaq .L1009(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6137)
	.L1010:		# .L1010:
	movq $1, %r12		# movq $1, %r(6154)
	movq %rbx, %rdi		# movq %r(6137), %rdi
	movq %r12, %rsi		# movq %r(6154), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1012(%rip), %rdi		# leaq .L1012(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6139)
	.L1013:		# .L1013:
	movq $1, %r12		# movq $1, %r(6156)
	movq %rbx, %rdi		# movq %r(6139), %rdi
	movq %r12, %rsi		# movq %r(6156), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1015(%rip), %rdi		# leaq .L1015(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6141)
	.L1016:		# .L1016:
	movq $1, %r12		# movq $1, %r(6158)
	movq %rbx, %rdi		# movq %r(6141), %rdi
	movq %r12, %rsi		# movq %r(6158), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1018(%rip), %rdi		# leaq .L1018(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6143)
	.L1019:		# .L1019:
	movq $1, %r12		# movq $1, %r(6160)
	movq %rbx, %rdi		# movq %r(6143), %rdi
	movq %r12, %rsi		# movq %r(6160), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1021(%rip), %rdi		# leaq .L1021(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6145)
	.L1022:		# .L1022:
	movq $1, %r12		# movq $1, %r(6162)
	movq %rbx, %rdi		# movq %r(6145), %rdi
	movq %r12, %rsi		# movq %r(6162), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1024(%rip), %rdi		# leaq .L1024(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6147)
	.L1025:		# .L1025:
	movq $1, %r12		# movq $1, %r(6164)
	movq %rbx, %rdi		# movq %r(6147), %rdi
	movq %r12, %rsi		# movq %r(6164), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(6177)
	movq %rbx, -24(%rbp)		# movq %r(6177), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6178)
	movq (%rbx), %r13		# movq (%r(6178)), %r(6165)
	movq %r13, %r12		# movq %r(6165), %r(6179)
	movq %r12, -16(%rbp)		# movq %r(6179), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6180)
	movq %r12, %r13		# movq %r(6180), %r(6166)
	salq $3, %r13		# salq $3, %r(6166)
	movq $8, %rbx		# movq $8, %r(6167)
	movq %r13, %r14		# movq %r(6166), %r(6168)
	addq %rbx, %r14		# addq %r(6167), %r(6168)
	movq %r14, %rdi		# movq %r(6168), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6149)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(6181)
	movq %r13, %rbx		# movq %r(6181), %r(6169)
	salq $3, %rbx		# salq $3, %r(6169)
	movq %r15, %r13		# movq %r(6149), %r(6170)
	addq %rbx, %r13		# addq %r(6169), %r(6170)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6182)
	movq %rbx, %r12		# movq %r(6182), %r(6171)
	salq $3, %r12		# salq $3, %r(6171)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6183)
	movq %rbx, %r14		# movq %r(6183), %r(6184)
	movq %r14, -8(%rbp)		# movq %r(6184), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6185)
	addq %r12, %rbx		# addq %r(6171), %r(6185)
	movq %rbx, -8(%rbp)		# movq %r(6185), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6186)
	movq (%rbx), %r12		# movq (%r(6186)), %r(6173)
	movq %r12, (%r13)		# movq %r(6173), (%r(6170))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6187)
	decq %rbx		# decq %r(6187)
	movq %rbx, -16(%rbp)		# movq %r(6187), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(6174)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6188)
	cmpq %rbx, %r12		# cmpq %r(6174), %r(6188)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6175)
	movq %r15, %r13		# movq %r(6149), %r(6176)
	addq %rbx, %r13		# addq %r(6175), %r(6176)
	movq %r13, %rax		# movq %r(6176), %rax
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
.L1015:
	.quad 1
	.quad 47
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
.L1018:
	.quad 2
	.quad 47
	.quad 50
	.text

#.section .rodata
.align 8
.L1021:
	.quad 1
	.quad 37
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
.L1012:
	.quad 1
	.quad 42
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

