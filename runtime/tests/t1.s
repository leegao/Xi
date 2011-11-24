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
	movq $32, %rbx		# movq $32, %r(1254)
	movq %rbx, %rdi		# movq %r(1254), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1248)
	movq $3, %r12		# movq $3, %r(1255)
	movq %r12, (%rbx)		# movq %r(1255), (%r(1247))
	movq $8, %r12		# movq $8, %r(1256)
	addq %r12, %rbx		# addq %r(1256), %r(1257)
	movq $0, %r12		# movq $0, %r(1258)
	movq %rbx, %r14		# movq %r(1246), %r(1259)
	addq %r12, %r14		# addq %r(1258), %r(1259)
	movq $7, %r12		# movq $7, %r(1260)
	movq %r12, (%r14)		# movq %r(1260), (%r(1259))
	movq $8, %r12		# movq $8, %r(1261)
	movq %rbx, %r14		# movq %r(1246), %r(1262)
	addq %r12, %r14		# addq %r(1261), %r(1262)
	movq $8, %r12		# movq $8, %r(1263)
	movq %r12, (%r14)		# movq %r(1263), (%r(1262))
	movq $16, %r12		# movq $16, %r(1264)
	movq %rbx, %r14		# movq %r(1246), %r(1265)
	addq %r12, %r14		# addq %r(1264), %r(1265)
	movq $9, %r12		# movq $9, %r(1266)
	movq %r12, (%r14)		# movq %r(1266), (%r(1265))
	movq %rbx, %rdi		# movq %r(a), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L222:		# .L222:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_i
