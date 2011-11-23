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
	movq %rax, %rbx		# movq %rax, %r(1411)
	movq %rbx, %rdi		# movq %r(1411), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(1428)
	movq %rbx, %rdi		# movq %r(1428), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(1429)
	movq %rbx, %rax		# movq %r(1429), %rax
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
	movq $0, %rbx		# movq $0, %r(1430)
	movq %rbx, %rax		# movq %r(1430), %rax
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
	movq $1, %rbx		# movq $1, %r(1431)
	movq %rbx, %rax		# movq %r(1431), %rax
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
	movq %rax, %r13		# movq %rax, %r(1414)
	movq %r13, %rdi		# movq %r(1414), %rdi
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
	movq %rax, %rbx		# movq %rax, %r(1418)
	movq %rbx, %r13		# movq %r(1418), %r(t)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %rbx		# movq %rax, %r(1419)
	movq %rbx, %r14		# movq %r(1419), %r(f)
	leaq .L404(%rip), %rdi		# leaq .L404(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1420)
	movq $1, %rbx		# movq $1, %r(1434)
	movq %rbx, %rbx		# movq %r(1434), %r(1409)
	test %r13, $1		# test %r(t), $1
	je .L405		# je .L405
	.L407:		# .L407:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(1421)
	test %r13, $1		# test %r(1421), $1
	je .L405		# je .L405
	.L406:		# .L406:
	movq $0, %rbx		# movq $0, %r(1435)
	movq %rbx, %rbx		# movq %r(1435), %r(1409)
	.L405:		# .L405:
	movq %r12, %rdi		# movq %r(1420), %rdi
	movq %rbx, %rsi		# movq %r(1409), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L408(%rip), %rdi		# leaq .L408(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1423)
	movq $1, %rbx		# movq $1, %r(1437)
	movq %rbx, %r13		# movq %r(1437), %r(1410)
	movq $1, %rbx		# movq $1, %r(1438)
	movq %r14, %r12		# movq %r(f), %r(1439)
	xorq %rbx, %r12		# xorq %r(1438), %r(1439)
	test %r12, $1		# test %r(1439), $1
	je .L410		# je .L410
	.L411:		# .L411:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1424)
	test %rbx, $1		# test %r(1424), $1
	je .L409		# je .L409
	.L410:		# .L410:
	movq $0, %rbx		# movq $0, %r(1440)
	movq %rbx, %r13		# movq %r(1440), %r(1410)
	.L409:		# .L409:
	movq $1, %r12		# movq $1, %r(1441)
	movq %r13, %rbx		# movq %r(1410), %r(1442)
	xorq %r12, %rbx		# xorq %r(1441), %r(1442)
	movq %r15, %rdi		# movq %r(1423), %rdi
	movq %rbx, %rsi		# movq %r(1442), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1455)
	movq %rbx, -16(%rbp)		# movq %r(1455), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1456)
	movq (%rbx), %r12		# movq (%r(1456)), %r(1443)
	movq %r12, %r12		# movq %r(1443), %r(1457)
	movq %r12, -8(%rbp)		# movq %r(1457), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1458)
	movq %rbx, %rbx		# movq %r(1458), %r(1444)
	salq $3, %rbx		# salq $3, %r(1444)
	movq $8, %r12		# movq $8, %r(1445)
	movq %rbx, %rbx		# movq %r(1444), %r(1446)
	addq %r12, %rbx		# addq %r(1445), %r(1446)
	movq %rbx, %rdi		# movq %r(1446), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1426)
	movq %rbx, %r14		# movq %r(1426), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1459)
	movq %r12, %r12		# movq %r(1459), %r(1447)
	salq $3, %r12		# salq $3, %r(1447)
	movq %r14, %r13		# movq %r(t27), %r(1448)
	addq %r12, %r13		# addq %r(1447), %r(1448)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1460)
	movq %rbx, %r12		# movq %r(1460), %r(1449)
	salq $3, %r12		# salq $3, %r(1449)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1461)
	movq %rbx, %rbx		# movq %r(1461), %r(1462)
	movq %rbx, -24(%rbp)		# movq %r(1462), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1463)
	addq %r12, %rbx		# addq %r(1449), %r(1463)
	movq %rbx, -24(%rbp)		# movq %r(1463), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1464)
	movq (%rbx), %rbx		# movq (%r(1464)), %r(1451)
	movq %rbx, (%r13)		# movq %r(1451), (%r(1448))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1465)
	decq %rbx		# decq %r(1465)
	movq %rbx, -8(%rbp)		# movq %r(1465), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1452)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1466)
	cmpq %rbx, %r12		# cmpq %r(1452), %r(1466)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1453)
	movq %r14, %r12		# movq %r(t27), %r(1454)
	addq %rbx, %r12		# addq %r(1453), %r(1454)
	movq %r12, %rax		# movq %r(1454), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
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

.section .rodata
.align 8
.L408:
	.quad 2
	.quad 35
	.quad 50
	.text

.section .rodata
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

.section .rodata
.align 8
.L404:
	.quad 2
	.quad 35
	.quad 49
	.text

