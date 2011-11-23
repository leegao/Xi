.att_syntax prefix
.text
.globl _Iunreachable_b
_Iunreachable_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq .L398(%rip), %rdi		# leaq .L398(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1357)
	movq %rbx, %rdi		# movq %r(1357), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(1374)
	movq %rbx, %rdi		# movq %r(1374), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(1375)
	movq %rbx, %rax		# movq %r(1375), %rax
	jmp .L397		# jmp .L397
	.L397:		# .L397:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstFalse_b
_IconstFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %rbx		# movq $0, %r(1376)
	movq %rbx, %rax		# movq %r(1376), %rax
	jmp .L399		# jmp .L399
	.L399:		# .L399:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstTrue_b
_IconstTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(1377)
	movq %rbx, %rax		# movq %r(1377), %rax
	jmp .L400		# jmp .L400
	.L400:		# .L400:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	leaq .L402(%rip), %rdi		# leaq .L402(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1360)
	movq %r13, %rdi		# movq %r(1360), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L401:		# .L401:
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
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %rbx		# movq %rax, %r(1364)
	movq %rbx, %r13		# movq %r(1364), %r(t)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %rbx		# movq %rax, %r(1365)
	movq %rbx, %r14		# movq %r(1365), %r(f)
	leaq .L404(%rip), %rdi		# leaq .L404(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1366)
	movq $1, %rbx		# movq $1, %r(1380)
	testq $1, %r13		# testq $1, %r(t)
	jne .L405		# jne .L405
	.L407:		# .L407:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(1367)
	testq $1, %r13		# testq $1, %r(1367)
	jne .L405		# jne .L405
	.L406:		# .L406:
	movq $0, %rbx		# movq $0, %r(1381)
	.L405:		# .L405:
	movq %r12, %rdi		# movq %r(1366), %rdi
	movq %rbx, %rsi		# movq %r(1355), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L408(%rip), %rdi		# leaq .L408(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1369)
	movq $1, %rbx		# movq $1, %r(1383)
	movq %rbx, %r13		# movq %r(1383), %r(1356)
	movq $1, %rbx		# movq $1, %r(1384)
	movq %r14, %r12		# movq %r(f), %r(1385)
	xorq %rbx, %r12		# xorq %r(1384), %r(1385)
	testq $1, %r12		# testq $1, %r(1385)
	jne .L410		# jne .L410
	.L411:		# .L411:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1370)
	testq $1, %rbx		# testq $1, %r(1370)
	jne .L409		# jne .L409
	.L410:		# .L410:
	movq $0, %rbx		# movq $0, %r(1386)
	movq %rbx, %r13		# movq %r(1386), %r(1356)
	.L409:		# .L409:
	movq $1, %r12		# movq $1, %r(1387)
	movq %r13, %rbx		# movq %r(1356), %r(1388)
	xorq %r12, %rbx		# xorq %r(1387), %r(1388)
	movq %r15, %rdi		# movq %r(1369), %rdi
	movq %rbx, %rsi		# movq %r(1388), %rsi
	call _Itest_paib		# call _Itest_paib
	.L403:		# .L403:
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
	movq %rdi, %rbx		# movq %rdi, %r(1401)
	movq %rbx, -16(%rbp)		# movq %r(1401), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1402)
	movq (%rbx), %rbx		# movq (%r(1402)), %r(1389)
	movq %rbx, %r14		# movq %r(1389), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1390)
	salq $3, %rbx		# salq $3, %r(1390)
	movq $8, %r12		# movq $8, %r(1391)
	addq %r12, %rbx		# addq %r(1391), %r(1392)
	movq %rbx, %rdi		# movq %r(1392), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1372)
	movq %rbx, %r15		# movq %r(1372), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(1393)
	salq $3, %rbx		# salq $3, %r(1393)
	movq %r15, %r12		# movq %r(t27), %r(1394)
	addq %rbx, %r12		# addq %r(1393), %r(1394)
	movq %r14, %r13		# movq %r(t10), %r(1395)
	salq $3, %r13		# salq $3, %r(1395)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1403)
	movq %rbx, -8(%rbp)		# movq %r(1404), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1405)
	addq %r13, %rbx		# addq %r(1395), %r(1405)
	movq %rbx, -8(%rbp)		# movq %r(1405), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1406)
	movq (%rbx), %rbx		# movq (%r(1406)), %r(1397)
	movq %rbx, (%r12)		# movq %r(1397), (%r(1394))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1398)
	cmpq %rbx, %r14		# cmpq %r(1398), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1399)
	movq %r15, %r12		# movq %r(t27), %r(1400)
	addq %rbx, %r12		# addq %r(1399), %r(1400)
	movq %r12, %rax		# movq %r(1400), %rax
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
.L402:
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
.L404:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L398:
	.quad 28
	.quad 85
	.quad 110
	.quad 114
	.quad 101
	.quad 97
	.quad 99
	.quad 104
	.quad 97
	.quad 98
	.quad 108
	.quad 101
	.quad 32
	.quad 102
	.quad 117
	.quad 110
	.quad 99
	.quad 116
	.quad 105
	.quad 111
	.quad 110
	.quad 32
	.quad 99
	.quad 97
	.quad 108
	.quad 108
	.quad 101
	.quad 100
	.quad 33
	.text

#.section .rodata
.align 8
.L408:
	.quad 2
	.quad 35
	.quad 50
	.text

