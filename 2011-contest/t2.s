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
	leaq .L148(%rip), %rdi		# leaq .L148(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1267)
	movq %rbx, %rdi		# movq %r(1267), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(1268)
	movq %rbx, %rdi		# movq %r(1268), %rdi
	call _If_aabb		# call _If_aabb
	.L147:		# .L147:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_aabb
_If_aabb:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(b)
	movq $40, %rbx		# movq $40, %r(1277)
	movq %rbx, %rdi		# movq %r(1277), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1270)
	movq $4, %r12		# movq $4, %r(1278)
	movq %r12, (%rbx)		# movq %r(1278), (%r(1256))
	movq $8, %r12		# movq $8, %r(1279)
	addq %r12, %rbx		# addq %r(1279), %r(1280)
	movq %rbx, %r15		# movq %r(1280), %r(1255)
	movq $24, %rbx		# movq $24, %r(1281)
	movq %rbx, %rdi		# movq %r(1281), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1271)
	movq $2, %r12		# movq $2, %r(1282)
	movq %r12, (%r13)		# movq %r(1282), (%r(1258))
	movq $8, %r12		# movq $8, %r(1283)
	addq %r12, %r13		# addq %r(1283), %r(1284)
	movq %r13, %r14		# movq %r(1284), %r(1257)
	movq $0, %rbx		# movq $0, %r(1285)
	movq %r14, %r12		# movq %r(1257), %r(1286)
	addq %rbx, %r12		# addq %r(1285), %r(1286)
	movq $1, %rbx		# movq $1, %r(1287)
	movq %rbx, (%r12)		# movq %r(1287), (%r(1286))
	movq $8, %rbx		# movq $8, %r(1288)
	movq %r14, %r12		# movq %r(1257), %r(1289)
	addq %rbx, %r12		# addq %r(1288), %r(1289)
	movq $1, %rbx		# movq $1, %r(1290)
	movq %rbx, (%r12)		# movq %r(1290), (%r(1289))
	movq $0, %rbx		# movq $0, %r(1291)
	movq %r15, %r12		# movq %r(1255), %r(1292)
	addq %rbx, %r12		# addq %r(1291), %r(1292)
	movq %r14, (%r12)		# movq %r(1257), (%r(1292))
	movq $24, %rbx		# movq $24, %r(1293)
	movq %rbx, %rdi		# movq %r(1293), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1272)
	movq $2, %r12		# movq $2, %r(1294)
	movq %r12, (%r13)		# movq %r(1294), (%r(1260))
	movq $8, %r12		# movq $8, %r(1295)
	addq %r12, %r13		# addq %r(1295), %r(1296)
	movq %r13, %r14		# movq %r(1296), %r(1259)
	movq $0, %rbx		# movq $0, %r(1297)
	movq %r14, %r12		# movq %r(1259), %r(1298)
	addq %rbx, %r12		# addq %r(1297), %r(1298)
	movq $1, %rbx		# movq $1, %r(1299)
	movq %rbx, (%r12)		# movq %r(1299), (%r(1298))
	movq $8, %rbx		# movq $8, %r(1300)
	movq %r14, %r12		# movq %r(1259), %r(1301)
	addq %rbx, %r12		# addq %r(1300), %r(1301)
	movq $0, %rbx		# movq $0, %r(1302)
	movq %rbx, (%r12)		# movq %r(1302), (%r(1301))
	movq $8, %rbx		# movq $8, %r(1303)
	movq %r15, %r12		# movq %r(1255), %r(1304)
	addq %rbx, %r12		# addq %r(1303), %r(1304)
	movq %r14, (%r12)		# movq %r(1259), (%r(1304))
	movq $24, %rbx		# movq $24, %r(1305)
	movq %rbx, %rdi		# movq %r(1305), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1273)
	movq $2, %r12		# movq $2, %r(1306)
	movq %r12, (%r13)		# movq %r(1306), (%r(1262))
	movq $8, %r12		# movq $8, %r(1307)
	addq %r12, %r13		# addq %r(1307), %r(1308)
	movq %r13, %r14		# movq %r(1308), %r(1261)
	movq $0, %rbx		# movq $0, %r(1309)
	movq %r14, %r12		# movq %r(1261), %r(1310)
	addq %rbx, %r12		# addq %r(1309), %r(1310)
	movq $0, %rbx		# movq $0, %r(1311)
	movq %rbx, (%r12)		# movq %r(1311), (%r(1310))
	movq $8, %rbx		# movq $8, %r(1312)
	movq %r14, %r12		# movq %r(1261), %r(1313)
	addq %rbx, %r12		# addq %r(1312), %r(1313)
	movq $1, %rbx		# movq $1, %r(1314)
	movq %rbx, (%r12)		# movq %r(1314), (%r(1313))
	movq $16, %rbx		# movq $16, %r(1315)
	movq %r15, %r12		# movq %r(1255), %r(1316)
	addq %rbx, %r12		# addq %r(1315), %r(1316)
	movq %r14, (%r12)		# movq %r(1261), (%r(1316))
	movq $24, %rbx		# movq $24, %r(1317)
	movq %rbx, %rdi		# movq %r(1317), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1274)
	movq $2, %r12		# movq $2, %r(1318)
	movq %r12, (%r13)		# movq %r(1318), (%r(1264))
	movq $8, %r12		# movq $8, %r(1319)
	addq %r12, %r13		# addq %r(1319), %r(1320)
	movq %r13, %r14		# movq %r(1320), %r(1263)
	movq $0, %rbx		# movq $0, %r(1321)
	movq %r14, %r12		# movq %r(1263), %r(1322)
	addq %rbx, %r12		# addq %r(1321), %r(1322)
	movq $0, %rbx		# movq $0, %r(1323)
	movq %rbx, (%r12)		# movq %r(1323), (%r(1322))
	movq $8, %rbx		# movq $8, %r(1324)
	movq %r14, %r12		# movq %r(1263), %r(1325)
	addq %rbx, %r12		# addq %r(1324), %r(1325)
	movq $0, %rbx		# movq $0, %r(1326)
	movq %rbx, (%r12)		# movq %r(1326), (%r(1325))
	movq $24, %rbx		# movq $24, %r(1327)
	movq %r15, %r12		# movq %r(1255), %r(1328)
	addq %rbx, %r12		# addq %r(1327), %r(1328)
	movq %r14, (%r12)		# movq %r(1263), (%r(1328))
	movq %r15, %rax		# movq %r(1255), %rax
	jmp .L149		# jmp .L149
	.L149:		# .L149:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_b
