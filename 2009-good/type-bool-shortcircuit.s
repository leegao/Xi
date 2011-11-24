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
	leaq .L399(%rip), %rdi		# leaq .L399(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1456)
	movq %rbx, %rdi		# movq %r(1456), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(1473)
	movq %rbx, %rdi		# movq %r(1473), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(1474)
	movq %rbx, %rax		# movq %r(1474), %rax
	jmp .L398		# jmp .L398
	.L398:		# .L398:
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
	movq $0, %rbx		# movq $0, %r(1475)
	movq %rbx, %rax		# movq %r(1475), %rax
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
	movq $1, %rbx		# movq $1, %r(1476)
	movq %rbx, %rax		# movq %r(1476), %rax
	jmp .L401		# jmp .L401
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
	leaq .L403(%rip), %rdi		# leaq .L403(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1459)
	movq %r13, %rdi		# movq %r(1459), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L402:		# .L402:
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
	movq %rax, %rbx		# movq %rax, %r(1463)
	movq %rbx, %r13		# movq %r(1463), %r(t)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %rbx		# movq %rax, %r(1464)
	movq %rbx, %r14		# movq %r(1464), %r(f)
	leaq .L405(%rip), %rdi		# leaq .L405(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1465)
	movq $1, %rbx		# movq $1, %r(1479)
	testq $1, %r13		# testq $1, %r(t)
	jne .L406		# jne .L406
	.L408:		# .L408:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(1466)
	testq $1, %r13		# testq $1, %r(1466)
	jne .L406		# jne .L406
	.L407:		# .L407:
	movq $0, %rbx		# movq $0, %r(1480)
	.L406:		# .L406:
	movq %r12, %rdi		# movq %r(1465), %rdi
	movq %rbx, %rsi		# movq %r(1454), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L409(%rip), %rdi		# leaq .L409(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(1468)
	movq $1, %rbx		# movq $1, %r(1482)
	movq %rbx, %r13		# movq %r(1482), %r(1455)
	movq $1, %rbx		# movq $1, %r(1483)
	movq %r14, %r12		# movq %r(f), %r(1484)
	xorq %rbx, %r12		# xorq %r(1483), %r(1484)
	testq $1, %r12		# testq $1, %r(1484)
	jne .L411		# jne .L411
	.L412:		# .L412:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1469)
	testq $1, %rbx		# testq $1, %r(1469)
	jne .L410		# jne .L410
	.L411:		# .L411:
	movq $0, %rbx		# movq $0, %r(1485)
	movq %rbx, %r13		# movq %r(1485), %r(1455)
	.L410:		# .L410:
	movq $1, %r12		# movq $1, %r(1486)
	movq %r13, %rbx		# movq %r(1455), %r(1487)
	xorq %r12, %rbx		# xorq %r(1486), %r(1487)
	movq %r15, %rdi		# movq %r(1468), %rdi
	movq %rbx, %rsi		# movq %r(1487), %rsi
	call _Itest_paib		# call _Itest_paib
	.L404:		# .L404:
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
	movq %rdi, %rbx		# movq %rdi, %r(1503)
	movq %rbx, -32(%rbp)		# movq %r(1503), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1504)
	movq (%rbx), %r12		# movq (%r(1504)), %r(1488)
	movq %r12, -24(%rbp)		# movq %r(1505), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1506)
	salq $3, %rbx		# salq $3, %r(1489)
	movq $8, %r12		# movq $8, %r(1490)
	addq %r12, %rbx		# addq %r(1490), %r(1491)
	movq %rbx, %rdi		# movq %r(1491), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1471)
	movq %r12, -40(%rbp)		# movq %r(1507), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1508)
	salq $3, %r13		# salq $3, %r(1492)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1509)
	movq %rbx, -16(%rbp)		# movq %r(1510), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1511)
	addq %r13, %r12		# addq %r(1492), %r(1511)
	movq %r12, -16(%rbp)		# movq %r(1511), -16(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1512)
	salq $3, %r13		# salq $3, %r(1494)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1513)
	movq %rbx, -8(%rbp)		# movq %r(1500), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1501)
	addq %r13, %r12		# addq %r(1494), %r(1501)
	movq %r12, -8(%rbp)		# movq %r(1501), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1502)
	movq (%rbx), %rbx		# movq (%r(1502)), %r(1496)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1514)
	movq %rbx, (%r12)		# movq %r(1496), (%r(1514))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1515)
	decq %rbx		# decq %r(1515)
	movq %rbx, -24(%rbp)		# movq %r(1515), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1497)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1516)
	cmpq %rbx, %r12		# cmpq %r(1497), %r(1516)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1498)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1517)
	addq %rbx, %r13		# addq %r(1498), %r(1499)
	movq %r13, %rax		# movq %r(1499), %rax
	.L18:		# .L18:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L409:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L405:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L403:
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
.L399:
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

