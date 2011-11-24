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
	movq $64, %rbx		# movq $64, %r(621)
	movq %rbx, %rdi		# movq %r(621), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(612)
	movq $7, %r12		# movq $7, %r(622)
	movq %r12, (%r14)		# movq %r(622), (%r(612))
	movq $8, %r12		# movq $8, %r(623)
	addq %r12, %r14		# addq %r(623), %r(624)
	movq $0, %r12		# movq $0, %r(625)
	movq %r14, %rbx		# movq %r(548), %r(626)
	addq %r12, %rbx		# addq %r(625), %r(626)
	movq $7, %r12		# movq $7, %r(627)
	movq %r12, (%rbx)		# movq %r(627), (%r(626))
	movq $8, %r12		# movq $8, %r(628)
	movq %r14, %rbx		# movq %r(548), %r(629)
	addq %r12, %rbx		# addq %r(628), %r(629)
	movq $7, %r12		# movq $7, %r(630)
	movq %r12, (%rbx)		# movq %r(630), (%r(629))
	movq $16, %r12		# movq $16, %r(631)
	movq %r14, %rbx		# movq %r(548), %r(632)
	addq %r12, %rbx		# addq %r(631), %r(632)
	movq $7, %r12		# movq $7, %r(633)
	movq %r12, (%rbx)		# movq %r(633), (%r(632))
	movq $24, %r12		# movq $24, %r(634)
	movq %r14, %rbx		# movq %r(548), %r(635)
	addq %r12, %rbx		# addq %r(634), %r(635)
	movq $7, %r12		# movq $7, %r(636)
	movq %r12, (%rbx)		# movq %r(636), (%r(635))
	movq $32, %r12		# movq $32, %r(637)
	movq %r14, %rbx		# movq %r(548), %r(638)
	addq %r12, %rbx		# addq %r(637), %r(638)
	movq $7, %r12		# movq $7, %r(639)
	movq %r12, (%rbx)		# movq %r(639), (%r(638))
	movq $40, %r12		# movq $40, %r(640)
	movq %r14, %rbx		# movq %r(548), %r(641)
	addq %r12, %rbx		# addq %r(640), %r(641)
	movq $7, %r12		# movq $7, %r(642)
	movq %r12, (%rbx)		# movq %r(642), (%r(641))
	movq $48, %r12		# movq $48, %r(643)
	movq %r14, %rbx		# movq %r(548), %r(644)
	addq %r12, %rbx		# addq %r(643), %r(644)
	movq $7, %r12		# movq $7, %r(645)
	movq %r12, (%rbx)		# movq %r(645), (%r(644))
	movq %r14, %rdi		# movq %r(548), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(817)
	movq %rbx, -8(%rbp)		# movq %r(817), -8(%rbp)
	movq $0, %r13		# movq $0, %r(646)
	movq $8, %r12		# movq $8, %r(647)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(818)
	subq %r12, %r14		# subq %r(647), %r(648)
	movq (%r14), %rbx		# movq (%r(648)), %r(649)
	cmpq %rbx, %r13		# cmpq %r(649), %r(646)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(650)
	salq $3, %r13		# salq $3, %r(651)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(819)
	addq %r13, %rbx		# addq %r(651), %r(652)
	movq (%rbx), %rbx		# movq (%r(652)), %r(653)
	movq $1, %r13		# movq $1, %r(654)
	movq $8, %r12		# movq $8, %r(655)
	movq %rbx, %r14		# movq %r(552), %r(656)
	subq %r12, %r14		# subq %r(655), %r(656)
	movq (%r14), %r12		# movq (%r(656)), %r(657)
	cmpq %r12, %r13		# cmpq %r(657), %r(654)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(658)
	salq $3, %r13		# salq $3, %r(659)
	addq %r13, %rbx		# addq %r(659), %r(660)
	movq (%rbx), %rbx		# movq (%r(660)), %r(661)
	movq $2, %r13		# movq $2, %r(662)
	movq $8, %r12		# movq $8, %r(663)
	movq %rbx, %r14		# movq %r(554), %r(664)
	subq %r12, %r14		# subq %r(663), %r(664)
	movq (%r14), %r12		# movq (%r(664)), %r(665)
	cmpq %r12, %r13		# cmpq %r(665), %r(662)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(666)
	salq $3, %r13		# salq $3, %r(667)
	addq %r13, %rbx		# addq %r(667), %r(668)
	movq (%rbx), %rbx		# movq (%r(668)), %r(669)
	movq $3, %r13		# movq $3, %r(670)
	movq $8, %r12		# movq $8, %r(671)
	movq %rbx, %r14		# movq %r(556), %r(672)
	subq %r12, %r14		# subq %r(671), %r(672)
	movq (%r14), %r12		# movq (%r(672)), %r(673)
	cmpq %r12, %r13		# cmpq %r(673), %r(670)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(674)
	salq $3, %r13		# salq $3, %r(675)
	addq %r13, %rbx		# addq %r(675), %r(676)
	movq (%rbx), %rbx		# movq (%r(676)), %r(677)
	movq $4, %r13		# movq $4, %r(678)
	movq $8, %r12		# movq $8, %r(679)
	movq %rbx, %r14		# movq %r(558), %r(680)
	subq %r12, %r14		# subq %r(679), %r(680)
	movq (%r14), %r12		# movq (%r(680)), %r(681)
	cmpq %r12, %r13		# cmpq %r(681), %r(678)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(682)
	salq $3, %r13		# salq $3, %r(683)
	addq %r13, %rbx		# addq %r(683), %r(684)
	movq (%rbx), %rbx		# movq (%r(684)), %r(685)
	movq $5, %r13		# movq $5, %r(686)
	movq $8, %r12		# movq $8, %r(687)
	movq %rbx, %r14		# movq %r(560), %r(688)
	subq %r12, %r14		# subq %r(687), %r(688)
	movq (%r14), %r12		# movq (%r(688)), %r(689)
	cmpq %r12, %r13		# cmpq %r(689), %r(686)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(690)
	salq $3, %r13		# salq $3, %r(691)
	addq %r13, %rbx		# addq %r(691), %r(692)
	movq (%rbx), %rbx		# movq (%r(692)), %r(693)
	movq $6, %r13		# movq $6, %r(694)
	movq $8, %r12		# movq $8, %r(695)
	movq %rbx, %r14		# movq %r(562), %r(696)
	subq %r12, %r14		# subq %r(695), %r(696)
	movq (%r14), %r12		# movq (%r(696)), %r(697)
	cmpq %r12, %r13		# cmpq %r(697), %r(694)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(698)
	salq $3, %r13		# salq $3, %r(699)
	addq %r13, %rbx		# addq %r(699), %r(700)
	movq $7, %r12		# movq $7, %r(701)
	movq %r12, (%rbx)		# movq %r(701), (%r(700))
	movq $0, %r13		# movq $0, %r(702)
	movq $8, %r12		# movq $8, %r(703)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(820)
	subq %r12, %r14		# subq %r(703), %r(704)
	movq (%r14), %rbx		# movq (%r(704)), %r(705)
	cmpq %rbx, %r13		# cmpq %r(705), %r(702)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(706)
	salq $3, %r13		# salq $3, %r(707)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(821)
	addq %r13, %rbx		# addq %r(707), %r(708)
	movq (%rbx), %rbx		# movq (%r(708)), %r(709)
	movq $1, %r13		# movq $1, %r(710)
	movq $8, %r12		# movq $8, %r(711)
	movq %rbx, %r14		# movq %r(566), %r(712)
	subq %r12, %r14		# subq %r(711), %r(712)
	movq (%r14), %r12		# movq (%r(712)), %r(713)
	cmpq %r12, %r13		# cmpq %r(713), %r(710)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(714)
	salq $3, %r13		# salq $3, %r(715)
	addq %r13, %rbx		# addq %r(715), %r(716)
	movq (%rbx), %rbx		# movq (%r(716)), %r(717)
	movq $2, %r13		# movq $2, %r(718)
	movq $8, %r12		# movq $8, %r(719)
	movq %rbx, %r14		# movq %r(568), %r(720)
	subq %r12, %r14		# subq %r(719), %r(720)
	movq (%r14), %r12		# movq (%r(720)), %r(721)
	cmpq %r12, %r13		# cmpq %r(721), %r(718)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(722)
	salq $3, %r13		# salq $3, %r(723)
	addq %r13, %rbx		# addq %r(723), %r(724)
	movq (%rbx), %rbx		# movq (%r(724)), %r(725)
	movq $3, %r13		# movq $3, %r(726)
	movq $8, %r12		# movq $8, %r(727)
	movq %rbx, %r14		# movq %r(570), %r(728)
	subq %r12, %r14		# subq %r(727), %r(728)
	movq (%r14), %r12		# movq (%r(728)), %r(729)
	cmpq %r12, %r13		# cmpq %r(729), %r(726)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(730)
	salq $3, %r13		# salq $3, %r(731)
	addq %r13, %rbx		# addq %r(731), %r(732)
	movq (%rbx), %rbx		# movq (%r(732)), %r(733)
	movq $4, %r13		# movq $4, %r(734)
	movq $8, %r12		# movq $8, %r(735)
	movq %rbx, %r14		# movq %r(572), %r(736)
	subq %r12, %r14		# subq %r(735), %r(736)
	movq (%r14), %r12		# movq (%r(736)), %r(737)
	cmpq %r12, %r13		# cmpq %r(737), %r(734)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(738)
	salq $3, %r13		# salq $3, %r(739)
	addq %r13, %rbx		# addq %r(739), %r(740)
	movq (%rbx), %rbx		# movq (%r(740)), %r(741)
	movq $5, %r13		# movq $5, %r(742)
	movq $8, %r12		# movq $8, %r(743)
	movq %rbx, %r14		# movq %r(574), %r(744)
	subq %r12, %r14		# subq %r(743), %r(744)
	movq (%r14), %r12		# movq (%r(744)), %r(745)
	cmpq %r12, %r13		# cmpq %r(745), %r(742)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(746)
	salq $3, %r13		# salq $3, %r(747)
	addq %r13, %rbx		# addq %r(747), %r(748)
	movq (%rbx), %rbx		# movq (%r(748)), %r(749)
	movq $6, %r13		# movq $6, %r(750)
	movq $8, %r12		# movq $8, %r(751)
	movq %rbx, %r14		# movq %r(576), %r(752)
	subq %r12, %r14		# subq %r(751), %r(752)
	movq (%r14), %r12		# movq (%r(752)), %r(753)
	cmpq %r12, %r13		# cmpq %r(753), %r(750)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(754)
	salq $3, %r13		# salq $3, %r(755)
	addq %r13, %rbx		# addq %r(755), %r(756)
	movq (%rbx), %rbx		# movq (%r(756)), %r(757)
	movq %rbx, %rdi		# movq %r(757), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(614)
	movq %rbx, %rdi		# movq %r(614), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(758)
	movq %r12, -16(%rbp)		# movq %r(822), -16(%rbp)
	movq $0, %r13		# movq $0, %r(759)
	movq $8, %r12		# movq $8, %r(760)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(823)
	subq %r12, %r14		# subq %r(760), %r(761)
	movq (%r14), %rbx		# movq (%r(761)), %r(762)
	cmpq %rbx, %r13		# cmpq %r(762), %r(759)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(763)
	salq $3, %r13		# salq $3, %r(764)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(824)
	addq %r13, %rbx		# addq %r(764), %r(765)
	movq (%rbx), %rbx		# movq (%r(765)), %r(766)
	movq $1, %r13		# movq $1, %r(767)
	movq $8, %r12		# movq $8, %r(768)
	movq %rbx, %r14		# movq %r(580), %r(769)
	subq %r12, %r14		# subq %r(768), %r(769)
	movq (%r14), %r12		# movq (%r(769)), %r(770)
	cmpq %r12, %r13		# cmpq %r(770), %r(767)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(771)
	salq $3, %r13		# salq $3, %r(772)
	addq %r13, %rbx		# addq %r(772), %r(773)
	movq (%rbx), %rbx		# movq (%r(773)), %r(774)
	movq $2, %r13		# movq $2, %r(775)
	movq $8, %r12		# movq $8, %r(776)
	movq %rbx, %r14		# movq %r(582), %r(777)
	subq %r12, %r14		# subq %r(776), %r(777)
	movq (%r14), %r12		# movq (%r(777)), %r(778)
	cmpq %r12, %r13		# cmpq %r(778), %r(775)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(779)
	salq $3, %r13		# salq $3, %r(780)
	addq %r13, %rbx		# addq %r(780), %r(781)
	movq (%rbx), %rbx		# movq (%r(781)), %r(782)
	movq $3, %r13		# movq $3, %r(783)
	movq $8, %r12		# movq $8, %r(784)
	movq %rbx, %r14		# movq %r(584), %r(785)
	subq %r12, %r14		# subq %r(784), %r(785)
	movq (%r14), %r12		# movq (%r(785)), %r(786)
	cmpq %r12, %r13		# cmpq %r(786), %r(783)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(787)
	salq $3, %r13		# salq $3, %r(788)
	addq %r13, %rbx		# addq %r(788), %r(789)
	movq (%rbx), %rbx		# movq (%r(789)), %r(790)
	movq $4, %r13		# movq $4, %r(791)
	movq $8, %r12		# movq $8, %r(792)
	movq %rbx, %r14		# movq %r(586), %r(793)
	subq %r12, %r14		# subq %r(792), %r(793)
	movq (%r14), %r12		# movq (%r(793)), %r(794)
	cmpq %r12, %r13		# cmpq %r(794), %r(791)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(795)
	salq $3, %r13		# salq $3, %r(796)
	addq %r13, %rbx		# addq %r(796), %r(797)
	movq (%rbx), %rbx		# movq (%r(797)), %r(798)
	movq $5, %r13		# movq $5, %r(799)
	movq $8, %r12		# movq $8, %r(800)
	movq %rbx, %r14		# movq %r(588), %r(801)
	subq %r12, %r14		# subq %r(800), %r(801)
	movq (%r14), %r12		# movq (%r(801)), %r(802)
	cmpq %r12, %r13		# cmpq %r(802), %r(799)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(803)
	salq $3, %r13		# salq $3, %r(804)
	addq %r13, %rbx		# addq %r(804), %r(805)
	movq (%rbx), %rbx		# movq (%r(805)), %r(806)
	movq $6, %r13		# movq $6, %r(807)
	movq $8, %r12		# movq $8, %r(808)
	movq %rbx, %r14		# movq %r(590), %r(809)
	subq %r12, %r14		# subq %r(808), %r(809)
	movq (%r14), %r12		# movq (%r(809)), %r(810)
	cmpq %r12, %r13		# cmpq %r(810), %r(807)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(811)
	salq $3, %r13		# salq $3, %r(812)
	addq %r13, %rbx		# addq %r(812), %r(813)
	movq (%rbx), %rbx		# movq (%r(813)), %r(814)
	movq $7, %r12		# movq $7, %r(815)
	cmpq %r12, %rbx		# cmpq %r(815), %r(814)
	je .L131		# je .L131
	.L132:		# .L132:
	movq $0, %r12		# movq $0, %r(816)
	movq %r12, -16(%rbp)		# movq %r(825), -16(%rbp)
	.L131:		# .L131:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(826)
	movq %rbx, %rdi		# movq %r(826), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L87:		# .L87:
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
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(870)
	movq %rbx, -40(%rbp)		# movq %r(870), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(827)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(871)
	subq %rbx, %r13		# subq %r(827), %r(828)
	movq (%r13), %r12		# movq (%r(828)), %r(829)
	movq %r12, -56(%rbp)		# movq %r(872), -56(%rbp)
	movq $1, %r12		# movq $1, %r(830)
	movq %r12, -48(%rbp)		# movq %r(873), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(831)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(874)
	cmpq %rbx, %r12		# cmpq %r(831), %r(874)
	jne .L133		# jne .L133
	.L134:		# .L134:
	movq $0, %rbx		# movq $0, %r(832)
	movq %rbx, %rax		# movq %r(832), %rax
	jmp .L135		# jmp .L135
	.L135:		# .L135:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L133:		# .L133:
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(875)
	salq $3, %r12		# salq $3, %r(833)
	movq %r12, %rdi		# movq %r(833), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(617)
	movq $1, %r12		# movq $1, %r(834)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(876)
	movq %r14, -32(%rbp)		# movq %r(877), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(878)
	subq %r12, %rbx		# subq %r(834), %r(878)
	movq %rbx, -32(%rbp)		# movq %r(878), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(879)
	movq %rbx, (%r13)		# movq %r(879), (%r(617))
	movq $8, %rbx		# movq $8, %r(836)
	addq %rbx, %r13		# addq %r(836), %r(837)
	movq %r13, -24(%rbp)		# movq %r(880), -24(%rbp)
	.L136:		# .L136:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(881)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(882)
	cmpq %r12, %rbx		# cmpq %r(882), %r(881)
	jge .L137		# jge .L137
	.L138:		# .L138:
	movq $8, %rbx		# movq $8, %r(838)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(883)
	subq %rbx, %r13		# subq %r(838), %r(839)
	movq (%r13), %rbx		# movq (%r(839)), %r(840)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(884)
	cmpq %rbx, %r12		# cmpq %r(840), %r(884)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(841)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(885)
	subq %rbx, %r14		# subq %r(841), %r(842)
	movq $8, %r13		# movq $8, %r(843)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(886)
	movq %r12, -64(%rbp)		# movq %r(887), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(888)
	subq %r13, %rbx		# subq %r(843), %r(888)
	movq %rbx, -64(%rbp)		# movq %r(888), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(889)
	movq (%rbx), %rbx		# movq (%r(889)), %r(845)
	cmpq %rbx, %r14		# cmpq %r(845), %r(602)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(846)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(890)
	addq %r14, %rbx		# addq %r(846), %r(847)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(891)
	salq $3, %r14		# salq $3, %r(848)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(892)
	movq %r12, -88(%rbp)		# movq %r(893), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(894)
	addq %r14, %r13		# addq %r(848), %r(894)
	movq %r13, -88(%rbp)		# movq %r(894), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(895)
	movq (%r12), %r12		# movq (%r(895)), %r(850)
	movq %r12, (%rbx)		# movq %r(850), (%r(847))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(896)
	incq %rbx		# incq %r(896)
	movq %rbx, -48(%rbp)		# movq %r(896), -48(%rbp)
	jmp .L136		# jmp .L136
	.L137:		# .L137:
	movq $0, %r13		# movq $0, %r(851)
	movq $8, %r12		# movq $8, %r(852)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(897)
	subq %r12, %r14		# subq %r(852), %r(853)
	movq (%r14), %rbx		# movq (%r(853)), %r(854)
	cmpq %rbx, %r13		# cmpq %r(854), %r(851)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(855)
	salq $3, %r13		# salq $3, %r(856)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(898)
	addq %r13, %rbx		# addq %r(856), %r(857)
	movq (%rbx), %r12		# movq (%r(857)), %r(858)
	movq %r12, -48(%rbp)		# movq %r(899), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(859)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(900)
	addq %rbx, %r12		# addq %r(859), %r(860)
	salq $3, %r12		# salq $3, %r(861)
	movq %r12, %rdi		# movq %r(861), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(618)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(901)
	movq %r12, (%rbx)		# movq %r(901), (%r(618))
	movq $8, %r12		# movq $8, %r(862)
	addq %r12, %rbx		# addq %r(862), %r(863)
	movq %rbx, -72(%rbp)		# movq %r(902), -72(%rbp)
	.L142:		# .L142:
	movq $0, %rbx		# movq $0, %r(864)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(903)
	cmpq %rbx, %r12		# cmpq %r(864), %r(903)
	jle .L143		# jle .L143
	.L144:		# .L144:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(904)
	decq %rbx		# decq %r(904)
	movq %rbx, -48(%rbp)		# movq %r(904), -48(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(905)
	movq %rbx, %rdi		# movq %r(905), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(906)
	movq %rbx, -8(%rbp)		# movq %r(906), -8(%rbp)
	movq $8, %r12		# movq $8, %r(865)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(907)
	movq %r13, -80(%rbp)		# movq %r(908), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(909)
	subq %r12, %rbx		# subq %r(865), %r(909)
	movq %rbx, -80(%rbp)		# movq %r(909), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(910)
	movq (%rbx), %rbx		# movq (%r(910)), %r(867)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(911)
	cmpq %rbx, %r12		# cmpq %r(867), %r(911)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(912)
	salq $3, %r13		# salq $3, %r(868)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(913)
	movq %rbx, -16(%rbp)		# movq %r(914), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(915)
	addq %r13, %r12		# addq %r(868), %r(915)
	movq %r12, -16(%rbp)		# movq %r(915), -16(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(916)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(917)
	movq %rbx, (%r12)		# movq %r(916), (%r(917))
	jmp .L142		# jmp .L142
	.L143:		# .L143:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(918)
	movq %rbx, %rax		# movq %r(918), %rax
	jmp .L135		# jmp .L135
	
error_outofbounds:
call _I_outOfBounds_p
