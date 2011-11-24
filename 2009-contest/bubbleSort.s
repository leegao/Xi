.att_syntax prefix
.text
.globl _IprintNum_pi
_IprintNum_pi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(x)
	movq $24, %rbx		# movq $24, %r(650)
	movq %rbx, %rdi		# movq %r(650), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(641)
	movq $2, %rbx		# movq $2, %r(651)
	movq %rbx, (%r15)		# movq %r(651), (%r(641))
	movq $8, %rbx		# movq $8, %r(652)
	addq %rbx, %r15		# addq %r(652), %r(653)
	movq $0, %rbx		# movq $0, %r(654)
	movq %r15, %r13		# movq %r(602), %r(655)
	addq %rbx, %r13		# addq %r(654), %r(655)
	movq $48, %rbx		# movq $48, %r(656)
	addq %rbx, %r12		# addq %r(656), %r(657)
	movq %r12, (%r13)		# movq %r(657), (%r(655))
	movq $8, %rbx		# movq $8, %r(658)
	movq %r15, %r12		# movq %r(602), %r(659)
	addq %rbx, %r12		# addq %r(658), %r(659)
	movq $46, %rbx		# movq $46, %r(660)
	movq %rbx, (%r12)		# movq %r(660), (%r(659))
	movq %r15, %rdi		# movq %r(602), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L69:		# .L69:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IbubbleSort_aiai
