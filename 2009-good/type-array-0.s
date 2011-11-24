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
	leaq .L261(%rip), %rdi		# leaq .L261(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(852)
	movq %r13, %rdi		# movq %r(852), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L260:		# .L260:
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
	subq $160, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $10, %rbx		# movq $10, %r(876)
	movq $16, %r12		# movq $16, %r(877)
	movq %r12, %rdi		# movq %r(877), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(955)
	movq %r12, -16(%rbp)		# movq %r(955), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(956)
	movq %r13, -64(%rbp)		# movq %r(957), -64(%rbp)
	movq $1, %r12		# movq $1, %r(878)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(958)
	movq %r12, (%r13)		# movq %r(878), (%r(958))
	movq $8, %r13		# movq $8, %r(879)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(959)
	movq %r14, -24(%rbp)		# movq %r(960), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(961)
	addq %r13, %r12		# addq %r(879), %r(961)
	movq %r12, -24(%rbp)		# movq %r(961), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(962)
	movq %r13, -8(%rbp)		# movq %r(963), -8(%rbp)
	movq $0, %r13		# movq $0, %r(881)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(964)
	addq %r13, %r14		# addq %r(881), %r(882)
	movq %rbx, (%r14)		# movq %r(l), (%r(882))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(965)
	movq %rbx, %rdi		# movq %r(965), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(857)
	movq %r12, -128(%rbp)		# movq %r(966), -128(%rbp)
	leaq .L264(%rip), %rdi		# leaq .L264(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(967)
	movq %rbx, -72(%rbp)		# movq %r(967), -72(%rbp)
	movq $1, %r13		# movq $1, %r(884)
	movq $8, %r12		# movq $8, %r(885)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(968)
	subq %r12, %r14		# subq %r(885), %r(886)
	movq (%r14), %rbx		# movq (%r(886)), %r(887)
	movq $10, %r12		# movq $10, %r(888)
	cmpq %r12, %rbx		# cmpq %r(888), %r(887)
	je .L265		# je .L265
	.L266:		# .L266:
	movq $0, %r13		# movq $0, %r(889)
	.L265:		# .L265:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(969)
	movq %rbx, %rdi		# movq %r(969), %rdi
	movq %r13, %rsi		# movq %r(814), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -128(%rbp), %r15		# movq -128(%rbp), %r(970)
	movq $0, %r12		# movq $0, %r(890)
	movq %r12, %r14		# movq %r(890), %r(816)
	movq $8, %r12		# movq $8, %r(891)
	movq %r15, %r13		# movq %r(815), %r(892)
	subq %r12, %r13		# subq %r(891), %r(892)
	movq (%r13), %r12		# movq (%r(892)), %r(893)
	cmpq %r12, %r14		# cmpq %r(893), %r(816)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(816), %r(894)
	salq $3, %r12		# salq $3, %r(894)
	movq %r15, %rbx		# movq %r(815), %r(895)
	addq %r12, %rbx		# addq %r(894), %r(895)
	movq $42, %r12		# movq $42, %r(896)
	movq %r12, (%rbx)		# movq %r(896), (%r(895))
	movq -128(%rbp), %r15		# movq -128(%rbp), %r(971)
	movq $1, %r12		# movq $1, %r(897)
	movq %r12, %r14		# movq %r(897), %r(818)
	movq $8, %r12		# movq $8, %r(898)
	movq %r15, %r13		# movq %r(817), %r(899)
	subq %r12, %r13		# subq %r(898), %r(899)
	movq (%r13), %r12		# movq (%r(899)), %r(900)
	cmpq %r12, %r14		# cmpq %r(900), %r(818)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(818), %r(901)
	salq $3, %r12		# salq $3, %r(901)
	movq %r15, %rbx		# movq %r(817), %r(902)
	addq %r12, %rbx		# addq %r(901), %r(902)
	movq $52, %r12		# movq $52, %r(903)
	movq %r12, (%rbx)		# movq %r(903), (%r(902))
	movq -128(%rbp), %r15		# movq -128(%rbp), %r(972)
	movq $2, %r12		# movq $2, %r(904)
	movq %r12, %r14		# movq %r(904), %r(820)
	movq $8, %r12		# movq $8, %r(905)
	movq %r15, %r13		# movq %r(819), %r(906)
	subq %r12, %r13		# subq %r(905), %r(906)
	movq (%r13), %r12		# movq (%r(906)), %r(907)
	cmpq %r12, %r14		# cmpq %r(907), %r(820)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(820), %r(908)
	salq $3, %r12		# salq $3, %r(908)
	movq %r15, %rbx		# movq %r(819), %r(909)
	addq %r12, %rbx		# addq %r(908), %r(909)
	movq $62, %r12		# movq $62, %r(910)
	movq %r12, (%rbx)		# movq %r(910), (%r(909))
	leaq .L273(%rip), %rdi		# leaq .L273(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(973)
	movq %rbx, -136(%rbp)		# movq %r(973), -136(%rbp)
	movq $1, %r12		# movq $1, %r(912)
	movq %r12, -56(%rbp)		# movq %r(974), -56(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(975)
	movq %r12, -120(%rbp)		# movq %r(976), -120(%rbp)
	movq $0, %rbx		# movq $0, %r(913)
	movq $8, %r13		# movq $8, %r(914)
	movq -120(%rbp), %r14		# movq -120(%rbp), %r(977)
	movq %r14, -144(%rbp)		# movq %r(978), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(979)
	subq %r13, %r12		# subq %r(914), %r(979)
	movq %r12, -144(%rbp)		# movq %r(979), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(980)
	movq (%r12), %r12		# movq (%r(980)), %r(916)
	cmpq %r12, %rbx		# cmpq %r(916), %r(822)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(917)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(981)
	addq %rbx, %r13		# addq %r(917), %r(918)
	movq (%r13), %rbx		# movq (%r(918)), %r(919)
	movq $42, %r12		# movq $42, %r(920)
	cmpq %r12, %rbx		# cmpq %r(920), %r(919)
	je .L276		# je .L276
	.L277:		# .L277:
	movq $0, %r12		# movq $0, %r(921)
	movq %r12, -56(%rbp)		# movq %r(982), -56(%rbp)
	.L276:		# .L276:
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(983)
	movq %rbx, %rdi		# movq %r(983), %rdi
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(984)
	movq %rbx, %rsi		# movq %r(984), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L278(%rip), %rdi		# leaq .L278(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(985)
	movq %rbx, -112(%rbp)		# movq %r(985), -112(%rbp)
	movq $1, %r12		# movq $1, %r(923)
	movq %r12, -152(%rbp)		# movq %r(986), -152(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(987)
	movq %r12, -32(%rbp)		# movq %r(988), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(924)
	movq $8, %r13		# movq $8, %r(925)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(989)
	movq %r14, -88(%rbp)		# movq %r(990), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(991)
	subq %r13, %r12		# subq %r(925), %r(991)
	movq %r12, -88(%rbp)		# movq %r(991), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(992)
	movq (%r12), %r12		# movq (%r(992)), %r(927)
	cmpq %r12, %rbx		# cmpq %r(927), %r(825)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(928)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(993)
	addq %rbx, %r13		# addq %r(928), %r(929)
	movq (%r13), %rbx		# movq (%r(929)), %r(930)
	movq $52, %r12		# movq $52, %r(931)
	cmpq %r12, %rbx		# cmpq %r(931), %r(930)
	je .L281		# je .L281
	.L282:		# .L282:
	movq $0, %r12		# movq $0, %r(932)
	movq %r12, -152(%rbp)		# movq %r(994), -152(%rbp)
	.L281:		# .L281:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(995)
	movq %rbx, %rdi		# movq %r(995), %rdi
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(996)
	movq %rbx, %rsi		# movq %r(996), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L283(%rip), %rdi		# leaq .L283(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(997)
	movq %rbx, -104(%rbp)		# movq %r(997), -104(%rbp)
	movq $1, %r12		# movq $1, %r(934)
	movq %r12, -96(%rbp)		# movq %r(998), -96(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(999)
	movq %r12, -80(%rbp)		# movq %r(1000), -80(%rbp)
	movq $2, %rbx		# movq $2, %r(935)
	movq $8, %r13		# movq $8, %r(936)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1001)
	movq %r14, -40(%rbp)		# movq %r(1002), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1003)
	subq %r13, %r12		# subq %r(936), %r(1003)
	movq %r12, -40(%rbp)		# movq %r(1003), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1004)
	movq (%r12), %r12		# movq (%r(1004)), %r(938)
	cmpq %r12, %rbx		# cmpq %r(938), %r(828)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(939)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1005)
	addq %rbx, %r13		# addq %r(939), %r(940)
	movq (%r13), %rbx		# movq (%r(940)), %r(941)
	movq $62, %r12		# movq $62, %r(942)
	cmpq %r12, %rbx		# cmpq %r(942), %r(941)
	je .L286		# je .L286
	.L287:		# .L287:
	movq $0, %r12		# movq $0, %r(943)
	movq %r12, -96(%rbp)		# movq %r(1006), -96(%rbp)
	.L286:		# .L286:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1007)
	movq %rbx, %rdi		# movq %r(1007), %rdi
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1008)
	movq %rbx, %rsi		# movq %r(1008), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %rbx		# movq $0, %r(944)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1009)
	leaq .L288(%rip), %rdi		# leaq .L288(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(866)
	movq $1, %r12		# movq $1, %r(946)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(1010)
	cmpq %r14, %rbx		# cmpq %r(1010), %r(b)
	je .L289		# je .L289
	.L290:		# .L290:
	movq $0, %r12		# movq $0, %r(947)
	.L289:		# .L289:
	movq %r13, %rdi		# movq %r(866), %rdi
	movq %r12, %rsi		# movq %r(831), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L291(%rip), %rdi		# leaq .L291(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1011)
	movq %r12, -48(%rbp)		# movq %r(1011), -48(%rbp)
	movq $1, %r13		# movq $1, %r(949)
	movq $8, %r12		# movq $8, %r(950)
	subq %r12, %rbx		# subq %r(950), %r(951)
	movq (%rbx), %rbx		# movq (%r(951)), %r(952)
	movq $10, %r12		# movq $10, %r(953)
	cmpq %r12, %rbx		# cmpq %r(953), %r(952)
	je .L292		# je .L292
	.L293:		# .L293:
	movq $0, %r13		# movq $0, %r(954)
	.L292:		# .L292:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1012)
	movq %rbx, %rdi		# movq %r(1012), %rdi
	movq %r13, %rsi		# movq %r(832), %rsi
	call _Itest_paib		# call _Itest_paib
	.L262:		# .L262:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $160, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1055)
	movq %rbx, -48(%rbp)		# movq %r(1055), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(1013)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(1056)
	subq %rbx, %r13		# subq %r(1013), %r(1014)
	movq (%r13), %r12		# movq (%r(1014)), %r(1015)
	movq %r12, -88(%rbp)		# movq %r(1057), -88(%rbp)
	movq $1, %r12		# movq $1, %r(1016)
	movq %r12, -128(%rbp)		# movq %r(1058), -128(%rbp)
	movq $0, %rbx		# movq $0, %r(1017)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1059)
	cmpq %rbx, %r12		# cmpq %r(1017), %r(1059)
	jne .L294		# jne .L294
	.L295:		# .L295:
	movq $0, %rbx		# movq $0, %r(1018)
	movq %rbx, %rax		# movq %r(1018), %rax
	jmp .L296		# jmp .L296
	.L296:		# .L296:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $160, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L294:		# .L294:
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1060)
	salq $3, %r12		# salq $3, %r(1019)
	movq %r12, %rdi		# movq %r(1019), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(870)
	movq $1, %r13		# movq $1, %r(1020)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1061)
	movq %rbx, -136(%rbp)		# movq %r(1062), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1063)
	subq %r13, %r12		# subq %r(1020), %r(1063)
	movq %r12, -136(%rbp)		# movq %r(1063), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1064)
	movq %r12, (%r14)		# movq %r(1064), (%r(837))
	movq $8, %r12		# movq $8, %r(1022)
	addq %r12, %r14		# addq %r(1022), %r(1023)
	movq %r14, -112(%rbp)		# movq %r(1065), -112(%rbp)
	.L297:		# .L297:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1066)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1067)
	cmpq %rbx, %r12		# cmpq %r(1066), %r(1067)
	jge .L298		# jge .L298
	.L299:		# .L299:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1068)
	movq %r12, -40(%rbp)		# movq %r(1069), -40(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1070)
	movq %r12, -32(%rbp)		# movq %r(1071), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(1024)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1072)
	subq %rbx, %r13		# subq %r(1024), %r(1025)
	movq (%r13), %rbx		# movq (%r(1025)), %r(1026)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1073)
	cmpq %rbx, %r12		# cmpq %r(1026), %r(1073)
	jae error_outofbounds		# jae error_outofbounds
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1074)
	movq %r12, -56(%rbp)		# movq %r(1075), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(1027)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(1076)
	subq %rbx, %r14		# subq %r(1027), %r(1028)
	movq $8, %r13		# movq $8, %r(1029)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1077)
	movq %r12, -16(%rbp)		# movq %r(1078), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1079)
	subq %r13, %rbx		# subq %r(1029), %r(1079)
	movq %rbx, -16(%rbp)		# movq %r(1079), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1080)
	movq (%rbx), %rbx		# movq (%r(1080)), %r(1031)
	cmpq %rbx, %r14		# cmpq %r(1031), %r(842)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(1032)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1081)
	movq %r12, -72(%rbp)		# movq %r(1082), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1083)
	addq %r14, %rbx		# addq %r(1032), %r(1083)
	movq %rbx, -72(%rbp)		# movq %r(1083), -72(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1084)
	salq $3, %r13		# salq $3, %r(1034)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1085)
	addq %r13, %rbx		# addq %r(1034), %r(1035)
	movq (%rbx), %rbx		# movq (%r(1035)), %r(1036)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1086)
	movq %rbx, (%r12)		# movq %r(1036), (%r(1086))
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1087)
	incq %rbx		# incq %r(1087)
	movq %rbx, -128(%rbp)		# movq %r(1087), -128(%rbp)
	jmp .L297		# jmp .L297
	.L298:		# .L298:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1088)
	movq %r12, -104(%rbp)		# movq %r(1089), -104(%rbp)
	movq $0, %rbx		# movq $0, %r(1037)
	movq $8, %r13		# movq $8, %r(1038)
	movq -104(%rbp), %r14		# movq -104(%rbp), %r(1090)
	movq %r14, -120(%rbp)		# movq %r(1091), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1092)
	subq %r13, %r12		# subq %r(1038), %r(1092)
	movq %r12, -120(%rbp)		# movq %r(1092), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1093)
	movq (%r12), %r12		# movq (%r(1093)), %r(1040)
	cmpq %r12, %rbx		# cmpq %r(1040), %r(844)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1041)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1094)
	addq %rbx, %r13		# addq %r(1041), %r(1042)
	movq (%r13), %r12		# movq (%r(1042)), %r(1043)
	movq %r12, -128(%rbp)		# movq %r(1095), -128(%rbp)
	movq $1, %rbx		# movq $1, %r(1044)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1096)
	addq %rbx, %r12		# addq %r(1044), %r(1045)
	salq $3, %r12		# salq $3, %r(1046)
	movq %r12, %rdi		# movq %r(1046), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(871)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1097)
	movq %r12, (%rbx)		# movq %r(1097), (%r(846))
	movq $8, %r12		# movq $8, %r(1047)
	addq %r12, %rbx		# addq %r(1047), %r(1048)
	movq %rbx, -144(%rbp)		# movq %r(1098), -144(%rbp)
	.L303:		# .L303:
	movq $0, %rbx		# movq $0, %r(1049)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1099)
	cmpq %rbx, %r12		# cmpq %r(1049), %r(1099)
	jle .L304		# jle .L304
	.L305:		# .L305:
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1100)
	decq %rbx		# decq %r(1100)
	movq %rbx, -128(%rbp)		# movq %r(1100), -128(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1101)
	movq %rbx, %rdi		# movq %r(1101), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(872)
	movq %rbx, -8(%rbp)		# movq %r(1102), -8(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1103)
	movq %r12, -64(%rbp)		# movq %r(1104), -64(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1105)
	movq %r12, -96(%rbp)		# movq %r(1106), -96(%rbp)
	movq $8, %r12		# movq $8, %r(1050)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1107)
	movq %r13, -80(%rbp)		# movq %r(1108), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1109)
	subq %r12, %rbx		# subq %r(1050), %r(1109)
	movq %rbx, -80(%rbp)		# movq %r(1109), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1110)
	movq (%rbx), %rbx		# movq (%r(1110)), %r(1052)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1111)
	cmpq %rbx, %r12		# cmpq %r(1052), %r(1111)
	jae error_outofbounds		# jae error_outofbounds
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1112)
	movq %r12, -24(%rbp)		# movq %r(1113), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1114)
	salq $3, %rbx		# salq $3, %r(1114)
	movq %rbx, -24(%rbp)		# movq %r(1114), -24(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1115)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1116)
	addq %r12, %r13		# addq %r(1116), %r(1054)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1117)
	movq %r12, (%r13)		# movq %r(1117), (%r(1054))
	jmp .L303		# jmp .L303
	.L304:		# .L304:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1118)
	movq %rbx, %rax		# movq %r(1118), %rax
	jmp .L296		# jmp .L296
	
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
	movq %rdi, %rbx		# movq %rdi, %r(1134)
	movq %rbx, -32(%rbp)		# movq %r(1134), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1135)
	movq (%rbx), %r12		# movq (%r(1135)), %r(1119)
	movq %r12, -24(%rbp)		# movq %r(1136), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1137)
	salq $3, %rbx		# salq $3, %r(1120)
	movq $8, %r12		# movq $8, %r(1121)
	addq %r12, %rbx		# addq %r(1121), %r(1122)
	movq %rbx, %rdi		# movq %r(1122), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(873)
	movq %r12, -40(%rbp)		# movq %r(1138), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1139)
	salq $3, %r13		# salq $3, %r(1123)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1140)
	addq %r13, %r12		# addq %r(1123), %r(1124)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1141)
	movq %r13, -16(%rbp)		# movq %r(1142), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1143)
	salq $3, %rbx		# salq $3, %r(1143)
	movq %rbx, -16(%rbp)		# movq %r(1143), -16(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1144)
	movq %r13, -8(%rbp)		# movq %r(1131), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1132)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1145)
	addq %r13, %rbx		# addq %r(1145), %r(1132)
	movq %rbx, -8(%rbp)		# movq %r(1132), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1133)
	movq (%rbx), %rbx		# movq (%r(1133)), %r(1127)
	movq %rbx, (%r12)		# movq %r(1127), (%r(1124))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1146)
	decq %rbx		# decq %r(1146)
	movq %rbx, -24(%rbp)		# movq %r(1146), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(1128)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1147)
	cmpq %rbx, %r12		# cmpq %r(1128), %r(1147)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1129)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1148)
	addq %rbx, %r13		# addq %r(1129), %r(1130)
	movq %r13, %rax		# movq %r(1130), %rax
	.L18:		# .L18:
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
.L283:
	.quad 2
	.quad 35
	.quad 52
	.text

#.section .rodata
.align 8
.L261:
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

#.section .rodata
.align 8
.L264:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L291:
	.quad 2
	.quad 35
	.quad 54
	.text

#.section .rodata
.align 8
.L278:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L273:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L288:
	.quad 2
	.quad 35
	.quad 53
	.text

error_outofbounds:
call _I_outOfBounds_p
