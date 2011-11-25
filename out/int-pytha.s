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
	movq %r13, %rbx		# movq %r(a), %r(6394)
	imulq %r13, %rbx		# imulq %r(a), %r(6394)
	movq %rbx, %rax		# movq %r(6394), %rax
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
	movq %rax, %r14		# movq %rax, %r(6379)
	movq %r12, %rdi		# movq %r(b), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %rbx		# movq %rax, %r(6380)
	movq %r14, %r12		# movq %r(6379), %r(6395)
	addq %rbx, %r12		# addq %r(6380), %r(6395)
	movq %r12, %r15		# movq %r(6395), %r(goal)
	movq $0, %r12		# movq $0, %r(6396)
	movq %r12, %r14		# movq %r(6396), %r(h)
	jmp .L1093		# jmp .L1093
	.L1093:		# .L1093:
	movq %r14, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %rbx		# movq %rax, %r(6381)
	cmpq %r15, %rbx		# cmpq %r(goal), %r(6381)
	jge .L1095		# jge .L1095
	.L1094:		# .L1094:
	incq %r14		# incq %r(h)
	jmp .L1093		# jmp .L1093
	.L1095:		# .L1095:
	movq %r14, %rdi		# movq %r(h), %rdi
	call _Isqr_ii		# call _Isqr_ii
	movq %rax, %rbx		# movq %rax, %r(6382)
	cmpq %r15, %rbx		# cmpq %r(goal), %r(6382)
	jne .L1097		# jne .L1097
	.L1096:		# .L1096:
	movq %r14, %rax		# movq %r(h), %rax
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
	movq $1, %rbx		# movq $1, %r(6397)
	movq %r14, %r13		# movq %r(h), %r(6398)
	subq %rbx, %r13		# subq %r(6397), %r(6398)
	movq %r13, %rax		# movq %r(6398), %rax
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
	movq %rax, %r13		# movq %rax, %r(6383)
	movq %r13, %rdi		# movq %r(6383), %rdi
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
	movq %rax, %r13		# movq %rax, %r(6387)
	movq $1, %r12		# movq $1, %r(6401)
	movq %r12, %rbx		# movq %r(6401), %r(6377)
	movq $3, %r12		# movq $3, %r(6402)
	movq $4, %r14		# movq $4, %r(6403)
	movq %r12, %rdi		# movq %r(6402), %rdi
	movq %r14, %rsi		# movq %r(6403), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %r12		# movq %rax, %r(6388)
	movq $5, %r14		# movq $5, %r(6404)
	cmpq %r14, %r12		# cmpq %r(6404), %r(6388)
	je .L1103		# je .L1103
	.L1104:		# .L1104:
	movq $0, %r12		# movq $0, %r(6405)
	movq %r12, %rbx		# movq %r(6405), %r(6377)
	jmp .L1103		# jmp .L1103
	.L1103:		# .L1103:
	movq %r13, %rdi		# movq %r(6387), %rdi
	movq %rbx, %rsi		# movq %r(6377), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L1105(%rip), %rdi		# leaq .L1105(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(6390)
	movq $1, %r12		# movq $1, %r(6407)
	movq %r12, %rbx		# movq %r(6407), %r(6378)
	movq $21, %r12		# movq $21, %r(6408)
	movq $15, %r14		# movq $15, %r(6409)
	movq %r12, %rdi		# movq %r(6408), %rdi
	movq %r14, %rsi		# movq %r(6409), %rsi
	call _Ihypo_iii		# call _Ihypo_iii
	movq %rax, %r12		# movq %rax, %r(6391)
	movq $25, %r14		# movq $25, %r(6410)
	cmpq %r14, %r12		# cmpq %r(6410), %r(6391)
	je .L1106		# je .L1106
	.L1107:		# .L1107:
	movq $0, %r12		# movq $0, %r(6411)
	movq %r12, %rbx		# movq %r(6411), %r(6378)
	jmp .L1106		# jmp .L1106
	.L1106:		# .L1106:
	movq %r13, %rdi		# movq %r(6390), %rdi
	movq %rbx, %rsi		# movq %r(6378), %rsi
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(6424)
	movq %rbx, -24(%rbp)		# movq %r(6424), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6425)
	movq (%rbx), %r13		# movq (%r(6425)), %r(6412)
	movq %r13, %r12		# movq %r(6412), %r(6426)
	movq %r12, -16(%rbp)		# movq %r(6426), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6427)
	movq %r12, %r13		# movq %r(6427), %r(6413)
	salq $3, %r13		# salq $3, %r(6413)
	movq $8, %rbx		# movq $8, %r(6414)
	movq %r13, %r14		# movq %r(6413), %r(6415)
	addq %rbx, %r14		# addq %r(6414), %r(6415)
	movq %r14, %rdi		# movq %r(6415), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6393)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(6428)
	movq %r13, %rbx		# movq %r(6428), %r(6416)
	salq $3, %rbx		# salq $3, %r(6416)
	movq %r15, %r13		# movq %r(6393), %r(6417)
	addq %rbx, %r13		# addq %r(6416), %r(6417)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6429)
	movq %rbx, %r12		# movq %r(6429), %r(6418)
	salq $3, %r12		# salq $3, %r(6418)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6430)
	movq %rbx, %r14		# movq %r(6430), %r(6431)
	movq %r14, -8(%rbp)		# movq %r(6431), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6432)
	addq %r12, %rbx		# addq %r(6418), %r(6432)
	movq %rbx, -8(%rbp)		# movq %r(6432), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6433)
	movq (%rbx), %r12		# movq (%r(6433)), %r(6420)
	movq %r12, (%r13)		# movq %r(6420), (%r(6417))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6434)
	decq %rbx		# decq %r(6434)
	movq %rbx, -16(%rbp)		# movq %r(6434), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(6421)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6435)
	cmpq %rbx, %r12		# cmpq %r(6421), %r(6435)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(6422)
	movq %r15, %r13		# movq %r(6393), %r(6423)
	addq %rbx, %r13		# addq %r(6422), %r(6423)
	movq %r13, %rax		# movq %r(6423), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
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
.L1105:
	.quad 2
	.quad 35
	.quad 50
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

