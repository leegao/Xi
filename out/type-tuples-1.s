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
	movq %rdi, %rbx		# movq %rdi, %r(6266)
	movq %rsi, %r12		# movq %rsi, %r(6267)
	leaq .L1077(%rip), %rdi		# leaq .L1077(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6283)
	movq %r13, %rdi		# movq %r(6283), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(6266), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(6267), %rdi
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(6268)
	leaq .L1079(%rip), %rdi		# leaq .L1079(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6323)
	movq %rbx, -24(%rbp)		# movq %r(6323), -24(%rbp)
	leaq .L1080(%rip), %rdi		# leaq .L1080(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(6288)
	movq $16, %rbx		# movq $16, %r(6305)
	movq %rbx, %rdi		# movq %r(6305), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6289)
	movq %r15, %r13		# movq %r(6289), %r(6272)
	movq %r13, %rdi		# movq %r(6272), %rdi
	movq %r12, %rsi		# movq %r(6288), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r15), %r14		# movq 0(%r(6289)), %r(6273)
	movq 8(%r15), %rbx		# movq 8(%r(6289)), %r(6324)
	movq %rbx, -40(%rbp)		# movq %r(6324), -40(%rbp)
	leaq .L1081(%rip), %rdi		# leaq .L1081(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6325)
	movq %rbx, -32(%rbp)		# movq %r(6325), -32(%rbp)
	movq $1, %r13		# movq $1, %r(6307)
	movq %r13, %rbx		# movq %r(6307), %r(6326)
	movq %rbx, -16(%rbp)		# movq %r(6326), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(6308)
	cmpq %rbx, %r14		# cmpq %r(6308), %r(6273)
	je .L1082		# je .L1082
	.L1083:		# .L1083:
	movq $0, %r13		# movq $0, %r(6309)
	movq %r13, %rbx		# movq %r(6309), %r(6327)
	movq %rbx, -16(%rbp)		# movq %r(6327), -16(%rbp)
	jmp .L1082		# jmp .L1082
	.L1082:		# .L1082:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(6328)
	movq %rbx, %rdi		# movq %r(6328), %rdi
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6329)
	movq %rbx, %rsi		# movq %r(6329), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1084(%rip), %rdi		# leaq .L1084(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6293)
	movq $1, %r12		# movq $1, %r(6311)
	movq %r12, %r15		# movq %r(6311), %r(6276)
	movq $0, %rbx		# movq $0, %r(6312)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(6330)
	cmpq %rbx, %r12		# cmpq %r(6312), %r(6330)
	je .L1085		# je .L1085
	.L1086:		# .L1086:
	movq $0, %r12		# movq $0, %r(6313)
	movq %r12, %r15		# movq %r(6313), %r(6276)
	jmp .L1085		# jmp .L1085
	.L1085:		# .L1085:
	movq %r13, %rdi		# movq %r(6293), %rdi
	movq %r15, %rsi		# movq %r(6276), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $16, %rbx		# movq $16, %r(6314)
	movq %rbx, %rdi		# movq %r(6314), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(6295)
	movq %r13, %r12		# movq %r(6295), %r(6278)
	movq %r12, %rdi		# movq %r(6278), %rdi
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6331)
	movq %rbx, %rsi		# movq %r(6331), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r13), %r14		# movq 0(%r(6295)), %r(6279)
	movq 8(%r13), %rbx		# movq 8(%r(6295)), %r(6332)
	movq %rbx, -8(%rbp)		# movq %r(6332), -8(%rbp)
	leaq .L1087(%rip), %rdi		# leaq .L1087(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6297)
	movq $1, %r12		# movq $1, %r(6316)
	movq %r12, %r13		# movq %r(6316), %r(6281)
	movq $42, %r12		# movq $42, %r(6317)
	cmpq %r12, %r14		# cmpq %r(6317), %r(6279)
	je .L1088		# je .L1088
	.L1089:		# .L1089:
	movq $0, %r12		# movq $0, %r(6318)
	movq %r12, %r13		# movq %r(6318), %r(6281)
	jmp .L1088		# jmp .L1088
	.L1088:		# .L1088:
	movq %rbx, %rdi		# movq %r(6297), %rdi
	movq %r13, %rsi		# movq %r(6281), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1090(%rip), %rdi		# leaq .L1090(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6299)
	movq $1, %r12		# movq $1, %r(6320)
	movq %r12, %r15		# movq %r(6320), %r(6282)
	movq $1, %rbx		# movq $1, %r(6321)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6333)
	cmpq %rbx, %r12		# cmpq %r(6321), %r(6333)
	je .L1091		# je .L1091
	.L1092:		# .L1092:
	movq $0, %r12		# movq $0, %r(6322)
	movq %r12, %r15		# movq %r(6322), %r(6282)
	jmp .L1091		# jmp .L1091
	.L1091:		# .L1091:
	movq %r13, %rdi		# movq %r(6299), %rdi
	movq %r15, %rsi		# movq %r(6282), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L1078		# jmp .L1078
	.L1078:		# .L1078:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(6346)
	movq %rbx, -24(%rbp)		# movq %r(6346), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6347)
	movq (%rbx), %r13		# movq (%r(6347)), %r(6334)
	movq %r13, %r12		# movq %r(6334), %r(6348)
	movq %r12, -8(%rbp)		# movq %r(6348), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6349)
	movq %r12, %r13		# movq %r(6349), %r(6335)
	salq $3, %r13		# salq $3, %r(6335)
	movq $8, %rbx		# movq $8, %r(6336)
	movq %r13, %r14		# movq %r(6335), %r(6337)
	addq %rbx, %r14		# addq %r(6336), %r(6337)
	movq %r14, %rdi		# movq %r(6337), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6301)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(6350)
	movq %r13, %rbx		# movq %r(6350), %r(6338)
	salq $3, %rbx		# salq $3, %r(6338)
	movq %r15, %r13		# movq %r(6301), %r(6339)
	addq %rbx, %r13		# addq %r(6338), %r(6339)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6351)
	movq %rbx, %r12		# movq %r(6351), %r(6340)
	salq $3, %r12		# salq $3, %r(6340)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6352)
	movq %rbx, %r14		# movq %r(6352), %r(6353)
	movq %r14, -16(%rbp)		# movq %r(6353), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6354)
	addq %r12, %rbx		# addq %r(6340), %r(6354)
	movq %rbx, -16(%rbp)		# movq %r(6354), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6355)
	movq (%rbx), %r12		# movq (%r(6355)), %r(6342)
	movq %r12, (%r13)		# movq %r(6342), (%r(6339))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6356)
	decq %rbx		# decq %r(6356)
	movq %rbx, -8(%rbp)		# movq %r(6356), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(6343)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6357)
	cmpq %rbx, %r12		# cmpq %r(6343), %r(6357)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6344)
	movq %r15, %r13		# movq %r(6301), %r(6345)
	addq %rbx, %r13		# addq %r(6344), %r(6345)
	movq %r13, %rax		# movq %r(6345), %rax
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
.L1079:
	.quad 2
	.quad 52
	.quad 50
	.text

#.section .rodata
.align 8
.L1090:
	.quad 1
	.quad 51
	.text

#.section .rodata
.align 8
.L1087:
	.quad 1
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
.L1084:
	.quad 1
	.quad 49
	.text

