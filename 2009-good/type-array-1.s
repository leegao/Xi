.att_syntax prefix
.text
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
	leaq .L318(%rip), %rdi		# leaq .L318(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(1159)
	movq %r13, %rdi		# movq %r(1159), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L317:		# .L317:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imodify_pai
_Imodify_pai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(arr)
	movq %r15, %r15		# movq %r(arr), %r(1138)
	movq $0, %r12		# movq $0, %r(1174)
	movq %r12, %r14		# movq %r(1174), %r(1139)
	movq $8, %r12		# movq $8, %r(1175)
	movq %r15, %r13		# movq %r(1138), %r(1176)
	subq %r12, %r13		# subq %r(1175), %r(1176)
	movq (%r13), %r12		# movq (%r(1176)), %r(1177)
	cmpq %r12, %r14		# cmpq %r(1177), %r(1139)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1139), %r(1178)
	salq $3, %r12		# salq $3, %r(1178)
	movq %r15, %rbx		# movq %r(1138), %r(1179)
	addq %r12, %rbx		# addq %r(1178), %r(1179)
	movq $-42, %r12		# movq $-42, %r(1180)
	movq %r12, (%rbx)		# movq %r(1180), (%r(1179))
	.L319:		# .L319:
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
	subq $128, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $88, %rbx		# movq $88, %r(1181)
	movq %rbx, %rdi		# movq %r(1181), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1163)
	movq %rbx, %rbx		# movq %r(1163), %r(1143)
	movq $10, %r12		# movq $10, %r(1182)
	movq %r12, (%rbx)		# movq %r(1182), (%r(1143))
	movq $8, %r12		# movq $8, %r(1183)
	movq %rbx, %rbx		# movq %r(1143), %r(1184)
	addq %r12, %rbx		# addq %r(1183), %r(1184)
	movq %rbx, %rbx		# movq %r(1184), %r(1142)
	movq $0, %r12		# movq $0, %r(1185)
	movq %rbx, %r14		# movq %r(1142), %r(1186)
	addq %r12, %r14		# addq %r(1185), %r(1186)
	movq $0, %r12		# movq $0, %r(1187)
	movq %r12, (%r14)		# movq %r(1187), (%r(1186))
	movq $8, %r12		# movq $8, %r(1188)
	movq %rbx, %r14		# movq %r(1142), %r(1189)
	addq %r12, %r14		# addq %r(1188), %r(1189)
	movq $0, %r12		# movq $0, %r(1190)
	movq %r12, (%r14)		# movq %r(1190), (%r(1189))
	movq $16, %r12		# movq $16, %r(1191)
	movq %rbx, %r14		# movq %r(1142), %r(1192)
	addq %r12, %r14		# addq %r(1191), %r(1192)
	movq $0, %r12		# movq $0, %r(1193)
	movq %r12, (%r14)		# movq %r(1193), (%r(1192))
	movq $24, %r12		# movq $24, %r(1194)
	movq %rbx, %r14		# movq %r(1142), %r(1195)
	addq %r12, %r14		# addq %r(1194), %r(1195)
	movq $0, %r12		# movq $0, %r(1196)
	movq %r12, (%r14)		# movq %r(1196), (%r(1195))
	movq $32, %r12		# movq $32, %r(1197)
	movq %rbx, %r14		# movq %r(1142), %r(1198)
	addq %r12, %r14		# addq %r(1197), %r(1198)
	movq $0, %r12		# movq $0, %r(1199)
	movq %r12, (%r14)		# movq %r(1199), (%r(1198))
	movq $40, %r12		# movq $40, %r(1200)
	movq %rbx, %r14		# movq %r(1142), %r(1201)
	addq %r12, %r14		# addq %r(1200), %r(1201)
	movq $0, %r12		# movq $0, %r(1202)
	movq %r12, (%r14)		# movq %r(1202), (%r(1201))
	movq $48, %r12		# movq $48, %r(1203)
	movq %rbx, %r14		# movq %r(1142), %r(1204)
	addq %r12, %r14		# addq %r(1203), %r(1204)
	movq $0, %r12		# movq $0, %r(1205)
	movq %r12, (%r14)		# movq %r(1205), (%r(1204))
	movq $56, %r12		# movq $56, %r(1206)
	movq %rbx, %r14		# movq %r(1142), %r(1207)
	addq %r12, %r14		# addq %r(1206), %r(1207)
	movq $0, %r12		# movq $0, %r(1208)
	movq %r12, (%r14)		# movq %r(1208), (%r(1207))
	movq $64, %r12		# movq $64, %r(1209)
	movq %rbx, %r14		# movq %r(1142), %r(1210)
	addq %r12, %r14		# addq %r(1209), %r(1210)
	movq $0, %r12		# movq $0, %r(1211)
	movq %r12, (%r14)		# movq %r(1211), (%r(1210))
	movq $72, %r12		# movq $72, %r(1212)
	movq %rbx, %r14		# movq %r(1142), %r(1213)
	addq %r12, %r14		# addq %r(1212), %r(1213)
	movq $0, %r12		# movq $0, %r(1214)
	movq %r12, (%r14)		# movq %r(1214), (%r(1213))
	movq %rbx, %rbx		# movq %r(1142), %r(1269)
	movq %rbx, -32(%rbp)		# movq %r(1269), -32(%rbp)
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(1270)
	movq %r15, %r15		# movq %r(1270), %r(1144)
	movq $0, %r12		# movq $0, %r(1215)
	movq %r12, %r14		# movq %r(1215), %r(1145)
	movq $8, %r12		# movq $8, %r(1216)
	movq %r15, %r13		# movq %r(1144), %r(1217)
	subq %r12, %r13		# subq %r(1216), %r(1217)
	movq (%r13), %r12		# movq (%r(1217)), %r(1218)
	cmpq %r12, %r14		# cmpq %r(1218), %r(1145)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1145), %r(1219)
	salq $3, %r12		# salq $3, %r(1219)
	movq %r15, %rbx		# movq %r(1144), %r(1220)
	addq %r12, %rbx		# addq %r(1219), %r(1220)
	movq $42, %r12		# movq $42, %r(1221)
	movq %r12, (%rbx)		# movq %r(1221), (%r(1220))
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(1271)
	movq %r15, %r15		# movq %r(1271), %r(1146)
	movq $1, %r12		# movq $1, %r(1222)
	movq %r12, %r14		# movq %r(1222), %r(1147)
	movq $8, %r12		# movq $8, %r(1223)
	movq %r15, %r13		# movq %r(1146), %r(1224)
	subq %r12, %r13		# subq %r(1223), %r(1224)
	movq (%r13), %r12		# movq (%r(1224)), %r(1225)
	cmpq %r12, %r14		# cmpq %r(1225), %r(1147)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1147), %r(1226)
	salq $3, %r12		# salq $3, %r(1226)
	movq %r15, %rbx		# movq %r(1146), %r(1227)
	addq %r12, %rbx		# addq %r(1226), %r(1227)
	movq $52, %r12		# movq $52, %r(1228)
	movq %r12, (%rbx)		# movq %r(1228), (%r(1227))
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(1272)
	movq %r15, %r15		# movq %r(1272), %r(1148)
	movq $2, %r12		# movq $2, %r(1229)
	movq %r12, %r14		# movq %r(1229), %r(1149)
	movq $8, %r12		# movq $8, %r(1230)
	movq %r15, %r13		# movq %r(1148), %r(1231)
	subq %r12, %r13		# subq %r(1230), %r(1231)
	movq (%r13), %r12		# movq (%r(1231)), %r(1232)
	cmpq %r12, %r14		# cmpq %r(1232), %r(1149)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(1149), %r(1233)
	salq $3, %r12		# salq $3, %r(1233)
	movq %r15, %rbx		# movq %r(1148), %r(1234)
	addq %r12, %rbx		# addq %r(1233), %r(1234)
	movq $62, %r12		# movq $62, %r(1235)
	movq %r12, (%rbx)		# movq %r(1235), (%r(1234))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1273)
	movq %rbx, %rdi		# movq %r(1273), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L329(%rip), %rdi		# leaq .L329(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1274)
	movq %rbx, -24(%rbp)		# movq %r(1274), -24(%rbp)
	movq $1, %r12		# movq $1, %r(1237)
	movq %r12, %r12		# movq %r(1237), %r(1275)
	movq %r12, -64(%rbp)		# movq %r(1275), -64(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1276)
	movq %r12, %r12		# movq %r(1276), %r(1277)
	movq %r12, -40(%rbp)		# movq %r(1277), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(1238)
	movq %rbx, %rbx		# movq %r(1238), %r(1151)
	movq $8, %r13		# movq $8, %r(1239)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1278)
	movq %r14, %r14		# movq %r(1278), %r(1279)
	movq %r14, -16(%rbp)		# movq %r(1279), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1280)
	subq %r13, %r12		# subq %r(1239), %r(1280)
	movq %r12, -16(%rbp)		# movq %r(1280), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1281)
	movq (%r12), %r12		# movq (%r(1281)), %r(1241)
	cmpq %r12, %rbx		# cmpq %r(1241), %r(1151)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1151), %r(1242)
	salq $3, %rbx		# salq $3, %r(1242)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1282)
	movq %r13, %r13		# movq %r(1282), %r(1243)
	addq %rbx, %r13		# addq %r(1242), %r(1243)
	movq (%r13), %rbx		# movq (%r(1243)), %r(1244)
	movq $-42, %r12		# movq $-42, %r(1245)
	cmpq %r12, %rbx		# cmpq %r(1245), %r(1244)
	je .L332		# je .L332
	.L333:		# .L333:
	movq $0, %r12		# movq $0, %r(1246)
	movq %r12, %r12		# movq %r(1246), %r(1283)
	movq %r12, -64(%rbp)		# movq %r(1283), -64(%rbp)
	.L332:		# .L332:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1284)
	movq %rbx, %rdi		# movq %r(1284), %rdi
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1285)
	movq %rbx, %rsi		# movq %r(1285), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L334(%rip), %rdi		# leaq .L334(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1286)
	movq %rbx, -8(%rbp)		# movq %r(1286), -8(%rbp)
	movq $1, %r12		# movq $1, %r(1248)
	movq %r12, %r12		# movq %r(1248), %r(1287)
	movq %r12, -72(%rbp)		# movq %r(1287), -72(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1288)
	movq %r12, %r12		# movq %r(1288), %r(1289)
	movq %r12, -48(%rbp)		# movq %r(1289), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(1249)
	movq %rbx, %rbx		# movq %r(1249), %r(1154)
	movq $8, %r13		# movq $8, %r(1250)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1290)
	movq %r14, %r14		# movq %r(1290), %r(1291)
	movq %r14, -56(%rbp)		# movq %r(1291), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1292)
	subq %r13, %r12		# subq %r(1250), %r(1292)
	movq %r12, -56(%rbp)		# movq %r(1292), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1293)
	movq (%r12), %r12		# movq (%r(1293)), %r(1252)
	cmpq %r12, %rbx		# cmpq %r(1252), %r(1154)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(1154), %r(1253)
	salq $3, %rbx		# salq $3, %r(1253)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1294)
	movq %r13, %r13		# movq %r(1294), %r(1254)
	addq %rbx, %r13		# addq %r(1253), %r(1254)
	movq (%r13), %rbx		# movq (%r(1254)), %r(1255)
	movq $52, %r12		# movq $52, %r(1256)
	cmpq %r12, %rbx		# cmpq %r(1256), %r(1255)
	je .L337		# je .L337
	.L338:		# .L338:
	movq $0, %r12		# movq $0, %r(1257)
	movq %r12, %r12		# movq %r(1257), %r(1295)
	movq %r12, -72(%rbp)		# movq %r(1295), -72(%rbp)
	.L337:		# .L337:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1296)
	movq %rbx, %rdi		# movq %r(1296), %rdi
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1297)
	movq %rbx, %rsi		# movq %r(1297), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L339(%rip), %rdi		# leaq .L339(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(1302)
	movq %rbx, -104(%rbp)		# movq %r(1302), -104(%rbp)
	movq $1, %r12		# movq $1, %r(1259)
	movq %r12, %r12		# movq %r(1259), %r(1303)
	movq %r12, -112(%rbp)		# movq %r(1303), -112(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1298)
	movq %r12, %r12		# movq %r(1298), %r(1304)
	movq %r12, -96(%rbp)		# movq %r(1304), -96(%rbp)
	movq $2, %r12		# movq $2, %r(1260)
	movq %r12, %r12		# movq %r(1260), %r(1305)
	movq %r12, -88(%rbp)		# movq %r(1305), -88(%rbp)
	movq $8, %r12		# movq $8, %r(1261)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(1306)
	movq %r13, %r13		# movq %r(1306), %r(1299)
	movq %r13, -80(%rbp)		# movq %r(1299), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1300)
	subq %r12, %rbx		# subq %r(1261), %r(1300)
	movq %rbx, -80(%rbp)		# movq %r(1300), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1301)
	movq (%rbx), %rbx		# movq (%r(1301)), %r(1263)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1307)
	cmpq %rbx, %r12		# cmpq %r(1263), %r(1307)
	jae error_outofbounds		# jae error_outofbounds
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1308)
	movq %r13, %r13		# movq %r(1308), %r(1264)
	salq $3, %r13		# salq $3, %r(1264)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1309)
	movq %rbx, %rbx		# movq %r(1309), %r(1265)
	addq %r13, %rbx		# addq %r(1264), %r(1265)
	movq (%rbx), %rbx		# movq (%r(1265)), %r(1266)
	movq $62, %r12		# movq $62, %r(1267)
	cmpq %r12, %rbx		# cmpq %r(1267), %r(1266)
	je .L342		# je .L342
	.L343:		# .L343:
	movq $0, %r12		# movq $0, %r(1268)
	movq %r12, %r12		# movq %r(1268), %r(1310)
	movq %r12, -112(%rbp)		# movq %r(1310), -112(%rbp)
	.L342:		# .L342:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1311)
	movq %rbx, %rdi		# movq %r(1311), %rdi
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1312)
	movq %rbx, %rsi		# movq %r(1312), %rsi
	call _Itest_paib		# call _Itest_paib
	.L322:		# .L322:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $128, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1328)
	movq %rbx, -32(%rbp)		# movq %r(1328), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1329)
	movq (%rbx), %r12		# movq (%r(1329)), %r(1313)
	movq %r12, %r12		# movq %r(1313), %r(1330)
	movq %r12, -24(%rbp)		# movq %r(1330), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1331)
	movq %rbx, %rbx		# movq %r(1331), %r(1314)
	salq $3, %rbx		# salq $3, %r(1314)
	movq $8, %r12		# movq $8, %r(1315)
	movq %rbx, %rbx		# movq %r(1314), %r(1316)
	addq %r12, %rbx		# addq %r(1315), %r(1316)
	movq %rbx, %rdi		# movq %r(1316), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(1171)
	movq %r12, %r12		# movq %r(1171), %r(1332)
	movq %r12, -40(%rbp)		# movq %r(1332), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1333)
	movq %r13, %r13		# movq %r(1333), %r(1317)
	salq $3, %r13		# salq $3, %r(1317)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1334)
	movq %rbx, %rbx		# movq %r(1334), %r(1335)
	movq %rbx, -16(%rbp)		# movq %r(1335), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1336)
	addq %r13, %r12		# addq %r(1317), %r(1336)
	movq %r12, -16(%rbp)		# movq %r(1336), -16(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1337)
	movq %r13, %r13		# movq %r(1337), %r(1319)
	salq $3, %r13		# salq $3, %r(1319)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1338)
	movq %rbx, %rbx		# movq %r(1338), %r(1325)
	movq %rbx, -8(%rbp)		# movq %r(1325), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1326)
	addq %r13, %r12		# addq %r(1319), %r(1326)
	movq %r12, -8(%rbp)		# movq %r(1326), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1327)
	movq (%rbx), %rbx		# movq (%r(1327)), %r(1321)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1339)
	movq %rbx, (%r12)		# movq %r(1321), (%r(1339))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1340)
	decq %rbx		# decq %r(1340)
	movq %rbx, -24(%rbp)		# movq %r(1340), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1322)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1341)
	cmpq %rbx, %r12		# cmpq %r(1322), %r(1341)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1323)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1342)
	movq %r13, %r13		# movq %r(1342), %r(1324)
	addq %rbx, %r13		# addq %r(1323), %r(1324)
	movq %r13, %rax		# movq %r(1324), %rax
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
.L329:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L334:
	.quad 2
	.quad 35
	.quad 50
	.text

.section .rodata
.align 8
.L318:
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
.L339:
	.quad 2
	.quad 35
	.quad 51
	.text

error_outofbounds:
call _I_outOfBounds_p
