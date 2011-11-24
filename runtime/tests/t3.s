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
	movq $45, %rbx		# movq $45, %r(1488)
	movq %rbx, %r13		# movq %r(1488), %r(x)
	.L248:		# .L248:
	movq $1, %r14		# movq $1, %r(1489)
	movq $0, %rbx		# movq $0, %r(1490)
	cmpq %rbx, %r13		# cmpq %r(1490), %r(x)
	jg .L251		# jg .L251
	.L252:		# .L252:
	movq $0, %r14		# movq $0, %r(1491)
	.L251:		# .L251:
	movq $0, %rbx		# movq $0, %r(1492)
	cmpq %rbx, %r14		# cmpq %r(1492), %r(1479)
	je .L250		# je .L250
	.L249:		# .L249:
	movq $16, %rbx		# movq $16, %r(1493)
	movq %rbx, %rdi		# movq %r(1493), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1482)
	movq $1, %r12		# movq $1, %r(1494)
	movq %r12, (%rbx)		# movq %r(1494), (%r(1481))
	movq $8, %r12		# movq $8, %r(1495)
	addq %r12, %rbx		# addq %r(1495), %r(1496)
	movq $0, %r12		# movq $0, %r(1497)
	movq %rbx, %r15		# movq %r(1480), %r(1498)
	addq %r12, %r15		# addq %r(1497), %r(1498)
	movq $55, %r12		# movq $55, %r(1499)
	movq %r12, (%r15)		# movq %r(1499), (%r(1498))
	leaq .L253(%rip), %rdi		# leaq .L253(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1483)
	movq %rbx, %rdi		# movq %r(1480), %rdi
	movq %r12, %rsi		# movq %r(1483), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(1484)
	movq %rbx, %rdi		# movq %r(1484), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(x)
	jmp .L248		# jmp .L248
	.L250:		# .L250:
	.L247:		# .L247:
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
	movq %rdi, %rbx		# movq %rdi, %r(1513)
	movq %rbx, -8(%rbp)		# movq %r(1513), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1514)
	movq (%rbx), %r12		# movq (%r(1514)), %r(1501)
	movq %r12, -24(%rbp)		# movq %r(1515), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1516)
	salq $3, %rbx		# salq $3, %r(1502)
	movq $8, %r12		# movq $8, %r(1503)
	addq %r12, %rbx		# addq %r(1503), %r(1504)
	movq %rbx, %rdi		# movq %r(1504), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1486)
	movq %rbx, %r14		# movq %r(1486), %r(t27)
	.L24:		# .L24:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1517)
	salq $3, %r12		# salq $3, %r(1505)
	movq %r14, %r13		# movq %r(t27), %r(1506)
	addq %r12, %r13		# addq %r(1505), %r(1506)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1518)
	movq %rbx, %r12		# movq %r(1518), %r(1507)
	salq $3, %r12		# salq $3, %r(1507)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1519)
	movq %rbx, -16(%rbp)		# movq %r(1520), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1521)
	addq %r12, %rbx		# addq %r(1507), %r(1521)
	movq %rbx, -16(%rbp)		# movq %r(1521), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1522)
	movq (%rbx), %rbx		# movq (%r(1522)), %r(1509)
	movq %rbx, (%r13)		# movq %r(1509), (%r(1506))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1523)
	decq %rbx		# decq %r(1523)
	movq %rbx, -24(%rbp)		# movq %r(1523), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1510)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1524)
	cmpq %rbx, %r12		# cmpq %r(1510), %r(1524)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(1511)
	movq %r14, %r12		# movq %r(t27), %r(1512)
	addq %rbx, %r12		# addq %r(1511), %r(1512)
	movq %r12, %rax		# movq %r(1512), %rax
	.L26:		# .L26:
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
	movq %rdi, %rbx		# movq %rdi, %r(1548)
	movq %rbx, -56(%rbp)		# movq %r(1548), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1549)
	movq %rbx, -64(%rbp)		# movq %r(1549), -64(%rbp)
	movq $0, %r12		# movq $0, %r(1525)
	movq %r12, -24(%rbp)		# movq %r(1550), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1526)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1551)
	subq %rbx, %r13		# subq %r(1526), %r(1527)
	movq (%r13), %r12		# movq (%r(1527)), %r(1528)
	movq %r12, -40(%rbp)		# movq %r(1552), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(1529)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1553)
	subq %rbx, %r13		# subq %r(1529), %r(1530)
	movq (%r13), %rbx		# movq (%r(1530)), %r(1531)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1554)
	addq %rbx, %r12		# addq %r(1531), %r(1532)
	movq %r12, -32(%rbp)		# movq %r(1555), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(1533)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1556)
	addq %rbx, %r13		# addq %r(1533), %r(1534)
	movq %r13, %rdi		# movq %r(1534), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1487)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1557)
	movq %r12, (%r13)		# movq %r(1557), (%r(111))
	movq $8, %r12		# movq $8, %r(1535)
	addq %r12, %r13		# addq %r(1535), %r(1536)
	movq %r13, -16(%rbp)		# movq %r(1558), -16(%rbp)
	.L47:		# .L47:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1559)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1560)
	cmpq %r12, %rbx		# cmpq %r(1560), %r(1559)
	jge .L49		# jge .L49
	.L48:		# .L48:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1561)
	salq $3, %r13		# salq $3, %r(1537)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1562)
	movq %rbx, -8(%rbp)		# movq %r(1563), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1564)
	addq %r13, %r12		# addq %r(1537), %r(1564)
	movq %r12, -8(%rbp)		# movq %r(1564), -8(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1565)
	salq $3, %r13		# salq $3, %r(1539)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1566)
	movq %rbx, -48(%rbp)		# movq %r(1567), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1568)
	addq %r13, %r12		# addq %r(1539), %r(1568)
	movq %r12, -48(%rbp)		# movq %r(1568), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1569)
	movq (%rbx), %rbx		# movq (%r(1569)), %r(1541)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1570)
	movq %rbx, (%r12)		# movq %r(1541), (%r(1570))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1571)
	incq %rbx		# incq %r(1571)
	movq %rbx, -24(%rbp)		# movq %r(1571), -24(%rbp)
	jmp .L47		# jmp .L47
	.L49:		# .L49:
	.L50:		# .L50:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1572)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1573)
	cmpq %r12, %rbx		# cmpq %r(1573), %r(1572)
	jge .L52		# jge .L52
	.L51:		# .L51:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1574)
	salq $3, %r13		# salq $3, %r(1542)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1575)
	addq %r13, %r14		# addq %r(1542), %r(1543)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1576)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1577)
	subq %r13, %rbx		# subq %r(1577), %r(1544)
	salq $3, %rbx		# salq $3, %r(1545)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1578)
	addq %rbx, %r12		# addq %r(1545), %r(1546)
	movq (%r12), %rbx		# movq (%r(1546)), %r(1547)
	movq %rbx, (%r14)		# movq %r(1547), (%r(1543))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1579)
	incq %rbx		# incq %r(1579)
	movq %rbx, -24(%rbp)		# movq %r(1579), -24(%rbp)
	jmp .L50		# jmp .L50
	.L52:		# .L52:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1580)
	movq %rbx, %rax		# movq %r(1580), %rax
	.L53:		# .L53:
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
.L253:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

