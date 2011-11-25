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
	movq $45, %r12		# movq $45, %r(1471)
	movq %r12, %r14		# movq %r(1471), %r(x)
	jmp .L258		# jmp .L258
	.L258:		# .L258:
	movq $1, %r13		# movq $1, %r(1472)
	movq %r13, %r15		# movq %r(1472), %r(1462)
	movq $0, %rbx		# movq $0, %r(1473)
	cmpq %rbx, %r14		# cmpq %r(1473), %r(x)
	jg .L261		# jg .L261
	.L262:		# .L262:
	movq $0, %r12		# movq $0, %r(1474)
	movq %r12, %r15		# movq %r(1474), %r(1462)
	jmp .L261		# jmp .L261
	.L261:		# .L261:
	movq $0, %rbx		# movq $0, %r(1475)
	cmpq %rbx, %r15		# cmpq %r(1475), %r(1462)
	je .L260		# je .L260
	.L259:		# .L259:
	movq $16, %rbx		# movq $16, %r(1476)
	movq %rbx, %rdi		# movq %r(1476), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1465)
	movq $1, %rbx		# movq $1, %r(1477)
	movq %rbx, (%r15)		# movq %r(1477), (%r(1465))
	movq $8, %rbx		# movq $8, %r(1478)
	movq %r15, %r13		# movq %r(1465), %r(1479)
	addq %rbx, %r13		# addq %r(1478), %r(1479)
	movq %r13, %r12		# movq %r(1479), %r(1484)
	movq %r12, -8(%rbp)		# movq %r(1484), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1480)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(1485)
	movq %r15, %r12		# movq %r(1485), %r(1481)
	addq %rbx, %r12		# addq %r(1480), %r(1481)
	movq $55, %rbx		# movq $55, %r(1482)
	movq %rbx, (%r12)		# movq %r(1482), (%r(1481))
	leaq .L263(%rip), %rdi		# leaq .L263(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1466)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1486)
	movq %r12, %rdi		# movq %r(1486), %rdi
	movq %rbx, %rsi		# movq %r(1466), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(1467)
	movq %rbx, %rdi		# movq %r(1467), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r14		# decq %r(x)
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
	movq %rdi, %rbx		# movq %rdi, %r(1499)
	movq %rbx, -24(%rbp)		# movq %r(1499), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1500)
	movq (%rbx), %r13		# movq (%r(1500)), %r(1487)
	movq %r13, %r12		# movq %r(1487), %r(1501)
	movq %r12, -8(%rbp)		# movq %r(1501), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1502)
	movq %r12, %r13		# movq %r(1502), %r(1488)
	salq $3, %r13		# salq $3, %r(1488)
	movq $8, %rbx		# movq $8, %r(1489)
	movq %r13, %r14		# movq %r(1488), %r(1490)
	addq %rbx, %r14		# addq %r(1489), %r(1490)
	movq %r14, %rdi		# movq %r(1490), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1469)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1503)
	movq %r13, %rbx		# movq %r(1503), %r(1491)
	salq $3, %rbx		# salq $3, %r(1491)
	movq %r15, %r13		# movq %r(1469), %r(1492)
	addq %rbx, %r13		# addq %r(1491), %r(1492)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1504)
	movq %rbx, %r12		# movq %r(1504), %r(1493)
	salq $3, %r12		# salq $3, %r(1493)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1505)
	movq %rbx, %r14		# movq %r(1505), %r(1506)
	movq %r14, -16(%rbp)		# movq %r(1506), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1507)
	addq %r12, %rbx		# addq %r(1493), %r(1507)
	movq %rbx, -16(%rbp)		# movq %r(1507), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1508)
	movq (%rbx), %r12		# movq (%r(1508)), %r(1495)
	movq %r12, (%r13)		# movq %r(1495), (%r(1492))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1509)
	decq %rbx		# decq %r(1509)
	movq %rbx, -8(%rbp)		# movq %r(1509), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1496)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1510)
	cmpq %rbx, %r12		# cmpq %r(1496), %r(1510)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1497)
	movq %r15, %r13		# movq %r(1469), %r(1498)
	addq %rbx, %r13		# addq %r(1497), %r(1498)
	movq %r13, %rax		# movq %r(1498), %rax
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
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1534)
	movq %rbx, -32(%rbp)		# movq %r(1534), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1535)
	movq %rbx, -16(%rbp)		# movq %r(1535), -16(%rbp)
	movq $0, %r13		# movq $0, %r(1511)
	movq %r13, %rbx		# movq %r(1511), %r(1536)
	movq %rbx, -8(%rbp)		# movq %r(1536), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(1512)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(1537)
	movq %r14, %r12		# movq %r(1537), %r(1513)
	subq %rbx, %r12		# subq %r(1512), %r(1513)
	movq (%r12), %r13		# movq (%r(1513)), %r(1514)
	movq %r13, %rbx		# movq %r(1514), %r(1538)
	movq %rbx, -48(%rbp)		# movq %r(1538), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(1515)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1539)
	movq %r14, %r15		# movq %r(1539), %r(1516)
	subq %rbx, %r15		# subq %r(1515), %r(1516)
	movq (%r15), %r12		# movq (%r(1516)), %r(1517)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1540)
	movq %r14, %r13		# movq %r(1540), %r(1518)
	addq %r12, %r13		# addq %r(1517), %r(1518)
	movq %r13, %r12		# movq %r(1518), %r(1541)
	movq %r12, -56(%rbp)		# movq %r(1541), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(1519)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(1542)
	movq %r14, %r12		# movq %r(1542), %r(1520)
	addq %rbx, %r12		# addq %r(1519), %r(1520)
	movq %r12, %rdi		# movq %r(1520), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1470)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1543)
	movq %rbx, (%r14)		# movq %r(1543), (%r(1470))
	movq $8, %r13		# movq $8, %r(1521)
	movq %r14, %r12		# movq %r(1470), %r(1544)
	movq %r12, -40(%rbp)		# movq %r(1544), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1545)
	addq %r13, %rbx		# addq %r(1521), %r(1545)
	movq %rbx, -40(%rbp)		# movq %r(1545), -40(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1546)
	movq %r13, %rbx		# movq %r(1546), %r(1547)
	movq %rbx, -72(%rbp)		# movq %r(1547), -72(%rbp)
	jmp .L158		# jmp .L158
	.L158:		# .L158:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1548)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1549)
	cmpq %r12, %rbx		# cmpq %r(1549), %r(1548)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1550)
	movq %r12, %r14		# movq %r(1550), %r(1523)
	salq $3, %r14		# salq $3, %r(1523)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1551)
	movq %r13, %rbx		# movq %r(1551), %r(1552)
	movq %rbx, -88(%rbp)		# movq %r(1552), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1553)
	addq %r14, %rbx		# addq %r(1523), %r(1553)
	movq %rbx, -88(%rbp)		# movq %r(1553), -88(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1554)
	movq %r12, %r14		# movq %r(1554), %r(1525)
	salq $3, %r14		# salq $3, %r(1525)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1555)
	movq %r13, %rbx		# movq %r(1555), %r(1556)
	movq %rbx, -64(%rbp)		# movq %r(1556), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1557)
	addq %r14, %rbx		# addq %r(1525), %r(1557)
	movq %rbx, -64(%rbp)		# movq %r(1557), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1558)
	movq (%rbx), %r12		# movq (%r(1558)), %r(1527)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1559)
	movq %r12, (%rbx)		# movq %r(1527), (%r(1559))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1560)
	incq %rbx		# incq %r(1560)
	movq %rbx, -8(%rbp)		# movq %r(1560), -8(%rbp)
	jmp .L158		# jmp .L158
	.L160:		# .L160:
	jmp .L161		# jmp .L161
	.L161:		# .L161:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1561)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1562)
	cmpq %r12, %rbx		# cmpq %r(1562), %r(1561)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1563)
	movq %r12, %r14		# movq %r(1563), %r(1528)
	salq $3, %r14		# salq $3, %r(1528)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1564)
	movq %r13, %rbx		# movq %r(1564), %r(1565)
	movq %rbx, -80(%rbp)		# movq %r(1565), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1566)
	addq %r14, %rbx		# addq %r(1528), %r(1566)
	movq %rbx, -80(%rbp)		# movq %r(1566), -80(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1567)
	movq %r13, %r12		# movq %r(1567), %r(1530)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1568)
	subq %rbx, %r12		# subq %r(1568), %r(1530)
	movq %r12, %r14		# movq %r(1530), %r(1531)
	salq $3, %r14		# salq $3, %r(1531)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1569)
	movq %r13, %rbx		# movq %r(1569), %r(1570)
	movq %rbx, -24(%rbp)		# movq %r(1570), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1571)
	addq %r14, %rbx		# addq %r(1531), %r(1571)
	movq %rbx, -24(%rbp)		# movq %r(1571), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1572)
	movq (%rbx), %r12		# movq (%r(1572)), %r(1533)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1573)
	movq %r12, (%rbx)		# movq %r(1533), (%r(1573))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1574)
	incq %rbx		# incq %r(1574)
	movq %rbx, -8(%rbp)		# movq %r(1574), -8(%rbp)
	jmp .L161		# jmp .L161
	.L163:		# .L163:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1575)
	movq %rbx, %rax		# movq %r(1575), %rax
	jmp .L164		# jmp .L164
	.L164:		# .L164:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
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

