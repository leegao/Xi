.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $320, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $0, %r12		# movq $0, %r(774)
	movq %r12, -272(%rbp)		# movq %r(894), -272(%rbp)
	leaq .L131(%rip), %rdi		# leaq .L131(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(744)
	leaq .L132(%rip), %rdi		# leaq .L132(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(745)
	movq %rbx, %rdi		# movq %r(744), %rdi
	movq %r12, %rsi		# movq %r(745), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(895)
	movq %rbx, -160(%rbp)		# movq %r(895), -160(%rbp)
	movq $24, %rbx		# movq $24, %r(777)
	movq %rbx, %rdi		# movq %r(777), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(747)
	movq $2, %r12		# movq $2, %r(778)
	movq %r12, (%rbx)		# movq %r(778), (%r(687))
	movq $8, %r12		# movq $8, %r(779)
	addq %r12, %rbx		# addq %r(779), %r(780)
	movq $0, %r12		# movq $0, %r(781)
	movq %rbx, %r14		# movq %r(686), %r(782)
	addq %r12, %r14		# addq %r(781), %r(782)
	movq $100, %r12		# movq $100, %r(783)
	movq %r12, (%r14)		# movq %r(783), (%r(782))
	movq $8, %r12		# movq $8, %r(784)
	movq %rbx, %r14		# movq %r(686), %r(785)
	addq %r12, %r14		# addq %r(784), %r(785)
	movq $101, %r12		# movq $101, %r(786)
	movq %r12, (%r14)		# movq %r(786), (%r(785))
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(896)
	movq %r12, %rdi		# movq %r(896), %rdi
	movq %rbx, %rsi		# movq %r(686), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r12		# movq %rax, %r(748)
	movq %r12, -32(%rbp)		# movq %r(897), -32(%rbp)
	movq $32, %rbx		# movq $32, %r(787)
	movq %rbx, %rdi		# movq %r(787), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(749)
	movq $3, %r12		# movq $3, %r(788)
	movq %r12, (%rbx)		# movq %r(788), (%r(690))
	movq $8, %r12		# movq $8, %r(789)
	addq %r12, %rbx		# addq %r(789), %r(790)
	movq $0, %r12		# movq $0, %r(791)
	movq %rbx, %r14		# movq %r(689), %r(792)
	addq %r12, %r14		# addq %r(791), %r(792)
	movq $1, %r12		# movq $1, %r(793)
	movq %r12, (%r14)		# movq %r(793), (%r(792))
	movq $8, %r12		# movq $8, %r(794)
	movq %rbx, %r14		# movq %r(689), %r(795)
	addq %r12, %r14		# addq %r(794), %r(795)
	movq $1, %r12		# movq $1, %r(796)
	movq %r12, (%r14)		# movq %r(796), (%r(795))
	movq $16, %r12		# movq $16, %r(797)
	movq %rbx, %r14		# movq %r(689), %r(798)
	addq %r12, %r14		# addq %r(797), %r(798)
	movq $1, %r12		# movq $1, %r(799)
	movq %r12, (%r14)		# movq %r(799), (%r(798))
	movq %rbx, -264(%rbp)		# movq %r(898), -264(%rbp)
	movq $32, %rbx		# movq $32, %r(800)
	movq %rbx, %rdi		# movq %r(800), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(750)
	movq $3, %r12		# movq $3, %r(801)
	movq %r12, (%r13)		# movq %r(801), (%r(695))
	movq $8, %r12		# movq $8, %r(802)
	addq %r12, %r13		# addq %r(802), %r(803)
	movq %r13, -8(%rbp)		# movq %r(899), -8(%rbp)
	movq $24, %rbx		# movq $24, %r(804)
	movq %rbx, %rdi		# movq %r(804), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(751)
	movq $2, %r12		# movq $2, %r(805)
	movq %r12, (%rbx)		# movq %r(805), (%r(697))
	movq $8, %r12		# movq $8, %r(806)
	addq %r12, %rbx		# addq %r(806), %r(807)
	movq $0, %r12		# movq $0, %r(808)
	movq %rbx, %r14		# movq %r(696), %r(809)
	addq %r12, %r14		# addq %r(808), %r(809)
	movq $1, %r12		# movq $1, %r(810)
	movq %r12, (%r14)		# movq %r(810), (%r(809))
	movq $8, %r12		# movq $8, %r(811)
	movq %rbx, %r14		# movq %r(696), %r(812)
	addq %r12, %r14		# addq %r(811), %r(812)
	movq $2, %r12		# movq $2, %r(813)
	movq %r12, (%r14)		# movq %r(813), (%r(812))
	movq $0, %r13		# movq $0, %r(814)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(900)
	addq %r13, %r14		# addq %r(814), %r(815)
	movq %rbx, (%r14)		# movq %r(696), (%r(815))
	movq $24, %rbx		# movq $24, %r(816)
	movq %rbx, %rdi		# movq %r(816), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(752)
	movq $2, %r12		# movq $2, %r(817)
	movq %r12, (%rbx)		# movq %r(817), (%r(699))
	movq $8, %r12		# movq $8, %r(818)
	addq %r12, %rbx		# addq %r(818), %r(819)
	movq $0, %r12		# movq $0, %r(820)
	movq %rbx, %r14		# movq %r(698), %r(821)
	addq %r12, %r14		# addq %r(820), %r(821)
	movq $3, %r12		# movq $3, %r(822)
	movq %r12, (%r14)		# movq %r(822), (%r(821))
	movq $8, %r12		# movq $8, %r(823)
	movq %rbx, %r14		# movq %r(698), %r(824)
	addq %r12, %r14		# addq %r(823), %r(824)
	movq $4, %r12		# movq $4, %r(825)
	movq %r12, (%r14)		# movq %r(825), (%r(824))
	movq $8, %r13		# movq $8, %r(826)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(901)
	addq %r13, %r14		# addq %r(826), %r(827)
	movq %rbx, (%r14)		# movq %r(698), (%r(827))
	movq $24, %rbx		# movq $24, %r(828)
	movq %rbx, %rdi		# movq %r(828), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(753)
	movq $2, %r12		# movq $2, %r(829)
	movq %r12, (%rbx)		# movq %r(829), (%r(701))
	movq $8, %r12		# movq $8, %r(830)
	addq %r12, %rbx		# addq %r(830), %r(831)
	movq $0, %r12		# movq $0, %r(832)
	movq %rbx, %r14		# movq %r(700), %r(833)
	addq %r12, %r14		# addq %r(832), %r(833)
	movq $5, %r12		# movq $5, %r(834)
	movq %r12, (%r14)		# movq %r(834), (%r(833))
	movq $8, %r12		# movq $8, %r(835)
	movq %rbx, %r14		# movq %r(700), %r(836)
	addq %r12, %r14		# addq %r(835), %r(836)
	movq $6, %r12		# movq $6, %r(837)
	movq %r12, (%r14)		# movq %r(837), (%r(836))
	movq $16, %r13		# movq $16, %r(838)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(902)
	addq %r13, %r14		# addq %r(838), %r(839)
	movq %rbx, (%r14)		# movq %r(700), (%r(839))
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(903)
	movq %r12, -208(%rbp)		# movq %r(904), -208(%rbp)
	movq $195, %r12		# movq $195, %r(840)
	movq %r12, -96(%rbp)		# movq %r(905), -96(%rbp)
	movq $1, %r12		# movq $1, %r(841)
	movq %r12, -64(%rbp)		# movq %r(906), -64(%rbp)
	movq $32, %rbx		# movq $32, %r(842)
	movq %rbx, %rdi		# movq %r(842), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(754)
	movq %r12, -128(%rbp)		# movq %r(907), -128(%rbp)
	movq $3, %rbx		# movq $3, %r(843)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(908)
	movq %rbx, (%r12)		# movq %r(843), (%r(908))
	movq $8, %rbx		# movq $8, %r(909)
	movq %rbx, -152(%rbp)		# movq %r(909), -152(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(910)
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(911)
	addq %r12, %rbx		# addq %r(911), %r(845)
	movq %rbx, -192(%rbp)		# movq %r(912), -192(%rbp)
	movq $0, %r12		# movq $0, %r(846)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(913)
	movq %r13, -232(%rbp)		# movq %r(914), -232(%rbp)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(915)
	addq %r12, %rbx		# addq %r(846), %r(915)
	movq %rbx, -232(%rbp)		# movq %r(915), -232(%rbp)
	movq $1, %rbx		# movq $1, %r(848)
	movq -232(%rbp), %r12		# movq -232(%rbp), %r(916)
	movq %rbx, (%r12)		# movq %r(848), (%r(916))
	movq $8, %r12		# movq $8, %r(849)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(917)
	movq %r13, -48(%rbp)		# movq %r(918), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(919)
	addq %r12, %rbx		# addq %r(849), %r(919)
	movq %rbx, -48(%rbp)		# movq %r(919), -48(%rbp)
	movq $2, %rbx		# movq $2, %r(851)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(920)
	movq %rbx, (%r12)		# movq %r(851), (%r(920))
	movq $16, %r12		# movq $16, %r(852)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(921)
	movq %r13, -280(%rbp)		# movq %r(922), -280(%rbp)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(923)
	addq %r12, %rbx		# addq %r(852), %r(923)
	movq %rbx, -280(%rbp)		# movq %r(923), -280(%rbp)
	movq $3, %rbx		# movq $3, %r(854)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(924)
	movq %rbx, (%r12)		# movq %r(854), (%r(924))
	movq -192(%rbp), %r12		# movq -192(%rbp), %r(925)
	movq %r12, -136(%rbp)		# movq %r(926), -136(%rbp)
	leaq .L133(%rip), %rdi		# leaq .L133(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(755)
	movq %r12, -176(%rbp)		# movq %r(927), -176(%rbp)
	movq $16, %rbx		# movq $16, %r(856)
	movq %rbx, %rdi		# movq %r(856), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(756)
	movq %r12, -184(%rbp)		# movq %r(928), -184(%rbp)
	movq $1, %rbx		# movq $1, %r(857)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(929)
	movq %rbx, (%r12)		# movq %r(857), (%r(929))
	movq $8, %rbx		# movq $8, %r(930)
	movq %rbx, -72(%rbp)		# movq %r(930), -72(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(931)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(932)
	addq %r12, %rbx		# addq %r(932), %r(859)
	movq %rbx, -56(%rbp)		# movq %r(933), -56(%rbp)
	movq $32, %rbx		# movq $32, %r(860)
	movq %rbx, %rdi		# movq %r(860), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(757)
	movq %r12, -168(%rbp)		# movq %r(934), -168(%rbp)
	movq $3, %rbx		# movq $3, %r(861)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(935)
	movq %rbx, (%r12)		# movq %r(861), (%r(935))
	movq $8, %rbx		# movq $8, %r(936)
	movq %rbx, -80(%rbp)		# movq %r(936), -80(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(937)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(938)
	addq %r12, %rbx		# addq %r(938), %r(863)
	movq %rbx, -248(%rbp)		# movq %r(939), -248(%rbp)
	movq $16, %rbx		# movq $16, %r(864)
	movq %rbx, %rdi		# movq %r(864), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(758)
	movq %r12, -304(%rbp)		# movq %r(940), -304(%rbp)
	movq $1, %rbx		# movq $1, %r(865)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(941)
	movq %rbx, (%r12)		# movq %r(865), (%r(941))
	movq $8, %rbx		# movq $8, %r(942)
	movq %rbx, -256(%rbp)		# movq %r(942), -256(%rbp)
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(943)
	movq -256(%rbp), %r12		# movq -256(%rbp), %r(944)
	addq %r12, %rbx		# addq %r(944), %r(867)
	movq %rbx, -112(%rbp)		# movq %r(945), -112(%rbp)
	movq $0, %r12		# movq $0, %r(868)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(946)
	movq %r13, -40(%rbp)		# movq %r(947), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(948)
	addq %r12, %rbx		# addq %r(868), %r(948)
	movq %rbx, -40(%rbp)		# movq %r(948), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(870)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(949)
	movq %rbx, (%r12)		# movq %r(870), (%r(949))
	movq $0, %r12		# movq $0, %r(871)
	movq -248(%rbp), %r13		# movq -248(%rbp), %r(950)
	movq %r13, -200(%rbp)		# movq %r(951), -200(%rbp)
	movq -200(%rbp), %rbx		# movq -200(%rbp), %r(952)
	addq %r12, %rbx		# addq %r(871), %r(952)
	movq %rbx, -200(%rbp)		# movq %r(952), -200(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(953)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(954)
	movq %rbx, (%r12)		# movq %r(953), (%r(954))
	movq $16, %rbx		# movq $16, %r(873)
	movq %rbx, %rdi		# movq %r(873), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(759)
	movq %r12, -16(%rbp)		# movq %r(955), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(874)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(956)
	movq %rbx, (%r12)		# movq %r(874), (%r(956))
	movq $8, %rbx		# movq $8, %r(957)
	movq %rbx, -24(%rbp)		# movq %r(957), -24(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(958)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(959)
	addq %r12, %rbx		# addq %r(959), %r(876)
	movq %rbx, -288(%rbp)		# movq %r(960), -288(%rbp)
	movq $0, %r12		# movq $0, %r(877)
	movq -288(%rbp), %r13		# movq -288(%rbp), %r(961)
	movq %r13, -296(%rbp)		# movq %r(962), -296(%rbp)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(963)
	addq %r12, %rbx		# addq %r(877), %r(963)
	movq %rbx, -296(%rbp)		# movq %r(963), -296(%rbp)
	movq $1, %rbx		# movq $1, %r(879)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(964)
	movq %rbx, (%r12)		# movq %r(879), (%r(964))
	movq $8, %r12		# movq $8, %r(880)
	movq -248(%rbp), %r13		# movq -248(%rbp), %r(965)
	movq %r13, -216(%rbp)		# movq %r(966), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(967)
	addq %r12, %rbx		# addq %r(880), %r(967)
	movq %rbx, -216(%rbp)		# movq %r(967), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(968)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(969)
	movq %r12, (%rbx)		# movq %r(969), (%r(968))
	movq $16, %rbx		# movq $16, %r(882)
	movq %rbx, %rdi		# movq %r(882), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(760)
	movq %r12, -224(%rbp)		# movq %r(970), -224(%rbp)
	movq $1, %rbx		# movq $1, %r(883)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(971)
	movq %rbx, (%r12)		# movq %r(883), (%r(971))
	movq $8, %rbx		# movq $8, %r(972)
	movq %rbx, -144(%rbp)		# movq %r(972), -144(%rbp)
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(973)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(974)
	addq %r12, %rbx		# addq %r(974), %r(885)
	movq %rbx, -88(%rbp)		# movq %r(975), -88(%rbp)
	movq $0, %r12		# movq $0, %r(886)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(976)
	movq %r13, -120(%rbp)		# movq %r(977), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(978)
	addq %r12, %rbx		# addq %r(886), %r(978)
	movq %rbx, -120(%rbp)		# movq %r(978), -120(%rbp)
	movq $1, %rbx		# movq $1, %r(888)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(979)
	movq %rbx, (%r12)		# movq %r(888), (%r(979))
	movq $16, %r12		# movq $16, %r(889)
	movq -248(%rbp), %r13		# movq -248(%rbp), %r(980)
	movq %r13, -104(%rbp)		# movq %r(981), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(982)
	addq %r12, %rbx		# addq %r(889), %r(982)
	movq %rbx, -104(%rbp)		# movq %r(982), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(983)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(984)
	movq %r12, (%rbx)		# movq %r(984), (%r(983))
	movq $0, %r12		# movq $0, %r(891)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(985)
	movq %r13, -312(%rbp)		# movq %r(986), -312(%rbp)
	movq -312(%rbp), %rbx		# movq -312(%rbp), %r(987)
	addq %r12, %rbx		# addq %r(891), %r(987)
	movq %rbx, -312(%rbp)		# movq %r(987), -312(%rbp)
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(988)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(989)
	movq %rbx, (%r12)		# movq %r(988), (%r(989))
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(990)
	movq %r12, -240(%rbp)		# movq %r(991), -240(%rbp)
	movq $32, %rbx		# movq $32, %r(893)
	movq %rbx, %rdi		# movq %r(893), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(761)
	movq %rbx, %rdi		# movq %r(722), %rdi
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(992)
	movq %r12, %rsi		# movq %r(992), %rsi
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(993)
	movq %r12, %rdx		# movq %r(993), %rdx
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(994)
	movq %r12, %rcx		# movq %r(994), %rcx
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(995)
	movq %r12, %r8		# movq %r(995), %r8
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(996)
	movq %r12, %r9		# movq %r(996), %r9
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(997)
	pushq %r12		# pushq %r(997)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(998)
	pushq %r12		# pushq %r(998)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(999)
	pushq %r12		# pushq %r(999)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1000)
	pushq %r12		# pushq %r(1000)
	call _If_t4iaiaabaibaiabaaiibaiaiaaai		# call _If_t4iaiaabaibaiabaaiibaiaiaaai
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	movq 0(%rbx), %rbx		# movq 0(%r(722)), %r(a)
	movq 8(%rbx), %rbx		# movq 8(%r(722)), %r(b)
	movq 16(%rbx), %rbx		# movq 16(%r(722)), %r(c)
	.L130:		# .L130:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $320, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_t4iaiaabaibaiabaaiibaiaiaaai
