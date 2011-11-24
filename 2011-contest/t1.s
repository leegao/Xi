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
	movq $32, %rbx		# movq $32, %r(1109)
	movq %rbx, %rdi		# movq %r(1109), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(1103)
	movq $3, %r12		# movq $3, %r(1110)
	movq %r12, (%r14)		# movq %r(1110), (%r(1103))
	movq $8, %r12		# movq $8, %r(1111)
	addq %r12, %r14		# addq %r(1111), %r(1112)
	movq $0, %r12		# movq $0, %r(1113)
	movq %r14, %rbx		# movq %r(1101), %r(1114)
	addq %r12, %rbx		# addq %r(1113), %r(1114)
	movq $7, %r12		# movq $7, %r(1115)
	movq %r12, (%rbx)		# movq %r(1115), (%r(1114))
	movq $8, %r12		# movq $8, %r(1116)
	movq %r14, %rbx		# movq %r(1101), %r(1117)
	addq %r12, %rbx		# addq %r(1116), %r(1117)
	movq $8, %r12		# movq $8, %r(1118)
	movq %r12, (%rbx)		# movq %r(1118), (%r(1117))
	movq $16, %r12		# movq $16, %r(1119)
	movq %r14, %rbx		# movq %r(1101), %r(1120)
	addq %r12, %rbx		# addq %r(1119), %r(1120)
	movq $9, %r12		# movq $9, %r(1121)
	movq %r12, (%rbx)		# movq %r(1121), (%r(1120))
	movq %r14, %rdi		# movq %r(1101), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
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
	movq $60, %rbx		# movq $60, %r(1122)
	movq %rbx, %rax		# movq %r(1122), %rax
	jmp .L194		# jmp .L194
	.L194:		# .L194:
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
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1166)
	movq %rbx, -24(%rbp)		# movq %r(1166), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1123)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1167)
	subq %rbx, %r13		# subq %r(1123), %r(1124)
	movq (%r13), %r12		# movq (%r(1124)), %r(1125)
	movq %r12, -64(%rbp)		# movq %r(1168), -64(%rbp)
	movq $1, %r12		# movq $1, %r(1126)
	movq %r12, -40(%rbp)		# movq %r(1169), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(1127)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1170)
	cmpq %rbx, %r12		# cmpq %r(1127), %r(1170)
	jne .L133		# jne .L133
	.L134:		# .L134:
	movq $0, %rbx		# movq $0, %r(1128)
	movq %rbx, %rax		# movq %r(1128), %rax
	jmp .L135		# jmp .L135
	.L135:		# .L135:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L133:		# .L133:
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1171)
	salq $3, %r12		# salq $3, %r(1129)
	movq %r12, %rdi		# movq %r(1129), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(1105)
	movq $1, %r12		# movq $1, %r(1130)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(1172)
	movq %r14, -88(%rbp)		# movq %r(1173), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1174)
	subq %r12, %rbx		# subq %r(1130), %r(1174)
	movq %rbx, -88(%rbp)		# movq %r(1174), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1175)
	movq %rbx, (%r13)		# movq %r(1175), (%r(1105))
	movq $8, %rbx		# movq $8, %r(1132)
	addq %rbx, %r13		# addq %r(1132), %r(1133)
	movq %r13, -16(%rbp)		# movq %r(1176), -16(%rbp)
	.L136:		# .L136:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1177)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1178)
	cmpq %r12, %rbx		# cmpq %r(1178), %r(1177)
	jge .L137		# jge .L137
	.L138:		# .L138:
	movq $8, %rbx		# movq $8, %r(1134)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1179)
	subq %rbx, %r13		# subq %r(1134), %r(1135)
	movq (%r13), %rbx		# movq (%r(1135)), %r(1136)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1180)
	cmpq %rbx, %r12		# cmpq %r(1136), %r(1180)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(1137)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1181)
	subq %rbx, %r14		# subq %r(1137), %r(1138)
	movq $8, %r13		# movq $8, %r(1139)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1182)
	movq %r12, -56(%rbp)		# movq %r(1183), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1184)
	subq %r13, %rbx		# subq %r(1139), %r(1184)
	movq %rbx, -56(%rbp)		# movq %r(1184), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1185)
	movq (%rbx), %rbx		# movq (%r(1185)), %r(1141)
	cmpq %rbx, %r14		# cmpq %r(1141), %r(602)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1142)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1186)
	addq %r14, %rbx		# addq %r(1142), %r(1143)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1187)
	salq $3, %r14		# salq $3, %r(1144)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1188)
	movq %r12, -48(%rbp)		# movq %r(1189), -48(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1190)
	addq %r14, %r13		# addq %r(1144), %r(1190)
	movq %r13, -48(%rbp)		# movq %r(1190), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1191)
	movq (%r12), %r12		# movq (%r(1191)), %r(1146)
	movq %r12, (%rbx)		# movq %r(1146), (%r(1143))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1192)
	incq %rbx		# incq %r(1192)
	movq %rbx, -40(%rbp)		# movq %r(1192), -40(%rbp)
	jmp .L136		# jmp .L136
	.L137:		# .L137:
	movq $0, %r13		# movq $0, %r(1147)
	movq $8, %r12		# movq $8, %r(1148)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1193)
	subq %r12, %r14		# subq %r(1148), %r(1149)
	movq (%r14), %rbx		# movq (%r(1149)), %r(1150)
	cmpq %rbx, %r13		# cmpq %r(1150), %r(1147)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(1151)
	salq $3, %r13		# salq $3, %r(1152)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1194)
	addq %r13, %rbx		# addq %r(1152), %r(1153)
	movq (%rbx), %r12		# movq (%r(1153)), %r(1154)
	movq %r12, -40(%rbp)		# movq %r(1195), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(1155)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1196)
	addq %rbx, %r12		# addq %r(1155), %r(1156)
	salq $3, %r12		# salq $3, %r(1157)
	movq %r12, %rdi		# movq %r(1157), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(1106)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1197)
	movq %r12, (%rbx)		# movq %r(1197), (%r(1106))
	movq $8, %r12		# movq $8, %r(1158)
	addq %r12, %rbx		# addq %r(1158), %r(1159)
	movq %rbx, -72(%rbp)		# movq %r(1198), -72(%rbp)
	.L142:		# .L142:
	movq $0, %rbx		# movq $0, %r(1160)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1199)
	cmpq %rbx, %r12		# cmpq %r(1160), %r(1199)
	jle .L143		# jle .L143
	.L144:		# .L144:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1200)
	decq %rbx		# decq %r(1200)
	movq %rbx, -40(%rbp)		# movq %r(1200), -40(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1201)
	movq %rbx, %rdi		# movq %r(1201), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(1202)
	movq %rbx, -8(%rbp)		# movq %r(1202), -8(%rbp)
	movq $8, %r12		# movq $8, %r(1161)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1203)
	movq %r13, -32(%rbp)		# movq %r(1204), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1205)
	subq %r12, %rbx		# subq %r(1161), %r(1205)
	movq %rbx, -32(%rbp)		# movq %r(1205), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1206)
	movq (%rbx), %rbx		# movq (%r(1206)), %r(1163)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1207)
	cmpq %rbx, %r12		# cmpq %r(1163), %r(1207)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1208)
	salq $3, %r13		# salq $3, %r(1164)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1209)
	movq %rbx, -80(%rbp)		# movq %r(1210), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1211)
	addq %r13, %r12		# addq %r(1164), %r(1211)
	movq %r12, -80(%rbp)		# movq %r(1211), -80(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1212)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1213)
	movq %rbx, (%r12)		# movq %r(1212), (%r(1213))
	jmp .L142		# jmp .L142
	.L143:		# .L143:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1214)
	movq %rbx, %rax		# movq %r(1214), %rax
	jmp .L135		# jmp .L135
	
error_outofbounds:
call _I_outOfBounds_p