_IbubbleSort_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(710)
	movq %rbx, -16(%rbp)		# movq %r(710), -16(%rbp)
	movq $0, %r12		# movq $0, %r(661)
	movq %r12, -64(%rbp)		# movq %r(711), -64(%rbp)
	.L71:		# .L71:
	movq $8, %rbx		# movq $8, %r(662)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(712)
	subq %rbx, %r13		# subq %r(662), %r(663)
	movq (%r13), %r13		# movq (%r(663)), %r(664)
	movq $1, %r12		# movq $1, %r(665)
	subq %r12, %r13		# subq %r(665), %r(666)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(713)
	cmpq %r13, %r12		# cmpq %r(666), %r(713)
	jge .L73		# jge .L73
	.L72:		# .L72:
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(714)
	movq %r12, -48(%rbp)		# movq %r(715), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(667)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(716)
	subq %rbx, %r13		# subq %r(667), %r(668)
	movq (%r13), %rbx		# movq (%r(668)), %r(669)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(717)
	cmpq %rbx, %r12		# cmpq %r(669), %r(717)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(718)
	salq $3, %r13		# salq $3, %r(670)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(719)
	addq %r13, %rbx		# addq %r(670), %r(671)
	movq (%rbx), %r12		# movq (%r(671)), %r(672)
	movq %r12, -56(%rbp)		# movq %r(720), -56(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(721)
	movq %r12, -72(%rbp)		# movq %r(722), -72(%rbp)
	.L76:		# .L76:
	movq $8, %r12		# movq $8, %r(673)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(723)
	movq %r13, -8(%rbp)		# movq %r(724), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(725)
	subq %r12, %rbx		# subq %r(673), %r(725)
	movq %rbx, -8(%rbp)		# movq %r(725), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(726)
	movq (%rbx), %rbx		# movq (%r(726)), %r(675)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(727)
	cmpq %rbx, %r12		# cmpq %r(675), %r(727)
	jge .L78		# jge .L78
	.L77:		# .L77:
	movq $8, %r12		# movq $8, %r(676)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(728)
	movq %r13, -32(%rbp)		# movq %r(729), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(730)
	subq %r12, %rbx		# subq %r(676), %r(730)
	movq %rbx, -32(%rbp)		# movq %r(730), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(731)
	movq (%rbx), %rbx		# movq (%r(731)), %r(678)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(732)
	cmpq %rbx, %r12		# cmpq %r(678), %r(732)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(733)
	salq $3, %r13		# salq $3, %r(679)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(734)
	movq %rbx, -24(%rbp)		# movq %r(735), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(736)
	addq %r13, %r12		# addq %r(679), %r(736)
	movq %r12, -24(%rbp)		# movq %r(736), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(737)
	movq (%rbx), %rbx		# movq (%r(737)), %r(681)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(738)
	cmpq %r12, %rbx		# cmpq %r(738), %r(681)
	jge .L82		# jge .L82
	.L81:		# .L81:
	movq $8, %rbx		# movq $8, %r(682)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(739)
	subq %rbx, %r13		# subq %r(682), %r(683)
	movq (%r13), %rbx		# movq (%r(683)), %r(684)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(740)
	cmpq %rbx, %r12		# cmpq %r(684), %r(740)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(741)
	salq $3, %r13		# salq $3, %r(685)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(742)
	addq %r13, %rbx		# addq %r(685), %r(686)
	movq (%rbx), %r12		# movq (%r(686)), %r(687)
	movq %r12, -56(%rbp)		# movq %r(743), -56(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(744)
	movq %r12, -72(%rbp)		# movq %r(745), -72(%rbp)
	.L82:		# .L82:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(746)
	incq %rbx		# incq %r(746)
	movq %rbx, -48(%rbp)		# movq %r(746), -48(%rbp)
	jmp .L76		# jmp .L76
	.L78:		# .L78:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(747)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(748)
	cmpq %rbx, %r12		# cmpq %r(747), %r(748)
	je .L86		# je .L86
	.L85:		# .L85:
	movq $8, %rbx		# movq $8, %r(688)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(749)
	subq %rbx, %r13		# subq %r(688), %r(689)
	movq (%r13), %rbx		# movq (%r(689)), %r(690)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(750)
	cmpq %rbx, %r12		# cmpq %r(690), %r(750)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(751)
	salq $3, %r13		# salq $3, %r(691)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(752)
	addq %r13, %rbx		# addq %r(691), %r(692)
	movq (%rbx), %rbx		# movq (%r(692)), %r(693)
	movq $8, %r13		# movq $8, %r(694)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(753)
	subq %r13, %r14		# subq %r(694), %r(695)
	movq (%r14), %r12		# movq (%r(695)), %r(696)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(754)
	cmpq %r12, %r13		# cmpq %r(696), %r(754)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r13		# movq $8, %r(697)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(755)
	subq %r13, %r14		# subq %r(697), %r(698)
	movq (%r14), %r12		# movq (%r(698)), %r(699)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(756)
	cmpq %r12, %r13		# cmpq %r(699), %r(756)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r15		# movq -64(%rbp), %r(757)
	salq $3, %r15		# salq $3, %r(700)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(770)
	movq %r13, -80(%rbp)		# movq %r(770), -80(%rbp)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(771)
	movq %r14, -88(%rbp)		# movq %r(772), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(773)
	addq %r15, %r13		# addq %r(700), %r(773)
	movq %r13, -88(%rbp)		# movq %r(773), -88(%rbp)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(759)
	salq $3, %r14		# salq $3, %r(702)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(760)
	movq %r12, -40(%rbp)		# movq %r(761), -40(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(762)
	addq %r14, %r13		# addq %r(702), %r(762)
	movq %r13, -40(%rbp)		# movq %r(762), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(763)
	movq (%r12), %r12		# movq (%r(763)), %r(704)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(774)
	movq %r12, (%r13)		# movq %r(704), (%r(774))
	movq $8, %r13		# movq $8, %r(705)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(764)
	subq %r13, %r14		# subq %r(705), %r(706)
	movq (%r14), %r12		# movq (%r(706)), %r(707)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(765)
	cmpq %r12, %r13		# cmpq %r(707), %r(765)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(766)
	salq $3, %r14		# salq $3, %r(708)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(767)
	addq %r14, %r12		# addq %r(708), %r(709)
	movq %rbx, (%r12)		# movq %r(tmp), (%r(709))
	.L86:		# .L86:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(768)
	incq %rbx		# incq %r(768)
	movq %rbx, -64(%rbp)		# movq %r(768), -64(%rbp)
	jmp .L71		# jmp .L71
	.L73:		# .L73:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(769)
	movq %rbx, %rax		# movq %r(769), %rax
	jmp .L70		# jmp .L70
	.L70:		# .L70:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	movq $40, %rbx		# movq $40, %r(775)
	movq %rbx, %rdi		# movq %r(775), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(643)
	movq $4, %r12		# movq $4, %r(776)
	movq %r12, (%r14)		# movq %r(776), (%r(643))
	movq $8, %r12		# movq $8, %r(777)
	addq %r12, %r14		# addq %r(777), %r(778)
	movq $0, %r12		# movq $0, %r(779)
	movq %r14, %rbx		# movq %r(626), %r(780)
	addq %r12, %rbx		# addq %r(779), %r(780)
	movq $6, %r12		# movq $6, %r(781)
	movq %r12, (%rbx)		# movq %r(781), (%r(780))
	movq $8, %r12		# movq $8, %r(782)
	movq %r14, %rbx		# movq %r(626), %r(783)
	addq %r12, %rbx		# addq %r(782), %r(783)
	movq $3, %r12		# movq $3, %r(784)
	movq %r12, (%rbx)		# movq %r(784), (%r(783))
	movq $16, %r12		# movq $16, %r(785)
	movq %r14, %rbx		# movq %r(626), %r(786)
	addq %r12, %rbx		# addq %r(785), %r(786)
	movq $4, %r12		# movq $4, %r(787)
	movq %r12, (%rbx)		# movq %r(787), (%r(786))
	movq $24, %r12		# movq $24, %r(788)
	movq %r14, %rbx		# movq %r(626), %r(789)
	addq %r12, %rbx		# addq %r(788), %r(789)
	movq $7, %r12		# movq $7, %r(790)
	movq %r12, (%rbx)		# movq %r(790), (%r(789))
	movq %r14, %rdi		# movq %r(626), %rdi
	call _IbubbleSort_aiai		# call _IbubbleSort_aiai
	movq %rax, %rbx		# movq %rax, %r(835)
	movq %rbx, -8(%rbp)		# movq %r(835), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(791)
	movq %rbx, %r13		# movq %r(791), %r(631)
	movq $0, %r12		# movq $0, %r(792)
	movq $8, %r14		# movq $8, %r(793)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(836)
	subq %r14, %rbx		# subq %r(793), %r(794)
	movq (%rbx), %rbx		# movq (%r(794)), %r(795)
	cmpq %rbx, %r12		# cmpq %r(795), %r(792)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(796)
	salq $3, %r14		# salq $3, %r(797)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(837)
	addq %r14, %rbx		# addq %r(797), %r(798)
	movq (%rbx), %rbx		# movq (%r(798)), %r(799)
	movq $3, %r12		# movq $3, %r(800)
	cmpq %r12, %rbx		# cmpq %r(800), %r(799)
	je .L98		# je .L98
	.L99:		# .L99:
	movq $0, %r13		# movq $0, %r(801)
	.L98:		# .L98:
	movq %r13, %rdi		# movq %r(631), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(802)
	movq %rbx, %r13		# movq %r(802), %r(634)
	movq $1, %r12		# movq $1, %r(803)
	movq $8, %r14		# movq $8, %r(804)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(838)
	subq %r14, %rbx		# subq %r(804), %r(805)
	movq (%rbx), %rbx		# movq (%r(805)), %r(806)
	cmpq %rbx, %r12		# cmpq %r(806), %r(803)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(807)
	salq $3, %r14		# salq $3, %r(808)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(839)
	addq %r14, %rbx		# addq %r(808), %r(809)
	movq (%rbx), %rbx		# movq (%r(809)), %r(810)
	movq $4, %r12		# movq $4, %r(811)
	cmpq %r12, %rbx		# cmpq %r(811), %r(810)
	je .L102		# je .L102
	.L103:		# .L103:
	movq $0, %r13		# movq $0, %r(812)
	.L102:		# .L102:
	movq %r13, %rdi		# movq %r(634), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(813)
	movq %rbx, %r13		# movq %r(813), %r(637)
	movq $2, %r14		# movq $2, %r(814)
	movq $8, %r12		# movq $8, %r(815)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(840)
	subq %r12, %rbx		# subq %r(815), %r(816)
	movq (%rbx), %rbx		# movq (%r(816)), %r(817)
	cmpq %rbx, %r14		# cmpq %r(817), %r(814)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r14		# movq $2, %r(818)
	salq $3, %r14		# salq $3, %r(819)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(841)
	addq %r14, %rbx		# addq %r(819), %r(820)
	movq (%rbx), %rbx		# movq (%r(820)), %r(821)
	movq $6, %r12		# movq $6, %r(822)
	cmpq %r12, %rbx		# cmpq %r(822), %r(821)
	je .L106		# je .L106
	.L107:		# .L107:
	movq $0, %r13		# movq $0, %r(823)
	.L106:		# .L106:
	movq %r13, %rdi		# movq %r(637), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(824)
	movq %rbx, %r13		# movq %r(824), %r(640)
	movq $3, %r12		# movq $3, %r(825)
	movq $8, %r14		# movq $8, %r(826)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(842)
	subq %r14, %rbx		# subq %r(826), %r(827)
	movq (%rbx), %rbx		# movq (%r(827)), %r(828)
	cmpq %rbx, %r12		# cmpq %r(828), %r(825)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r14		# movq $3, %r(829)
	salq $3, %r14		# salq $3, %r(830)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(843)
	addq %r14, %rbx		# addq %r(830), %r(831)
	movq (%rbx), %rbx		# movq (%r(831)), %r(832)
	movq $7, %r12		# movq $7, %r(833)
	cmpq %r12, %rbx		# cmpq %r(833), %r(832)
	je .L110		# je .L110
	.L111:		# .L111:
	movq $0, %r13		# movq $0, %r(834)
	.L110:		# .L110:
	movq %r13, %rdi		# movq %r(640), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L95:		# .L95:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