_If_t4iaiaabaibaiabaaiibaiaiaaai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(1052)
	movq %rbx, -8(%rbp)		# movq %r(1052), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(a)
	movq %rdx, %rbx		# movq %rdx, %r(b)
	movq %rcx, %rbx		# movq %rcx, %r(c)
	movq %r8, %rbx		# movq %r8, %r(d)
	movq %r9, %rbx		# movq %r9, %r(e)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(f_)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(g)
	movq 32(%rbp), %rbx		# movq 32(%rbp), %r(h)
	movq 40(%rbp), %rbx		# movq 40(%rbp), %r(i)
	movq $0, %rbx		# movq $0, %r(1001)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1053)
	addq %rbx, %r13		# addq %r(1001), %r(1002)
	movq $1, %rbx		# movq $1, %r(1003)
	movq %rbx, (%r13)		# movq %r(1003), (%r(1002))
	movq $32, %rbx		# movq $32, %r(1004)
	movq %rbx, %rdi		# movq %r(1004), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(763)
	movq $3, %r12		# movq $3, %r(1005)
	movq %r12, (%rbx)		# movq %r(1005), (%r(737))
	movq $8, %r12		# movq $8, %r(1006)
	addq %r12, %rbx		# addq %r(1006), %r(1007)
	movq $0, %r12		# movq $0, %r(1008)
	movq %rbx, %r14		# movq %r(736), %r(1009)
	addq %r12, %r14		# addq %r(1008), %r(1009)
	movq $100, %r12		# movq $100, %r(1010)
	movq %r12, (%r14)		# movq %r(1010), (%r(1009))
	movq $8, %r12		# movq $8, %r(1011)
	movq %rbx, %r14		# movq %r(736), %r(1012)
	addq %r12, %r14		# addq %r(1011), %r(1012)
	movq $3, %r12		# movq $3, %r(1013)
	movq %r12, (%r14)		# movq %r(1013), (%r(1012))
	movq $16, %r12		# movq $16, %r(1014)
	movq %rbx, %r14		# movq %r(736), %r(1015)
	addq %r12, %r14		# addq %r(1014), %r(1015)
	movq $2, %r12		# movq $2, %r(1016)
	movq %r12, (%r14)		# movq %r(1016), (%r(1015))
	movq $8, %r13		# movq $8, %r(1017)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1054)
	addq %r13, %r14		# addq %r(1017), %r(1018)
	movq %rbx, (%r14)		# movq %r(736), (%r(1018))
	movq $24, %rbx		# movq $24, %r(1019)
	movq %rbx, %rdi		# movq %r(1019), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(764)
	movq $2, %r12		# movq $2, %r(1020)
	movq %r12, (%r13)		# movq %r(1020), (%r(739))
	movq $8, %r12		# movq $8, %r(1021)
	addq %r12, %r13		# addq %r(1021), %r(1022)
	movq %r13, -16(%rbp)		# movq %r(1055), -16(%rbp)
	movq $24, %rbx		# movq $24, %r(1023)
	movq %rbx, %rdi		# movq %r(1023), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(765)
	movq $2, %r12		# movq $2, %r(1024)
	movq %r12, (%rbx)		# movq %r(1024), (%r(741))
	movq $8, %r12		# movq $8, %r(1025)
	addq %r12, %rbx		# addq %r(1025), %r(1026)
	movq $0, %r12		# movq $0, %r(1027)
	movq %rbx, %r14		# movq %r(740), %r(1028)
	addq %r12, %r14		# addq %r(1027), %r(1028)
	movq $1, %r12		# movq $1, %r(1029)
	movq %r12, (%r14)		# movq %r(1029), (%r(1028))
	movq $8, %r12		# movq $8, %r(1030)
	movq %rbx, %r14		# movq %r(740), %r(1031)
	addq %r12, %r14		# addq %r(1030), %r(1031)
	movq $0, %r12		# movq $0, %r(1032)
	movq %r12, (%r14)		# movq %r(1032), (%r(1031))
	movq $0, %r13		# movq $0, %r(1033)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1056)
	addq %r13, %r14		# addq %r(1033), %r(1034)
	movq %rbx, (%r14)		# movq %r(740), (%r(1034))
	movq $24, %rbx		# movq $24, %r(1035)
	movq %rbx, %rdi		# movq %r(1035), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(766)
	movq $2, %r12		# movq $2, %r(1036)
	movq %r12, (%rbx)		# movq %r(1036), (%r(743))
	movq $8, %r12		# movq $8, %r(1037)
	addq %r12, %rbx		# addq %r(1037), %r(1038)
	movq $0, %r12		# movq $0, %r(1039)
	movq %rbx, %r14		# movq %r(742), %r(1040)
	addq %r12, %r14		# addq %r(1039), %r(1040)
	movq $0, %r12		# movq $0, %r(1041)
	movq %r12, (%r14)		# movq %r(1041), (%r(1040))
	movq $8, %r12		# movq $8, %r(1042)
	movq %rbx, %r14		# movq %r(742), %r(1043)
	addq %r12, %r14		# addq %r(1042), %r(1043)
	movq $1, %r12		# movq $1, %r(1044)
	movq %r12, (%r14)		# movq %r(1044), (%r(1043))
	movq $8, %r13		# movq $8, %r(1045)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(1057)
	addq %r13, %r14		# addq %r(1045), %r(1046)
	movq %rbx, (%r14)		# movq %r(742), (%r(1046))
	movq $16, %rbx		# movq $16, %r(1047)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1058)
	addq %rbx, %r13		# addq %r(1047), %r(1048)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1059)
	movq %rbx, (%r13)		# movq %r(1059), (%r(1048))
	leaq .L136(%rip), %rdi		# leaq .L136(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(767)
	movq $24, %r13		# movq $24, %r(1050)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(1060)
	addq %r13, %r14		# addq %r(1050), %r(1051)
	movq %r12, (%r14)		# movq %r(767), (%r(1051))
	jmp .L135		# jmp .L135
	.L135:		# .L135:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1103)
	movq %rbx, -112(%rbp)		# movq %r(1103), -112(%rbp)
	movq $8, %rbx		# movq $8, %r(1061)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(1104)
	subq %rbx, %r13		# subq %r(1061), %r(1062)
	movq (%r13), %r12		# movq (%r(1062)), %r(1063)
	movq %r12, -136(%rbp)		# movq %r(1105), -136(%rbp)
	movq $1, %r12		# movq $1, %r(1064)
	movq %r12, -144(%rbp)		# movq %r(1106), -144(%rbp)
	movq $0, %rbx		# movq $0, %r(1065)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1107)
	cmpq %rbx, %r12		# cmpq %r(1065), %r(1107)
	jne .L16		# jne .L16
	.L17:		# .L17:
	movq $0, %rbx		# movq $0, %r(1066)
	movq %rbx, %rax		# movq %r(1066), %rax
	jmp .L18		# jmp .L18
	.L16:		# .L16:
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1108)
	salq $3, %r12		# salq $3, %r(1067)
	movq %r12, %rdi		# movq %r(1067), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(768)
	movq $1, %r13		# movq $1, %r(1068)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(1109)
	movq %rbx, -56(%rbp)		# movq %r(1110), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1111)
	subq %r13, %r12		# subq %r(1068), %r(1111)
	movq %r12, -56(%rbp)		# movq %r(1111), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(1112)
	movq %r12, (%r14)		# movq %r(1112), (%r(19))
	movq $8, %r12		# movq $8, %r(1070)
	addq %r12, %r14		# addq %r(1070), %r(1071)
	movq %r14, -40(%rbp)		# movq %r(1113), -40(%rbp)
	.L19:		# .L19:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1114)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(1115)
	cmpq %r12, %rbx		# cmpq %r(1115), %r(1114)
	jge .L20		# jge .L20
	.L21:		# .L21:
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(1116)
	movq %r12, -16(%rbp)		# movq %r(1117), -16(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1118)
	movq %r12, -88(%rbp)		# movq %r(1119), -88(%rbp)
	movq $8, %r12		# movq $8, %r(1072)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1120)
	movq %r13, -96(%rbp)		# movq %r(1121), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1122)
	subq %r12, %rbx		# subq %r(1072), %r(1122)
	movq %rbx, -96(%rbp)		# movq %r(1122), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(1123)
	movq (%rbx), %rbx		# movq (%r(1123)), %r(1074)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1124)
	cmpq %rbx, %r12		# cmpq %r(1074), %r(1124)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1125)
	movq %r12, -8(%rbp)		# movq %r(1126), -8(%rbp)
	movq $1, %r12		# movq $1, %r(1075)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(1127)
	movq %r13, -104(%rbp)		# movq %r(1128), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(1129)
	subq %r12, %rbx		# subq %r(1075), %r(1129)
	movq %rbx, -104(%rbp)		# movq %r(1129), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(1130)
	movq %r12, -64(%rbp)		# movq %r(1131), -64(%rbp)
	movq $8, %r12		# movq $8, %r(1077)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1132)
	movq %r13, -32(%rbp)		# movq %r(1133), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1134)
	subq %r12, %rbx		# subq %r(1077), %r(1134)
	movq %rbx, -32(%rbp)		# movq %r(1134), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1135)
	movq (%rbx), %rbx		# movq (%r(1135)), %r(1079)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1136)
	cmpq %rbx, %r12		# cmpq %r(1079), %r(1136)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1137)
	salq $3, %r13		# salq $3, %r(1080)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1138)
	movq %rbx, -48(%rbp)		# movq %r(1139), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1140)
	addq %r13, %r12		# addq %r(1080), %r(1140)
	movq %r12, -48(%rbp)		# movq %r(1140), -48(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(1141)
	movq %r12, -24(%rbp)		# movq %r(1142), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1143)
	salq $3, %rbx		# salq $3, %r(1143)
	movq %rbx, -24(%rbp)		# movq %r(1143), -24(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1144)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1145)
	addq %r12, %r13		# addq %r(1145), %r(1083)
	movq (%r13), %rbx		# movq (%r(1083)), %r(1084)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1146)
	movq %rbx, (%r12)		# movq %r(1084), (%r(1146))
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1147)
	incq %rbx		# incq %r(1147)
	movq %rbx, -144(%rbp)		# movq %r(1147), -144(%rbp)
	jmp .L19		# jmp .L19
	.L20:		# .L20:
	movq -112(%rbp), %r15		# movq -112(%rbp), %r(1148)
	movq $0, %r12		# movq $0, %r(1085)
	movq %r12, %r14		# movq %r(1085), %r(26)
	movq $8, %r12		# movq $8, %r(1086)
	movq %r15, %r13		# movq %r(25), %r(1087)
	subq %r12, %r13		# subq %r(1086), %r(1087)
	movq (%r13), %r12		# movq (%r(1087)), %r(1088)
	cmpq %r12, %r14		# cmpq %r(1088), %r(26)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r12		# movq %r(26), %r(1089)
	salq $3, %r12		# salq $3, %r(1089)
	movq %r15, %rbx		# movq %r(25), %r(1090)
	addq %r12, %rbx		# addq %r(1089), %r(1090)
	movq (%rbx), %r12		# movq (%r(1090)), %r(1091)
	movq %r12, -144(%rbp)		# movq %r(1149), -144(%rbp)
	movq $1, %rbx		# movq $1, %r(1092)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1150)
	addq %rbx, %r12		# addq %r(1092), %r(1093)
	salq $3, %r12		# salq $3, %r(1094)
	movq %r12, %rdi		# movq %r(1094), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(769)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1151)
	movq %r12, (%rbx)		# movq %r(1151), (%r(28))
	movq $8, %r12		# movq $8, %r(1095)
	addq %r12, %rbx		# addq %r(1095), %r(1096)
	movq %rbx, -120(%rbp)		# movq %r(1152), -120(%rbp)
	.L25:		# .L25:
	movq $0, %rbx		# movq $0, %r(1097)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(1153)
	cmpq %rbx, %r12		# cmpq %r(1097), %r(1153)
	jle .L26		# jle .L26
	.L27:		# .L27:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1154)
	decq %rbx		# decq %r(1154)
	movq %rbx, -144(%rbp)		# movq %r(1154), -144(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1155)
	movq %rbx, %rdi		# movq %r(1155), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(770)
	movq %rbx, -128(%rbp)		# movq %r(1156), -128(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(1157)
	movq %r12, -80(%rbp)		# movq %r(1158), -80(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(1159)
	movq $8, %r13		# movq $8, %r(1098)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(1160)
	movq %r14, -72(%rbp)		# movq %r(1161), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1162)
	subq %r13, %r12		# subq %r(1098), %r(1162)
	movq %r12, -72(%rbp)		# movq %r(1162), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1163)
	movq (%r12), %r12		# movq (%r(1163)), %r(1100)
	cmpq %r12, %rbx		# cmpq %r(1100), %r(33)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(1101)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(1164)
	addq %rbx, %r13		# addq %r(1101), %r(1102)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(1165)
	movq %rbx, (%r13)		# movq %r(1165), (%r(1102))
	jmp .L25		# jmp .L25
	.L26:		# .L26:
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(1166)
	movq %rbx, %rax		# movq %r(1166), %rax
	jmp .L18		# jmp .L18
	.L18:		# .L18:
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
	movq %rdi, %rbx		# movq %rdi, %r(1182)
	movq %rbx, -24(%rbp)		# movq %r(1182), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(1183)
	movq (%rbx), %r12		# movq (%r(1183)), %r(1167)
	movq %r12, -32(%rbp)		# movq %r(1184), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1185)
	salq $3, %rbx		# salq $3, %r(1168)
	movq $8, %r12		# movq $8, %r(1169)
	addq %r12, %rbx		# addq %r(1169), %r(1170)
	movq %rbx, %rdi		# movq %r(1170), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(771)
	movq %r12, -40(%rbp)		# movq %r(1186), -40(%rbp)
	.L63:		# .L63:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1187)
	salq $3, %r13		# salq $3, %r(1171)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1188)
	addq %r13, %r12		# addq %r(1171), %r(1172)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(1189)
	movq %r13, -16(%rbp)		# movq %r(1190), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1191)
	salq $3, %rbx		# salq $3, %r(1191)
	movq %rbx, -16(%rbp)		# movq %r(1191), -16(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1192)
	movq %r13, -8(%rbp)		# movq %r(1179), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1180)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1193)
	addq %r13, %rbx		# addq %r(1193), %r(1180)
	movq %rbx, -8(%rbp)		# movq %r(1180), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1181)
	movq (%rbx), %rbx		# movq (%r(1181)), %r(1175)
	movq %rbx, (%r12)		# movq %r(1175), (%r(1172))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1194)
	decq %rbx		# decq %r(1194)
	movq %rbx, -32(%rbp)		# movq %r(1194), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(1176)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(1195)
	cmpq %rbx, %r12		# cmpq %r(1176), %r(1195)
	jge .L63		# jge .L63
	.L64:		# .L64:
	movq $8, %rbx		# movq $8, %r(1177)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(1196)
	addq %rbx, %r13		# addq %r(1177), %r(1178)
	movq %r13, %rax		# movq %r(1178), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(1220)
	movq %rbx, -56(%rbp)		# movq %r(1220), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(1221)
	movq %rbx, -24(%rbp)		# movq %r(1221), -24(%rbp)
	movq $0, %r12		# movq $0, %r(1197)
	movq %r12, -16(%rbp)		# movq %r(1222), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(1198)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(1223)
	subq %rbx, %r13		# subq %r(1198), %r(1199)
	movq (%r13), %r12		# movq (%r(1199)), %r(1200)
	movq %r12, -8(%rbp)		# movq %r(1224), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(1201)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(1225)
	subq %rbx, %r13		# subq %r(1201), %r(1202)
	movq (%r13), %rbx		# movq (%r(1202)), %r(1203)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1226)
	addq %rbx, %r12		# addq %r(1203), %r(1204)
	movq %r12, -64(%rbp)		# movq %r(1227), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(1205)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(1228)
	addq %rbx, %r13		# addq %r(1205), %r(1206)
	movq %r13, %rdi		# movq %r(1206), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(772)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1229)
	movq %r12, (%r13)		# movq %r(1229), (%r(181))
	movq $8, %r12		# movq $8, %r(1207)
	addq %r12, %r13		# addq %r(1207), %r(1208)
	movq %r13, -32(%rbp)		# movq %r(1230), -32(%rbp)
	.L65:		# .L65:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1231)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(1232)
	cmpq %rbx, %r12		# cmpq %r(1231), %r(1232)
	jge .L67		# jge .L67
	.L66:		# .L66:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1233)
	salq $3, %r13		# salq $3, %r(1209)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1234)
	movq %rbx, -48(%rbp)		# movq %r(1235), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1236)
	addq %r13, %r12		# addq %r(1209), %r(1236)
	movq %r12, -48(%rbp)		# movq %r(1236), -48(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1237)
	salq $3, %r13		# salq $3, %r(1211)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(1238)
	movq %rbx, -40(%rbp)		# movq %r(1239), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(1240)
	addq %r13, %r12		# addq %r(1211), %r(1240)
	movq %r12, -40(%rbp)		# movq %r(1240), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(1241)
	movq (%rbx), %rbx		# movq (%r(1241)), %r(1213)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(1242)
	movq %rbx, (%r12)		# movq %r(1213), (%r(1242))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1243)
	incq %rbx		# incq %r(1243)
	movq %rbx, -16(%rbp)		# movq %r(1243), -16(%rbp)
	jmp .L65		# jmp .L65
	.L67:		# .L67:
	.L68:		# .L68:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1244)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(1245)
	cmpq %r12, %rbx		# cmpq %r(1245), %r(1244)
	jge .L70		# jge .L70
	.L69:		# .L69:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(1246)
	salq $3, %r13		# salq $3, %r(1214)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(1247)
	addq %r13, %r14		# addq %r(1214), %r(1215)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1248)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(1249)
	subq %r13, %rbx		# subq %r(1249), %r(1216)
	salq $3, %rbx		# salq $3, %r(1217)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(1250)
	addq %rbx, %r12		# addq %r(1217), %r(1218)
	movq (%r12), %rbx		# movq (%r(1218)), %r(1219)
	movq %rbx, (%r14)		# movq %r(1219), (%r(1215))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(1251)
	incq %rbx		# incq %r(1251)
	movq %rbx, -16(%rbp)		# movq %r(1251), -16(%rbp)
	jmp .L68		# jmp .L68
	.L70:		# .L70:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(1252)
	movq %rbx, %rax		# movq %r(1252), %rax
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
.L133:
	.quad 9
	.quad 71
	.quad 111
	.quad 111
	.quad 100
	.quad 32
	.quad 76
	.quad 117
	.quad 99
	.quad 107
	.text

#.section .rodata
.align 8
.L132:
	.quad 5
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L131:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

#.section .rodata
.align 8
.L136:
	.quad 7
	.quad 78
	.quad 111
	.quad 116
	.quad 104
	.quad 105
	.quad 110
	.quad 103
	.text

error_outofbounds:
call _I_outOfBounds_p
