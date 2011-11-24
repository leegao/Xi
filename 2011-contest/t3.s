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
	movq $45, %rbx		# movq $45, %r(1335)
	movq %rbx, %r13		# movq %r(1335), %r(x)
	.L218:		# .L218:
	movq $1, %r14		# movq $1, %r(1336)
	movq $0, %rbx		# movq $0, %r(1337)
	cmpq %rbx, %r13		# cmpq %r(1337), %r(x)
	jg .L221		# jg .L221
	.L222:		# .L222:
	movq $0, %r14		# movq $0, %r(1338)
	.L221:		# .L221:
	movq $0, %rbx		# movq $0, %r(1339)
	cmpq %rbx, %r14		# cmpq %r(1339), %r(1326)
	je .L220		# je .L220
	.L219:		# .L219:
	movq $16, %rbx		# movq $16, %r(1340)
	movq %rbx, %rdi		# movq %r(1340), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(1329)
	movq $1, %rbx		# movq $1, %r(1341)
	movq %rbx, (%r15)		# movq %r(1341), (%r(1329))
	movq $8, %rbx		# movq $8, %r(1342)
	addq %rbx, %r15		# addq %r(1342), %r(1343)
	movq $0, %rbx		# movq $0, %r(1344)
	movq %r15, %r12		# movq %r(1327), %r(1345)
	addq %rbx, %r12		# addq %r(1344), %r(1345)
	movq $55, %rbx		# movq $55, %r(1346)
	movq %rbx, (%r12)		# movq %r(1346), (%r(1345))
	leaq .L223(%rip), %rdi		# leaq .L223(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1330)
	movq %r15, %rdi		# movq %r(1327), %rdi
	movq %rbx, %rsi		# movq %r(1330), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(1331)
	movq %rbx, %rdi		# movq %r(1331), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(x)
	jmp .L218		# jmp .L218
	.L220:		# .L220:
	.L217:		# .L217:
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
	movq %rdi, %rbx		# movq %rdi, %r(1363)
	movq %rbx, -32(%rbp)		# movq %r(1363), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1364)
	movq (%rbx), %rbx		# movq (%r(1364)), %r(1348)
	movq %rbx, %r12		# movq %r(t10), %r(1349)
	salq $3, %r12		# salq $3, %r(1349)
	movq $8, %r13		# movq $8, %r(1350)
	addq %r13, %r12		# addq %r(1350), %r(1351)
	movq %r12, %rdi		# movq %r(1351), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1365)
	movq %r12, -24(%rbp)		# movq %r(1365), -24(%rbp)
	.L14:		# .L14:
	movq %rbx, %r14		# movq %r(t10), %r(1352)
	salq $3, %r14		# salq $3, %r(1352)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1366)
	movq %r13, -16(%rbp)		# movq %r(1367), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1368)
	addq %r14, %r12		# addq %r(1352), %r(1368)
	movq %r12, -16(%rbp)		# movq %r(1368), -16(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(1354)
	salq $3, %r14		# salq $3, %r(1354)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1369)
	movq %r13, -8(%rbp)		# movq %r(1360), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1361)
	addq %r14, %r12		# addq %r(1354), %r(1361)
	movq %r12, -8(%rbp)		# movq %r(1361), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1362)
	movq (%r12), %r12		# movq (%r(1362)), %r(1356)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1370)
	movq %r12, (%r13)		# movq %r(1356), (%r(1370))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(1357)
	cmpq %r12, %rbx		# cmpq %r(1357), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1358)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1371)
	addq %rbx, %r13		# addq %r(1358), %r(1359)
	movq %r13, %rax		# movq %r(1359), %rax
	.L16:		# .L16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1395)
	movq %rbx, -64(%rbp)		# movq %r(1395), -64(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1396)
	movq %rbx, -48(%rbp)		# movq %r(1396), -48(%rbp)
	movq $0, %r12		# movq $0, %r(1372)
	movq %r12, -8(%rbp)		# movq %r(1397), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(1373)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1398)
	subq %rbx, %r13		# subq %r(1373), %r(1374)
	movq (%r13), %r12		# movq (%r(1374)), %r(1375)
	movq %r12, -16(%rbp)		# movq %r(1399), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1376)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1400)
	subq %rbx, %r13		# subq %r(1376), %r(1377)
	movq (%r13), %rbx		# movq (%r(1377)), %r(1378)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1401)
	addq %rbx, %r12		# addq %r(1378), %r(1379)
	movq %r12, -24(%rbp)		# movq %r(1402), -24(%rbp)
	movq $1, %rbx		# movq $1, %r(1380)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1403)
	addq %rbx, %r13		# addq %r(1380), %r(1381)
	movq %r13, %rdi		# movq %r(1381), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1334)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1404)
	movq %r12, (%rbx)		# movq %r(1404), (%r(1334))
	movq $8, %r12		# movq $8, %r(1382)
	addq %r12, %rbx		# addq %r(1382), %r(1383)
	movq %rbx, -32(%rbp)		# movq %r(1405), -32(%rbp)
	.L17:		# .L17:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1406)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1407)
	cmpq %r12, %rbx		# cmpq %r(1407), %r(1406)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1408)
	salq $3, %r13		# salq $3, %r(1384)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1409)
	movq %rbx, -56(%rbp)		# movq %r(1410), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1411)
	addq %r13, %r12		# addq %r(1384), %r(1411)
	movq %r12, -56(%rbp)		# movq %r(1411), -56(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1412)
	salq $3, %r13		# salq $3, %r(1386)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1413)
	movq %rbx, -40(%rbp)		# movq %r(1414), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1415)
	addq %r13, %r12		# addq %r(1386), %r(1415)
	movq %r12, -40(%rbp)		# movq %r(1415), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1416)
	movq (%rbx), %rbx		# movq (%r(1416)), %r(1388)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1417)
	movq %rbx, (%r12)		# movq %r(1388), (%r(1417))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1418)
	incq %rbx		# incq %r(1418)
	movq %rbx, -8(%rbp)		# movq %r(1418), -8(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	.L20:		# .L20:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1419)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1420)
	cmpq %r12, %rbx		# cmpq %r(1420), %r(1419)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1421)
	salq $3, %r13		# salq $3, %r(1389)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(1422)
	addq %r13, %r14		# addq %r(1389), %r(1390)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1423)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1424)
	subq %r13, %rbx		# subq %r(1424), %r(1391)
	salq $3, %rbx		# salq $3, %r(1392)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1425)
	addq %rbx, %r12		# addq %r(1392), %r(1393)
	movq (%r12), %rbx		# movq (%r(1393)), %r(1394)
	movq %rbx, (%r14)		# movq %r(1394), (%r(1390))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1426)
	incq %rbx		# incq %r(1426)
	movq %rbx, -8(%rbp)		# movq %r(1426), -8(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1427)
	movq %rbx, %rax		# movq %r(1427), %rax
	.L23:		# .L23:
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
.L223:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

