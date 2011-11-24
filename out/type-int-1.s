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
	movq %rax, %r13		# movq %rax, %r(5736)
	movq %r13, %rdi		# movq %r(5736), %rdi
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
	movq %rax, %rbx		# movq %rax, %r(5740)
	.L1041:		# .L1041:
	.L1043:		# .L1043:
	movq $1, %r12		# movq $1, %r(5755)
	movq %rbx, %rdi		# movq %r(5740), %rdi
	movq %r12, %rsi		# movq %r(5755), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1045(%rip), %rdi		# leaq .L1045(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5742)
	.L1046:		# .L1046:
	.L1048:		# .L1048:
	movq $1, %r12		# movq $1, %r(5757)
	movq %rbx, %rdi		# movq %r(5742), %rdi
	movq %r12, %rsi		# movq %r(5757), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1050(%rip), %rdi		# leaq .L1050(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5744)
	movq $1, %r12		# movq $1, %r(5759)
	.L1052:		# .L1052:
	movq $0, %r15		# movq $0, %r(5760)
	jmp .L1051		# jmp .L1051
	.L1051:		# .L1051:
	movq $0, %r14		# movq $0, %r(5761)
	cmpq %r14, %r15		# cmpq %r(5761), %r(5730)
	je .L1053		# je .L1053
	.L1054:		# .L1054:
	movq $0, %r12		# movq $0, %r(5762)
	jmp .L1053		# jmp .L1053
	.L1053:		# .L1053:
	movq %r13, %rdi		# movq %r(5744), %rdi
	movq %r12, %rsi		# movq %r(5731), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1055(%rip), %rdi		# leaq .L1055(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5746)
	movq $1, %r12		# movq $1, %r(5764)
	.L1057:		# .L1057:
	movq $0, %r15		# movq $0, %r(5765)
	jmp .L1056		# jmp .L1056
	.L1056:		# .L1056:
	movq $0, %r14		# movq $0, %r(5766)
	cmpq %r14, %r15		# cmpq %r(5766), %r(5732)
	je .L1058		# je .L1058
	.L1059:		# .L1059:
	movq $0, %r12		# movq $0, %r(5767)
	jmp .L1058		# jmp .L1058
	.L1058:		# .L1058:
	movq %r13, %rdi		# movq %r(5746), %rdi
	movq %r12, %rsi		# movq %r(5733), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1060(%rip), %rdi		# leaq .L1060(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5748)
	.L1062:		# .L1062:
	movq $0, %rbx		# movq $0, %r(5769)
	jmp .L1061		# jmp .L1061
	.L1061:		# .L1061:
	movq $1, %r13		# movq $1, %r(5770)
	xorq %r13, %rbx		# xorq %r(5770), %r(5771)
	movq %r12, %rdi		# movq %r(5748), %rdi
	movq %rbx, %rsi		# movq %r(5771), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1063(%rip), %rdi		# leaq .L1063(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5750)
	.L1064:		# .L1064:
	movq $1, %r12		# movq $1, %r(5773)
	movq %rbx, %rdi		# movq %r(5750), %rdi
	movq %r12, %rsi		# movq %r(5773), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(5786)
	movq %rbx, -16(%rbp)		# movq %r(5786), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5787)
	movq (%rbx), %r12		# movq (%r(5787)), %r(5774)
	movq %r12, -24(%rbp)		# movq %r(5788), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5789)
	salq $3, %rbx		# salq $3, %r(5775)
	movq $8, %r12		# movq $8, %r(5776)
	addq %r12, %rbx		# addq %r(5776), %r(5777)
	movq %rbx, %rdi		# movq %r(5777), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5752)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5790)
	salq $3, %r12		# salq $3, %r(5778)
	movq %r14, %r13		# movq %r(5752), %r(5779)
	addq %r12, %r13		# addq %r(5778), %r(5779)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5791)
	movq %rbx, %r12		# movq %r(5791), %r(5780)
	salq $3, %r12		# salq $3, %r(5780)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5792)
	movq %rbx, -8(%rbp)		# movq %r(5793), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5794)
	addq %r12, %rbx		# addq %r(5780), %r(5794)
	movq %rbx, -8(%rbp)		# movq %r(5794), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5795)
	movq (%rbx), %rbx		# movq (%r(5795)), %r(5782)
	movq %rbx, (%r13)		# movq %r(5782), (%r(5779))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5796)
	decq %rbx		# decq %r(5796)
	movq %rbx, -24(%rbp)		# movq %r(5796), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(5783)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5797)
	cmpq %rbx, %r12		# cmpq %r(5783), %r(5797)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5784)
	movq %r14, %r12		# movq %r(5752), %r(5785)
	addq %rbx, %r12		# addq %r(5784), %r(5785)
	movq %r12, %rax		# movq %r(5785), %rax
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

#.section .rodata
.align 8
.L1045:
	.quad 2
	.quad 60
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
.L1050:
	.quad 1
	.quad 62
	.text

