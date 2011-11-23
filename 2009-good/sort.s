.att_syntax prefix
.text
.globl _Isort_pai
_Isort_pai:
	pushq %rbp
	movq %rsp, %rbp
	subq $176, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(540)
	movq %rbx, -48(%rbp)		# movq %r(540), -48(%rbp)
	movq $0, %r12		# movq $0, %r(495)
	movq %r12, %r12		# movq %r(495), %r(541)
	movq %r12, -120(%rbp)		# movq %r(541), -120(%rbp)
	movq $8, %rbx		# movq $8, %r(496)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(542)
	movq %r13, %r13		# movq %r(542), %r(497)
	subq %rbx, %r13		# subq %r(496), %r(497)
	movq (%r13), %r12		# movq (%r(497)), %r(498)
	movq %r12, %r12		# movq %r(498), %r(543)
	movq %r12, -80(%rbp)		# movq %r(543), -80(%rbp)
	.L161:		# .L161:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(544)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(545)
	cmpq %rbx, %r12		# cmpq %r(544), %r(545)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(546)
	movq %r12, %r12		# movq %r(546), %r(547)
	movq %r12, -104(%rbp)		# movq %r(547), -104(%rbp)
	.L164:		# .L164:
	movq $0, %rbx		# movq $0, %r(499)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(548)
	cmpq %rbx, %r12		# cmpq %r(499), %r(548)
	jle .L166		# jle .L166
	.L165:		# .L165:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(549)
	movq %r12, %r12		# movq %r(549), %r(550)
	movq %r12, -16(%rbp)		# movq %r(550), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(500)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(551)
	movq %r12, %r12		# movq %r(551), %r(501)
	subq %rbx, %r12		# subq %r(500), %r(501)
	movq %r12, %r12		# movq %r(501), %r(552)
	movq %r12, -136(%rbp)		# movq %r(552), -136(%rbp)
	movq $8, %rbx		# movq $8, %r(502)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(553)
	movq %r13, %r13		# movq %r(553), %r(503)
	subq %rbx, %r13		# subq %r(502), %r(503)
	movq (%r13), %rbx		# movq (%r(503)), %r(504)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(554)
	cmpq %rbx, %r12		# cmpq %r(504), %r(554)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(555)
	movq %r12, %r12		# movq %r(555), %r(556)
	movq %r12, -96(%rbp)		# movq %r(556), -96(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(557)
	movq %r12, %r12		# movq %r(557), %r(558)
	movq %r12, -24(%rbp)		# movq %r(558), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(505)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(559)
	movq %r13, %r13		# movq %r(559), %r(506)
	subq %rbx, %r13		# subq %r(505), %r(506)
	movq (%r13), %rbx		# movq (%r(506)), %r(507)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(560)
	cmpq %rbx, %r12		# cmpq %r(507), %r(560)
	jae error_outofbounds		# jae error_outofbounds
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(561)
	movq %r13, %r13		# movq %r(561), %r(508)
	salq $3, %r13		# salq $3, %r(508)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(562)
	movq %rbx, %rbx		# movq %r(562), %r(509)
	addq %r13, %rbx		# addq %r(508), %r(509)
	movq (%rbx), %rbx		# movq (%r(509)), %r(563)
	movq %rbx, -40(%rbp)		# movq %r(563), -40(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(564)
	movq %r13, %r13		# movq %r(564), %r(511)
	salq $3, %r13		# salq $3, %r(511)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(565)
	movq %rbx, %rbx		# movq %r(565), %r(512)
	addq %r13, %rbx		# addq %r(511), %r(512)
	movq (%rbx), %rbx		# movq (%r(512)), %r(513)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(566)
	cmpq %rbx, %r12		# cmpq %r(513), %r(566)
	jle .L172		# jle .L172
	.L171:		# .L171:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(567)
	movq %r12, %r12		# movq %r(567), %r(568)
	movq %r12, -8(%rbp)		# movq %r(568), -8(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(569)
	movq %rbx, %rbx		# movq %r(569), %r(459)
	movq $8, %r13		# movq $8, %r(514)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(570)
	movq %r14, %r14		# movq %r(570), %r(571)
	movq %r14, -128(%rbp)		# movq %r(571), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(572)
	subq %r13, %r12		# subq %r(514), %r(572)
	movq %r12, -128(%rbp)		# movq %r(572), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(573)
	movq (%r12), %r12		# movq (%r(573)), %r(516)
	cmpq %r12, %rbx		# cmpq %r(516), %r(459)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(459), %r(517)
	salq $3, %rbx		# salq $3, %r(517)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(574)
	movq %r13, %r13		# movq %r(574), %r(518)
	addq %rbx, %r13		# addq %r(517), %r(518)
	movq (%r13), %r12		# movq (%r(518)), %r(519)
	movq %r12, %r12		# movq %r(519), %r(575)
	movq %r12, -32(%rbp)		# movq %r(575), -32(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(576)
	movq %r12, %r12		# movq %r(576), %r(577)
	movq %r12, -64(%rbp)		# movq %r(577), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(520)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(578)
	movq %r12, %r12		# movq %r(578), %r(521)
	subq %rbx, %r12		# subq %r(520), %r(521)
	movq %r12, %r12		# movq %r(521), %r(579)
	movq %r12, -160(%rbp)		# movq %r(579), -160(%rbp)
	movq $8, %rbx		# movq $8, %r(522)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(580)
	movq %r13, %r13		# movq %r(580), %r(523)
	subq %rbx, %r13		# subq %r(522), %r(523)
	movq (%r13), %rbx		# movq (%r(523)), %r(524)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(581)
	cmpq %rbx, %r12		# cmpq %r(524), %r(581)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(582)
	movq %r12, %r12		# movq %r(582), %r(583)
	movq %r12, -88(%rbp)		# movq %r(583), -88(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(584)
	movq %r12, %r12		# movq %r(584), %r(585)
	movq %r12, -56(%rbp)		# movq %r(585), -56(%rbp)
	movq $8, %r12		# movq $8, %r(525)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(586)
	movq %r13, %r13		# movq %r(586), %r(587)
	movq %r13, -144(%rbp)		# movq %r(587), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(588)
	subq %r12, %rbx		# subq %r(525), %r(588)
	movq %rbx, -144(%rbp)		# movq %r(588), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(589)
	movq (%rbx), %rbx		# movq (%r(589)), %r(527)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(590)
	cmpq %rbx, %r12		# cmpq %r(527), %r(590)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(591)
	movq %r13, %r13		# movq %r(591), %r(528)
	salq $3, %r13		# salq $3, %r(528)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(592)
	movq %rbx, %rbx		# movq %r(592), %r(593)
	movq %rbx, -152(%rbp)		# movq %r(593), -152(%rbp)
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(594)
	addq %r13, %r12		# addq %r(528), %r(594)
	movq %r12, -152(%rbp)		# movq %r(594), -152(%rbp)
	movq -160(%rbp), %r13		# movq -160(%rbp), %r(595)
	movq %r13, %r13		# movq %r(595), %r(530)
	salq $3, %r13		# salq $3, %r(530)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(596)
	movq %rbx, %rbx		# movq %r(596), %r(531)
	addq %r13, %rbx		# addq %r(530), %r(531)
	movq (%rbx), %rbx		# movq (%r(531)), %r(532)
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(597)
	movq %rbx, (%r12)		# movq %r(532), (%r(597))
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(598)
	movq %r12, %r12		# movq %r(598), %r(599)
	movq %r12, -112(%rbp)		# movq %r(599), -112(%rbp)
	movq $1, %rbx		# movq $1, %r(533)
	movq -104(%rbp), %r14		# movq -104(%rbp), %r(600)
	movq %r14, %r14		# movq %r(600), %r(534)
	subq %rbx, %r14		# subq %r(533), %r(534)
	movq %r14, %r14		# movq %r(534), %r(465)
	movq $8, %r13		# movq $8, %r(535)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(601)
	movq %r12, %r12		# movq %r(601), %r(602)
	movq %r12, -72(%rbp)		# movq %r(602), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(603)
	subq %r13, %rbx		# subq %r(535), %r(603)
	movq %rbx, -72(%rbp)		# movq %r(603), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(604)
	movq (%rbx), %rbx		# movq (%r(604)), %r(537)
	cmpq %rbx, %r14		# cmpq %r(537), %r(465)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r14		# movq %r(465), %r(538)
	salq $3, %r14		# salq $3, %r(538)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(605)
	movq %r13, %r13		# movq %r(605), %r(539)
	addq %r14, %r13		# addq %r(538), %r(539)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(606)
	movq %r12, (%r13)		# movq %r(606), (%r(539))
	.L172:		# .L172:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(607)
	decq %rbx		# decq %r(607)
	movq %rbx, -104(%rbp)		# movq %r(607), -104(%rbp)
	jmp .L164		# jmp .L164
	.L166:		# .L166:
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(608)
	incq %rbx		# incq %r(608)
	movq %rbx, -120(%rbp)		# movq %r(608), -120(%rbp)
	jmp .L161		# jmp .L161
	.L163:		# .L163:
	.L160:		# .L160:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $176, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	leaq .L182(%rip), %rdi		# leaq .L182(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(480)
	movq %r13, %rdi		# movq %r(480), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L181:		# .L181:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IassertSameArray_paiai
