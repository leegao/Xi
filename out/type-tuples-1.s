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
	movq %rax, %r13		# movq %rax, %r(5776)
	movq %r13, %rdi		# movq %r(5776), %rdi
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
	movq %rax, %rbx		# movq %rax, %r(5816)
	movq %rbx, -16(%rbp)		# movq %r(5816), -16(%rbp)
	leaq .L1080(%rip), %rdi		# leaq .L1080(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5781)
	movq $16, %rbx		# movq $16, %r(5798)
	movq %rbx, %rdi		# movq %r(5798), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5782)
	movq %r15, %r13		# movq %r(5782), %r(5765)
	movq %r13, %rdi		# movq %r(5765), %rdi
	movq %r12, %rsi		# movq %r(5781), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r15), %r14		# movq 0(%r(5782)), %r(n)
	movq 8(%r15), %rbx		# movq 8(%r(5782)), %r(5817)
	movq %rbx, -8(%rbp)		# movq %r(5817), -8(%rbp)
	leaq .L1081(%rip), %rdi		# leaq .L1081(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5818)
	movq %rbx, -24(%rbp)		# movq %r(5818), -24(%rbp)
	movq $1, %r12		# movq $1, %r(5800)
	movq $0, %rbx		# movq $0, %r(5801)
	cmpq %rbx, %r14		# cmpq %r(5801), %r(n)
	je .L1082		# je .L1082
	.L1083:		# .L1083:
	movq $0, %r12		# movq $0, %r(5802)
	jmp .L1082		# jmp .L1082
	.L1082:		# .L1082:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5819)
	movq %rbx, %rdi		# movq %r(5819), %rdi
	movq %r12, %rsi		# movq %r(5768), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1084(%rip), %rdi		# leaq .L1084(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5786)
	movq $1, %rbx		# movq $1, %r(5804)
	movq $0, %r13		# movq $0, %r(5805)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5820)
	cmpq %r13, %r14		# cmpq %r(5805), %r(5820)
	je .L1085		# je .L1085
	.L1086:		# .L1086:
	movq $0, %rbx		# movq $0, %r(5806)
	jmp .L1085		# jmp .L1085
	.L1085:		# .L1085:
	movq %r12, %rdi		# movq %r(5786), %rdi
	movq %rbx, %rsi		# movq %r(5769), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $16, %rbx		# movq $16, %r(5807)
	movq %rbx, %rdi		# movq %r(5807), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5788)
	movq %r13, %r12		# movq %r(5788), %r(5771)
	movq %r12, %rdi		# movq %r(5771), %rdi
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5821)
	movq %rbx, %rsi		# movq %r(5821), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r13), %r15		# movq 0(%r(5788)), %r(n2)
	movq 8(%r13), %r14		# movq 8(%r(5788)), %r(ok2)
	leaq .L1087(%rip), %rdi		# leaq .L1087(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5790)
	movq $1, %r12		# movq $1, %r(5809)
	movq %r12, %rbx		# movq %r(5809), %r(5774)
	movq $42, %r12		# movq $42, %r(5810)
	cmpq %r12, %r15		# cmpq %r(5810), %r(n2)
	je .L1088		# je .L1088
	.L1089:		# .L1089:
	movq $0, %rbx		# movq $0, %r(5811)
	jmp .L1088		# jmp .L1088
	.L1088:		# .L1088:
	movq %r13, %rdi		# movq %r(5790), %rdi
	movq %rbx, %rsi		# movq %r(5774), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1090(%rip), %rdi		# leaq .L1090(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5792)
	movq $1, %r15		# movq $1, %r(5813)
	movq $1, %r13		# movq $1, %r(5814)
	cmpq %r13, %r14		# cmpq %r(5814), %r(ok2)
	je .L1091		# je .L1091
	.L1092:		# .L1092:
	movq $0, %r15		# movq $0, %r(5815)
	jmp .L1091		# jmp .L1091
	.L1091:		# .L1091:
	movq %r12, %rdi		# movq %r(5792), %rdi
	movq %r15, %rsi		# movq %r(5775), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(5834)
	movq %rbx, -24(%rbp)		# movq %r(5834), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5835)
	movq (%rbx), %r12		# movq (%r(5835)), %r(5822)
	movq %r12, -16(%rbp)		# movq %r(5836), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5837)
	salq $3, %rbx		# salq $3, %r(5823)
	movq $8, %r12		# movq $8, %r(5824)
	addq %r12, %rbx		# addq %r(5824), %r(5825)
	movq %rbx, %rdi		# movq %r(5825), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5794)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5838)
	salq $3, %r12		# salq $3, %r(5826)
	movq %r14, %r13		# movq %r(5794), %r(5827)
	addq %r12, %r13		# addq %r(5826), %r(5827)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5839)
	movq %rbx, %r12		# movq %r(5839), %r(5828)
	salq $3, %r12		# salq $3, %r(5828)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5840)
	movq %rbx, -8(%rbp)		# movq %r(5841), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5842)
	addq %r12, %rbx		# addq %r(5828), %r(5842)
	movq %rbx, -8(%rbp)		# movq %r(5842), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5843)
	movq (%rbx), %rbx		# movq (%r(5843)), %r(5830)
	movq %rbx, (%r13)		# movq %r(5830), (%r(5827))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5844)
	decq %rbx		# decq %r(5844)
	movq %rbx, -16(%rbp)		# movq %r(5844), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(5831)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5845)
	cmpq %rbx, %r12		# cmpq %r(5831), %r(5845)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5832)
	movq %r14, %r12		# movq %r(5794), %r(5833)
	addq %rbx, %r12		# addq %r(5832), %r(5833)
	movq %r12, %rax		# movq %r(5833), %rax
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
.L1079:
	.quad 2
	.quad 52
	.quad 50
	.text

#.section .rodata
.align 8
.L1080:
	.quad 2
	.quad 63
	.quad 63
	.text

#.section .rodata
.align 8
.L1090:
	.quad 1
	.quad 51
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
.L1081:
	.quad 1
	.quad 48
	.text

#.section .rodata
.align 8
.L1087:
	.quad 1
	.quad 50
	.text

