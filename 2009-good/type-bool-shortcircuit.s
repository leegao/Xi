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
	movq %rax, %rbx		# movq %rax, %r(1437)
	movq %rbx, %rdi		# movq %r(1437), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(1454)
	movq %rbx, %rdi		# movq %r(1454), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(1455)
	movq %rbx, %rax		# movq %r(1455), %rax
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
	movq $0, %rbx		# movq $0, %r(1456)
	movq %rbx, %rax		# movq %r(1456), %rax
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
	movq $1, %rbx		# movq $1, %r(1457)
	movq %rbx, %rax		# movq %r(1457), %rax
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
	movq %rax, %r13		# movq %rax, %r(1440)
	movq %r13, %rdi		# movq %r(1440), %rdi
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
	movq %rax, %rbx		# movq %rax, %r(1444)
	movq %rbx, %r13		# movq %r(1444), %r(t)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %rbx		# movq %rax, %r(1445)
	movq %rbx, %r14		# movq %r(1445), %r(f)
	leaq .L404(%rip), %rdi		# leaq .L404(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1446)
	movq $1, %rbx		# movq $1, %r(1460)
	movq %rbx, %rbx		# movq %r(1460), %r(1435)
	testq $1, %r13		# testq $1, %r(t)
	jne .L405		# jne .L405
	.L407:		# .L407:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(1447)
	testq $1, %r13		# testq $1, %r(1447)
	jne .L405		# jne .L405
	.L406:		# .L406:
	movq $0, %rbx		# movq $0, %r(1461)
	movq %rbx, %rbx		# movq %r(1461), %r(1435)
	.L405:		# .L405:
	movq %r12, %rdi		# movq %r(1446), %rdi
	movq %rbx, %rsi		# movq %r(1435), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L408(%rip), %rdi		# leaq .L408(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1449)
	movq $1, %rbx		# movq $1, %r(1463)
	movq %rbx, %r13		# movq %r(1463), %r(1436)
	movq $1, %rbx		# movq $1, %r(1464)
	movq %r14, %r12		# movq %r(f), %r(1465)
	xorq %rbx, %r12		# xorq %r(1464), %r(1465)
	testq $1, %r12		# testq $1, %r(1465)
	jne .L410		# jne .L410
	.L411:		# .L411:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1450)
	testq $1, %rbx		# testq $1, %r(1450)
	jne .L409		# jne .L409
	.L410:		# .L410:
	movq $0, %rbx		# movq $0, %r(1466)
	movq %rbx, %r13		# movq %r(1466), %r(1436)
	.L409:		# .L409:
	movq $1, %r12		# movq $1, %r(1467)
	movq %r13, %rbx		# movq %r(1436), %r(1468)
	xorq %r12, %rbx		# xorq %r(1467), %r(1468)
	movq %r15, %rdi		# movq %r(1449), %rdi
	movq %rbx, %rsi		# movq %r(1468), %rsi
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1484)
	movq %rbx, -32(%rbp)		# movq %r(1484), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1485)
	movq (%rbx), %r12		# movq (%r(1485)), %r(1469)
	movq %r12, %r12		# movq %r(1469), %r(1486)
	movq %r12, -16(%rbp)		# movq %r(1486), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1487)
	movq %rbx, %rbx		# movq %r(1487), %r(1470)
	salq $3, %rbx		# salq $3, %r(1470)
	movq $8, %r12		# movq $8, %r(1471)
	movq %rbx, %rbx		# movq %r(1470), %r(1472)
	addq %r12, %rbx		# addq %r(1471), %r(1472)
	movq %rbx, %rdi		# movq %r(1472), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1452)
	movq %r12, %r12		# movq %r(1452), %r(1488)
	movq %r12, -40(%rbp)		# movq %r(1488), -40(%rbp)
	.L16:		# .L16:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1489)
	movq %r13, %r13		# movq %r(1489), %r(1473)
	salq $3, %r13		# salq $3, %r(1473)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1490)
	movq %rbx, %rbx		# movq %r(1490), %r(1491)
	movq %rbx, -24(%rbp)		# movq %r(1491), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1492)
	addq %r13, %r12		# addq %r(1473), %r(1492)
	movq %r12, -24(%rbp)		# movq %r(1492), -24(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1493)
	movq %r13, %r13		# movq %r(1493), %r(1475)
	salq $3, %r13		# salq $3, %r(1475)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1494)
	movq %rbx, %rbx		# movq %r(1494), %r(1481)
	movq %rbx, -8(%rbp)		# movq %r(1481), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1482)
	addq %r13, %r12		# addq %r(1475), %r(1482)
	movq %r12, -8(%rbp)		# movq %r(1482), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1483)
	movq (%rbx), %rbx		# movq (%r(1483)), %r(1477)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1495)
	movq %rbx, (%r12)		# movq %r(1477), (%r(1495))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1496)
	decq %rbx		# decq %r(1496)
	movq %rbx, -16(%rbp)		# movq %r(1496), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1478)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1497)
	cmpq %rbx, %r12		# cmpq %r(1478), %r(1497)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1479)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1498)
	movq %r13, %r13		# movq %r(1498), %r(1480)
	addq %rbx, %r13		# addq %r(1479), %r(1480)
	movq %r13, %rax		# movq %r(1480), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
.L408:
	.quad 2
	.quad 35
	.quad 50
	.text

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
.L404:
	.quad 2
	.quad 35
	.quad 49
	.text

