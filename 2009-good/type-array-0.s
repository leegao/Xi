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
	leaq .L260(%rip), %rdi		# leaq .L260(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(829)
	movq %r13, %rdi		# movq %r(829), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L259:		# .L259:
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
	movq $10, %rbx		# movq $10, %r(853)
	movq %rbx, %rbx		# movq %r(853), %r(l)
	movq $16, %r12		# movq $16, %r(854)
	movq %r12, %rdi		# movq %r(854), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(932)
	movq %r12, -96(%rbp)		# movq %r(932), -96(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(933)
	movq %r13, %r13		# movq %r(933), %r(934)
	movq %r13, -80(%rbp)		# movq %r(934), -80(%rbp)
	movq $1, %r12		# movq $1, %r(855)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(935)
	movq %r12, (%r13)		# movq %r(855), (%r(935))
	movq $8, %r13		# movq $8, %r(856)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(936)
	movq %r14, %r14		# movq %r(936), %r(937)
	movq %r14, -88(%rbp)		# movq %r(937), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(938)
	addq %r13, %r12		# addq %r(856), %r(938)
	movq %r12, -88(%rbp)		# movq %r(938), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(939)
	movq %r13, %r13		# movq %r(939), %r(940)
	movq %r13, -56(%rbp)		# movq %r(940), -56(%rbp)
	movq $0, %r13		# movq $0, %r(858)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(941)
	movq %r14, %r14		# movq %r(941), %r(859)
	addq %r13, %r14		# addq %r(858), %r(859)
	movq %rbx, (%r14)		# movq %r(l), (%r(859))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(942)
	movq %rbx, %rdi		# movq %r(942), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(834)
	movq %r12, %r12		# movq %r(834), %r(943)
	movq %r12, -40(%rbp)		# movq %r(943), -40(%rbp)
	leaq .L263(%rip), %rdi		# leaq .L263(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(835)
	movq $1, %rbx		# movq $1, %r(861)
	movq %rbx, %r12		# movq %r(861), %r(791)
	movq $8, %r13		# movq $8, %r(862)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(944)
	movq %rbx, %rbx		# movq %r(944), %r(863)
	subq %r13, %rbx		# subq %r(862), %r(863)
	movq (%rbx), %rbx		# movq (%r(863)), %r(864)
	movq $10, %r13		# movq $10, %r(865)
	cmpq %r13, %rbx		# cmpq %r(865), %r(864)
	je .L264		# je .L264
	.L265:		# .L265:
	movq $0, %rbx		# movq $0, %r(866)
	movq %rbx, %r12		# movq %r(866), %r(791)
	.L264:		# .L264:
	movq %r14, %rdi		# movq %r(835), %rdi
	movq %r12, %rsi		# movq %r(791), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -40(%rbp), %r15		# movq -40(%rbp), %r(945)
	movq %r15, %r15		# movq %r(945), %r(792)
	movq $0, %r12		# movq $0, %r(867)
	movq %r12, %r14		# movq %r(867), %r(793)
	movq $8, %r12		# movq $8, %r(868)
	movq %r15, %r13		# movq %r(792), %r(869)
	subq %r12, %r13		# subq %r(868), %r(869)
	movq (%r13), %r12		# movq (%r(869)), %r(870)
	cmpq %r12, %r14		# cmpq %r(870), %r(793)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(793), %r(871)
	salq $3, %r12		# salq $3, %r(871)
	movq %r15, %rbx		# movq %r(792), %r(872)
	addq %r12, %rbx		# addq %r(871), %r(872)
	movq $42, %r12		# movq $42, %r(873)
	movq %r12, (%rbx)		# movq %r(873), (%r(872))
	movq -40(%rbp), %r15		# movq -40(%rbp), %r(946)
	movq %r15, %r15		# movq %r(946), %r(794)
	movq $1, %r12		# movq $1, %r(874)
	movq %r12, %r14		# movq %r(874), %r(795)
	movq $8, %r12		# movq $8, %r(875)
	movq %r15, %r13		# movq %r(794), %r(876)
	subq %r12, %r13		# subq %r(875), %r(876)
	movq (%r13), %r12		# movq (%r(876)), %r(877)
	cmpq %r12, %r14		# cmpq %r(877), %r(795)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(795), %r(878)
	salq $3, %r12		# salq $3, %r(878)
	movq %r15, %rbx		# movq %r(794), %r(879)
	addq %r12, %rbx		# addq %r(878), %r(879)
	movq $52, %r12		# movq $52, %r(880)
	movq %r12, (%rbx)		# movq %r(880), (%r(879))
	movq -40(%rbp), %r15		# movq -40(%rbp), %r(947)
	movq %r15, %r15		# movq %r(947), %r(796)
	movq $2, %r12		# movq $2, %r(881)
	movq %r12, %r14		# movq %r(881), %r(797)
	movq $8, %r12		# movq $8, %r(882)
	movq %r15, %r13		# movq %r(796), %r(883)
	subq %r12, %r13		# subq %r(882), %r(883)
	movq (%r13), %r12		# movq (%r(883)), %r(884)
	cmpq %r12, %r14		# cmpq %r(884), %r(797)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(797), %r(885)
	salq $3, %r12		# salq $3, %r(885)
	movq %r15, %rbx		# movq %r(796), %r(886)
	addq %r12, %rbx		# addq %r(885), %r(886)
	movq $62, %r12		# movq $62, %r(887)
	movq %r12, (%rbx)		# movq %r(887), (%r(886))
	leaq .L272(%rip), %rdi		# leaq .L272(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(948)
	movq %rbx, -8(%rbp)		# movq %r(948), -8(%rbp)
	movq $1, %r12		# movq $1, %r(889)
	movq %r12, %r12		# movq %r(889), %r(949)
	movq %r12, -136(%rbp)		# movq %r(949), -136(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(950)
	movq %r12, %r12		# movq %r(950), %r(951)
	movq %r12, -112(%rbp)		# movq %r(951), -112(%rbp)
	movq $0, %rbx		# movq $0, %r(890)
	movq %rbx, %rbx		# movq %r(890), %r(799)
	movq $8, %r13		# movq $8, %r(891)
	movq -112(%rbp), %r14		# movq -112(%rbp), %r(952)
	movq %r14, %r14		# movq %r(952), %r(953)
	movq %r14, -16(%rbp)		# movq %r(953), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(954)
	subq %r13, %r12		# subq %r(891), %r(954)
	movq %r12, -16(%rbp)		# movq %r(954), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(955)
	movq (%r12), %r12		# movq (%r(955)), %r(893)
	cmpq %r12, %rbx		# cmpq %r(893), %r(799)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(799), %r(894)
	salq $3, %rbx		# salq $3, %r(894)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(956)
	movq %r13, %r13		# movq %r(956), %r(895)
	addq %rbx, %r13		# addq %r(894), %r(895)
	movq (%r13), %rbx		# movq (%r(895)), %r(896)
	movq $42, %r12		# movq $42, %r(897)
	cmpq %r12, %rbx		# cmpq %r(897), %r(896)
	je .L275		# je .L275
	.L276:		# .L276:
	movq $0, %r12		# movq $0, %r(898)
	movq %r12, %r12		# movq %r(898), %r(957)
	movq %r12, -136(%rbp)		# movq %r(957), -136(%rbp)
	.L275:		# .L275:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(958)
	movq %rbx, %rdi		# movq %r(958), %rdi
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(959)
	movq %rbx, %rsi		# movq %r(959), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L277(%rip), %rdi		# leaq .L277(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(960)
	movq %rbx, -32(%rbp)		# movq %r(960), -32(%rbp)
	movq $1, %r12		# movq $1, %r(900)
	movq %r12, %r12		# movq %r(900), %r(961)
	movq %r12, -48(%rbp)		# movq %r(961), -48(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(962)
	movq %r12, %r12		# movq %r(962), %r(963)
	movq %r12, -120(%rbp)		# movq %r(963), -120(%rbp)
	movq $1, %rbx		# movq $1, %r(901)
	movq %rbx, %rbx		# movq %r(901), %r(802)
	movq $8, %r13		# movq $8, %r(902)
	movq -120(%rbp), %r14		# movq -120(%rbp), %r(964)
	movq %r14, %r14		# movq %r(964), %r(965)
	movq %r14, -64(%rbp)		# movq %r(965), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(966)
	subq %r13, %r12		# subq %r(902), %r(966)
	movq %r12, -64(%rbp)		# movq %r(966), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(967)
	movq (%r12), %r12		# movq (%r(967)), %r(904)
	cmpq %r12, %rbx		# cmpq %r(904), %r(802)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(802), %r(905)
	salq $3, %rbx		# salq $3, %r(905)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(968)
	movq %r13, %r13		# movq %r(968), %r(906)
	addq %rbx, %r13		# addq %r(905), %r(906)
	movq (%r13), %rbx		# movq (%r(906)), %r(907)
	movq $52, %r12		# movq $52, %r(908)
	cmpq %r12, %rbx		# cmpq %r(908), %r(907)
	je .L280		# je .L280
	.L281:		# .L281:
	movq $0, %r12		# movq $0, %r(909)
	movq %r12, %r12		# movq %r(909), %r(969)
	movq %r12, -48(%rbp)		# movq %r(969), -48(%rbp)
	.L280:		# .L280:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(970)
	movq %rbx, %rdi		# movq %r(970), %rdi
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(971)
	movq %rbx, %rsi		# movq %r(971), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L282(%rip), %rdi		# leaq .L282(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(972)
	movq %rbx, -104(%rbp)		# movq %r(972), -104(%rbp)
	movq $1, %r12		# movq $1, %r(911)
	movq %r12, %r12		# movq %r(911), %r(973)
	movq %r12, -72(%rbp)		# movq %r(973), -72(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(974)
	movq %r12, %r12		# movq %r(974), %r(975)
	movq %r12, -144(%rbp)		# movq %r(975), -144(%rbp)
	movq $2, %rbx		# movq $2, %r(912)
	movq %rbx, %rbx		# movq %r(912), %r(805)
	movq $8, %r13		# movq $8, %r(913)
	movq -144(%rbp), %r14		# movq -144(%rbp), %r(976)
	movq %r14, %r14		# movq %r(976), %r(977)
	movq %r14, -128(%rbp)		# movq %r(977), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(978)
	subq %r13, %r12		# subq %r(913), %r(978)
	movq %r12, -128(%rbp)		# movq %r(978), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(979)
	movq (%r12), %r12		# movq (%r(979)), %r(915)
	cmpq %r12, %rbx		# cmpq %r(915), %r(805)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(805), %r(916)
	salq $3, %rbx		# salq $3, %r(916)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(980)
	movq %r13, %r13		# movq %r(980), %r(917)
	addq %rbx, %r13		# addq %r(916), %r(917)
	movq (%r13), %rbx		# movq (%r(917)), %r(918)
	movq $62, %r12		# movq $62, %r(919)
	cmpq %r12, %rbx		# cmpq %r(919), %r(918)
	je .L285		# je .L285
	.L286:		# .L286:
	movq $0, %r12		# movq $0, %r(920)
	movq %r12, %r12		# movq %r(920), %r(981)
	movq %r12, -72(%rbp)		# movq %r(981), -72(%rbp)
	.L285:		# .L285:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(982)
	movq %rbx, %rdi		# movq %r(982), %rdi
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(983)
	movq %rbx, %rsi		# movq %r(983), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %rbx		# movq $0, %r(921)
	movq %rbx, %rbx		# movq %r(921), %r(b)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(984)
	movq %rbx, %rbx		# movq %r(984), %r(b)
	leaq .L287(%rip), %rdi		# leaq .L287(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(843)
	movq $1, %r12		# movq $1, %r(923)
	movq %r12, %r12		# movq %r(923), %r(808)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(985)
	cmpq %r14, %rbx		# cmpq %r(985), %r(b)
	je .L288		# je .L288
	.L289:		# .L289:
	movq $0, %r12		# movq $0, %r(924)
	movq %r12, %r12		# movq %r(924), %r(808)
	.L288:		# .L288:
	movq %r13, %rdi		# movq %r(843), %rdi
	movq %r12, %rsi		# movq %r(808), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L290(%rip), %rdi		# leaq .L290(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(986)
	movq %r12, -24(%rbp)		# movq %r(986), -24(%rbp)
	movq $1, %r13		# movq $1, %r(926)
	movq %r13, %r13		# movq %r(926), %r(809)
	movq $8, %r12		# movq $8, %r(927)
	movq %rbx, %rbx		# movq %r(b), %r(928)
	subq %r12, %rbx		# subq %r(927), %r(928)
	movq (%rbx), %rbx		# movq (%r(928)), %r(929)
	movq $10, %r12		# movq $10, %r(930)
	cmpq %r12, %rbx		# cmpq %r(930), %r(929)
	je .L291		# je .L291
	.L292:		# .L292:
	movq $0, %r13		# movq $0, %r(931)
	movq %r13, %r13		# movq %r(931), %r(809)
	.L291:		# .L291:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(987)
	movq %rbx, %rdi		# movq %r(987), %rdi
	movq %r13, %rsi		# movq %r(809), %rsi
	call _Itest_paib		# call _Itest_paib
	.L261:		# .L261:
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
	movq %rdi, %rbx		# movq %rdi, %r(1028)
	movq %rbx, -32(%rbp)		# movq %r(1028), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(988)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1029)
	movq %r13, %r13		# movq %r(1029), %r(989)
	subq %rbx, %r13		# subq %r(988), %r(989)
	movq (%r13), %r12		# movq (%r(989)), %r(990)
	movq %r12, %r12		# movq %r(990), %r(1030)
	movq %r12, -72(%rbp)		# movq %r(1030), -72(%rbp)
	movq $1, %r12		# movq $1, %r(991)
	movq %r12, %r12		# movq %r(991), %r(1031)
	movq %r12, -104(%rbp)		# movq %r(1031), -104(%rbp)
	movq $0, %rbx		# movq $0, %r(992)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1032)
	cmpq %rbx, %r12		# cmpq %r(992), %r(1032)
	jne .L293		# jne .L293
	.L294:		# .L294:
	movq $0, %rbx		# movq $0, %r(993)
	movq %rbx, %rax		# movq %r(993), %rax
	jmp .L295		# jmp .L295
	.L293:		# .L293:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1033)
	movq %rbx, %rdi		# movq %r(1033), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(847)
	movq %r14, %r14		# movq %r(847), %r(813)
	movq %r14, %r14		# movq %r(813), %r(814)
	movq $1, %r13		# movq $1, %r(994)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1034)
	movq %rbx, %rbx		# movq %r(1034), %r(1035)
	movq %rbx, -144(%rbp)		# movq %r(1035), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1036)
	subq %r13, %r12		# subq %r(994), %r(1036)
	movq %r12, -144(%rbp)		# movq %r(1036), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1037)
	movq %r12, (%r14)		# movq %r(1037), (%r(814))
	movq $8, %r12		# movq $8, %r(996)
	movq %r14, %r14		# movq %r(814), %r(997)
	addq %r12, %r14		# addq %r(996), %r(997)
	movq %r14, %r14		# movq %r(997), %r(1038)
	movq %r14, -112(%rbp)		# movq %r(1038), -112(%rbp)
	.L296:		# .L296:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1039)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1040)
	cmpq %rbx, %r12		# cmpq %r(1039), %r(1040)
	jge .L297		# jge .L297
	.L298:		# .L298:
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1041)
	movq %r12, %r12		# movq %r(1041), %r(1042)
	movq %r12, -64(%rbp)		# movq %r(1042), -64(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1043)
	movq %r12, %r12		# movq %r(1043), %r(1044)
	movq %r12, -96(%rbp)		# movq %r(1044), -96(%rbp)
	movq $8, %r12		# movq $8, %r(998)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1045)
	movq %r13, %r13		# movq %r(1045), %r(1046)
	movq %r13, -48(%rbp)		# movq %r(1046), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1047)
	subq %r12, %rbx		# subq %r(998), %r(1047)
	movq %rbx, -48(%rbp)		# movq %r(1047), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1048)
	movq (%rbx), %rbx		# movq (%r(1048)), %r(1000)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1049)
	cmpq %rbx, %r12		# cmpq %r(1000), %r(1049)
	jae error_outofbounds		# jae error_outofbounds
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1050)
	movq %r12, %r12		# movq %r(1050), %r(1051)
	movq %r12, -24(%rbp)		# movq %r(1051), -24(%rbp)
	movq $1, %r12		# movq $1, %r(1001)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1052)
	movq %r13, %r13		# movq %r(1052), %r(1053)
	movq %r13, -8(%rbp)		# movq %r(1053), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1054)
	subq %r12, %rbx		# subq %r(1001), %r(1054)
	movq %rbx, -8(%rbp)		# movq %r(1054), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1055)
	movq %r12, %r12		# movq %r(1055), %r(1056)
	movq %r12, -120(%rbp)		# movq %r(1056), -120(%rbp)
	movq $8, %r12		# movq $8, %r(1003)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1057)
	movq %r13, %r13		# movq %r(1057), %r(1058)
	movq %r13, -80(%rbp)		# movq %r(1058), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1059)
	subq %r12, %rbx		# subq %r(1003), %r(1059)
	movq %rbx, -80(%rbp)		# movq %r(1059), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1060)
	movq (%rbx), %rbx		# movq (%r(1060)), %r(1005)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1061)
	cmpq %rbx, %r12		# cmpq %r(1005), %r(1061)
	jae error_outofbounds		# jae error_outofbounds
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(1062)
	movq %r13, %r13		# movq %r(1062), %r(1006)
	salq $3, %r13		# salq $3, %r(1006)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1063)
	movq %rbx, %rbx		# movq %r(1063), %r(1064)
	movq %rbx, -136(%rbp)		# movq %r(1064), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1065)
	addq %r13, %r12		# addq %r(1006), %r(1065)
	movq %r12, -136(%rbp)		# movq %r(1065), -136(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(1066)
	movq %r12, %r12		# movq %r(1066), %r(1067)
	movq %r12, -16(%rbp)		# movq %r(1067), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1068)
	salq $3, %rbx		# salq $3, %r(1068)
	movq %rbx, -16(%rbp)		# movq %r(1068), -16(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1069)
	movq %r13, %r13		# movq %r(1069), %r(1009)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1070)
	addq %r12, %r13		# addq %r(1070), %r(1009)
	movq (%r13), %rbx		# movq (%r(1009)), %r(1010)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1071)
	movq %rbx, (%r12)		# movq %r(1010), (%r(1071))
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1072)
	incq %rbx		# incq %r(1072)
	movq %rbx, -104(%rbp)		# movq %r(1072), -104(%rbp)
	jmp .L296		# jmp .L296
	.L297:		# .L297:
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(1073)
	movq %r15, %r15		# movq %r(1073), %r(820)
	movq $0, %r12		# movq $0, %r(1011)
	movq %r12, %r14		# movq %r(1011), %r(821)
	movq $8, %r12		# movq $8, %r(1012)
	movq %r15, %r13		# movq %r(820), %r(1013)
	subq %r12, %r13		# subq %r(1012), %r(1013)
	movq (%r13), %r12		# movq (%r(1013)), %r(1014)
	cmpq %r12, %r14		# cmpq %r(1014), %r(821)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(821), %r(1015)
	salq $3, %r12		# salq $3, %r(1015)
	movq %r15, %rbx		# movq %r(820), %r(1016)
	addq %r12, %rbx		# addq %r(1015), %r(1016)
	movq (%rbx), %r12		# movq (%r(1016)), %r(1017)
	movq %r12, %r12		# movq %r(1017), %r(1074)
	movq %r12, -104(%rbp)		# movq %r(1074), -104(%rbp)
	movq $1, %rbx		# movq $1, %r(1018)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(1075)
	movq %r13, %r13		# movq %r(1075), %r(1019)
	addq %rbx, %r13		# addq %r(1018), %r(1019)
	movq %r13, %rdi		# movq %r(1019), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(848)
	movq %rbx, %rbx		# movq %r(848), %r(822)
	movq %rbx, %rbx		# movq %r(822), %r(823)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1076)
	movq %r12, (%rbx)		# movq %r(1076), (%r(823))
	movq $8, %r12		# movq $8, %r(1020)
	movq %rbx, %rbx		# movq %r(823), %r(1021)
	addq %r12, %rbx		# addq %r(1020), %r(1021)
	movq %rbx, %rbx		# movq %r(1021), %r(1077)
	movq %rbx, -88(%rbp)		# movq %r(1077), -88(%rbp)
	.L302:		# .L302:
	movq $0, %rbx		# movq $0, %r(1022)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1078)
	cmpq %rbx, %r12		# cmpq %r(1022), %r(1078)
	jle .L303		# jle .L303
	.L304:		# .L304:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1079)
	decq %rbx		# decq %r(1079)
	movq %rbx, -104(%rbp)		# movq %r(1079), -104(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1080)
	movq %rbx, %rdi		# movq %r(1080), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(849)
	movq %rbx, %rbx		# movq %r(849), %r(825)
	movq %rbx, %rbx		# movq %r(825), %r(1081)
	movq %rbx, -40(%rbp)		# movq %r(1081), -40(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1082)
	movq %r12, %r12		# movq %r(1082), %r(1083)
	movq %r12, -128(%rbp)		# movq %r(1083), -128(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1084)
	movq %rbx, %rbx		# movq %r(1084), %r(828)
	movq $8, %r13		# movq $8, %r(1023)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(1085)
	movq %r14, %r14		# movq %r(1085), %r(1086)
	movq %r14, -56(%rbp)		# movq %r(1086), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1087)
	subq %r13, %r12		# subq %r(1023), %r(1087)
	movq %r12, -56(%rbp)		# movq %r(1087), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1088)
	movq (%r12), %r12		# movq (%r(1088)), %r(1025)
	cmpq %r12, %rbx		# cmpq %r(1025), %r(828)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(828), %r(1026)
	salq $3, %rbx		# salq $3, %r(1026)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(1089)
	movq %r13, %r13		# movq %r(1089), %r(1027)
	addq %rbx, %r13		# addq %r(1026), %r(1027)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1090)
	movq %rbx, (%r13)		# movq %r(1090), (%r(1027))
	jmp .L302		# jmp .L302
	.L303:		# .L303:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1091)
	movq %rbx, %rax		# movq %r(1091), %rax
	jmp .L295		# jmp .L295
	.L295:		# .L295:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $160, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1104)
	movq %rbx, -16(%rbp)		# movq %r(1104), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1105)
	movq (%rbx), %r12		# movq (%r(1105)), %r(1092)
	movq %r12, %r12		# movq %r(1092), %r(1106)
	movq %r12, -8(%rbp)		# movq %r(1106), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1107)
	movq %rbx, %rbx		# movq %r(1107), %r(1093)
	salq $3, %rbx		# salq $3, %r(1093)
	movq $8, %r12		# movq $8, %r(1094)
	movq %rbx, %rbx		# movq %r(1093), %r(1095)
	addq %r12, %rbx		# addq %r(1094), %r(1095)
	movq %rbx, %rdi		# movq %r(1095), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(850)
	movq %rbx, %r14		# movq %r(850), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1108)
	movq %r12, %r12		# movq %r(1108), %r(1096)
	salq $3, %r12		# salq $3, %r(1096)
	movq %r14, %r13		# movq %r(t27), %r(1097)
	addq %r12, %r13		# addq %r(1096), %r(1097)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1109)
	movq %rbx, %r12		# movq %r(1109), %r(1098)
	salq $3, %r12		# salq $3, %r(1098)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1110)
	movq %rbx, %rbx		# movq %r(1110), %r(1111)
	movq %rbx, -24(%rbp)		# movq %r(1111), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1112)
	addq %r12, %rbx		# addq %r(1098), %r(1112)
	movq %rbx, -24(%rbp)		# movq %r(1112), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1113)
	movq (%rbx), %rbx		# movq (%r(1113)), %r(1100)
	movq %rbx, (%r13)		# movq %r(1100), (%r(1097))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1114)
	decq %rbx		# decq %r(1114)
	movq %rbx, -8(%rbp)		# movq %r(1114), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(1101)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1115)
	cmpq %rbx, %r12		# cmpq %r(1101), %r(1115)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1102)
	movq %r14, %r12		# movq %r(t27), %r(1103)
	addq %rbx, %r12		# addq %r(1102), %r(1103)
	movq %r12, %rax		# movq %r(1103), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L277:
	.quad 2
	.quad 35
	.quad 51
	.text

.section .rodata
.align 8
.L260:
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
.L263:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L290:
	.quad 2
	.quad 35
	.quad 54
	.text

.section .rodata
.align 8
.L287:
	.quad 2
	.quad 35
	.quad 53
	.text

.section .rodata
.align 8
.L282:
	.quad 2
	.quad 35
	.quad 52
	.text

.section .rodata
.align 8
.L272:
	.quad 2
	.quad 35
	.quad 50
	.text

error_outofbounds:
call _I_outOfBounds_p
