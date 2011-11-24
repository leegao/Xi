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
	movq $0, %rbx		# movq $0, %r(889)
	movq %rbx, %r15		# movq %r(889), %r(i)
	movq $88, %rbx		# movq $88, %r(890)
	movq %rbx, %rdi		# movq %r(890), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(876)
	movq $10, %rbx		# movq $10, %r(891)
	movq %rbx, (%r12)		# movq %r(891), (%r(876))
	movq $8, %rbx		# movq $8, %r(892)
	addq %rbx, %r12		# addq %r(892), %r(893)
	movq %r12, -8(%rbp)		# movq %r(948), -8(%rbp)
	movq $0, %r12		# movq $0, %r(894)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(949)
	addq %r12, %r13		# addq %r(894), %r(895)
	movq $0, %r12		# movq $0, %r(896)
	movq %r12, (%r13)		# movq %r(896), (%r(895))
	movq $8, %r12		# movq $8, %r(897)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(950)
	addq %r12, %r13		# addq %r(897), %r(898)
	movq $0, %r12		# movq $0, %r(899)
	movq %r12, (%r13)		# movq %r(899), (%r(898))
	movq $16, %r12		# movq $16, %r(900)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(951)
	addq %r12, %r13		# addq %r(900), %r(901)
	movq $0, %r12		# movq $0, %r(902)
	movq %r12, (%r13)		# movq %r(902), (%r(901))
	movq $24, %r12		# movq $24, %r(903)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(952)
	addq %r12, %r13		# addq %r(903), %r(904)
	movq $0, %r12		# movq $0, %r(905)
	movq %r12, (%r13)		# movq %r(905), (%r(904))
	movq $32, %r12		# movq $32, %r(906)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(953)
	addq %r12, %r13		# addq %r(906), %r(907)
	movq $0, %r12		# movq $0, %r(908)
	movq %r12, (%r13)		# movq %r(908), (%r(907))
	movq $40, %r12		# movq $40, %r(909)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(954)
	addq %r12, %r13		# addq %r(909), %r(910)
	movq $0, %r12		# movq $0, %r(911)
	movq %r12, (%r13)		# movq %r(911), (%r(910))
	movq $48, %r12		# movq $48, %r(912)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(955)
	addq %r12, %r13		# addq %r(912), %r(913)
	movq $0, %r12		# movq $0, %r(914)
	movq %r12, (%r13)		# movq %r(914), (%r(913))
	movq $56, %r12		# movq $56, %r(915)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(956)
	addq %r12, %r13		# addq %r(915), %r(916)
	movq $0, %r12		# movq $0, %r(917)
	movq %r12, (%r13)		# movq %r(917), (%r(916))
	movq $64, %r12		# movq $64, %r(918)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(957)
	addq %r12, %r13		# addq %r(918), %r(919)
	movq $0, %r12		# movq $0, %r(920)
	movq %r12, (%r13)		# movq %r(920), (%r(919))
	movq $72, %r12		# movq $72, %r(921)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(958)
	addq %r12, %r13		# addq %r(921), %r(922)
	movq $0, %r12		# movq $0, %r(923)
	movq %r12, (%r13)		# movq %r(923), (%r(922))
	jmp .L137		# jmp .L137
	.L137:		# .L137:
	movq $1, %r12		# movq $1, %r(924)
	call _IretFalse_b		# call _IretFalse_b
	movq %rax, %rbx		# movq %rax, %r(877)
	testq $1, %rbx		# testq $1, %r(877)
	jne .L140		# jne .L140
	.L142:		# .L142:
	call _IretTrue_b		# call _IretTrue_b
	movq %rax, %rbx		# movq %rax, %r(878)
	testq $1, %rbx		# testq $1, %r(878)
	jne .L140		# jne .L140
	.L141:		# .L141:
	movq $0, %r12		# movq $0, %r(925)
	jmp .L140		# jmp .L140
	.L140:		# .L140:
	movq $1, %rbx		# movq $1, %r(926)
	xorq %rbx, %r12		# xorq %r(926), %r(927)
	testq $1, %r12		# testq $1, %r(927)
	jne .L139		# jne .L139
	.L145:		# .L145:
	movq $1, %r12		# movq $1, %r(928)
	movq $20, %rbx		# movq $20, %r(929)
	cmpq %rbx, %r15		# cmpq %r(929), %r(i)
	jl .L143		# jl .L143
	.L144:		# .L144:
	movq $0, %r12		# movq $0, %r(930)
	jmp .L143		# jmp .L143
	.L143:		# .L143:
	movq $1, %rbx		# movq $1, %r(931)
	xorq %rbx, %r12		# xorq %r(931), %r(932)
	testq $1, %r12		# testq $1, %r(932)
	jne .L139		# jne .L139
	.L138:		# .L138:
	movq $8, %r12		# movq $8, %r(933)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(959)
	subq %r12, %r13		# subq %r(933), %r(934)
	movq (%r13), %rbx		# movq (%r(934)), %r(935)
	cmpq %rbx, %r15		# cmpq %r(935), %r(i)
	jge .L147		# jge .L147
	.L146:		# .L146:
	movq $8, %r12		# movq $8, %r(936)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(960)
	subq %r12, %r13		# subq %r(936), %r(937)
	movq (%r13), %rbx		# movq (%r(937)), %r(938)
	cmpq %rbx, %r15		# cmpq %r(938), %r(i)
	jae error_outofbounds		# jae error_outofbounds
	movq %r15, %r13		# movq %r(i), %r(939)
	salq $3, %r13		# salq $3, %r(939)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(961)
	addq %r13, %r14		# addq %r(939), %r(940)
	movq $10, %r12		# movq $10, %r(941)
	imulq %r15, %r12		# imulq %r(i), %r(942)
	movq $-8, %r13		# movq $-8, %r(943)
	addq %r13, %r12		# addq %r(943), %r(944)
	movq %r12, (%r14)		# movq %r(944), (%r(940))
	jmp .L147		# jmp .L147
	.L147:		# .L147:
	incq %r15		# incq %r(i)
	jmp .L137		# jmp .L137
	.L139:		# .L139:
	movq $50, %rbx		# movq $50, %r(945)
	movq %rbx, %rdi		# movq %r(945), %rdi
	call _Ifoo_pi		# call _Ifoo_pi
	leaq .L150(%rip), %rdi		# leaq .L150(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(880)
	leaq .L151(%rip), %rdi		# leaq .L151(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(881)
	movq %rbx, %rdi		# movq %r(880), %rdi
	movq %r12, %rsi		# movq %r(881), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(882)
	movq %rbx, %rdi		# movq %r(882), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L136		# jmp .L136
	.L136:		# .L136:
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
	movq $0, %r12		# movq $0, %r(962)
	cmpq %r12, %r13		# cmpq %r(962), %r(x)
	jge .L154		# jge .L154
	.L153:		# .L153:
	movq $1, %r12		# movq $1, %r(963)
	subq %r12, %r13		# subq %r(963), %r(964)
	movq %r13, %rdi		# movq %r(964), %rdi
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
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq $1, %r12		# movq $1, %r(965)
	subq %r12, %r13		# subq %r(965), %r(966)
	movq %r13, %rdi		# movq %r(966), %rdi
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
	movq $1, %rbx		# movq $1, %r(967)
	movq %rbx, %rax		# movq %r(967), %rax
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
	movq $0, %rbx		# movq $0, %r(968)
	movq %rbx, %rax		# movq %r(968), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(981)
	movq %rbx, -24(%rbp)		# movq %r(981), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(982)
	movq (%rbx), %r12		# movq (%r(982)), %r(969)
	movq %r12, -8(%rbp)		# movq %r(983), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(984)
	salq $3, %rbx		# salq $3, %r(970)
	movq $8, %r12		# movq $8, %r(971)
	addq %r12, %rbx		# addq %r(971), %r(972)
	movq %rbx, %rdi		# movq %r(972), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(886)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(985)
	salq $3, %r12		# salq $3, %r(973)
	movq %r14, %r13		# movq %r(886), %r(974)
	addq %r12, %r13		# addq %r(973), %r(974)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(986)
	movq %rbx, %r12		# movq %r(986), %r(975)
	salq $3, %r12		# salq $3, %r(975)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(987)
	movq %rbx, -16(%rbp)		# movq %r(988), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(989)
	addq %r12, %rbx		# addq %r(975), %r(989)
	movq %rbx, -16(%rbp)		# movq %r(989), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(990)
	movq (%rbx), %rbx		# movq (%r(990)), %r(977)
	movq %rbx, (%r13)		# movq %r(977), (%r(974))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(991)
	decq %rbx		# decq %r(991)
	movq %rbx, -8(%rbp)		# movq %r(991), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(978)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(992)
	cmpq %rbx, %r12		# cmpq %r(978), %r(992)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(979)
	movq %r14, %r12		# movq %r(886), %r(980)
	addq %rbx, %r12		# addq %r(979), %r(980)
	movq %r12, %rax		# movq %r(980), %rax
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
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1016)
	movq %rbx, -32(%rbp)		# movq %r(1016), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1017)
	movq %rbx, -72(%rbp)		# movq %r(1017), -72(%rbp)
	movq $0, %r12		# movq $0, %r(993)
	movq %r12, -24(%rbp)		# movq %r(1018), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(994)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1019)
	subq %rbx, %r13		# subq %r(994), %r(995)
	movq (%r13), %r12		# movq (%r(995)), %r(996)
	movq %r12, -40(%rbp)		# movq %r(1020), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(997)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(1021)
	subq %rbx, %r13		# subq %r(997), %r(998)
	movq (%r13), %rbx		# movq (%r(998)), %r(999)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1022)
	addq %rbx, %r12		# addq %r(999), %r(1000)
	movq %r12, -16(%rbp)		# movq %r(1023), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(1001)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1024)
	addq %rbx, %r13		# addq %r(1001), %r(1002)
	movq %r13, %rdi		# movq %r(1002), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(887)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1025)
	movq %r12, (%rbx)		# movq %r(1025), (%r(887))
	movq $8, %r12		# movq $8, %r(1003)
	addq %r12, %rbx		# addq %r(1003), %r(1004)
	movq %rbx, -64(%rbp)		# movq %r(1026), -64(%rbp)
	jmp .L158		# jmp .L158
	.L158:		# .L158:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1027)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1028)
	cmpq %r12, %rbx		# cmpq %r(1028), %r(1027)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1029)
	salq $3, %r13		# salq $3, %r(1005)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1030)
	movq %rbx, -56(%rbp)		# movq %r(1031), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1032)
	addq %r13, %r12		# addq %r(1005), %r(1032)
	movq %r12, -56(%rbp)		# movq %r(1032), -56(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1033)
	salq $3, %r13		# salq $3, %r(1007)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1034)
	movq %rbx, -48(%rbp)		# movq %r(1035), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1036)
	addq %r13, %r12		# addq %r(1007), %r(1036)
	movq %r12, -48(%rbp)		# movq %r(1036), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1037)
	movq (%rbx), %rbx		# movq (%r(1037)), %r(1009)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1038)
	movq %rbx, (%r12)		# movq %r(1009), (%r(1038))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1039)
	incq %rbx		# incq %r(1039)
	movq %rbx, -24(%rbp)		# movq %r(1039), -24(%rbp)
	jmp .L158		# jmp .L158
	.L160:		# .L160:
	jmp .L161		# jmp .L161
	.L161:		# .L161:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1040)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1041)
	cmpq %rbx, %r12		# cmpq %r(1040), %r(1041)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1042)
	salq $3, %r13		# salq $3, %r(1010)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(1043)
	addq %r13, %r14		# addq %r(1010), %r(1011)
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(1044)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1045)
	subq %r13, %r15		# subq %r(1045), %r(1012)
	salq $3, %r15		# salq $3, %r(1013)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1046)
	movq %rbx, -8(%rbp)		# movq %r(1047), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1048)
	addq %r15, %r13		# addq %r(1013), %r(1048)
	movq %r13, -8(%rbp)		# movq %r(1048), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1049)
	movq (%rbx), %rbx		# movq (%r(1049)), %r(1015)
	movq %rbx, (%r14)		# movq %r(1015), (%r(1011))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1050)
	incq %rbx		# incq %r(1050)
	movq %rbx, -24(%rbp)		# movq %r(1050), -24(%rbp)
	jmp .L161		# jmp .L161
	.L163:		# .L163:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1051)
	movq %rbx, %rax		# movq %r(1051), %rax
	jmp .L164		# jmp .L164
	.L164:		# .L164:
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
.L150:
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
.L151:
	.quad 5
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
