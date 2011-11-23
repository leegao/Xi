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
	movq %rax, %rbx		# movq %rax, %r(1323)
	movq %rbx, %rdi		# movq %r(1323), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(1349)
	movq %rbx, %rdi		# movq %r(1349), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(1350)
	movq %rbx, %rax		# movq %r(1350), %rax
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
	movq $0, %rbx		# movq $0, %r(1351)
	movq %rbx, %rax		# movq %r(1351), %rax
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
	movq $1, %rbx		# movq $1, %r(1352)
	movq %rbx, %rax		# movq %r(1352), %rax
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
	movq %rax, %r13		# movq %rax, %r(1326)
	movq %r13, %rdi		# movq %r(1326), %rdi
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
	movq %rax, %r13		# movq %rax, %r(1330)
	movq %r13, %r13		# movq %r(1330), %r(t)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r12		# movq %rax, %r(1331)
	movq %r12, %r12		# movq %r(1331), %r(f)
	test %r13, $1		# test %r(t), $1
	je .L364		# je .L364
	.L366:		# .L366:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r14		# movq %rax, %r(1332)
	movq $1, %r13		# movq $1, %r(1354)
	movq %r14, %r14		# movq %r(1332), %r(1355)
	xorq %r13, %r14		# xorq %r(1354), %r(1355)
	test %r14, $1		# test %r(1355), $1
	je .L365		# je .L365
	.L364:		# .L364:
	leaq .L367(%rip), %rdi		# leaq .L367(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1333)
	movq $1, %r13		# movq $1, %r(1357)
	movq %rbx, %rdi		# movq %r(1333), %rdi
	movq %r13, %rsi		# movq %r(1357), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L368		# jmp .L368
	.L365:		# .L365:
	leaq .L369(%rip), %rdi		# leaq .L369(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1335)
	movq $0, %r13		# movq $0, %r(1359)
	movq %rbx, %rdi		# movq %r(1335), %rdi
	movq %r13, %rsi		# movq %r(1359), %rsi
	call _Itest_paib		# call _Itest_paib
	.L368:		# .L368:
	movq $1, %rbx		# movq $1, %r(1360)
	movq %r12, %r14		# movq %r(f), %r(1361)
	xorq %rbx, %r14		# xorq %r(1360), %r(1361)
	test %r14, $1		# test %r(1361), $1
	je .L371		# je .L371
	.L372:		# .L372:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r14		# movq %rax, %r(1337)
	movq $1, %r13		# movq $1, %r(1362)
	movq %r14, %r14		# movq %r(1337), %r(1363)
	xorq %r13, %r14		# xorq %r(1362), %r(1363)
	test %r14, $1		# test %r(1363), $1
	je .L371		# je .L371
	.L370:		# .L370:
	leaq .L373(%rip), %rdi		# leaq .L373(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1338)
	movq $0, %r13		# movq $0, %r(1365)
	movq %rbx, %rdi		# movq %r(1338), %rdi
	movq %r13, %rsi		# movq %r(1365), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L374		# jmp .L374
	.L371:		# .L371:
	leaq .L375(%rip), %rdi		# leaq .L375(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1340)
	movq $1, %r13		# movq $1, %r(1367)
	movq %rbx, %rdi		# movq %r(1340), %rdi
	movq %r13, %rsi		# movq %r(1367), %rsi
	call _Itest_paib		# call _Itest_paib
	.L374:		# .L374:
	movq $1, %r13		# movq $1, %r(1368)
	movq %r13, %r13		# movq %r(1368), %r(1322)
	movq $1, %rbx		# movq $1, %r(1369)
	movq %r12, %r12		# movq %r(f), %r(1370)
	xorq %rbx, %r12		# xorq %r(1369), %r(1370)
	test %r12, $1		# test %r(1370), $1
	je .L377		# je .L377
	.L378:		# .L378:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1342)
	test %rbx, $1		# test %r(1342), $1
	je .L376		# je .L376
	.L377:		# .L377:
	movq $0, %r13		# movq $0, %r(1371)
	movq %r13, %r13		# movq %r(1371), %r(1322)
	.L376:		# .L376:
	movq $1, %rbx		# movq $1, %r(1372)
	movq %r13, %r13		# movq %r(1322), %r(1373)
	xorq %rbx, %r13		# xorq %r(1372), %r(1373)
	movq $1, %rbx		# movq $1, %r(1374)
	movq %r13, %r13		# movq %r(1373), %r(1375)
	xorq %rbx, %r13		# xorq %r(1374), %r(1375)
	test %r13, $1		# test %r(1375), $1
	je .L380		# je .L380
	.L379:		# .L379:
	leaq .L381(%rip), %rdi		# leaq .L381(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1343)
	movq $1, %r12		# movq $1, %r(1377)
	movq %rbx, %rdi		# movq %r(1343), %rdi
	movq %r12, %rsi		# movq %r(1377), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L382		# jmp .L382
	.L380:		# .L380:
	leaq .L383(%rip), %rdi		# leaq .L383(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1345)
	movq $0, %r12		# movq $0, %r(1379)
	movq %rbx, %rdi		# movq %r(1345), %rdi
	movq %r12, %rsi		# movq %r(1379), %rsi
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1392)
	movq %rbx, -16(%rbp)		# movq %r(1392), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1393)
	movq (%rbx), %r12		# movq (%r(1393)), %r(1380)
	movq %r12, %r12		# movq %r(1380), %r(1394)
	movq %r12, -8(%rbp)		# movq %r(1394), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1395)
	movq %rbx, %rbx		# movq %r(1395), %r(1381)
	salq $3, %rbx		# salq $3, %r(1381)
	movq $8, %r12		# movq $8, %r(1382)
	movq %rbx, %rbx		# movq %r(1381), %r(1383)
	addq %r12, %rbx		# addq %r(1382), %r(1383)
	movq %rbx, %rdi		# movq %r(1383), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1347)
	movq %rbx, %r14		# movq %r(1347), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1396)
	movq %r12, %r12		# movq %r(1396), %r(1384)
	salq $3, %r12		# salq $3, %r(1384)
	movq %r14, %r13		# movq %r(t27), %r(1385)
	addq %r12, %r13		# addq %r(1384), %r(1385)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1397)
	movq %rbx, %r12		# movq %r(1397), %r(1386)
	salq $3, %r12		# salq $3, %r(1386)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1398)
	movq %rbx, %rbx		# movq %r(1398), %r(1399)
	movq %rbx, -24(%rbp)		# movq %r(1399), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1400)
	addq %r12, %rbx		# addq %r(1386), %r(1400)
	movq %rbx, -24(%rbp)		# movq %r(1400), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1401)
	movq (%rbx), %rbx		# movq (%r(1401)), %r(1388)
	movq %rbx, (%r13)		# movq %r(1388), (%r(1385))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1402)
	decq %rbx		# decq %r(1402)
	movq %rbx, -8(%rbp)		# movq %r(1402), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1389)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1403)
	cmpq %rbx, %r12		# cmpq %r(1389), %r(1403)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1390)
	movq %r14, %r12		# movq %r(t27), %r(1391)
	addq %rbx, %r12		# addq %r(1390), %r(1391)
	movq %r12, %rax		# movq %r(1391), %rax
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
.L369:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L375:
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
.L367:
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

.section .rodata
.align 8
.L373:
	.quad 2
	.quad 35
	.quad 50
	.text

