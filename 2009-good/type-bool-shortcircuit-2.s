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
	movq %rax, %rbx		# movq %rax, %r(1275)
	movq %rbx, %rdi		# movq %r(1275), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(1301)
	movq %rbx, %rdi		# movq %r(1301), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(1302)
	movq %rbx, %rax		# movq %r(1302), %rax
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
	movq $0, %rbx		# movq $0, %r(1303)
	movq %rbx, %rax		# movq %r(1303), %rax
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
	movq $1, %rbx		# movq $1, %r(1304)
	movq %rbx, %rax		# movq %r(1304), %rax
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
	movq %rax, %r13		# movq %rax, %r(1278)
	movq %r13, %rdi		# movq %r(1278), %rdi
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
	movq %rax, %r13		# movq %rax, %r(1282)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r12		# movq %rax, %r(1283)
	testq $1, %r13		# testq $1, %r(t)
	jne .L364		# jne .L364
	.L366:		# .L366:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r14		# movq %rax, %r(1284)
	movq $1, %r13		# movq $1, %r(1306)
	xorq %r13, %r14		# xorq %r(1306), %r(1307)
	testq $1, %r14		# testq $1, %r(1307)
	jne .L365		# jne .L365
	.L364:		# .L364:
	leaq .L367(%rip), %rdi		# leaq .L367(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1285)
	movq $1, %r13		# movq $1, %r(1309)
	movq %rbx, %rdi		# movq %r(1285), %rdi
	movq %r13, %rsi		# movq %r(1309), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L368		# jmp .L368
	.L365:		# .L365:
	leaq .L369(%rip), %rdi		# leaq .L369(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1287)
	movq $0, %r13		# movq $0, %r(1311)
	movq %rbx, %rdi		# movq %r(1287), %rdi
	movq %r13, %rsi		# movq %r(1311), %rsi
	call _Itest_paib		# call _Itest_paib
	.L368:		# .L368:
	movq $1, %rbx		# movq $1, %r(1312)
	movq %r12, %r14		# movq %r(f), %r(1313)
	xorq %rbx, %r14		# xorq %r(1312), %r(1313)
	testq $1, %r14		# testq $1, %r(1313)
	jne .L371		# jne .L371
	.L372:		# .L372:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r14		# movq %rax, %r(1289)
	movq $1, %r13		# movq $1, %r(1314)
	xorq %r13, %r14		# xorq %r(1314), %r(1315)
	testq $1, %r14		# testq $1, %r(1315)
	jne .L371		# jne .L371
	.L370:		# .L370:
	leaq .L373(%rip), %rdi		# leaq .L373(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1290)
	movq $0, %r13		# movq $0, %r(1317)
	movq %rbx, %rdi		# movq %r(1290), %rdi
	movq %r13, %rsi		# movq %r(1317), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L374		# jmp .L374
	.L371:		# .L371:
	leaq .L375(%rip), %rdi		# leaq .L375(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1292)
	movq $1, %r13		# movq $1, %r(1319)
	movq %rbx, %rdi		# movq %r(1292), %rdi
	movq %r13, %rsi		# movq %r(1319), %rsi
	call _Itest_paib		# call _Itest_paib
	.L374:		# .L374:
	movq $1, %r13		# movq $1, %r(1320)
	movq $1, %rbx		# movq $1, %r(1321)
	xorq %rbx, %r12		# xorq %r(1321), %r(1322)
	testq $1, %r12		# testq $1, %r(1322)
	jne .L377		# jne .L377
	.L378:		# .L378:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(1294)
	testq $1, %rbx		# testq $1, %r(1294)
	jne .L376		# jne .L376
	.L377:		# .L377:
	movq $0, %r13		# movq $0, %r(1323)
	.L376:		# .L376:
	movq $1, %rbx		# movq $1, %r(1324)
	xorq %rbx, %r13		# xorq %r(1324), %r(1325)
	movq $1, %rbx		# movq $1, %r(1326)
	xorq %rbx, %r13		# xorq %r(1326), %r(1327)
	testq $1, %r13		# testq $1, %r(1327)
	jne .L380		# jne .L380
	.L379:		# .L379:
	leaq .L381(%rip), %rdi		# leaq .L381(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1295)
	movq $1, %r12		# movq $1, %r(1329)
	movq %rbx, %rdi		# movq %r(1295), %rdi
	movq %r12, %rsi		# movq %r(1329), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L382		# jmp .L382
	.L380:		# .L380:
	leaq .L383(%rip), %rdi		# leaq .L383(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1297)
	movq $0, %r12		# movq $0, %r(1331)
	movq %rbx, %rdi		# movq %r(1297), %rdi
	movq %r12, %rsi		# movq %r(1331), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1344)
	movq %rbx, -16(%rbp)		# movq %r(1344), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1345)
	movq (%rbx), %rbx		# movq (%r(1345)), %r(1332)
	movq %rbx, %r14		# movq %r(1332), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1333)
	salq $3, %rbx		# salq $3, %r(1333)
	movq $8, %r12		# movq $8, %r(1334)
	addq %r12, %rbx		# addq %r(1334), %r(1335)
	movq %rbx, %rdi		# movq %r(1335), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1299)
	movq %rbx, %r13		# movq %r(1299), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(1336)
	salq $3, %rbx		# salq $3, %r(1336)
	movq %r13, %r12		# movq %r(t27), %r(1337)
	addq %rbx, %r12		# addq %r(1336), %r(1337)
	movq %r14, %r15		# movq %r(t10), %r(1338)
	salq $3, %r15		# salq $3, %r(1338)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1346)
	movq %rbx, -8(%rbp)		# movq %r(1347), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1348)
	addq %r15, %rbx		# addq %r(1338), %r(1348)
	movq %rbx, -8(%rbp)		# movq %r(1348), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1349)
	movq (%rbx), %rbx		# movq (%r(1349)), %r(1340)
	movq %rbx, (%r12)		# movq %r(1340), (%r(1337))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1341)
	cmpq %rbx, %r14		# cmpq %r(1341), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1342)
	movq %r13, %r12		# movq %r(t27), %r(1343)
	addq %rbx, %r12		# addq %r(1342), %r(1343)
	movq %r12, %rax		# movq %r(1343), %rax
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
.L383:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L373:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L367:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
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

#.section .rodata
.align 8
.L375:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L381:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
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

#.section .rodata
.align 8
.L369:
	.quad 2
	.quad 35
	.quad 49
	.text

