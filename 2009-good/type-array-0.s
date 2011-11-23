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
	movq %rax, %r13		# movq %rax, %r(846)
	movq %r13, %rdi		# movq %r(846), %rdi
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
	movq $10, %rbx		# movq $10, %r(870)
	movq %rbx, %rbx		# movq %r(870), %r(l)
	movq $16, %r12		# movq $16, %r(871)
	movq %r12, %rdi		# movq %r(871), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(949)
	movq %r12, -40(%rbp)		# movq %r(949), -40(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(950)
	movq %r13, %r13		# movq %r(950), %r(951)
	movq %r13, -48(%rbp)		# movq %r(951), -48(%rbp)
	movq $1, %r12		# movq $1, %r(872)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(952)
	movq %r12, (%r13)		# movq %r(872), (%r(952))
	movq $8, %r13		# movq $8, %r(873)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(953)
	movq %r14, %r14		# movq %r(953), %r(954)
	movq %r14, -80(%rbp)		# movq %r(954), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(955)
	addq %r13, %r12		# addq %r(873), %r(955)
	movq %r12, -80(%rbp)		# movq %r(955), -80(%rbp)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(956)
	movq %r13, %r13		# movq %r(956), %r(957)
	movq %r13, -104(%rbp)		# movq %r(957), -104(%rbp)
	movq $0, %r13		# movq $0, %r(875)
	movq -104(%rbp), %r14		# movq -104(%rbp), %r(958)
	movq %r14, %r14		# movq %r(958), %r(876)
	addq %r13, %r14		# addq %r(875), %r(876)
	movq %rbx, (%r14)		# movq %r(l), (%r(876))
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(959)
	movq %rbx, %rdi		# movq %r(959), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(851)
	movq %r12, %r12		# movq %r(851), %r(960)
	movq %r12, -72(%rbp)		# movq %r(960), -72(%rbp)
	leaq .L263(%rip), %rdi		# leaq .L263(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(961)
	movq %rbx, -64(%rbp)		# movq %r(961), -64(%rbp)
	movq $1, %r13		# movq $1, %r(878)
	movq %r13, %r13		# movq %r(878), %r(808)
	movq $8, %r12		# movq $8, %r(879)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(962)
	movq %r14, %r14		# movq %r(962), %r(880)
	subq %r12, %r14		# subq %r(879), %r(880)
	movq (%r14), %rbx		# movq (%r(880)), %r(881)
	movq $10, %r12		# movq $10, %r(882)
	cmpq %r12, %rbx		# cmpq %r(882), %r(881)
	je .L264		# je .L264
	.L265:		# .L265:
	movq $0, %r13		# movq $0, %r(883)
	movq %r13, %r13		# movq %r(883), %r(808)
	.L264:		# .L264:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(963)
	movq %rbx, %rdi		# movq %r(963), %rdi
	movq %r13, %rsi		# movq %r(808), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -72(%rbp), %r15		# movq -72(%rbp), %r(964)
	movq %r15, %r15		# movq %r(964), %r(809)
	movq $0, %r12		# movq $0, %r(884)
	movq %r12, %r14		# movq %r(884), %r(810)
	movq $8, %r12		# movq $8, %r(885)
	movq %r15, %r13		# movq %r(809), %r(886)
	subq %r12, %r13		# subq %r(885), %r(886)
	movq (%r13), %r12		# movq (%r(886)), %r(887)
	cmpq %r12, %r14		# cmpq %r(887), %r(810)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(810), %r(888)
	salq $3, %r12		# salq $3, %r(888)
	movq %r15, %rbx		# movq %r(809), %r(889)
	addq %r12, %rbx		# addq %r(888), %r(889)
	movq $42, %r12		# movq $42, %r(890)
	movq %r12, (%rbx)		# movq %r(890), (%r(889))
	movq -72(%rbp), %r15		# movq -72(%rbp), %r(965)
	movq %r15, %r15		# movq %r(965), %r(811)
	movq $1, %r12		# movq $1, %r(891)
	movq %r12, %r14		# movq %r(891), %r(812)
	movq $8, %r12		# movq $8, %r(892)
	movq %r15, %r13		# movq %r(811), %r(893)
	subq %r12, %r13		# subq %r(892), %r(893)
	movq (%r13), %r12		# movq (%r(893)), %r(894)
	cmpq %r12, %r14		# cmpq %r(894), %r(812)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(812), %r(895)
	salq $3, %r12		# salq $3, %r(895)
	movq %r15, %rbx		# movq %r(811), %r(896)
	addq %r12, %rbx		# addq %r(895), %r(896)
	movq $52, %r12		# movq $52, %r(897)
	movq %r12, (%rbx)		# movq %r(897), (%r(896))
	movq -72(%rbp), %r15		# movq -72(%rbp), %r(966)
	movq %r15, %r15		# movq %r(966), %r(813)
	movq $2, %r12		# movq $2, %r(898)
	movq %r12, %r14		# movq %r(898), %r(814)
	movq $8, %r12		# movq $8, %r(899)
	movq %r15, %r13		# movq %r(813), %r(900)
	subq %r12, %r13		# subq %r(899), %r(900)
	movq (%r13), %r12		# movq (%r(900)), %r(901)
	cmpq %r12, %r14		# cmpq %r(901), %r(814)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(814), %r(902)
	salq $3, %r12		# salq $3, %r(902)
	movq %r15, %rbx		# movq %r(813), %r(903)
	addq %r12, %rbx		# addq %r(902), %r(903)
	movq $62, %r12		# movq $62, %r(904)
	movq %r12, (%rbx)		# movq %r(904), (%r(903))
	leaq .L272(%rip), %rdi		# leaq .L272(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(967)
	movq %rbx, -152(%rbp)		# movq %r(967), -152(%rbp)
	movq $1, %r12		# movq $1, %r(906)
	movq %r12, %r12		# movq %r(906), %r(968)
	movq %r12, -136(%rbp)		# movq %r(968), -136(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(969)
	movq %r12, %r12		# movq %r(969), %r(970)
	movq %r12, -128(%rbp)		# movq %r(970), -128(%rbp)
	movq $0, %rbx		# movq $0, %r(907)
	movq %rbx, %rbx		# movq %r(907), %r(816)
	movq $8, %r13		# movq $8, %r(908)
	movq -128(%rbp), %r14		# movq -128(%rbp), %r(971)
	movq %r14, %r14		# movq %r(971), %r(972)
	movq %r14, -144(%rbp)		# movq %r(972), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(973)
	subq %r13, %r12		# subq %r(908), %r(973)
	movq %r12, -144(%rbp)		# movq %r(973), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(974)
	movq (%r12), %r12		# movq (%r(974)), %r(910)
	cmpq %r12, %rbx		# cmpq %r(910), %r(816)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(816), %r(911)
	salq $3, %rbx		# salq $3, %r(911)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(975)
	movq %r13, %r13		# movq %r(975), %r(912)
	addq %rbx, %r13		# addq %r(911), %r(912)
	movq (%r13), %rbx		# movq (%r(912)), %r(913)
	movq $42, %r12		# movq $42, %r(914)
	cmpq %r12, %rbx		# cmpq %r(914), %r(913)
	je .L275		# je .L275
	.L276:		# .L276:
	movq $0, %r12		# movq $0, %r(915)
	movq %r12, %r12		# movq %r(915), %r(976)
	movq %r12, -136(%rbp)		# movq %r(976), -136(%rbp)
	.L275:		# .L275:
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(977)
	movq %rbx, %rdi		# movq %r(977), %rdi
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(978)
	movq %rbx, %rsi		# movq %r(978), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L277(%rip), %rdi		# leaq .L277(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(979)
	movq %rbx, -16(%rbp)		# movq %r(979), -16(%rbp)
	movq $1, %r12		# movq $1, %r(917)
	movq %r12, %r12		# movq %r(917), %r(980)
	movq %r12, -24(%rbp)		# movq %r(980), -24(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(981)
	movq %r12, %r12		# movq %r(981), %r(982)
	movq %r12, -120(%rbp)		# movq %r(982), -120(%rbp)
	movq $1, %rbx		# movq $1, %r(918)
	movq %rbx, %rbx		# movq %r(918), %r(819)
	movq $8, %r13		# movq $8, %r(919)
	movq -120(%rbp), %r14		# movq -120(%rbp), %r(983)
	movq %r14, %r14		# movq %r(983), %r(984)
	movq %r14, -96(%rbp)		# movq %r(984), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(985)
	subq %r13, %r12		# subq %r(919), %r(985)
	movq %r12, -96(%rbp)		# movq %r(985), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(986)
	movq (%r12), %r12		# movq (%r(986)), %r(921)
	cmpq %r12, %rbx		# cmpq %r(921), %r(819)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(819), %r(922)
	salq $3, %rbx		# salq $3, %r(922)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(987)
	movq %r13, %r13		# movq %r(987), %r(923)
	addq %rbx, %r13		# addq %r(922), %r(923)
	movq (%r13), %rbx		# movq (%r(923)), %r(924)
	movq $52, %r12		# movq $52, %r(925)
	cmpq %r12, %rbx		# cmpq %r(925), %r(924)
	je .L280		# je .L280
	.L281:		# .L281:
	movq $0, %r12		# movq $0, %r(926)
	movq %r12, %r12		# movq %r(926), %r(988)
	movq %r12, -24(%rbp)		# movq %r(988), -24(%rbp)
	.L280:		# .L280:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(989)
	movq %rbx, %rdi		# movq %r(989), %rdi
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(990)
	movq %rbx, %rsi		# movq %r(990), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L282(%rip), %rdi		# leaq .L282(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(991)
	movq %rbx, -112(%rbp)		# movq %r(991), -112(%rbp)
	movq $1, %r12		# movq $1, %r(928)
	movq %r12, %r12		# movq %r(928), %r(992)
	movq %r12, -56(%rbp)		# movq %r(992), -56(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(993)
	movq %r12, %r12		# movq %r(993), %r(994)
	movq %r12, -8(%rbp)		# movq %r(994), -8(%rbp)
	movq $2, %rbx		# movq $2, %r(929)
	movq %rbx, %rbx		# movq %r(929), %r(822)
	movq $8, %r13		# movq $8, %r(930)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(995)
	movq %r14, %r14		# movq %r(995), %r(996)
	movq %r14, -32(%rbp)		# movq %r(996), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(997)
	subq %r13, %r12		# subq %r(930), %r(997)
	movq %r12, -32(%rbp)		# movq %r(997), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(998)
	movq (%r12), %r12		# movq (%r(998)), %r(932)
	cmpq %r12, %rbx		# cmpq %r(932), %r(822)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(822), %r(933)
	salq $3, %rbx		# salq $3, %r(933)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(999)
	movq %r13, %r13		# movq %r(999), %r(934)
	addq %rbx, %r13		# addq %r(933), %r(934)
	movq (%r13), %rbx		# movq (%r(934)), %r(935)
	movq $62, %r12		# movq $62, %r(936)
	cmpq %r12, %rbx		# cmpq %r(936), %r(935)
	je .L285		# je .L285
	.L286:		# .L286:
	movq $0, %r12		# movq $0, %r(937)
	movq %r12, %r12		# movq %r(937), %r(1000)
	movq %r12, -56(%rbp)		# movq %r(1000), -56(%rbp)
	.L285:		# .L285:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1001)
	movq %rbx, %rdi		# movq %r(1001), %rdi
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1002)
	movq %rbx, %rsi		# movq %r(1002), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %rbx		# movq $0, %r(938)
	movq %rbx, %rbx		# movq %r(938), %r(b)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1003)
	movq %rbx, %rbx		# movq %r(1003), %r(b)
	leaq .L287(%rip), %rdi		# leaq .L287(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(860)
	movq $1, %r12		# movq $1, %r(940)
	movq %r12, %r12		# movq %r(940), %r(825)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(1004)
	cmpq %r14, %rbx		# cmpq %r(1004), %r(b)
	je .L288		# je .L288
	.L289:		# .L289:
	movq $0, %r12		# movq $0, %r(941)
	movq %r12, %r12		# movq %r(941), %r(825)
	.L288:		# .L288:
	movq %r13, %rdi		# movq %r(860), %rdi
	movq %r12, %rsi		# movq %r(825), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L290(%rip), %rdi		# leaq .L290(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(1005)
	movq %r12, -88(%rbp)		# movq %r(1005), -88(%rbp)
	movq $1, %r13		# movq $1, %r(943)
	movq %r13, %r13		# movq %r(943), %r(826)
	movq $8, %r12		# movq $8, %r(944)
	movq %rbx, %rbx		# movq %r(b), %r(945)
	subq %r12, %rbx		# subq %r(944), %r(945)
	movq (%rbx), %rbx		# movq (%r(945)), %r(946)
	movq $10, %r12		# movq $10, %r(947)
	cmpq %r12, %rbx		# cmpq %r(947), %r(946)
	je .L291		# je .L291
	.L292:		# .L292:
	movq $0, %r13		# movq $0, %r(948)
	movq %r13, %r13		# movq %r(948), %r(826)
	.L291:		# .L291:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1006)
	movq %rbx, %rdi		# movq %r(1006), %rdi
	movq %r13, %rsi		# movq %r(826), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(1047)
	movq %rbx, -88(%rbp)		# movq %r(1047), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(1007)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(1048)
	movq %r13, %r13		# movq %r(1048), %r(1008)
	subq %rbx, %r13		# subq %r(1007), %r(1008)
	movq (%r13), %r12		# movq (%r(1008)), %r(1009)
	movq %r12, %r12		# movq %r(1009), %r(1049)
	movq %r12, -72(%rbp)		# movq %r(1049), -72(%rbp)
	movq $1, %r12		# movq $1, %r(1010)
	movq %r12, %r12		# movq %r(1010), %r(1050)
	movq %r12, -144(%rbp)		# movq %r(1050), -144(%rbp)
	movq $0, %rbx		# movq $0, %r(1011)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1051)
	cmpq %rbx, %r12		# cmpq %r(1011), %r(1051)
	jne .L293		# jne .L293
	.L294:		# .L294:
	movq $0, %rbx		# movq $0, %r(1012)
	movq %rbx, %rax		# movq %r(1012), %rax
	jmp .L295		# jmp .L295
	.L293:		# .L293:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1052)
	movq %rbx, %rdi		# movq %r(1052), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(864)
	movq %r14, %r14		# movq %r(864), %r(830)
	movq %r14, %r14		# movq %r(830), %r(831)
	movq $1, %r13		# movq $1, %r(1013)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(1053)
	movq %rbx, %rbx		# movq %r(1053), %r(1054)
	movq %rbx, -8(%rbp)		# movq %r(1054), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1055)
	subq %r13, %r12		# subq %r(1013), %r(1055)
	movq %r12, -8(%rbp)		# movq %r(1055), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1056)
	movq %r12, (%r14)		# movq %r(1056), (%r(831))
	movq $8, %r12		# movq $8, %r(1015)
	movq %r14, %r14		# movq %r(831), %r(1016)
	addq %r12, %r14		# addq %r(1015), %r(1016)
	movq %r14, %r14		# movq %r(1016), %r(1057)
	movq %r14, -128(%rbp)		# movq %r(1057), -128(%rbp)
	.L296:		# .L296:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1058)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1059)
	cmpq %r12, %rbx		# cmpq %r(1059), %r(1058)
	jge .L297		# jge .L297
	.L298:		# .L298:
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1060)
	movq %r12, %r12		# movq %r(1060), %r(1061)
	movq %r12, -56(%rbp)		# movq %r(1061), -56(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1062)
	movq %r12, %r12		# movq %r(1062), %r(1063)
	movq %r12, -40(%rbp)		# movq %r(1063), -40(%rbp)
	movq $8, %r12		# movq $8, %r(1017)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1064)
	movq %r13, %r13		# movq %r(1064), %r(1065)
	movq %r13, -104(%rbp)		# movq %r(1065), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1066)
	subq %r12, %rbx		# subq %r(1017), %r(1066)
	movq %rbx, -104(%rbp)		# movq %r(1066), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1067)
	movq (%rbx), %rbx		# movq (%r(1067)), %r(1019)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1068)
	cmpq %rbx, %r12		# cmpq %r(1019), %r(1068)
	jae error_outofbounds		# jae error_outofbounds
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1069)
	movq %r12, %r12		# movq %r(1069), %r(1070)
	movq %r12, -96(%rbp)		# movq %r(1070), -96(%rbp)
	movq $1, %r12		# movq $1, %r(1020)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(1071)
	movq %r13, %r13		# movq %r(1071), %r(1072)
	movq %r13, -120(%rbp)		# movq %r(1072), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(1073)
	subq %r12, %rbx		# subq %r(1020), %r(1073)
	movq %rbx, -120(%rbp)		# movq %r(1073), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1074)
	movq %r12, %r12		# movq %r(1074), %r(1075)
	movq %r12, -16(%rbp)		# movq %r(1075), -16(%rbp)
	movq $8, %r12		# movq $8, %r(1022)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(1076)
	movq %r13, %r13		# movq %r(1076), %r(1077)
	movq %r13, -136(%rbp)		# movq %r(1077), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(1078)
	subq %r12, %rbx		# subq %r(1022), %r(1078)
	movq %rbx, -136(%rbp)		# movq %r(1078), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(1079)
	movq (%rbx), %rbx		# movq (%r(1079)), %r(1024)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1080)
	cmpq %rbx, %r12		# cmpq %r(1024), %r(1080)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1081)
	movq %r13, %r13		# movq %r(1081), %r(1025)
	salq $3, %r13		# salq $3, %r(1025)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1082)
	movq %rbx, %rbx		# movq %r(1082), %r(1083)
	movq %rbx, -112(%rbp)		# movq %r(1083), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1084)
	addq %r13, %r12		# addq %r(1025), %r(1084)
	movq %r12, -112(%rbp)		# movq %r(1084), -112(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1085)
	movq %r12, %r12		# movq %r(1085), %r(1086)
	movq %r12, -24(%rbp)		# movq %r(1086), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1087)
	salq $3, %rbx		# salq $3, %r(1087)
	movq %rbx, -24(%rbp)		# movq %r(1087), -24(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1088)
	movq %r13, %r13		# movq %r(1088), %r(1028)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1089)
	addq %r12, %r13		# addq %r(1089), %r(1028)
	movq (%r13), %rbx		# movq (%r(1028)), %r(1029)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1090)
	movq %rbx, (%r12)		# movq %r(1029), (%r(1090))
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1091)
	incq %rbx		# incq %r(1091)
	movq %rbx, -144(%rbp)		# movq %r(1091), -144(%rbp)
	jmp .L296		# jmp .L296
	.L297:		# .L297:
	movq -88(%rbp), %r15		# movq -88(%rbp), %r(1092)
	movq %r15, %r15		# movq %r(1092), %r(837)
	movq $0, %r12		# movq $0, %r(1030)
	movq %r12, %r14		# movq %r(1030), %r(838)
	movq $8, %r12		# movq $8, %r(1031)
	movq %r15, %r13		# movq %r(837), %r(1032)
	subq %r12, %r13		# subq %r(1031), %r(1032)
	movq (%r13), %r12		# movq (%r(1032)), %r(1033)
	cmpq %r12, %r14		# cmpq %r(1033), %r(838)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(838), %r(1034)
	salq $3, %r12		# salq $3, %r(1034)
	movq %r15, %rbx		# movq %r(837), %r(1035)
	addq %r12, %rbx		# addq %r(1034), %r(1035)
	movq (%rbx), %r12		# movq (%r(1035)), %r(1036)
	movq %r12, %r12		# movq %r(1036), %r(1093)
	movq %r12, -144(%rbp)		# movq %r(1093), -144(%rbp)
	movq $1, %rbx		# movq $1, %r(1037)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(1094)
	movq %r13, %r13		# movq %r(1094), %r(1038)
	addq %rbx, %r13		# addq %r(1037), %r(1038)
	movq %r13, %rdi		# movq %r(1038), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(865)
	movq %rbx, %rbx		# movq %r(865), %r(839)
	movq %rbx, %rbx		# movq %r(839), %r(840)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1095)
	movq %r12, (%rbx)		# movq %r(1095), (%r(840))
	movq $8, %r12		# movq $8, %r(1039)
	movq %rbx, %rbx		# movq %r(840), %r(1040)
	addq %r12, %rbx		# addq %r(1039), %r(1040)
	movq %rbx, %rbx		# movq %r(1040), %r(1096)
	movq %rbx, -32(%rbp)		# movq %r(1096), -32(%rbp)
	.L302:		# .L302:
	movq $0, %rbx		# movq $0, %r(1041)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1097)
	cmpq %rbx, %r12		# cmpq %r(1041), %r(1097)
	jle .L303		# jle .L303
	.L304:		# .L304:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1098)
	decq %rbx		# decq %r(1098)
	movq %rbx, -144(%rbp)		# movq %r(1098), -144(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1099)
	movq %rbx, %rdi		# movq %r(1099), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(866)
	movq %rbx, %rbx		# movq %r(866), %r(842)
	movq %rbx, %rbx		# movq %r(842), %r(1100)
	movq %rbx, -80(%rbp)		# movq %r(1100), -80(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1101)
	movq %r12, %r12		# movq %r(1101), %r(1102)
	movq %r12, -64(%rbp)		# movq %r(1102), -64(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1103)
	movq %rbx, %rbx		# movq %r(1103), %r(845)
	movq $8, %r13		# movq $8, %r(1042)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(1104)
	movq %r14, %r14		# movq %r(1104), %r(1105)
	movq %r14, -48(%rbp)		# movq %r(1105), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1106)
	subq %r13, %r12		# subq %r(1042), %r(1106)
	movq %r12, -48(%rbp)		# movq %r(1106), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1107)
	movq (%r12), %r12		# movq (%r(1107)), %r(1044)
	cmpq %r12, %rbx		# cmpq %r(1044), %r(845)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(845), %r(1045)
	salq $3, %rbx		# salq $3, %r(1045)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1108)
	movq %r13, %r13		# movq %r(1108), %r(1046)
	addq %rbx, %r13		# addq %r(1045), %r(1046)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(1109)
	movq %rbx, (%r13)		# movq %r(1109), (%r(1046))
	jmp .L302		# jmp .L302
	.L303:		# .L303:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1110)
	movq %rbx, %rax		# movq %r(1110), %rax
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1126)
	movq %rbx, -24(%rbp)		# movq %r(1126), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1127)
	movq (%rbx), %rbx		# movq (%r(1127)), %r(1111)
	movq %rbx, %rbx		# movq %r(1111), %r(t10)
	movq %rbx, %r12		# movq %r(t10), %r(1112)
	salq $3, %r12		# salq $3, %r(1112)
	movq $8, %r13		# movq $8, %r(1113)
	movq %r12, %r12		# movq %r(1112), %r(1114)
	addq %r13, %r12		# addq %r(1113), %r(1114)
	movq %r12, %rdi		# movq %r(1114), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(867)
	movq %r13, %r13		# movq %r(867), %r(1128)
	movq %r13, -32(%rbp)		# movq %r(1128), -32(%rbp)
	.L16:		# .L16:
	movq %rbx, %r14		# movq %r(t10), %r(1115)
	salq $3, %r14		# salq $3, %r(1115)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1129)
	movq %r12, %r12		# movq %r(1129), %r(1116)
	addq %r14, %r12		# addq %r(1115), %r(1116)
	movq %rbx, %r14		# movq %r(t10), %r(1130)
	movq %r14, -16(%rbp)		# movq %r(1130), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1131)
	salq $3, %r13		# salq $3, %r(1131)
	movq %r13, -16(%rbp)		# movq %r(1131), -16(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(1132)
	movq %r14, %r14		# movq %r(1132), %r(1123)
	movq %r14, -8(%rbp)		# movq %r(1123), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1124)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1133)
	addq %r14, %r13		# addq %r(1133), %r(1124)
	movq %r13, -8(%rbp)		# movq %r(1124), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1125)
	movq (%r13), %r13		# movq (%r(1125)), %r(1119)
	movq %r13, (%r12)		# movq %r(1119), (%r(1116))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(1120)
	cmpq %r12, %rbx		# cmpq %r(1120), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1121)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1134)
	movq %r13, %r13		# movq %r(1134), %r(1122)
	addq %rbx, %r13		# addq %r(1121), %r(1122)
	movq %r13, %rax		# movq %r(1122), %rax
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
.L277:
	.quad 2
	.quad 35
	.quad 51
	.text

.section .rodata
.align 8
.L272:
	.quad 2
	.quad 35
	.quad 50
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

error_outofbounds:
call _I_outOfBounds_p