_IassertSameArray_paiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $144, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(637)
	movq %rbx, -16(%rbp)		# movq %r(637), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(638)
	movq %rbx, -88(%rbp)		# movq %r(638), -88(%rbp)
	leaq .L184(%rip), %rdi		# leaq .L184(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(639)
	movq %rbx, -128(%rbp)		# movq %r(639), -128(%rbp)
	movq $1, %r12		# movq $1, %r(611)
	movq %r12, %r12		# movq %r(611), %r(640)
	movq %r12, -120(%rbp)		# movq %r(640), -120(%rbp)
	movq $8, %rbx		# movq $8, %r(612)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(641)
	movq %r13, %r13		# movq %r(641), %r(613)
	subq %rbx, %r13		# subq %r(612), %r(613)
	movq (%r13), %r13		# movq (%r(613)), %r(614)
	movq $8, %r12		# movq $8, %r(615)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(642)
	movq %r14, %r14		# movq %r(642), %r(643)
	movq %r14, -72(%rbp)		# movq %r(643), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(644)
	subq %r12, %rbx		# subq %r(615), %r(644)
	movq %rbx, -72(%rbp)		# movq %r(644), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(645)
	movq (%rbx), %rbx		# movq (%r(645)), %r(617)
	cmpq %rbx, %r13		# cmpq %r(617), %r(614)
	je .L185		# je .L185
	.L186:		# .L186:
	movq $0, %r12		# movq $0, %r(618)
	movq %r12, %r12		# movq %r(618), %r(646)
	movq %r12, -120(%rbp)		# movq %r(646), -120(%rbp)
	.L185:		# .L185:
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(647)
	movq %rbx, %rdi		# movq %r(647), %rdi
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(648)
	movq %rbx, %rsi		# movq %r(648), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r12		# movq $0, %r(619)
	movq %r12, %r12		# movq %r(619), %r(649)
	movq %r12, -80(%rbp)		# movq %r(649), -80(%rbp)
	.L187:		# .L187:
	movq $8, %rbx		# movq $8, %r(620)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(650)
	movq %r13, %r13		# movq %r(650), %r(621)
	subq %rbx, %r13		# subq %r(620), %r(621)
	movq (%r13), %rbx		# movq (%r(621)), %r(622)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(651)
	cmpq %rbx, %r12		# cmpq %r(622), %r(651)
	jge .L189		# jge .L189
	.L188:		# .L188:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(652)
	movq %rbx, %rdi		# movq %r(652), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(653)
	movq %rbx, -40(%rbp)		# movq %r(653), -40(%rbp)
	movq $1, %r12		# movq $1, %r(623)
	movq %r12, %r12		# movq %r(623), %r(654)
	movq %r12, -8(%rbp)		# movq %r(654), -8(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(655)
	movq %r12, %r12		# movq %r(655), %r(656)
	movq %r12, -56(%rbp)		# movq %r(656), -56(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(657)
	movq %r12, %r12		# movq %r(657), %r(658)
	movq %r12, -24(%rbp)		# movq %r(658), -24(%rbp)
	movq $8, %r12		# movq $8, %r(624)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(659)
	movq %r13, %r13		# movq %r(659), %r(660)
	movq %r13, -64(%rbp)		# movq %r(660), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(661)
	subq %r12, %rbx		# subq %r(624), %r(661)
	movq %rbx, -64(%rbp)		# movq %r(661), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(662)
	movq (%rbx), %rbx		# movq (%r(662)), %r(626)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(663)
	cmpq %rbx, %r12		# cmpq %r(626), %r(663)
	jae error_outofbounds		# jae error_outofbounds
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(664)
	movq %r12, %r12		# movq %r(664), %r(665)
	movq %r12, -48(%rbp)		# movq %r(665), -48(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(666)
	movq %r12, %r12		# movq %r(666), %r(667)
	movq %r12, -104(%rbp)		# movq %r(667), -104(%rbp)
	movq $8, %r12		# movq $8, %r(627)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(668)
	movq %r13, %r13		# movq %r(668), %r(669)
	movq %r13, -32(%rbp)		# movq %r(669), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(670)
	subq %r12, %rbx		# subq %r(627), %r(670)
	movq %rbx, -32(%rbp)		# movq %r(670), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(671)
	movq (%rbx), %rbx		# movq (%r(671)), %r(629)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(672)
	cmpq %rbx, %r12		# cmpq %r(629), %r(672)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(673)
	movq %r13, %r13		# movq %r(673), %r(630)
	salq $3, %r13		# salq $3, %r(630)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(674)
	movq %rbx, %rbx		# movq %r(674), %r(675)
	movq %rbx, -112(%rbp)		# movq %r(675), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(676)
	addq %r13, %r12		# addq %r(630), %r(676)
	movq %r12, -112(%rbp)		# movq %r(676), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(677)
	movq (%rbx), %rbx		# movq (%r(677)), %r(678)
	movq %rbx, -136(%rbp)		# movq %r(678), -136(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(679)
	movq %r12, %r12		# movq %r(679), %r(680)
	movq %r12, -96(%rbp)		# movq %r(680), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(681)
	salq $3, %rbx		# salq $3, %r(681)
	movq %rbx, -96(%rbp)		# movq %r(681), -96(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(682)
	movq %r13, %r13		# movq %r(682), %r(634)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(683)
	addq %r12, %r13		# addq %r(683), %r(634)
	movq (%r13), %rbx		# movq (%r(634)), %r(635)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(684)
	cmpq %rbx, %r12		# cmpq %r(635), %r(684)
	je .L194		# je .L194
	.L195:		# .L195:
	movq $0, %r12		# movq $0, %r(636)
	movq %r12, %r12		# movq %r(636), %r(685)
	movq %r12, -8(%rbp)		# movq %r(685), -8(%rbp)
	.L194:		# .L194:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(686)
	movq %rbx, %rdi		# movq %r(686), %rdi
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(687)
	movq %rbx, %rsi		# movq %r(687), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(688)
	incq %rbx		# incq %r(688)
	movq %rbx, -80(%rbp)		# movq %r(688), -80(%rbp)
	jmp .L187		# jmp .L187
	.L189:		# .L189:
	.L183:		# .L183:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $144, %rsp
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
	leaq .L197(%rip), %rdi		# leaq .L197(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(488)
	movq %r13, %r13		# movq %r(488), %r(str)
	leaq .L198(%rip), %rdi		# leaq .L198(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(489)
	movq %rbx, %rbx		# movq %r(489), %r(sorted)
	movq %r13, %rdi		# movq %r(str), %rdi
	call _Isort_pai		# call _Isort_pai
	movq %r13, %rdi		# movq %r(str), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r13, %rdi		# movq %r(str), %rdi
	movq %rbx, %rsi		# movq %r(sorted), %rsi
	call _IassertSameArray_paiai		# call _IassertSameArray_paiai
	.L196:		# .L196:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(706)
	movq %rbx, -32(%rbp)		# movq %r(706), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(707)
	movq (%rbx), %r12		# movq (%r(707)), %r(691)
	movq %r12, %r12		# movq %r(691), %r(708)
	movq %r12, -24(%rbp)		# movq %r(708), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(709)
	movq %rbx, %rbx		# movq %r(709), %r(692)
	salq $3, %rbx		# salq $3, %r(692)
	movq $8, %r12		# movq $8, %r(693)
	movq %rbx, %rbx		# movq %r(692), %r(694)
	addq %r12, %rbx		# addq %r(693), %r(694)
	movq %rbx, %rdi		# movq %r(694), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(493)
	movq %r12, %r12		# movq %r(493), %r(710)
	movq %r12, -40(%rbp)		# movq %r(710), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(711)
	movq %r13, %r13		# movq %r(711), %r(695)
	salq $3, %r13		# salq $3, %r(695)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(712)
	movq %r12, %r12		# movq %r(712), %r(696)
	addq %r13, %r12		# addq %r(695), %r(696)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(713)
	movq %r13, %r13		# movq %r(713), %r(714)
	movq %r13, -16(%rbp)		# movq %r(714), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(715)
	salq $3, %rbx		# salq $3, %r(715)
	movq %rbx, -16(%rbp)		# movq %r(715), -16(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(716)
	movq %r13, %r13		# movq %r(716), %r(703)
	movq %r13, -8(%rbp)		# movq %r(703), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(704)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(717)
	addq %r13, %rbx		# addq %r(717), %r(704)
	movq %rbx, -8(%rbp)		# movq %r(704), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(705)
	movq (%rbx), %rbx		# movq (%r(705)), %r(699)
	movq %rbx, (%r12)		# movq %r(699), (%r(696))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(718)
	decq %rbx		# decq %r(718)
	movq %rbx, -24(%rbp)		# movq %r(718), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(700)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(719)
	cmpq %rbx, %r12		# cmpq %r(700), %r(719)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(701)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(720)
	movq %r13, %r13		# movq %r(720), %r(702)
	addq %rbx, %r13		# addq %r(701), %r(702)
	movq %r13, %rax		# movq %r(702), %rax
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
.L198:
	.quad 111
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 44
	.quad 45
	.quad 46
	.quad 65
	.quad 73
	.quad 84
	.quad 84
	.quad 91
	.quad 93
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 98
	.quad 99
	.quad 99
	.quad 100
	.quad 100
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 102
	.quad 102
	.quad 102
	.quad 102
	.quad 103
	.quad 103
	.quad 104
	.quad 104
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 108
	.quad 108
	.quad 108
	.quad 108
	.quad 109
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 111
	.quad 111
	.quad 112
	.quad 113
	.quad 114
	.quad 114
	.quad 114
	.quad 114
	.quad 114
	.quad 115
	.quad 115
	.quad 115
	.quad 115
	.quad 115
	.quad 116
	.quad 116
	.quad 116
	.quad 116
	.quad 116
	.quad 117
	.quad 117
	.quad 120
	.quad 121
	.quad 121
	.quad 121
	.text