_Ig_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $60, %rbx		# movq $60, %r(1267)
	movq %rbx, %rax		# movq %r(1267), %rax
	jmp .L224		# jmp .L224
	.L224:		# .L224:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $160, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1310)
	movq %rbx, -88(%rbp)		# movq %r(1310), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(1268)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1311)
	subq %rbx, %r13		# subq %r(1268), %r(1269)
	movq (%r13), %r12		# movq (%r(1269)), %r(1270)
	movq %r12, -112(%rbp)		# movq %r(1312), -112(%rbp)
	movq $1, %r12		# movq $1, %r(1271)
	movq %r12, -48(%rbp)		# movq %r(1313), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(1272)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1314)
	cmpq %rbx, %r12		# cmpq %r(1272), %r(1314)
	jne .L163		# jne .L163
	.L164:		# .L164:
	movq $0, %rbx		# movq $0, %r(1273)
	movq %rbx, %rax		# movq %r(1273), %rax
	jmp .L165		# jmp .L165
	.L163:		# .L163:
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1315)
	salq $3, %r12		# salq $3, %r(1274)
	movq %r12, %rdi		# movq %r(1274), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1250)
	movq $1, %r13		# movq $1, %r(1275)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1316)
	movq %rbx, -64(%rbp)		# movq %r(1317), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1318)
	subq %r13, %r12		# subq %r(1275), %r(1318)
	movq %r12, -64(%rbp)		# movq %r(1318), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1319)
	movq %r12, (%r14)		# movq %r(1319), (%r(737))
	movq $8, %r12		# movq $8, %r(1277)
	addq %r12, %r14		# addq %r(1277), %r(1278)
	movq %r14, -80(%rbp)		# movq %r(1320), -80(%rbp)
	.L166:		# .L166:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1321)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1322)
	cmpq %r12, %rbx		# cmpq %r(1322), %r(1321)
	jge .L167		# jge .L167
	.L168:		# .L168:
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1323)
	movq %r12, -120(%rbp)		# movq %r(1324), -120(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1325)
	movq %r12, -136(%rbp)		# movq %r(1326), -136(%rbp)
	movq $8, %r12		# movq $8, %r(1279)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(1327)
	movq %r13, -40(%rbp)		# movq %r(1328), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1329)
	subq %r12, %rbx		# subq %r(1279), %r(1329)
	movq %rbx, -40(%rbp)		# movq %r(1329), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1330)
	movq (%rbx), %rbx		# movq (%r(1330)), %r(1281)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1331)
	cmpq %rbx, %r12		# cmpq %r(1281), %r(1331)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1332)
	movq %r12, -56(%rbp)		# movq %r(1333), -56(%rbp)
	movq $1, %r12		# movq $1, %r(1282)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1334)
	movq %r13, -16(%rbp)		# movq %r(1335), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1336)
	subq %r12, %rbx		# subq %r(1282), %r(1336)
	movq %rbx, -16(%rbp)		# movq %r(1336), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1337)
	movq %r12, -72(%rbp)		# movq %r(1338), -72(%rbp)
	movq $8, %r12		# movq $8, %r(1284)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1339)
	movq %r13, -128(%rbp)		# movq %r(1340), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1341)
	subq %r12, %rbx		# subq %r(1284), %r(1341)
	movq %rbx, -128(%rbp)		# movq %r(1341), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1342)
	movq (%rbx), %rbx		# movq (%r(1342)), %r(1286)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1343)
	cmpq %rbx, %r12		# cmpq %r(1286), %r(1343)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1344)
	salq $3, %r13		# salq $3, %r(1287)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1345)
	movq %rbx, -144(%rbp)		# movq %r(1346), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1347)
	addq %r13, %r12		# addq %r(1287), %r(1347)
	movq %r12, -144(%rbp)		# movq %r(1347), -144(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1348)
	movq %r12, -96(%rbp)		# movq %r(1349), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1350)
	salq $3, %rbx		# salq $3, %r(1350)
	movq %rbx, -96(%rbp)		# movq %r(1350), -96(%rbp)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(1351)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1352)
	addq %r12, %r13		# addq %r(1352), %r(1290)
	movq (%r13), %rbx		# movq (%r(1290)), %r(1291)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1353)
	movq %rbx, (%r12)		# movq %r(1291), (%r(1353))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1354)
	incq %rbx		# incq %r(1354)
	movq %rbx, -48(%rbp)		# movq %r(1354), -48(%rbp)
	jmp .L166		# jmp .L166
	.L167:		# .L167:
	movq -88(%rbp), %r15		# movq -88(%rbp), %r(1355)
	movq $0, %r12		# movq $0, %r(1292)
	movq %r12, %r14		# movq %r(1292), %r(744)
	movq $8, %r12		# movq $8, %r(1293)
	movq %r15, %r13		# movq %r(743), %r(1294)
	subq %r12, %r13		# subq %r(1293), %r(1294)
	movq (%r13), %r12		# movq (%r(1294)), %r(1295)
	cmpq %r12, %r14		# cmpq %r(1295), %r(744)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(744), %r(1296)
	salq $3, %r12		# salq $3, %r(1296)
	movq %r15, %rbx		# movq %r(743), %r(1297)
	addq %r12, %rbx		# addq %r(1296), %r(1297)
	movq (%rbx), %r12		# movq (%r(1297)), %r(1298)
	movq %r12, -48(%rbp)		# movq %r(1356), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(1299)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1357)
	addq %rbx, %r12		# addq %r(1299), %r(1300)
	salq $3, %r12		# salq $3, %r(1301)
	movq %r12, %rdi		# movq %r(1301), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1251)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1358)
	movq %r12, (%rbx)		# movq %r(1358), (%r(746))
	movq $8, %r12		# movq $8, %r(1302)
	addq %r12, %rbx		# addq %r(1302), %r(1303)
	movq %rbx, -32(%rbp)		# movq %r(1359), -32(%rbp)
	.L172:		# .L172:
	movq $0, %rbx		# movq $0, %r(1304)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1360)
	cmpq %rbx, %r12		# cmpq %r(1304), %r(1360)
	jle .L173		# jle .L173
	.L174:		# .L174:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1361)
	decq %rbx		# decq %r(1361)
	movq %rbx, -48(%rbp)		# movq %r(1361), -48(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1362)
	movq %rbx, %rdi		# movq %r(1362), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1252)
	movq %rbx, -24(%rbp)		# movq %r(1363), -24(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1364)
	movq %r12, -8(%rbp)		# movq %r(1365), -8(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1366)
	movq $8, %r13		# movq $8, %r(1305)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1367)
	movq %r14, -104(%rbp)		# movq %r(1368), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1369)
	subq %r13, %r12		# subq %r(1305), %r(1369)
	movq %r12, -104(%rbp)		# movq %r(1369), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1370)
	movq (%r12), %r12		# movq (%r(1370)), %r(1307)
	cmpq %r12, %rbx		# cmpq %r(1307), %r(751)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1308)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1371)
	addq %rbx, %r13		# addq %r(1308), %r(1309)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1372)
	movq %rbx, (%r13)		# movq %r(1372), (%r(1309))
	jmp .L172		# jmp .L172
	.L173:		# .L173:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1373)
	movq %rbx, %rax		# movq %r(1373), %rax
	jmp .L165		# jmp .L165
	.L165:		# .L165:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $160, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
