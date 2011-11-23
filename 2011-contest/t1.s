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
	movq $32, %rbx		# movq $32, %r(1169)
	movq %rbx, %rdi		# movq %r(1169), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1163)
	movq $3, %r12		# movq $3, %r(1170)
	movq %r12, (%rbx)		# movq %r(1170), (%r(1162))
	movq $8, %r12		# movq $8, %r(1171)
	addq %r12, %rbx		# addq %r(1171), %r(1172)
	movq $0, %r12		# movq $0, %r(1173)
	movq %rbx, %r14		# movq %r(1161), %r(1174)
	addq %r12, %r14		# addq %r(1173), %r(1174)
	movq $7, %r12		# movq $7, %r(1175)
	movq %r12, (%r14)		# movq %r(1175), (%r(1174))
	movq $8, %r12		# movq $8, %r(1176)
	movq %rbx, %r14		# movq %r(1161), %r(1177)
	addq %r12, %r14		# addq %r(1176), %r(1177)
	movq $8, %r12		# movq $8, %r(1178)
	movq %r12, (%r14)		# movq %r(1178), (%r(1177))
	movq $16, %r12		# movq $16, %r(1179)
	movq %rbx, %r14		# movq %r(1161), %r(1180)
	addq %r12, %r14		# addq %r(1179), %r(1180)
	movq $9, %r12		# movq $9, %r(1181)
	movq %r12, (%r14)		# movq %r(1181), (%r(1180))
	movq %rbx, %rdi		# movq %r(a), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L190:		# .L190:
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
	movq $60, %rbx		# movq $60, %r(1182)
	movq %rbx, %rax		# movq %r(1182), %rax
	jmp .L192		# jmp .L192
	.L192:		# .L192:
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
	movq %rdi, %rbx		# movq %rdi, %r(1223)
	movq %rbx, -32(%rbp)		# movq %r(1223), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(1183)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1224)
	subq %rbx, %r13		# subq %r(1183), %r(1184)
	movq (%r13), %r12		# movq (%r(1184)), %r(1185)
	movq %r12, -128(%rbp)		# movq %r(1225), -128(%rbp)
	movq $1, %r12		# movq $1, %r(1186)
	movq %r12, -88(%rbp)		# movq %r(1226), -88(%rbp)
	movq $0, %rbx		# movq $0, %r(1187)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1227)
	cmpq %rbx, %r12		# cmpq %r(1187), %r(1227)
	jne .L131		# jne .L131
	.L132:		# .L132:
	movq $0, %rbx		# movq $0, %r(1188)
	movq %rbx, %rax		# movq %r(1188), %rax
	jmp .L133		# jmp .L133
	.L131:		# .L131:
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1228)
	movq %rbx, %rdi		# movq %r(1228), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1165)
	movq $1, %r13		# movq $1, %r(1189)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1229)
	movq %rbx, -64(%rbp)		# movq %r(1230), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1231)
	subq %r13, %r12		# subq %r(1189), %r(1231)
	movq %r12, -64(%rbp)		# movq %r(1231), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1232)
	movq %r12, (%r14)		# movq %r(1232), (%r(657))
	movq $8, %r12		# movq $8, %r(1191)
	addq %r12, %r14		# addq %r(1191), %r(1192)
	movq %r14, -112(%rbp)		# movq %r(1233), -112(%rbp)
	.L134:		# .L134:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1234)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1235)
	cmpq %r12, %rbx		# cmpq %r(1235), %r(1234)
	jge .L135		# jge .L135
	.L136:		# .L136:
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1236)
	movq %r12, -56(%rbp)		# movq %r(1237), -56(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1238)
	movq %r12, -96(%rbp)		# movq %r(1239), -96(%rbp)
	movq $8, %r12		# movq $8, %r(1193)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1240)
	movq %r13, -72(%rbp)		# movq %r(1241), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1242)
	subq %r12, %rbx		# subq %r(1193), %r(1242)
	movq %rbx, -72(%rbp)		# movq %r(1242), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1243)
	movq (%rbx), %rbx		# movq (%r(1243)), %r(1195)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1244)
	cmpq %rbx, %r12		# cmpq %r(1195), %r(1244)
	jae error_outofbounds		# jae error_outofbounds
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1245)
	movq %r12, -80(%rbp)		# movq %r(1246), -80(%rbp)
	movq $1, %r12		# movq $1, %r(1196)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1247)
	movq %r13, -16(%rbp)		# movq %r(1248), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1249)
	subq %r12, %rbx		# subq %r(1196), %r(1249)
	movq %rbx, -16(%rbp)		# movq %r(1249), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1250)
	movq %r12, -136(%rbp)		# movq %r(1251), -136(%rbp)
	movq $8, %r12		# movq $8, %r(1198)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1252)
	movq %r13, -104(%rbp)		# movq %r(1253), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1254)
	subq %r12, %rbx		# subq %r(1198), %r(1254)
	movq %rbx, -104(%rbp)		# movq %r(1254), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1255)
	movq (%rbx), %rbx		# movq (%r(1255)), %r(1200)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1256)
	cmpq %rbx, %r12		# cmpq %r(1200), %r(1256)
	jae error_outofbounds		# jae error_outofbounds
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(1257)
	salq $3, %r13		# salq $3, %r(1201)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1258)
	movq %rbx, -8(%rbp)		# movq %r(1259), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1260)
	addq %r13, %r12		# addq %r(1201), %r(1260)
	movq %r12, -8(%rbp)		# movq %r(1260), -8(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1261)
	movq %r12, -120(%rbp)		# movq %r(1262), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(1263)
	salq $3, %rbx		# salq $3, %r(1263)
	movq %rbx, -120(%rbp)		# movq %r(1263), -120(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1264)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1265)
	addq %r12, %r13		# addq %r(1265), %r(1204)
	movq (%r13), %rbx		# movq (%r(1204)), %r(1205)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1266)
	movq %rbx, (%r12)		# movq %r(1205), (%r(1266))
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1267)
	incq %rbx		# incq %r(1267)
	movq %rbx, -88(%rbp)		# movq %r(1267), -88(%rbp)
	jmp .L134		# jmp .L134
	.L135:		# .L135:
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(1268)
	movq $0, %r12		# movq $0, %r(1206)
	movq %r12, %r14		# movq %r(1206), %r(664)
	movq $8, %r12		# movq $8, %r(1207)
	movq %r15, %r13		# movq %r(663), %r(1208)
	subq %r12, %r13		# subq %r(1207), %r(1208)
	movq (%r13), %r12		# movq (%r(1208)), %r(1209)
	cmpq %r12, %r14		# cmpq %r(1209), %r(664)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(664), %r(1210)
	salq $3, %r12		# salq $3, %r(1210)
	movq %r15, %rbx		# movq %r(663), %r(1211)
	addq %r12, %rbx		# addq %r(1210), %r(1211)
	movq (%rbx), %r12		# movq (%r(1211)), %r(1212)
	movq %r12, -88(%rbp)		# movq %r(1269), -88(%rbp)
	movq $1, %rbx		# movq $1, %r(1213)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1270)
	addq %rbx, %r13		# addq %r(1213), %r(1214)
	movq %r13, %rdi		# movq %r(1214), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1166)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1271)
	movq %r12, (%rbx)		# movq %r(1271), (%r(666))
	movq $8, %r12		# movq $8, %r(1215)
	addq %r12, %rbx		# addq %r(1215), %r(1216)
	movq %rbx, -48(%rbp)		# movq %r(1272), -48(%rbp)
	.L140:		# .L140:
	movq $0, %rbx		# movq $0, %r(1217)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1273)
	cmpq %rbx, %r12		# cmpq %r(1217), %r(1273)
	jle .L141		# jle .L141
	.L142:		# .L142:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1274)
	decq %rbx		# decq %r(1274)
	movq %rbx, -88(%rbp)		# movq %r(1274), -88(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1275)
	movq %rbx, %rdi		# movq %r(1275), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1167)
	movq %rbx, -144(%rbp)		# movq %r(1276), -144(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1277)
	movq %r12, -40(%rbp)		# movq %r(1278), -40(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1279)
	movq $8, %r13		# movq $8, %r(1218)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1280)
	movq %r14, -24(%rbp)		# movq %r(1281), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1282)
	subq %r13, %r12		# subq %r(1218), %r(1282)
	movq %r12, -24(%rbp)		# movq %r(1282), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1283)
	movq (%r12), %r12		# movq (%r(1283)), %r(1220)
	cmpq %r12, %rbx		# cmpq %r(1220), %r(671)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1221)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1284)
	addq %rbx, %r13		# addq %r(1221), %r(1222)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1285)
	movq %rbx, (%r13)		# movq %r(1285), (%r(1222))
	jmp .L140		# jmp .L140
	.L141:		# .L141:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1286)
	movq %rbx, %rax		# movq %r(1286), %rax
	jmp .L133		# jmp .L133
	.L133:		# .L133:
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
