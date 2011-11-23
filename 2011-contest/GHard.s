.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $0, %r12		# movq $0, %r(994)
	movq %r12, -8(%rbp)		# movq %r(1053), -8(%rbp)
	movq $88, %rbx		# movq $88, %r(995)
	movq %rbx, %rdi		# movq %r(995), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(981)
	movq $10, %r12		# movq $10, %r(996)
	movq %r12, (%rbx)		# movq %r(996), (%r(971))
	movq $8, %r12		# movq $8, %r(997)
	addq %r12, %rbx		# addq %r(997), %r(998)
	movq $0, %r12		# movq $0, %r(999)
	movq %rbx, %r14		# movq %r(970), %r(1000)
	addq %r12, %r14		# addq %r(999), %r(1000)
	movq $0, %r12		# movq $0, %r(1001)
	movq %r12, (%r14)		# movq %r(1001), (%r(1000))
	movq $8, %r12		# movq $8, %r(1002)
	movq %rbx, %r14		# movq %r(970), %r(1003)
	addq %r12, %r14		# addq %r(1002), %r(1003)
	movq $0, %r12		# movq $0, %r(1004)
	movq %r12, (%r14)		# movq %r(1004), (%r(1003))
	movq $16, %r12		# movq $16, %r(1005)
	movq %rbx, %r14		# movq %r(970), %r(1006)
	addq %r12, %r14		# addq %r(1005), %r(1006)
	movq $0, %r12		# movq $0, %r(1007)
	movq %r12, (%r14)		# movq %r(1007), (%r(1006))
	movq $24, %r12		# movq $24, %r(1008)
	movq %rbx, %r14		# movq %r(970), %r(1009)
	addq %r12, %r14		# addq %r(1008), %r(1009)
	movq $0, %r12		# movq $0, %r(1010)
	movq %r12, (%r14)		# movq %r(1010), (%r(1009))
	movq $32, %r12		# movq $32, %r(1011)
	movq %rbx, %r14		# movq %r(970), %r(1012)
	addq %r12, %r14		# addq %r(1011), %r(1012)
	movq $0, %r12		# movq $0, %r(1013)
	movq %r12, (%r14)		# movq %r(1013), (%r(1012))
	movq $40, %r12		# movq $40, %r(1014)
	movq %rbx, %r14		# movq %r(970), %r(1015)
	addq %r12, %r14		# addq %r(1014), %r(1015)
	movq $0, %r12		# movq $0, %r(1016)
	movq %r12, (%r14)		# movq %r(1016), (%r(1015))
	movq $48, %r12		# movq $48, %r(1017)
	movq %rbx, %r14		# movq %r(970), %r(1018)
	addq %r12, %r14		# addq %r(1017), %r(1018)
	movq $0, %r12		# movq $0, %r(1019)
	movq %r12, (%r14)		# movq %r(1019), (%r(1018))
	movq $56, %r12		# movq $56, %r(1020)
	movq %rbx, %r14		# movq %r(970), %r(1021)
	addq %r12, %r14		# addq %r(1020), %r(1021)
	movq $0, %r12		# movq $0, %r(1022)
	movq %r12, (%r14)		# movq %r(1022), (%r(1021))
	movq $64, %r12		# movq $64, %r(1023)
	movq %rbx, %r14		# movq %r(970), %r(1024)
	addq %r12, %r14		# addq %r(1023), %r(1024)
	movq $0, %r12		# movq $0, %r(1025)
	movq %r12, (%r14)		# movq %r(1025), (%r(1024))
	movq $72, %r12		# movq $72, %r(1026)
	movq %rbx, %r14		# movq %r(970), %r(1027)
	addq %r12, %r14		# addq %r(1026), %r(1027)
	movq $0, %r12		# movq $0, %r(1028)
	movq %r12, (%r14)		# movq %r(1028), (%r(1027))
	movq %rbx, -24(%rbp)		# movq %r(1054), -24(%rbp)
	.L157:		# .L157:
	movq $1, %r12		# movq $1, %r(1029)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(982)
	testq $1, %rbx		# testq $1, %r(982)
	jne .L160		# jne .L160
	.L162:		# .L162:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(983)
	testq $1, %rbx		# testq $1, %r(983)
	jne .L160		# jne .L160
	.L161:		# .L161:
	movq $0, %r12		# movq $0, %r(1030)
	.L160:		# .L160:
	movq $1, %rbx		# movq $1, %r(1031)
	xorq %rbx, %r12		# xorq %r(1031), %r(1032)
	testq $1, %r12		# testq $1, %r(1032)
	jne .L159		# jne .L159
	.L165:		# .L165:
	movq $1, %r13		# movq $1, %r(1033)
	movq $20, %rbx		# movq $20, %r(1034)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1055)
	cmpq %rbx, %r12		# cmpq %r(1034), %r(1055)
	jl .L163		# jl .L163
	.L164:		# .L164:
	movq $0, %r13		# movq $0, %r(1035)
	.L163:		# .L163:
	movq $1, %rbx		# movq $1, %r(1036)
	xorq %rbx, %r13		# xorq %r(1036), %r(1037)
	testq $1, %r13		# testq $1, %r(1037)
	jne .L159		# jne .L159
	.L158:		# .L158:
	movq $8, %rbx		# movq $8, %r(1038)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1056)
	subq %rbx, %r13		# subq %r(1038), %r(1039)
	movq (%r13), %rbx		# movq (%r(1039)), %r(1040)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1057)
	cmpq %rbx, %r12		# cmpq %r(1040), %r(1057)
	jge .L167		# jge .L167
	.L166:		# .L166:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1058)
	movq %rbx, %r13		# movq %r(1058), %r(974)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1059)
	movq %rbx, %r12		# movq %r(1059), %r(975)
	movq $8, %r14		# movq $8, %r(1041)
	movq %r13, %rbx		# movq %r(974), %r(1060)
	movq %rbx, -16(%rbp)		# movq %r(1060), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1061)
	subq %r14, %rbx		# subq %r(1041), %r(1061)
	movq %rbx, -16(%rbp)		# movq %r(1061), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1062)
	movq (%rbx), %rbx		# movq (%r(1062)), %r(1043)
	cmpq %rbx, %r12		# cmpq %r(1043), %r(975)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(975), %r(1044)
	salq $3, %rbx		# salq $3, %r(1044)
	addq %rbx, %r13		# addq %r(1044), %r(1045)
	movq $10, %rbx		# movq $10, %r(1046)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1063)
	imulq %r12, %rbx		# imulq %r(1063), %r(1047)
	movq $-8, %r12		# movq $-8, %r(1048)
	addq %r12, %rbx		# addq %r(1048), %r(1049)
	movq %rbx, (%r13)		# movq %r(1049), (%r(1045))
	.L167:		# .L167:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1064)
	incq %rbx		# incq %r(1064)
	movq %rbx, -8(%rbp)		# movq %r(1064), -8(%rbp)
	jmp .L157		# jmp .L157
	.L159:		# .L159:
	movq $50, %rbx		# movq $50, %r(1050)
	movq %rbx, %rdi		# movq %r(1050), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L170(%rip), %rdi		# leaq .L170(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(985)
	leaq .L171(%rip), %rdi		# leaq .L171(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(986)
	movq %r13, %rdi		# movq %r(g), %rdi
	movq %rbx, %rsi		# movq %r(h), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(987)
	movq %r13, %rdi		# movq %r(g), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L156:		# .L156:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ifoo_pi