.section .rodata
.align 8
.L182:
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
.L197:
	.quad 111
	.quad 65
	.quad 110
	.quad 32
	.quad 97
	.quad 114
	.quad 114
	.quad 97
	.quad 121
	.quad 32
	.quad 84
	.quad 91
	.quad 93
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 32
	.quad 102
	.quad 105
	.quad 120
	.quad 101
	.quad 100
	.quad 45
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
	.quad 32
	.quad 115
	.quad 101
	.quad 113
	.quad 117
	.quad 101
	.quad 110
	.quad 99
	.quad 101
	.quad 32
	.quad 111
	.quad 102
	.quad 32
	.quad 109
	.quad 117
	.quad 116
	.quad 97
	.quad 98
	.quad 108
	.quad 101
	.quad 32
	.quad 99
	.quad 101
	.quad 108
	.quad 108
	.quad 115
	.quad 32
	.quad 111
	.quad 102
	.quad 32
	.quad 116
	.quad 121
	.quad 112
	.quad 101
	.quad 32
	.quad 84
	.quad 32
	.quad 46
	.quad 32
	.quad 73
	.quad 102
	.quad 32
	.quad 97
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 110
	.quad 32
	.quad 97
	.quad 114
	.quad 114
	.quad 97
	.quad 121
	.quad 32
	.quad 97
	.quad 110
	.quad 100
	.quad 32
	.quad 105
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 110
	.quad 32
	.quad 105
	.quad 110
	.quad 116
	.quad 101
	.quad 103
	.quad 101
	.quad 114
	.quad 44
	.quad 32
	.quad 116
	.quad 104
	.quad 101
	.quad 110
	.text

.section .rodata
.align 8
.L184:
	.quad 6
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
	.text

error_outofbounds:
call _I_outOfBounds_p
