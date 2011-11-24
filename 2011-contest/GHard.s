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
	movq $0, %rbx		# movq $0, %r(946)
	movq %rbx, %r15		# movq %r(946), %r(i)
	movq $88, %rbx		# movq $88, %r(947)
	movq %rbx, %rdi		# movq %r(947), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(933)
	movq $10, %rbx		# movq $10, %r(948)
	movq %rbx, (%r13)		# movq %r(948), (%r(933))
	movq $8, %rbx		# movq $8, %r(949)
	addq %rbx, %r13		# addq %r(949), %r(950)
	movq %r13, %r12		# movq %r(950), %r(922)
	movq $0, %rbx		# movq $0, %r(951)
	movq %r12, %r13		# movq %r(922), %r(952)
	addq %rbx, %r13		# addq %r(951), %r(952)
	movq $0, %rbx		# movq $0, %r(953)
	movq %rbx, (%r13)		# movq %r(953), (%r(952))
	movq $8, %rbx		# movq $8, %r(954)
	movq %r12, %r13		# movq %r(922), %r(955)
	addq %rbx, %r13		# addq %r(954), %r(955)
	movq $0, %rbx		# movq $0, %r(956)
	movq %rbx, (%r13)		# movq %r(956), (%r(955))
	movq $16, %rbx		# movq $16, %r(957)
	movq %r12, %r13		# movq %r(922), %r(958)
	addq %rbx, %r13		# addq %r(957), %r(958)
	movq $0, %rbx		# movq $0, %r(959)
	movq %rbx, (%r13)		# movq %r(959), (%r(958))
	movq $24, %rbx		# movq $24, %r(960)
	movq %r12, %r13		# movq %r(922), %r(961)
	addq %rbx, %r13		# addq %r(960), %r(961)
	movq $0, %rbx		# movq $0, %r(962)
	movq %rbx, (%r13)		# movq %r(962), (%r(961))
	movq $32, %rbx		# movq $32, %r(963)
	movq %r12, %r13		# movq %r(922), %r(964)
	addq %rbx, %r13		# addq %r(963), %r(964)
	movq $0, %rbx		# movq $0, %r(965)
	movq %rbx, (%r13)		# movq %r(965), (%r(964))
	movq $40, %rbx		# movq $40, %r(966)
	movq %r12, %r13		# movq %r(922), %r(967)
	addq %rbx, %r13		# addq %r(966), %r(967)
	movq $0, %rbx		# movq $0, %r(968)
	movq %rbx, (%r13)		# movq %r(968), (%r(967))
	movq $48, %rbx		# movq $48, %r(969)
	movq %r12, %r13		# movq %r(922), %r(970)
	addq %rbx, %r13		# addq %r(969), %r(970)
	movq $0, %rbx		# movq $0, %r(971)
	movq %rbx, (%r13)		# movq %r(971), (%r(970))
	movq $56, %rbx		# movq $56, %r(972)
	movq %r12, %r13		# movq %r(922), %r(973)
	addq %rbx, %r13		# addq %r(972), %r(973)
	movq $0, %rbx		# movq $0, %r(974)
	movq %rbx, (%r13)		# movq %r(974), (%r(973))
	movq $64, %rbx		# movq $64, %r(975)
	movq %r12, %r13		# movq %r(922), %r(976)
	addq %rbx, %r13		# addq %r(975), %r(976)
	movq $0, %rbx		# movq $0, %r(977)
	movq %rbx, (%r13)		# movq %r(977), (%r(976))
	movq $72, %rbx		# movq $72, %r(978)
	movq %r12, %r13		# movq %r(922), %r(979)
	addq %rbx, %r13		# addq %r(978), %r(979)
	movq $0, %rbx		# movq $0, %r(980)
	movq %rbx, (%r13)		# movq %r(980), (%r(979))
	.L159:		# .L159:
	movq $1, %rbx		# movq $1, %r(981)
	movq %rbx, %r13		# movq %r(981), %r(924)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(934)
	testq $1, %rbx		# testq $1, %r(934)
	jne .L162		# jne .L162
	.L164:		# .L164:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(935)
	testq $1, %rbx		# testq $1, %r(935)
	jne .L162		# jne .L162
	.L163:		# .L163:
	movq $0, %rbx		# movq $0, %r(982)
	movq %rbx, %r13		# movq %r(982), %r(924)
	.L162:		# .L162:
	movq $1, %r14		# movq $1, %r(983)
	movq %r13, %rbx		# movq %r(924), %r(984)
	xorq %r14, %rbx		# xorq %r(983), %r(984)
	testq $1, %rbx		# testq $1, %r(984)
	jne .L161		# jne .L161
	.L167:		# .L167:
	movq $1, %rbx		# movq $1, %r(985)
	movq %rbx, %r13		# movq %r(985), %r(925)
	movq $20, %rbx		# movq $20, %r(986)
	cmpq %rbx, %r15		# cmpq %r(986), %r(i)
	jl .L165		# jl .L165
	.L166:		# .L166:
	movq $0, %rbx		# movq $0, %r(987)
	movq %rbx, %r13		# movq %r(987), %r(925)
	.L165:		# .L165:
	movq $1, %r14		# movq $1, %r(988)
	movq %r13, %rbx		# movq %r(925), %r(989)
	xorq %r14, %rbx		# xorq %r(988), %r(989)
	testq $1, %rbx		# testq $1, %r(989)
	jne .L161		# jne .L161
	.L160:		# .L160:
	movq $8, %rbx		# movq $8, %r(990)
	movq %r12, %r13		# movq %r(922), %r(991)
	subq %rbx, %r13		# subq %r(990), %r(991)
	movq (%r13), %rbx		# movq (%r(991)), %r(992)
	cmpq %rbx, %r15		# cmpq %r(992), %r(i)
	jge .L169		# jge .L169
	.L168:		# .L168:
	movq $8, %rbx		# movq $8, %r(993)
	movq %r12, %r13		# movq %r(922), %r(994)
	subq %rbx, %r13		# subq %r(993), %r(994)
	movq (%r13), %rbx		# movq (%r(994)), %r(995)
	cmpq %rbx, %r15		# cmpq %r(995), %r(i)
	jae error_outofbounds		# jae error_outofbounds
	movq %r15, %rbx		# movq %r(i), %r(996)
	salq $3, %rbx		# salq $3, %r(996)
	movq %r12, %r13		# movq %r(922), %r(997)
	addq %rbx, %r13		# addq %r(996), %r(997)
	movq $10, %rbx		# movq $10, %r(998)
	imulq %r15, %rbx		# imulq %r(i), %r(999)
	movq $-8, %r14		# movq $-8, %r(1000)
	addq %r14, %rbx		# addq %r(1000), %r(1001)
	movq %rbx, (%r13)		# movq %r(1001), (%r(997))
	.L169:		# .L169:
	incq %r15		# incq %r(i)
	jmp .L159		# jmp .L159
	.L161:		# .L161:
	movq $50, %rbx		# movq $50, %r(1002)
	movq %rbx, %rdi		# movq %r(1002), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L172(%rip), %rdi		# leaq .L172(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(937)
	leaq .L173(%rip), %rdi		# leaq .L173(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(938)
	movq %rbx, %rdi		# movq %r(937), %rdi
	movq %r12, %rsi		# movq %r(938), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(939)
	movq %rbx, %rdi		# movq %r(937), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L158:		# .L158:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq $0, %r12		# movq $0, %r(1005)
	cmpq %r12, %r13		# cmpq %r(1005), %r(x)
	jge .L176		# jge .L176
	.L175:		# .L175:
	movq $1, %r12		# movq $1, %r(1006)
	subq %r12, %r13		# subq %r(1006), %r(1007)
	movq %r13, %rdi		# movq %r(1007), %rdi
	call _Ibar_pi		# call _Ibar_pi
	.L176:		# .L176:
	.L174:		# .L174:
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
	movq $1, %r12		# movq $1, %r(1008)
	subq %r12, %r13		# subq %r(1008), %r(1009)
	movq %r13, %rdi		# movq %r(1009), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
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
	movq $1, %rbx		# movq $1, %r(1010)
	movq %rbx, %rax		# movq %r(1010), %rax
	jmp .L178		# jmp .L178
	.L178:		# .L178:
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
	movq $0, %rbx		# movq $0, %r(1011)
	movq %rbx, %rax		# movq %r(1011), %rax
	jmp .L179		# jmp .L179
	.L179:		# .L179:
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
	movq %rdi, %rbx		# movq %rdi, %r(1024)
	movq %rbx, -24(%rbp)		# movq %r(1024), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1025)
	movq (%rbx), %r12		# movq (%r(1025)), %r(1012)
	movq %r12, -16(%rbp)		# movq %r(1026), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1027)
	salq $3, %rbx		# salq $3, %r(1013)
	movq $8, %r12		# movq $8, %r(1014)
	addq %r12, %rbx		# addq %r(1014), %r(1015)
	movq %rbx, %rdi		# movq %r(1015), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(943)
	.L14:		# .L14:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1028)
	salq $3, %r12		# salq $3, %r(1016)
	movq %r14, %r13		# movq %r(943), %r(1017)
	addq %r12, %r13		# addq %r(1016), %r(1017)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1029)
	movq %rbx, %r12		# movq %r(1029), %r(1018)
	salq $3, %r12		# salq $3, %r(1018)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1030)
	movq %rbx, -8(%rbp)		# movq %r(1031), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1032)
	addq %r12, %rbx		# addq %r(1018), %r(1032)
	movq %rbx, -8(%rbp)		# movq %r(1032), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1033)
	movq (%rbx), %rbx		# movq (%r(1033)), %r(1020)
	movq %rbx, (%r13)		# movq %r(1020), (%r(1017))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1034)
	decq %rbx		# decq %r(1034)
	movq %rbx, -16(%rbp)		# movq %r(1034), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(1021)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1035)
	cmpq %rbx, %r12		# cmpq %r(1021), %r(1035)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(1022)
	movq %r14, %r12		# movq %r(943), %r(1023)
	addq %rbx, %r12		# addq %r(1022), %r(1023)
	movq %r12, %rax		# movq %r(1023), %rax
	.L16:		# .L16:
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
	movq %rdi, %rbx		# movq %rdi, %r(1059)
	movq %rbx, -64(%rbp)		# movq %r(1059), -64(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1060)
	movq %rbx, -48(%rbp)		# movq %r(1060), -48(%rbp)
	movq $0, %r12		# movq $0, %r(1036)
	movq %r12, -16(%rbp)		# movq %r(1061), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1037)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1062)
	subq %rbx, %r13		# subq %r(1037), %r(1038)
	movq (%r13), %r12		# movq (%r(1038)), %r(1039)
	movq %r12, -24(%rbp)		# movq %r(1063), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(1040)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1064)
	subq %rbx, %r13		# subq %r(1040), %r(1041)
	movq (%r13), %rbx		# movq (%r(1041)), %r(1042)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1065)
	addq %rbx, %r12		# addq %r(1042), %r(1043)
	movq %r12, -32(%rbp)		# movq %r(1066), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(1044)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1067)
	addq %rbx, %r13		# addq %r(1044), %r(1045)
	movq %r13, %rdi		# movq %r(1045), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(944)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1068)
	movq %r12, (%rbx)		# movq %r(1068), (%r(944))
	movq $8, %r12		# movq $8, %r(1046)
	addq %r12, %rbx		# addq %r(1046), %r(1047)
	movq %rbx, -40(%rbp)		# movq %r(1069), -40(%rbp)
	.L17:		# .L17:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1070)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1071)
	cmpq %r12, %rbx		# cmpq %r(1071), %r(1070)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1072)
	salq $3, %r13		# salq $3, %r(1048)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1073)
	movq %rbx, -8(%rbp)		# movq %r(1074), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1075)
	addq %r13, %r12		# addq %r(1048), %r(1075)
	movq %r12, -8(%rbp)		# movq %r(1075), -8(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1076)
	salq $3, %r13		# salq $3, %r(1050)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1077)
	movq %rbx, -56(%rbp)		# movq %r(1078), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1079)
	addq %r13, %r12		# addq %r(1050), %r(1079)
	movq %r12, -56(%rbp)		# movq %r(1079), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1080)
	movq (%rbx), %rbx		# movq (%r(1080)), %r(1052)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1081)
	movq %rbx, (%r12)		# movq %r(1052), (%r(1081))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1082)
	incq %rbx		# incq %r(1082)
	movq %rbx, -16(%rbp)		# movq %r(1082), -16(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	.L20:		# .L20:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1083)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1084)
	cmpq %r12, %rbx		# cmpq %r(1084), %r(1083)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1085)
	salq $3, %r13		# salq $3, %r(1053)
	movq -40(%rbp), %r15		# movq -40(%rbp), %r(1086)
	addq %r13, %r15		# addq %r(1053), %r(1054)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1087)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1088)
	subq %r13, %rbx		# subq %r(1088), %r(1055)
	salq $3, %rbx		# salq $3, %r(1056)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1089)
	addq %rbx, %r12		# addq %r(1056), %r(1057)
	movq (%r12), %rbx		# movq (%r(1057)), %r(1058)
	movq %rbx, (%r15)		# movq %r(1058), (%r(1054))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1090)
	incq %rbx		# incq %r(1090)
	movq %rbx, -16(%rbp)		# movq %r(1090), -16(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1091)
	movq %rbx, %rax		# movq %r(1091), %rax
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
.L173:
	.quad 5
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L172:
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