_Ifoo_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $0, %r12		# movq $0, %r(1065)
	cmpq %r12, %r13		# cmpq %r(1065), %r(x)
	jge .L174		# jge .L174
	.L173:		# .L173:
	movq $1, %r12		# movq $1, %r(1066)
	subq %r12, %r13		# subq %r(1066), %r(1067)
	movq %r13, %rdi		# movq %r(1067), %rdi
	call _Ibar_pi		# call _Ibar_pi
	.L174:		# .L174:
	.L172:		# .L172:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ibar_pi
_Ibar_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $1, %r12		# movq $1, %r(1068)
	subq %r12, %r13		# subq %r(1068), %r(1069)
	movq %r13, %rdi		# movq %r(1069), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	.L175:		# .L175:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IretTrue_b
_IretTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(1070)
	movq %rbx, %rax		# movq %r(1070), %rax
	jmp .L176		# jmp .L176
	.L176:		# .L176:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IretFalse_b
_IretFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %rbx		# movq $0, %r(1071)
	movq %rbx, %rax		# movq %r(1071), %rax
	jmp .L177		# jmp .L177
	.L177:		# .L177:
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %rbx		# movq (%r(p0)), %r(1072)
	movq %rbx, %r13		# movq %r(1072), %r(t10)
	movq %r13, %rbx		# movq %r(t10), %r(1073)
	salq $3, %rbx		# salq $3, %r(1073)
	movq $8, %r12		# movq $8, %r(1074)
	addq %r12, %rbx		# addq %r(1074), %r(1075)
	movq %rbx, %rdi		# movq %r(1075), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(991)
	movq %r12, -24(%rbp)		# movq %r(1087), -24(%rbp)
	.L14:		# .L14:
	movq %r13, %r12		# movq %r(t10), %r(1076)
	salq $3, %r12		# salq $3, %r(1076)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1088)
	movq %rbx, %r15		# movq %r(1088), %r(1077)
	addq %r12, %r15		# addq %r(1076), %r(1077)
	movq %r13, %rbx		# movq %r(t10), %r(1089)
	movq %rbx, -16(%rbp)		# movq %r(1089), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1090)
	salq $3, %rbx		# salq $3, %r(1090)
	movq %rbx, -16(%rbp)		# movq %r(1090), -16(%rbp)
	movq %r14, %rbx		# movq %r(p0), %r(1084)
	movq %rbx, -8(%rbp)		# movq %r(1084), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1085)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1091)
	addq %r12, %rbx		# addq %r(1091), %r(1085)
	movq %rbx, -8(%rbp)		# movq %r(1085), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1086)
	movq (%rbx), %rbx		# movq (%r(1086)), %r(1080)
	movq %rbx, (%r15)		# movq %r(1080), (%r(1077))
	decq %r13		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1081)
	cmpq %rbx, %r13		# cmpq %r(1081), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1082)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1092)
	addq %rbx, %r13		# addq %r(1082), %r(1083)
	movq %r13, %rax		# movq %r(1083), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(1116)
	movq %rbx, -32(%rbp)		# movq %r(1116), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1117)
	movq %rbx, -8(%rbp)		# movq %r(1117), -8(%rbp)
	movq $0, %r12		# movq $0, %r(1093)
	movq %r12, -48(%rbp)		# movq %r(1118), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(1094)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1119)
	subq %rbx, %r13		# subq %r(1094), %r(1095)
	movq (%r13), %r12		# movq (%r(1095)), %r(1096)
	movq %r12, -24(%rbp)		# movq %r(1120), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1097)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1121)
	subq %rbx, %r13		# subq %r(1097), %r(1098)
	movq (%r13), %rbx		# movq (%r(1098)), %r(1099)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1122)
	addq %rbx, %r12		# addq %r(1099), %r(1100)
	movq %r12, -16(%rbp)		# movq %r(1123), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(1101)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1124)
	addq %rbx, %r13		# addq %r(1101), %r(1102)
	movq %r13, %rdi		# movq %r(1102), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(992)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1125)
	movq %r12, (%r13)		# movq %r(1125), (%r(25))
	movq $8, %r12		# movq $8, %r(1103)
	addq %r12, %r13		# addq %r(1103), %r(1104)
	movq %r13, -40(%rbp)		# movq %r(1126), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1127)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1128)
	cmpq %rbx, %r12		# cmpq %r(1127), %r(1128)
	jge .L18		# jge .L18
	.L17:		# .L17:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1129)
	salq $3, %r13		# salq $3, %r(1105)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1130)
	movq %rbx, -64(%rbp)		# movq %r(1131), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1132)
	addq %r13, %r12		# addq %r(1105), %r(1132)
	movq %r12, -64(%rbp)		# movq %r(1132), -64(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1133)
	salq $3, %r13		# salq $3, %r(1107)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1134)
	movq %rbx, -56(%rbp)		# movq %r(1135), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1136)
	addq %r13, %r12		# addq %r(1107), %r(1136)
	movq %r12, -56(%rbp)		# movq %r(1136), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1137)
	movq (%rbx), %rbx		# movq (%r(1137)), %r(1109)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1138)
	movq %rbx, (%r12)		# movq %r(1109), (%r(1138))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1139)
	incq %rbx		# incq %r(1139)
	movq %rbx, -48(%rbp)		# movq %r(1139), -48(%rbp)
	jmp .L16		# jmp .L16
	.L18:		# .L18:
	.L19:		# .L19:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1140)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1141)
	cmpq %rbx, %r12		# cmpq %r(1140), %r(1141)
	jge .L21		# jge .L21
	.L20:		# .L20:
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1142)
	salq $3, %r13		# salq $3, %r(1110)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1143)
	addq %r13, %r14		# addq %r(1110), %r(1111)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1144)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1145)
	subq %r13, %rbx		# subq %r(1145), %r(1112)
	salq $3, %rbx		# salq $3, %r(1113)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1146)
	addq %rbx, %r12		# addq %r(1113), %r(1114)
	movq (%r12), %rbx		# movq (%r(1114)), %r(1115)
	movq %rbx, (%r14)		# movq %r(1115), (%r(1111))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1147)
	incq %rbx		# incq %r(1147)
	movq %rbx, -48(%rbp)		# movq %r(1147), -48(%rbp)
	jmp .L19		# jmp .L19
	.L21:		# .L21:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1148)
	movq %rbx, %rax		# movq %r(1148), %rax
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
.L170:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

#.section .rodata
.align 8
.L171:
	.quad 5
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
