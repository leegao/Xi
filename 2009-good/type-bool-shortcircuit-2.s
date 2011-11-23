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
	leaq .L358(%rip), %rdi		# leaq .L358(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1349)
	movq %rbx, %rdi		# movq %r(1349), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(1375)
	movq %rbx, %rdi		# movq %r(1375), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(1376)
	movq %rbx, %rax		# movq %r(1376), %rax
	jmp .L357		# jmp .L357
	.L357:		# .L357:
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
	movq $0, %rbx		# movq $0, %r(1377)
	movq %rbx, %rax		# movq %r(1377), %rax
	jmp .L359		# jmp .L359
	.L359:		# .L359:
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
	movq $1, %rbx		# movq $1, %r(1378)
	movq %rbx, %rax		# movq %r(1378), %rax
	jmp .L360		# jmp .L360
	.L360:		# .L360:
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
	leaq .L362(%rip), %rdi		# leaq .L362(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1352)
	movq %r13, %rdi		# movq %r(1352), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L361:		# .L361:
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
	movq %rax, %r13		# movq %rax, %r(1356)
	movq %r13, %r13		# movq %r(1356), %r(t)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r12		# movq %rax, %r(1357)
	movq %r12, %r12		# movq %r(1357), %r(f)
	testq $1, %r13		# testq $1, %r(t)
	jne .L364		# jne .L364
	.L366:		# .L366:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r14		# movq %rax, %r(1358)
	movq $1, %r13		# movq $1, %r(1380)
	movq %r14, %r14		# movq %r(1358), %r(1381)
	xorq %r13, %r14		# xorq %r(1380), %r(1381)
	testq $1, %r14		# testq $1, %r(1381)
	jne .L365		# jne .L365
	.L364:		# .L364:
	leaq .L367(%rip), %rdi		# leaq .L367(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1359)
	movq $1, %r13		# movq $1, %r(1383)
	movq %rbx, %rdi		# movq %r(1359), %rdi
	movq %r13, %rsi		# movq %r(1383), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L368		# jmp .L368
	.L365:		# .L365:
	leaq .L369(%rip), %rdi		# leaq .L369(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1361)
	movq $0, %r13		# movq $0, %r(1385)
	movq %rbx, %rdi		# movq %r(1361), %rdi
	movq %r13, %rsi		# movq %r(1385), %rsi
	call _Itest_paib		# call _Itest_paib
	.L368:		# .L368:
	movq $1, %rbx		# movq $1, %r(1386)
	movq %r12, %r14		# movq %r(f), %r(1387)
	xorq %rbx, %r14		# xorq %r(1386), %r(1387)
	testq $1, %r14		# testq $1, %r(1387)
	jne .L371		# jne .L371
	.L372:		# .L372:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r14		# movq %rax, %r(1363)
	movq $1, %r13		# movq $1, %r(1388)
	movq %r14, %r14		# movq %r(1363), %r(1389)
	xorq %r13, %r14		# xorq %r(1388), %r(1389)
	testq $1, %r14		# testq $1, %r(1389)
	jne .L371		# jne .L371
	.L370:		# .L370:
	leaq .L373(%rip), %rdi		# leaq .L373(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1364)
	movq $0, %r13		# movq $0, %r(1391)
	movq %rbx, %rdi		# movq %r(1364), %rdi
	movq %r13, %rsi		# movq %r(1391), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L374		# jmp .L374
	.L371:		# .L371:
	leaq .L375(%rip), %rdi		# leaq .L375(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1366)
	movq $1, %r13		# movq $1, %r(1393)
	movq %rbx, %rdi		# movq %r(1366), %rdi
	movq %r13, %rsi		# movq %r(1393), %rsi
	call _Itest_paib		# call _Itest_paib
	.L374:		# .L374:
	movq $1, %r13		# movq $1, %r(1394)
	movq %r13, %r13		# movq %r(1394), %r(1348)
	movq $1, %rbx		# movq $1, %r(1395)
	movq %r12, %r12		# movq %r(f), %r(1396)
	xorq %rbx, %r12		# xorq %r(1395), %r(1396)
	testq $1, %r12		# testq $1, %r(1396)
	jne .L377		# jne .L377
	.L378:		# .L378:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1368)
	testq $1, %rbx		# testq $1, %r(1368)
	jne .L376		# jne .L376
	.L377:		# .L377:
	movq $0, %r13		# movq $0, %r(1397)
	movq %r13, %r13		# movq %r(1397), %r(1348)
	.L376:		# .L376:
	movq $1, %rbx		# movq $1, %r(1398)
	movq %r13, %r13		# movq %r(1348), %r(1399)
	xorq %rbx, %r13		# xorq %r(1398), %r(1399)
	movq $1, %rbx		# movq $1, %r(1400)
	movq %r13, %r13		# movq %r(1399), %r(1401)
	xorq %rbx, %r13		# xorq %r(1400), %r(1401)
	testq $1, %r13		# testq $1, %r(1401)
	jne .L380		# jne .L380
	.L379:		# .L379:
	leaq .L381(%rip), %rdi		# leaq .L381(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1369)
	movq $1, %r12		# movq $1, %r(1403)
	movq %rbx, %rdi		# movq %r(1369), %rdi
	movq %r12, %rsi		# movq %r(1403), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L382		# jmp .L382
	.L380:		# .L380:
	leaq .L383(%rip), %rdi		# leaq .L383(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1371)
	movq $0, %r12		# movq $0, %r(1405)
	movq %rbx, %rdi		# movq %r(1371), %rdi
	movq %r12, %rsi		# movq %r(1405), %rsi
	call _Itest_paib		# call _Itest_paib
	.L382:		# .L382:
	.L363:		# .L363:
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
	movq %rdi, %rbx		# movq %rdi, %r(1421)
	movq %rbx, -24(%rbp)		# movq %r(1421), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1422)
	movq (%rbx), %rbx		# movq (%r(1422)), %r(1406)
	movq %rbx, %rbx		# movq %r(1406), %r(t10)
	movq %rbx, %r12		# movq %r(t10), %r(1407)
	salq $3, %r12		# salq $3, %r(1407)
	movq $8, %r13		# movq $8, %r(1408)
	movq %r12, %r12		# movq %r(1407), %r(1409)
	addq %r13, %r12		# addq %r(1408), %r(1409)
	movq %r12, %rdi		# movq %r(1409), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1373)
	movq %r13, %r13		# movq %r(1373), %r(1423)
	movq %r13, -32(%rbp)		# movq %r(1423), -32(%rbp)
	.L16:		# .L16:
	movq %rbx, %r14		# movq %r(t10), %r(1410)
	salq $3, %r14		# salq $3, %r(1410)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1424)
	movq %r12, %r12		# movq %r(1424), %r(1411)
	addq %r14, %r12		# addq %r(1410), %r(1411)
	movq %rbx, %r14		# movq %r(t10), %r(1425)
	movq %r14, -16(%rbp)		# movq %r(1425), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1426)
	salq $3, %r13		# salq $3, %r(1426)
	movq %r13, -16(%rbp)		# movq %r(1426), -16(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1427)
	movq %r14, %r14		# movq %r(1427), %r(1418)
	movq %r14, -8(%rbp)		# movq %r(1418), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1419)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1428)
	addq %r14, %r13		# addq %r(1428), %r(1419)
	movq %r13, -8(%rbp)		# movq %r(1419), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1420)
	movq (%r13), %r13		# movq (%r(1420)), %r(1414)
	movq %r13, (%r12)		# movq %r(1414), (%r(1411))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(1415)
	cmpq %r12, %rbx		# cmpq %r(1415), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1416)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1429)
	movq %r13, %r13		# movq %r(1429), %r(1417)
	addq %rbx, %r13		# addq %r(1416), %r(1417)
	movq %r13, %rax		# movq %r(1417), %rax
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
.L375:
	.quad 2
	.quad 35
	.quad 50
	.text

.section .rodata
.align 8
.L383:
	.quad 2
	.quad 35
	.quad 51
	.text

.section .rodata
.align 8
.L381:
	.quad 2
	.quad 35
	.quad 51
	.text

.section .rodata
.align 8
.L373:
	.quad 2
	.quad 35
	.quad 50
	.text

.section .rodata
.align 8
.L358:
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
.L367:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L369:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L362:
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

