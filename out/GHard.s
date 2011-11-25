.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $0, %r13		# movq $0, %r(952)
	movq %r13, %rbx		# movq %r(952), %r(1011)
	movq %rbx, -24(%rbp)		# movq %r(1011), -24(%rbp)
	movq $88, %rbx		# movq $88, %r(953)
	movq %rbx, %rdi		# movq %r(953), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(939)
	movq $10, %rbx		# movq $10, %r(954)
	movq %rbx, (%r14)		# movq %r(954), (%r(939))
	movq $8, %rbx		# movq $8, %r(955)
	movq %r14, %r13		# movq %r(939), %r(956)
	addq %rbx, %r13		# addq %r(955), %r(956)
	movq %r13, %r12		# movq %r(956), %r(1012)
	movq %r12, -8(%rbp)		# movq %r(1012), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(957)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1013)
	movq %r14, %r12		# movq %r(1013), %r(958)
	addq %rbx, %r12		# addq %r(957), %r(958)
	movq $0, %rbx		# movq $0, %r(959)
	movq %rbx, (%r12)		# movq %r(959), (%r(958))
	movq $8, %rbx		# movq $8, %r(960)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1014)
	movq %r14, %r12		# movq %r(1014), %r(961)
	addq %rbx, %r12		# addq %r(960), %r(961)
	movq $0, %rbx		# movq $0, %r(962)
	movq %rbx, (%r12)		# movq %r(962), (%r(961))
	movq $16, %rbx		# movq $16, %r(963)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1015)
	movq %r14, %r12		# movq %r(1015), %r(964)
	addq %rbx, %r12		# addq %r(963), %r(964)
	movq $0, %rbx		# movq $0, %r(965)
	movq %rbx, (%r12)		# movq %r(965), (%r(964))
	movq $24, %rbx		# movq $24, %r(966)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1016)
	movq %r14, %r12		# movq %r(1016), %r(967)
	addq %rbx, %r12		# addq %r(966), %r(967)
	movq $0, %rbx		# movq $0, %r(968)
	movq %rbx, (%r12)		# movq %r(968), (%r(967))
	movq $32, %rbx		# movq $32, %r(969)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1017)
	movq %r14, %r12		# movq %r(1017), %r(970)
	addq %rbx, %r12		# addq %r(969), %r(970)
	movq $0, %rbx		# movq $0, %r(971)
	movq %rbx, (%r12)		# movq %r(971), (%r(970))
	movq $40, %rbx		# movq $40, %r(972)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1018)
	movq %r14, %r12		# movq %r(1018), %r(973)
	addq %rbx, %r12		# addq %r(972), %r(973)
	movq $0, %rbx		# movq $0, %r(974)
	movq %rbx, (%r12)		# movq %r(974), (%r(973))
	movq $48, %rbx		# movq $48, %r(975)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1019)
	movq %r14, %r12		# movq %r(1019), %r(976)
	addq %rbx, %r12		# addq %r(975), %r(976)
	movq $0, %rbx		# movq $0, %r(977)
	movq %rbx, (%r12)		# movq %r(977), (%r(976))
	movq $56, %rbx		# movq $56, %r(978)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1020)
	movq %r14, %r12		# movq %r(1020), %r(979)
	addq %rbx, %r12		# addq %r(978), %r(979)
	movq $0, %rbx		# movq $0, %r(980)
	movq %rbx, (%r12)		# movq %r(980), (%r(979))
	movq $64, %rbx		# movq $64, %r(981)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1021)
	movq %r14, %r12		# movq %r(1021), %r(982)
	addq %rbx, %r12		# addq %r(981), %r(982)
	movq $0, %rbx		# movq $0, %r(983)
	movq %rbx, (%r12)		# movq %r(983), (%r(982))
	movq $72, %rbx		# movq $72, %r(984)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1022)
	movq %r14, %r12		# movq %r(1022), %r(985)
	addq %rbx, %r12		# addq %r(984), %r(985)
	movq $0, %rbx		# movq $0, %r(986)
	movq %rbx, (%r12)		# movq %r(986), (%r(985))
	jmp .L137		# jmp .L137
	.L137:		# .L137:
	movq $1, %r12		# movq $1, %r(987)
	movq %r12, %r14		# movq %r(987), %r(923)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(940)
	testq $1, %rbx		# testq $1, %r(940)
	jne .L140		# jne .L140
	.L142:		# .L142:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(941)
	testq $1, %rbx		# testq $1, %r(941)
	jne .L140		# jne .L140
	.L141:		# .L141:
	movq $0, %r12		# movq $0, %r(988)
	movq %r12, %r14		# movq %r(988), %r(923)
	jmp .L140		# jmp .L140
	.L140:		# .L140:
	movq $1, %rbx		# movq $1, %r(989)
	movq %r14, %r13		# movq %r(923), %r(990)
	xorq %rbx, %r13		# xorq %r(989), %r(990)
	testq $1, %r13		# testq $1, %r(990)
	jne .L139		# jne .L139
	.L145:		# .L145:
	movq $1, %r12		# movq $1, %r(991)
	movq %r12, %r14		# movq %r(991), %r(924)
	movq $20, %rbx		# movq $20, %r(992)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1023)
	cmpq %rbx, %r12		# cmpq %r(992), %r(1023)
	jl .L143		# jl .L143
	.L144:		# .L144:
	movq $0, %r12		# movq $0, %r(993)
	movq %r12, %r14		# movq %r(993), %r(924)
	jmp .L143		# jmp .L143
	.L143:		# .L143:
	movq $1, %rbx		# movq $1, %r(994)
	movq %r14, %r13		# movq %r(924), %r(995)
	xorq %rbx, %r13		# xorq %r(994), %r(995)
	testq $1, %r13		# testq $1, %r(995)
	jne .L139		# jne .L139
	.L138:		# .L138:
	movq $8, %rbx		# movq $8, %r(996)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1024)
	movq %r14, %r12		# movq %r(1024), %r(997)
	subq %rbx, %r12		# subq %r(996), %r(997)
	movq (%r12), %rbx		# movq (%r(997)), %r(998)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1025)
	cmpq %rbx, %r12		# cmpq %r(998), %r(1025)
	jge .L147		# jge .L147
	.L146:		# .L146:
	movq $8, %rbx		# movq $8, %r(999)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1026)
	movq %r14, %r12		# movq %r(1026), %r(1000)
	subq %rbx, %r12		# subq %r(999), %r(1000)
	movq (%r12), %rbx		# movq (%r(1000)), %r(1001)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1027)
	cmpq %rbx, %r12		# cmpq %r(1001), %r(1027)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1028)
	movq %r13, %r14		# movq %r(1028), %r(1002)
	salq $3, %r14		# salq $3, %r(1002)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1029)
	movq %r12, %r15		# movq %r(1029), %r(1003)
	addq %r14, %r15		# addq %r(1002), %r(1003)
	movq $10, %r13		# movq $10, %r(1004)
	movq %r13, %rbx		# movq %r(1004), %r(1035)
	movq %rbx, -32(%rbp)		# movq %r(1035), -32(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1030)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1036)
	imulq %rbx, %r12		# imulq %r(1030), %r(1036)
	movq %r12, -32(%rbp)		# movq %r(1036), -32(%rbp)
	movq $-8, %r12		# movq $-8, %r(1006)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1037)
	movq %r13, %rbx		# movq %r(1037), %r(1031)
	movq %rbx, -16(%rbp)		# movq %r(1031), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1032)
	addq %r12, %rbx		# addq %r(1006), %r(1032)
	movq %rbx, -16(%rbp)		# movq %r(1032), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1033)
	movq %rbx, (%r15)		# movq %r(1033), (%r(1003))
	jmp .L147		# jmp .L147
	.L147:		# .L147:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1034)
	incq %rbx		# incq %r(1034)
	movq %rbx, -24(%rbp)		# movq %r(1034), -24(%rbp)
	jmp .L137		# jmp .L137
	.L139:		# .L139:
	movq $50, %rbx		# movq $50, %r(1008)
	movq %rbx, %rdi		# movq %r(1008), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L150(%rip), %rdi		# leaq .L150(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(943)
	leaq .L151(%rip), %rdi		# leaq .L151(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(944)
	movq %rbx, %rdi		# movq %r(943), %rdi
	movq %r12, %rsi		# movq %r(944), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r12		# movq %rax, %r(945)
	movq %rbx, %rdi		# movq %r(943), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L136		# jmp .L136
	.L136:		# .L136:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %r14		# movq %rdi, %r(x)
	movq $0, %rbx		# movq $0, %r(1038)
	cmpq %rbx, %r14		# cmpq %r(1038), %r(x)
	jge .L154		# jge .L154
	.L153:		# .L153:
	movq $1, %rbx		# movq $1, %r(1039)
	movq %r14, %r13		# movq %r(x), %r(1040)
	subq %rbx, %r13		# subq %r(1039), %r(1040)
	movq %r13, %rdi		# movq %r(1040), %rdi
	call _Ibar_pi		# call _Ibar_pi
	jmp .L154		# jmp .L154
	.L154:		# .L154:
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
	movq %rdi, %r14		# movq %rdi, %r(x)
	movq $1, %r12		# movq $1, %r(1041)
	movq %r14, %rbx		# movq %r(x), %r(1042)
	subq %r12, %rbx		# subq %r(1041), %r(1042)
	movq %rbx, %rdi		# movq %r(1042), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	jmp .L155		# jmp .L155
	.L155:		# .L155:
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
	movq $1, %rbx		# movq $1, %r(1043)
	movq %rbx, %rax		# movq %r(1043), %rax
	jmp .L156		# jmp .L156
	.L156:		# .L156:
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
	movq $0, %rbx		# movq $0, %r(1044)
	movq %rbx, %rax		# movq %r(1044), %rax
	jmp .L157		# jmp .L157
	.L157:		# .L157:
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
	movq %rdi, %rbx		# movq %rdi, %r(1057)
	movq %rbx, -24(%rbp)		# movq %r(1057), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1058)
	movq (%rbx), %r13		# movq (%r(1058)), %r(1045)
	movq %r13, %r12		# movq %r(1045), %r(1059)
	movq %r12, -8(%rbp)		# movq %r(1059), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1060)
	movq %r12, %r13		# movq %r(1060), %r(1046)
	salq $3, %r13		# salq $3, %r(1046)
	movq $8, %rbx		# movq $8, %r(1047)
	movq %r13, %r14		# movq %r(1046), %r(1048)
	addq %rbx, %r14		# addq %r(1047), %r(1048)
	movq %r14, %rdi		# movq %r(1048), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(949)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1061)
	movq %r13, %rbx		# movq %r(1061), %r(1049)
	salq $3, %rbx		# salq $3, %r(1049)
	movq %r15, %r13		# movq %r(949), %r(1050)
	addq %rbx, %r13		# addq %r(1049), %r(1050)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1062)
	movq %rbx, %r12		# movq %r(1062), %r(1051)
	salq $3, %r12		# salq $3, %r(1051)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1063)
	movq %rbx, %r14		# movq %r(1063), %r(1064)
	movq %r14, -16(%rbp)		# movq %r(1064), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1065)
	addq %r12, %rbx		# addq %r(1051), %r(1065)
	movq %rbx, -16(%rbp)		# movq %r(1065), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1066)
	movq (%rbx), %r12		# movq (%r(1066)), %r(1053)
	movq %r12, (%r13)		# movq %r(1053), (%r(1050))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1067)
	decq %rbx		# decq %r(1067)
	movq %rbx, -8(%rbp)		# movq %r(1067), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1054)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1068)
	cmpq %rbx, %r12		# cmpq %r(1054), %r(1068)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(1055)
	movq %r15, %r13		# movq %r(949), %r(1056)
	addq %rbx, %r13		# addq %r(1055), %r(1056)
	movq %r13, %rax		# movq %r(1056), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(1092)
	movq %rbx, -40(%rbp)		# movq %r(1092), -40(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1093)
	movq %rbx, -24(%rbp)		# movq %r(1093), -24(%rbp)
	movq $0, %r13		# movq $0, %r(1069)
	movq %r13, %rbx		# movq %r(1069), %r(1094)
	movq %rbx, -16(%rbp)		# movq %r(1094), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1070)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(1095)
	movq %r14, %r12		# movq %r(1095), %r(1071)
	subq %rbx, %r12		# subq %r(1070), %r(1071)
	movq (%r12), %r13		# movq (%r(1071)), %r(1072)
	movq %r13, %rbx		# movq %r(1072), %r(1096)
	movq %rbx, -48(%rbp)		# movq %r(1096), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(1073)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1097)
	movq %r14, %r15		# movq %r(1097), %r(1074)
	subq %rbx, %r15		# subq %r(1073), %r(1074)
	movq (%r15), %r12		# movq (%r(1074)), %r(1075)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(1098)
	movq %r14, %r13		# movq %r(1098), %r(1076)
	addq %r12, %r13		# addq %r(1075), %r(1076)
	movq %r13, %r12		# movq %r(1076), %r(1099)
	movq %r12, -56(%rbp)		# movq %r(1099), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(1077)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(1100)
	movq %r14, %r12		# movq %r(1100), %r(1078)
	addq %rbx, %r12		# addq %r(1077), %r(1078)
	movq %r12, %rdi		# movq %r(1078), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(950)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1101)
	movq %rbx, (%r14)		# movq %r(1101), (%r(950))
	movq $8, %r13		# movq $8, %r(1079)
	movq %r14, %r12		# movq %r(950), %r(1102)
	movq %r12, -88(%rbp)		# movq %r(1102), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1103)
	addq %r13, %rbx		# addq %r(1079), %r(1103)
	movq %rbx, -88(%rbp)		# movq %r(1103), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1104)
	movq %r13, %rbx		# movq %r(1104), %r(1105)
	movq %rbx, -72(%rbp)		# movq %r(1105), -72(%rbp)
	jmp .L158		# jmp .L158
	.L158:		# .L158:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1106)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1107)
	cmpq %r12, %rbx		# cmpq %r(1107), %r(1106)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1108)
	movq %r12, %r14		# movq %r(1108), %r(1081)
	salq $3, %r14		# salq $3, %r(1081)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1109)
	movq %r13, %rbx		# movq %r(1109), %r(1110)
	movq %rbx, -80(%rbp)		# movq %r(1110), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1111)
	addq %r14, %rbx		# addq %r(1081), %r(1111)
	movq %rbx, -80(%rbp)		# movq %r(1111), -80(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1112)
	movq %r12, %r14		# movq %r(1112), %r(1083)
	salq $3, %r14		# salq $3, %r(1083)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1113)
	movq %r13, %rbx		# movq %r(1113), %r(1114)
	movq %rbx, -8(%rbp)		# movq %r(1114), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1115)
	addq %r14, %rbx		# addq %r(1083), %r(1115)
	movq %rbx, -8(%rbp)		# movq %r(1115), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1116)
	movq (%rbx), %r12		# movq (%r(1116)), %r(1085)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1117)
	movq %r12, (%rbx)		# movq %r(1085), (%r(1117))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1118)
	incq %rbx		# incq %r(1118)
	movq %rbx, -16(%rbp)		# movq %r(1118), -16(%rbp)
	jmp .L158		# jmp .L158
	.L160:		# .L160:
	jmp .L161		# jmp .L161
	.L161:		# .L161:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1119)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1120)
	cmpq %r12, %rbx		# cmpq %r(1120), %r(1119)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1121)
	movq %r12, %r14		# movq %r(1121), %r(1086)
	salq $3, %r14		# salq $3, %r(1086)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1122)
	movq %r13, %rbx		# movq %r(1122), %r(1123)
	movq %rbx, -64(%rbp)		# movq %r(1123), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1124)
	addq %r14, %rbx		# addq %r(1086), %r(1124)
	movq %rbx, -64(%rbp)		# movq %r(1124), -64(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1125)
	movq %r13, %r12		# movq %r(1125), %r(1088)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1126)
	subq %rbx, %r12		# subq %r(1126), %r(1088)
	movq %r12, %r14		# movq %r(1088), %r(1089)
	salq $3, %r14		# salq $3, %r(1089)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1127)
	movq %r13, %rbx		# movq %r(1127), %r(1128)
	movq %rbx, -32(%rbp)		# movq %r(1128), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1129)
	addq %r14, %rbx		# addq %r(1089), %r(1129)
	movq %rbx, -32(%rbp)		# movq %r(1129), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1130)
	movq (%rbx), %r12		# movq (%r(1130)), %r(1091)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1131)
	movq %r12, (%rbx)		# movq %r(1091), (%r(1131))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1132)
	incq %rbx		# incq %r(1132)
	movq %rbx, -16(%rbp)		# movq %r(1132), -16(%rbp)
	jmp .L161		# jmp .L161
	.L163:		# .L163:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1133)
	movq %rbx, %rax		# movq %r(1133), %rax
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
.L151:
	.quad 5
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L150:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

error_outofbounds:
call _I_outOfBounds_p
