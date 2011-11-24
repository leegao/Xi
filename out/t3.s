.att_syntax prefix
.text
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
	movq $45, %rbx		# movq $45, %r(1375)
	movq %rbx, %r13		# movq %r(1375), %r(x)
	jmp .L258		# jmp .L258
	.L258:		# .L258:
	movq $1, %r14		# movq $1, %r(1376)
	movq $0, %rbx		# movq $0, %r(1377)
	cmpq %rbx, %r13		# cmpq %r(1377), %r(x)
	jg .L261		# jg .L261
	.L262:		# .L262:
	movq $0, %r14		# movq $0, %r(1378)
	jmp .L261		# jmp .L261
	.L261:		# .L261:
	movq $0, %rbx		# movq $0, %r(1379)
	cmpq %rbx, %r14		# cmpq %r(1379), %r(1366)
	je .L260		# je .L260
	.L259:		# .L259:
	movq $16, %rbx		# movq $16, %r(1380)
	movq %rbx, %rdi		# movq %r(1380), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1369)
	movq $1, %rbx		# movq $1, %r(1381)
	movq %rbx, (%r15)		# movq %r(1381), (%r(1369))
	movq $8, %rbx		# movq $8, %r(1382)
	addq %rbx, %r15		# addq %r(1382), %r(1383)
	movq $0, %rbx		# movq $0, %r(1384)
	movq %r15, %r12		# movq %r(1367), %r(1385)
	addq %rbx, %r12		# addq %r(1384), %r(1385)
	movq $55, %rbx		# movq $55, %r(1386)
	movq %rbx, (%r12)		# movq %r(1386), (%r(1385))
	leaq .L263(%rip), %rdi		# leaq .L263(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1370)
	movq %r15, %rdi		# movq %r(1367), %rdi
	movq %rbx, %rsi		# movq %r(1370), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(1371)
	movq %rbx, %rdi		# movq %r(1371), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(x)
	jmp .L258		# jmp .L258
	.L260:		# .L260:
	jmp .L257		# jmp .L257
	.L257:		# .L257:
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
	movq %rdi, %rbx		# movq %rdi, %r(1400)
	movq %rbx, -16(%rbp)		# movq %r(1400), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1401)
	movq (%rbx), %rbx		# movq (%r(1401)), %r(1388)
	movq %rbx, %r14		# movq %r(1388), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1389)
	salq $3, %rbx		# salq $3, %r(1389)
	movq $8, %r12		# movq $8, %r(1390)
	addq %r12, %rbx		# addq %r(1390), %r(1391)
	movq %rbx, %rdi		# movq %r(1391), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1373)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(1392)
	salq $3, %rbx		# salq $3, %r(1392)
	movq %r12, %r15		# movq %r(1373), %r(1393)
	addq %rbx, %r15		# addq %r(1392), %r(1393)
	movq %r14, %r13		# movq %r(t10), %r(1394)
	salq $3, %r13		# salq $3, %r(1394)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1402)
	movq %rbx, -8(%rbp)		# movq %r(1403), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1404)
	addq %r13, %rbx		# addq %r(1394), %r(1404)
	movq %rbx, -8(%rbp)		# movq %r(1404), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1405)
	movq (%rbx), %rbx		# movq (%r(1405)), %r(1396)
	movq %rbx, (%r15)		# movq %r(1396), (%r(1393))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1397)
	cmpq %rbx, %r14		# cmpq %r(1397), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1398)
	addq %rbx, %r12		# addq %r(1398), %r(1399)
	movq %r12, %rax		# movq %r(1399), %rax
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
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1429)
	movq %rbx, -40(%rbp)		# movq %r(1429), -40(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1430)
	movq %rbx, -72(%rbp)		# movq %r(1430), -72(%rbp)
	movq $0, %r12		# movq $0, %r(1406)
	movq %r12, -24(%rbp)		# movq %r(1431), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1407)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1432)
	subq %rbx, %r13		# subq %r(1407), %r(1408)
	movq (%r13), %r12		# movq (%r(1408)), %r(1409)
	movq %r12, -48(%rbp)		# movq %r(1433), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(1410)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1434)
	subq %rbx, %r13		# subq %r(1410), %r(1411)
	movq (%r13), %rbx		# movq (%r(1411)), %r(1412)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1435)
	addq %rbx, %r12		# addq %r(1412), %r(1413)
	movq %r12, -16(%rbp)		# movq %r(1436), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(1414)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1437)
	addq %rbx, %r13		# addq %r(1414), %r(1415)
	movq %r13, %rdi		# movq %r(1415), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1374)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1438)
	movq %r12, (%rbx)		# movq %r(1438), (%r(1374))
	movq $8, %r12		# movq $8, %r(1416)
	addq %r12, %rbx		# addq %r(1416), %r(1417)
	movq %rbx, -64(%rbp)		# movq %r(1439), -64(%rbp)
	jmp .L158		# jmp .L158
	.L158:		# .L158:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1440)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1441)
	cmpq %r12, %rbx		# cmpq %r(1441), %r(1440)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1442)
	salq $3, %r13		# salq $3, %r(1418)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1443)
	movq %rbx, -56(%rbp)		# movq %r(1444), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1445)
	addq %r13, %r12		# addq %r(1418), %r(1445)
	movq %r12, -56(%rbp)		# movq %r(1445), -56(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1446)
	salq $3, %r13		# salq $3, %r(1420)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1447)
	movq %rbx, -8(%rbp)		# movq %r(1448), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1449)
	addq %r13, %r12		# addq %r(1420), %r(1449)
	movq %r12, -8(%rbp)		# movq %r(1449), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1450)
	movq (%rbx), %rbx		# movq (%r(1450)), %r(1422)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1451)
	movq %rbx, (%r12)		# movq %r(1422), (%r(1451))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1452)
	incq %rbx		# incq %r(1452)
	movq %rbx, -24(%rbp)		# movq %r(1452), -24(%rbp)
	jmp .L158		# jmp .L158
	.L160:		# .L160:
	jmp .L161		# jmp .L161
	.L161:		# .L161:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1453)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1454)
	cmpq %rbx, %r12		# cmpq %r(1453), %r(1454)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1455)
	salq $3, %r13		# salq $3, %r(1423)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(1456)
	addq %r13, %r14		# addq %r(1423), %r(1424)
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(1457)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1458)
	subq %r13, %r15		# subq %r(1458), %r(1425)
	salq $3, %r15		# salq $3, %r(1426)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1459)
	movq %rbx, -32(%rbp)		# movq %r(1460), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1461)
	addq %r15, %r13		# addq %r(1426), %r(1461)
	movq %r13, -32(%rbp)		# movq %r(1461), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1462)
	movq (%rbx), %rbx		# movq (%r(1462)), %r(1428)
	movq %rbx, (%r14)		# movq %r(1428), (%r(1424))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1463)
	incq %rbx		# incq %r(1463)
	movq %rbx, -24(%rbp)		# movq %r(1463), -24(%rbp)
	jmp .L161		# jmp .L161
	.L163:		# .L163:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1464)
	movq %rbx, %rax		# movq %r(1464), %rax
	jmp .L164		# jmp .L164
	.L164:		# .L164:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L263:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

