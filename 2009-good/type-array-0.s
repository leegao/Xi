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
	movq %rax, %r13		# movq %rax, %r(793)
	movq %r13, %rdi		# movq %r(793), %rdi
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
	movq $10, %rbx		# movq $10, %r(817)
	movq $16, %r12		# movq $16, %r(818)
	movq %r12, %rdi		# movq %r(818), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(896)
	movq %r12, -72(%rbp)		# movq %r(896), -72(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(897)
	movq %r13, -56(%rbp)		# movq %r(898), -56(%rbp)
	movq $1, %r12		# movq $1, %r(819)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(899)
	movq %r12, (%r13)		# movq %r(819), (%r(899))
	movq $8, %r13		# movq $8, %r(820)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(900)
	movq %r14, -48(%rbp)		# movq %r(901), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(902)
	addq %r13, %r12		# addq %r(820), %r(902)
	movq %r12, -48(%rbp)		# movq %r(902), -48(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(903)
	movq %r13, -32(%rbp)		# movq %r(904), -32(%rbp)
	movq $0, %r13		# movq $0, %r(822)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(905)
	addq %r13, %r14		# addq %r(822), %r(823)
	movq %rbx, (%r14)		# movq %r(l), (%r(823))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(906)
	movq %rbx, %rdi		# movq %r(906), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(798)
	movq %r12, -88(%rbp)		# movq %r(907), -88(%rbp)
	leaq .L263(%rip), %rdi		# leaq .L263(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(799)
	movq $1, %rbx		# movq $1, %r(825)
	movq %rbx, %r12		# movq %r(825), %r(755)
	movq $8, %r13		# movq $8, %r(826)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(908)
	subq %r13, %rbx		# subq %r(826), %r(827)
	movq (%rbx), %rbx		# movq (%r(827)), %r(828)
	movq $10, %r13		# movq $10, %r(829)
	cmpq %r13, %rbx		# cmpq %r(829), %r(828)
	je .L264		# je .L264
	.L265:		# .L265:
	movq $0, %rbx		# movq $0, %r(830)
	movq %rbx, %r12		# movq %r(830), %r(755)
	.L264:		# .L264:
	movq %r14, %rdi		# movq %r(799), %rdi
	movq %r12, %rsi		# movq %r(755), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -88(%rbp), %r15		# movq -88(%rbp), %r(909)
	movq $0, %r12		# movq $0, %r(831)
	movq %r12, %r14		# movq %r(831), %r(757)
	movq $8, %r12		# movq $8, %r(832)
	movq %r15, %r13		# movq %r(756), %r(833)
	subq %r12, %r13		# subq %r(832), %r(833)
	movq (%r13), %r12		# movq (%r(833)), %r(834)
	cmpq %r12, %r14		# cmpq %r(834), %r(757)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(757), %r(835)
	salq $3, %r12		# salq $3, %r(835)
	movq %r15, %rbx		# movq %r(756), %r(836)
	addq %r12, %rbx		# addq %r(835), %r(836)
	movq $42, %r12		# movq $42, %r(837)
	movq %r12, (%rbx)		# movq %r(837), (%r(836))
	movq -88(%rbp), %r15		# movq -88(%rbp), %r(910)
	movq $1, %r12		# movq $1, %r(838)
	movq %r12, %r14		# movq %r(838), %r(759)
	movq $8, %r12		# movq $8, %r(839)
	movq %r15, %r13		# movq %r(758), %r(840)
	subq %r12, %r13		# subq %r(839), %r(840)
	movq (%r13), %r12		# movq (%r(840)), %r(841)
	cmpq %r12, %r14		# cmpq %r(841), %r(759)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(759), %r(842)
	salq $3, %r12		# salq $3, %r(842)
	movq %r15, %rbx		# movq %r(758), %r(843)
	addq %r12, %rbx		# addq %r(842), %r(843)
	movq $52, %r12		# movq $52, %r(844)
	movq %r12, (%rbx)		# movq %r(844), (%r(843))
	movq -88(%rbp), %r15		# movq -88(%rbp), %r(911)
	movq $2, %r12		# movq $2, %r(845)
	movq %r12, %r14		# movq %r(845), %r(761)
	movq $8, %r12		# movq $8, %r(846)
	movq %r15, %r13		# movq %r(760), %r(847)
	subq %r12, %r13		# subq %r(846), %r(847)
	movq (%r13), %r12		# movq (%r(847)), %r(848)
	cmpq %r12, %r14		# cmpq %r(848), %r(761)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(761), %r(849)
	salq $3, %r12		# salq $3, %r(849)
	movq %r15, %rbx		# movq %r(760), %r(850)
	addq %r12, %rbx		# addq %r(849), %r(850)
	movq $62, %r12		# movq $62, %r(851)
	movq %r12, (%rbx)		# movq %r(851), (%r(850))
	leaq .L272(%rip), %rdi		# leaq .L272(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(912)
	movq %rbx, -144(%rbp)		# movq %r(912), -144(%rbp)
	movq $1, %r12		# movq $1, %r(853)
	movq %r12, -8(%rbp)		# movq %r(913), -8(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(914)
	movq %r12, -80(%rbp)		# movq %r(915), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(854)
	movq $8, %r13		# movq $8, %r(855)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(916)
	movq %r14, -112(%rbp)		# movq %r(917), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(918)
	subq %r13, %r12		# subq %r(855), %r(918)
	movq %r12, -112(%rbp)		# movq %r(918), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(919)
	movq (%r12), %r12		# movq (%r(919)), %r(857)
	cmpq %r12, %rbx		# cmpq %r(857), %r(763)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(858)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(920)
	addq %rbx, %r13		# addq %r(858), %r(859)
	movq (%r13), %rbx		# movq (%r(859)), %r(860)
	movq $42, %r12		# movq $42, %r(861)
	cmpq %r12, %rbx		# cmpq %r(861), %r(860)
	je .L275		# je .L275
	.L276:		# .L276:
	movq $0, %r12		# movq $0, %r(862)
	movq %r12, -8(%rbp)		# movq %r(921), -8(%rbp)
	.L275:		# .L275:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(922)
	movq %rbx, %rdi		# movq %r(922), %rdi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(923)
	movq %rbx, %rsi		# movq %r(923), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L277(%rip), %rdi		# leaq .L277(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(924)
	movq %rbx, -24(%rbp)		# movq %r(924), -24(%rbp)
	movq $1, %r12		# movq $1, %r(864)
	movq %r12, -128(%rbp)		# movq %r(925), -128(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(926)
	movq %r12, -120(%rbp)		# movq %r(927), -120(%rbp)
	movq $1, %rbx		# movq $1, %r(865)
	movq $8, %r13		# movq $8, %r(866)
	movq -120(%rbp), %r14		# movq -120(%rbp), %r(928)
	movq %r14, -136(%rbp)		# movq %r(929), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(930)
	subq %r13, %r12		# subq %r(866), %r(930)
	movq %r12, -136(%rbp)		# movq %r(930), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(931)
	movq (%r12), %r12		# movq (%r(931)), %r(868)
	cmpq %r12, %rbx		# cmpq %r(868), %r(766)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(869)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(932)
	addq %rbx, %r13		# addq %r(869), %r(870)
	movq (%r13), %rbx		# movq (%r(870)), %r(871)
	movq $52, %r12		# movq $52, %r(872)
	cmpq %r12, %rbx		# cmpq %r(872), %r(871)
	je .L280		# je .L280
	.L281:		# .L281:
	movq $0, %r12		# movq $0, %r(873)
	movq %r12, -128(%rbp)		# movq %r(933), -128(%rbp)
	.L280:		# .L280:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(934)
	movq %rbx, %rdi		# movq %r(934), %rdi
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(935)
	movq %rbx, %rsi		# movq %r(935), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L282(%rip), %rdi		# leaq .L282(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(936)
	movq %rbx, -40(%rbp)		# movq %r(936), -40(%rbp)
	movq $1, %r12		# movq $1, %r(875)
	movq %r12, -104(%rbp)		# movq %r(937), -104(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(938)
	movq %r12, -96(%rbp)		# movq %r(939), -96(%rbp)
	movq $2, %rbx		# movq $2, %r(876)
	movq $8, %r13		# movq $8, %r(877)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(940)
	movq %r14, -64(%rbp)		# movq %r(941), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(942)
	subq %r13, %r12		# subq %r(877), %r(942)
	movq %r12, -64(%rbp)		# movq %r(942), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(943)
	movq (%r12), %r12		# movq (%r(943)), %r(879)
	cmpq %r12, %rbx		# cmpq %r(879), %r(769)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(880)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(944)
	addq %rbx, %r13		# addq %r(880), %r(881)
	movq (%r13), %rbx		# movq (%r(881)), %r(882)
	movq $62, %r12		# movq $62, %r(883)
	cmpq %r12, %rbx		# cmpq %r(883), %r(882)
	je .L285		# je .L285
	.L286:		# .L286:
	movq $0, %r12		# movq $0, %r(884)
	movq %r12, -104(%rbp)		# movq %r(945), -104(%rbp)
	.L285:		# .L285:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(946)
	movq %rbx, %rdi		# movq %r(946), %rdi
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(947)
	movq %rbx, %rsi		# movq %r(947), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %rbx		# movq $0, %r(885)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(948)
	leaq .L287(%rip), %rdi		# leaq .L287(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(807)
	movq $1, %r12		# movq $1, %r(887)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(949)
	cmpq %r14, %rbx		# cmpq %r(949), %r(b)
	je .L288		# je .L288
	.L289:		# .L289:
	movq $0, %r12		# movq $0, %r(888)
	.L288:		# .L288:
	movq %r13, %rdi		# movq %r(807), %rdi
	movq %r12, %rsi		# movq %r(772), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L290(%rip), %rdi		# leaq .L290(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(950)
	movq %r12, -16(%rbp)		# movq %r(950), -16(%rbp)
	movq $1, %r13		# movq $1, %r(890)
	movq $8, %r12		# movq $8, %r(891)
	subq %r12, %rbx		# subq %r(891), %r(892)
	movq (%rbx), %rbx		# movq (%r(892)), %r(893)
	movq $10, %r12		# movq $10, %r(894)
	cmpq %r12, %rbx		# cmpq %r(894), %r(893)
	je .L291		# je .L291
	.L292:		# .L292:
	movq $0, %r13		# movq $0, %r(895)
	.L291:		# .L291:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(951)
	movq %rbx, %rdi		# movq %r(951), %rdi
	movq %r13, %rsi		# movq %r(773), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(992)
	movq %rbx, -32(%rbp)		# movq %r(992), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(952)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(993)
	subq %rbx, %r13		# subq %r(952), %r(953)
	movq (%r13), %r12		# movq (%r(953)), %r(954)
	movq %r12, -72(%rbp)		# movq %r(994), -72(%rbp)
	movq $1, %r12		# movq $1, %r(955)
	movq %r12, -112(%rbp)		# movq %r(995), -112(%rbp)
	movq $0, %rbx		# movq $0, %r(956)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(996)
	cmpq %rbx, %r12		# cmpq %r(956), %r(996)
	jne .L293		# jne .L293
	.L294:		# .L294:
	movq $0, %rbx		# movq $0, %r(957)
	movq %rbx, %rax		# movq %r(957), %rax
	jmp .L295		# jmp .L295
	.L293:		# .L293:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(997)
	movq %rbx, %rdi		# movq %r(997), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(811)
	movq $1, %r13		# movq $1, %r(958)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(998)
	movq %rbx, -128(%rbp)		# movq %r(999), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1000)
	subq %r13, %r12		# subq %r(958), %r(1000)
	movq %r12, -128(%rbp)		# movq %r(1000), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(1001)
	movq %r12, (%r14)		# movq %r(1001), (%r(778))
	movq $8, %r12		# movq $8, %r(960)
	addq %r12, %r14		# addq %r(960), %r(961)
	movq %r14, -120(%rbp)		# movq %r(1002), -120(%rbp)
	.L296:		# .L296:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1003)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1004)
	cmpq %r12, %rbx		# cmpq %r(1004), %r(1003)
	jge .L297		# jge .L297
	.L298:		# .L298:
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1005)
	movq %r12, -144(%rbp)		# movq %r(1006), -144(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1007)
	movq %r12, -80(%rbp)		# movq %r(1008), -80(%rbp)
	movq $8, %r12		# movq $8, %r(962)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(1009)
	movq %r13, -96(%rbp)		# movq %r(1010), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1011)
	subq %r12, %rbx		# subq %r(962), %r(1011)
	movq %rbx, -96(%rbp)		# movq %r(1011), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1012)
	movq (%rbx), %rbx		# movq (%r(1012)), %r(964)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1013)
	cmpq %rbx, %r12		# cmpq %r(964), %r(1013)
	jae error_outofbounds		# jae error_outofbounds
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1014)
	movq %r12, -16(%rbp)		# movq %r(1015), -16(%rbp)
	movq $1, %r12		# movq $1, %r(965)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(1016)
	movq %r13, -64(%rbp)		# movq %r(1017), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(1018)
	subq %r12, %rbx		# subq %r(965), %r(1018)
	movq %rbx, -64(%rbp)		# movq %r(1018), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1019)
	movq %r12, -24(%rbp)		# movq %r(1020), -24(%rbp)
	movq $8, %r12		# movq $8, %r(967)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1021)
	movq %r13, -88(%rbp)		# movq %r(1022), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1023)
	subq %r12, %rbx		# subq %r(967), %r(1023)
	movq %rbx, -88(%rbp)		# movq %r(1023), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(1024)
	movq (%rbx), %rbx		# movq (%r(1024)), %r(969)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1025)
	cmpq %rbx, %r12		# cmpq %r(969), %r(1025)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1026)
	salq $3, %r13		# salq $3, %r(970)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1027)
	movq %rbx, -56(%rbp)		# movq %r(1028), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1029)
	addq %r13, %r12		# addq %r(970), %r(1029)
	movq %r12, -56(%rbp)		# movq %r(1029), -56(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(1030)
	movq %r12, -104(%rbp)		# movq %r(1031), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1032)
	salq $3, %rbx		# salq $3, %r(1032)
	movq %rbx, -104(%rbp)		# movq %r(1032), -104(%rbp)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(1033)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1034)
	addq %r12, %r13		# addq %r(1034), %r(973)
	movq (%r13), %rbx		# movq (%r(973)), %r(974)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1035)
	movq %rbx, (%r12)		# movq %r(974), (%r(1035))
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1036)
	incq %rbx		# incq %r(1036)
	movq %rbx, -112(%rbp)		# movq %r(1036), -112(%rbp)
	jmp .L296		# jmp .L296
	.L297:		# .L297:
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(1037)
	movq $0, %r12		# movq $0, %r(975)
	movq %r12, %r14		# movq %r(975), %r(785)
	movq $8, %r12		# movq $8, %r(976)
	movq %r15, %r13		# movq %r(784), %r(977)
	subq %r12, %r13		# subq %r(976), %r(977)
	movq (%r13), %r12		# movq (%r(977)), %r(978)
	cmpq %r12, %r14		# cmpq %r(978), %r(785)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(785), %r(979)
	salq $3, %r12		# salq $3, %r(979)
	movq %r15, %rbx		# movq %r(784), %r(980)
	addq %r12, %rbx		# addq %r(979), %r(980)
	movq (%rbx), %r12		# movq (%r(980)), %r(981)
	movq %r12, -112(%rbp)		# movq %r(1038), -112(%rbp)
	movq $1, %rbx		# movq $1, %r(982)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(1039)
	addq %rbx, %r13		# addq %r(982), %r(983)
	movq %r13, %rdi		# movq %r(983), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(812)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1040)
	movq %r12, (%rbx)		# movq %r(1040), (%r(787))
	movq $8, %r12		# movq $8, %r(984)
	addq %r12, %rbx		# addq %r(984), %r(985)
	movq %rbx, -48(%rbp)		# movq %r(1041), -48(%rbp)
	.L302:		# .L302:
	movq $0, %rbx		# movq $0, %r(986)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1042)
	cmpq %rbx, %r12		# cmpq %r(986), %r(1042)
	jle .L303		# jle .L303
	.L304:		# .L304:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1043)
	decq %rbx		# decq %r(1043)
	movq %rbx, -112(%rbp)		# movq %r(1043), -112(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(1044)
	movq %rbx, %rdi		# movq %r(1044), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(813)
	movq %rbx, -8(%rbp)		# movq %r(1045), -8(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1046)
	movq %r12, -136(%rbp)		# movq %r(1047), -136(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(1048)
	movq $8, %r13		# movq $8, %r(987)
	movq -136(%rbp), %r14		# movq -136(%rbp), %r(1049)
	movq %r14, -40(%rbp)		# movq %r(1050), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1051)
	subq %r13, %r12		# subq %r(987), %r(1051)
	movq %r12, -40(%rbp)		# movq %r(1051), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1052)
	movq (%r12), %r12		# movq (%r(1052)), %r(989)
	cmpq %r12, %rbx		# cmpq %r(989), %r(792)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(990)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(1053)
	addq %rbx, %r13		# addq %r(990), %r(991)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1054)
	movq %rbx, (%r13)		# movq %r(1054), (%r(991))
	jmp .L302		# jmp .L302
	.L303:		# .L303:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(1055)
	movq %rbx, %rax		# movq %r(1055), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(1068)
	movq %rbx, -16(%rbp)		# movq %r(1068), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1069)
	movq (%rbx), %rbx		# movq (%r(1069)), %r(1056)
	movq %rbx, %r14		# movq %r(1056), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(1057)
	salq $3, %rbx		# salq $3, %r(1057)
	movq $8, %r12		# movq $8, %r(1058)
	addq %r12, %rbx		# addq %r(1058), %r(1059)
	movq %rbx, %rdi		# movq %r(1059), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(814)
	movq %rbx, %r15		# movq %r(814), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(1060)
	salq $3, %rbx		# salq $3, %r(1060)
	movq %r15, %r12		# movq %r(t27), %r(1061)
	addq %rbx, %r12		# addq %r(1060), %r(1061)
	movq %r14, %r13		# movq %r(t10), %r(1062)
	salq $3, %r13		# salq $3, %r(1062)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1070)
	movq %rbx, -8(%rbp)		# movq %r(1071), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1072)
	addq %r13, %rbx		# addq %r(1062), %r(1072)
	movq %rbx, -8(%rbp)		# movq %r(1072), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1073)
	movq (%rbx), %rbx		# movq (%r(1073)), %r(1064)
	movq %rbx, (%r12)		# movq %r(1064), (%r(1061))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(1065)
	cmpq %rbx, %r14		# cmpq %r(1065), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(1066)
	movq %r15, %r12		# movq %r(t27), %r(1067)
	addq %rbx, %r12		# addq %r(1066), %r(1067)
	movq %r12, %rax		# movq %r(1067), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L272:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L290:
	.quad 2
	.quad 35
	.quad 54
	.text

#.section .rodata
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

#.section .rodata
.align 8
.L287:
	.quad 2
	.quad 35
	.quad 53
	.text

#.section .rodata
.align 8
.L263:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L282:
	.quad 2
	.quad 35
	.quad 52
	.text

#.section .rodata
.align 8
.L277:
	.quad 2
	.quad 35
	.quad 51
	.text

error_outofbounds:
call _I_outOfBounds_p