_Ig_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(1329)
	movq %rbx, %rax		# movq %r(1329), %rax
	jmp .L150		# jmp .L150
	.L150:		# .L150:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ih_bi
_Ih_bi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $0, %rbx		# movq $0, %r(1330)
	movq %rbx, %rax		# movq %r(1330), %rax
	jmp .L151		# jmp .L151
	.L151:		# .L151:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ii_bai
_Ii_bai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $1, %rbx		# movq $1, %r(1331)
	movq %rbx, %rax		# movq %r(1331), %rax
	jmp .L152		# jmp .L152
	.L152:		# .L152:
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
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %r12		# movq (%r(p0)), %r(1332)
	movq %r12, -16(%rbp)		# movq %r(1347), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1348)
	salq $3, %rbx		# salq $3, %r(1333)
	movq $8, %r12		# movq $8, %r(1334)
	addq %r12, %rbx		# addq %r(1334), %r(1335)
	movq %rbx, %rdi		# movq %r(1335), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1275)
	movq %r12, -24(%rbp)		# movq %r(1349), -24(%rbp)
	.L63:		# .L63:
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1350)
	salq $3, %r14		# salq $3, %r(1336)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1351)
	movq %rbx, -32(%rbp)		# movq %r(1352), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1353)
	addq %r14, %r12		# addq %r(1336), %r(1353)
	movq %r12, -32(%rbp)		# movq %r(1353), -32(%rbp)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1354)
	salq $3, %r14		# salq $3, %r(1338)
	movq %r15, %rbx		# movq %r(p0), %r(1344)
	movq %rbx, -8(%rbp)		# movq %r(1344), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1345)
	addq %r14, %r12		# addq %r(1338), %r(1345)
	movq %r12, -8(%rbp)		# movq %r(1345), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1346)
	movq (%rbx), %rbx		# movq (%r(1346)), %r(1340)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1355)
	movq %rbx, (%r12)		# movq %r(1340), (%r(1355))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1356)
	decq %rbx		# decq %r(1356)
	movq %rbx, -16(%rbp)		# movq %r(1356), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1341)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1357)
	cmpq %rbx, %r12		# cmpq %r(1341), %r(1357)
	jge .L63		# jge .L63
	.L64:		# .L64:
	movq $8, %rbx		# movq $8, %r(1342)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1358)
	addq %rbx, %r13		# addq %r(1342), %r(1343)
	movq %r13, %rax		# movq %r(1343), %rax
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
.L148:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

