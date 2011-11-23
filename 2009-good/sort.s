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
	movq %rdi, %rbx		# movq %rdi, %r(535)
	movq %rbx, -152(%rbp)		# movq %r(535), -152(%rbp)
	movq $0, %r12		# movq $0, %r(490)
	movq %r12, %r12		# movq %r(490), %r(536)
	movq %r12, -144(%rbp)		# movq %r(536), -144(%rbp)
	movq $8, %rbx		# movq $8, %r(491)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(537)
	movq %r13, %r13		# movq %r(537), %r(492)
	subq %rbx, %r13		# subq %r(491), %r(492)
	movq (%r13), %r12		# movq (%r(492)), %r(493)
	movq %r12, %r12		# movq %r(493), %r(538)
	movq %r12, -40(%rbp)		# movq %r(538), -40(%rbp)
	.L161:		# .L161:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(539)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(540)
	cmpq %rbx, %r12		# cmpq %r(539), %r(540)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(541)
	movq %r12, %r12		# movq %r(541), %r(542)
	movq %r12, -104(%rbp)		# movq %r(542), -104(%rbp)
	.L164:		# .L164:
	movq $0, %rbx		# movq $0, %r(494)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(543)
	cmpq %rbx, %r12		# cmpq %r(494), %r(543)
	jle .L166		# jle .L166
	.L165:		# .L165:
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(544)
	movq %r12, %r12		# movq %r(544), %r(545)
	movq %r12, -72(%rbp)		# movq %r(545), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(495)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(546)
	movq %r12, %r12		# movq %r(546), %r(496)
	subq %rbx, %r12		# subq %r(495), %r(496)
	movq %r12, %r12		# movq %r(496), %r(547)
	movq %r12, -160(%rbp)		# movq %r(547), -160(%rbp)
	movq $8, %rbx		# movq $8, %r(497)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(548)
	movq %r13, %r13		# movq %r(548), %r(498)
	subq %rbx, %r13		# subq %r(497), %r(498)
	movq (%r13), %rbx		# movq (%r(498)), %r(499)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(549)
	cmpq %rbx, %r12		# cmpq %r(499), %r(549)
	jae error_outofbounds		# jae error_outofbounds
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(550)
	movq %r12, %r12		# movq %r(550), %r(551)
	movq %r12, -48(%rbp)		# movq %r(551), -48(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(552)
	movq %r12, %r12		# movq %r(552), %r(553)
	movq %r12, -16(%rbp)		# movq %r(553), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(500)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(554)
	movq %r13, %r13		# movq %r(554), %r(501)
	subq %rbx, %r13		# subq %r(500), %r(501)
	movq (%r13), %rbx		# movq (%r(501)), %r(502)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(555)
	cmpq %rbx, %r12		# cmpq %r(502), %r(555)
	jae error_outofbounds		# jae error_outofbounds
	movq -160(%rbp), %r13		# movq -160(%rbp), %r(556)
	movq %r13, %r13		# movq %r(556), %r(503)
	salq $3, %r13		# salq $3, %r(503)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(557)
	movq %rbx, %rbx		# movq %r(557), %r(504)
	addq %r13, %rbx		# addq %r(503), %r(504)
	movq (%rbx), %rbx		# movq (%r(504)), %r(558)
	movq %rbx, -24(%rbp)		# movq %r(558), -24(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(559)
	movq %r13, %r13		# movq %r(559), %r(506)
	salq $3, %r13		# salq $3, %r(506)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(560)
	movq %rbx, %rbx		# movq %r(560), %r(507)
	addq %r13, %rbx		# addq %r(506), %r(507)
	movq (%rbx), %rbx		# movq (%r(507)), %r(508)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(561)
	cmpq %rbx, %r12		# cmpq %r(508), %r(561)
	jle .L172		# jle .L172
	.L171:		# .L171:
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(562)
	movq %r12, %r12		# movq %r(562), %r(563)
	movq %r12, -32(%rbp)		# movq %r(563), -32(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(564)
	movq %rbx, %rbx		# movq %r(564), %r(454)
	movq $8, %r13		# movq $8, %r(509)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(565)
	movq %r14, %r14		# movq %r(565), %r(566)
	movq %r14, -112(%rbp)		# movq %r(566), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(567)
	subq %r13, %r12		# subq %r(509), %r(567)
	movq %r12, -112(%rbp)		# movq %r(567), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(568)
	movq (%r12), %r12		# movq (%r(568)), %r(511)
	cmpq %r12, %rbx		# cmpq %r(511), %r(454)
	jae error_outofbounds		# jae error_outofbounds
	movq %rbx, %rbx		# movq %r(454), %r(512)
	salq $3, %rbx		# salq $3, %r(512)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(569)
	movq %r13, %r13		# movq %r(569), %r(513)
	addq %rbx, %r13		# addq %r(512), %r(513)
	movq (%r13), %r12		# movq (%r(513)), %r(514)
	movq %r12, %r12		# movq %r(514), %r(570)
	movq %r12, -80(%rbp)		# movq %r(570), -80(%rbp)
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(571)
	movq %r12, %r12		# movq %r(571), %r(572)
	movq %r12, -128(%rbp)		# movq %r(572), -128(%rbp)
	movq $1, %rbx		# movq $1, %r(515)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(573)
	movq %r12, %r12		# movq %r(573), %r(516)
	subq %rbx, %r12		# subq %r(515), %r(516)
	movq %r12, %r12		# movq %r(516), %r(574)
	movq %r12, -136(%rbp)		# movq %r(574), -136(%rbp)
	movq $8, %rbx		# movq $8, %r(517)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(575)
	movq %r13, %r13		# movq %r(575), %r(518)
	subq %rbx, %r13		# subq %r(517), %r(518)
	movq (%r13), %rbx		# movq (%r(518)), %r(519)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(576)
	cmpq %rbx, %r12		# cmpq %r(519), %r(576)
	jae error_outofbounds		# jae error_outofbounds
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(577)
	movq %r12, %r12		# movq %r(577), %r(578)
	movq %r12, -88(%rbp)		# movq %r(578), -88(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(579)
	movq %r12, %r12		# movq %r(579), %r(580)
	movq %r12, -64(%rbp)		# movq %r(580), -64(%rbp)
	movq $8, %r12		# movq $8, %r(520)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(581)
	movq %r13, %r13		# movq %r(581), %r(582)
	movq %r13, -8(%rbp)		# movq %r(582), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(583)
	subq %r12, %rbx		# subq %r(520), %r(583)
	movq %rbx, -8(%rbp)		# movq %r(583), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(584)
	movq (%rbx), %rbx		# movq (%r(584)), %r(522)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(585)
	cmpq %rbx, %r12		# cmpq %r(522), %r(585)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(586)
	movq %r13, %r13		# movq %r(586), %r(523)
	salq $3, %r13		# salq $3, %r(523)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(587)
	movq %rbx, %rbx		# movq %r(587), %r(588)
	movq %rbx, -96(%rbp)		# movq %r(588), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(589)
	addq %r13, %r12		# addq %r(523), %r(589)
	movq %r12, -96(%rbp)		# movq %r(589), -96(%rbp)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(590)
	movq %r13, %r13		# movq %r(590), %r(525)
	salq $3, %r13		# salq $3, %r(525)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(591)
	movq %rbx, %rbx		# movq %r(591), %r(526)
	addq %r13, %rbx		# addq %r(525), %r(526)
	movq (%rbx), %rbx		# movq (%r(526)), %r(527)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(592)
	movq %rbx, (%r12)		# movq %r(527), (%r(592))
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(593)
	movq %r12, %r12		# movq %r(593), %r(594)
	movq %r12, -56(%rbp)		# movq %r(594), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(528)
	movq -104(%rbp), %r14		# movq -104(%rbp), %r(595)
	movq %r14, %r14		# movq %r(595), %r(529)
	subq %rbx, %r14		# subq %r(528), %r(529)
	movq %r14, %r14		# movq %r(529), %r(460)
	movq $8, %r13		# movq $8, %r(530)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(596)
	movq %r12, %r12		# movq %r(596), %r(597)
	movq %r12, -120(%rbp)		# movq %r(597), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(598)
	subq %r13, %rbx		# subq %r(530), %r(598)
	movq %rbx, -120(%rbp)		# movq %r(598), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(599)
	movq (%rbx), %rbx		# movq (%r(599)), %r(532)
	cmpq %rbx, %r14		# cmpq %r(532), %r(460)
	jae error_outofbounds		# jae error_outofbounds
	movq %r14, %r14		# movq %r(460), %r(533)
	salq $3, %r14		# salq $3, %r(533)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(600)
	movq %r13, %r13		# movq %r(600), %r(534)
	addq %r14, %r13		# addq %r(533), %r(534)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(601)
	movq %r12, (%r13)		# movq %r(601), (%r(534))
	.L172:		# .L172:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(602)
	decq %rbx		# decq %r(602)
	movq %rbx, -104(%rbp)		# movq %r(602), -104(%rbp)
	jmp .L164		# jmp .L164
	.L166:		# .L166:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(603)
	incq %rbx		# incq %r(603)
	movq %rbx, -144(%rbp)		# movq %r(603), -144(%rbp)
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
	movq %rax, %r13		# movq %rax, %r(475)
	movq %r13, %rdi		# movq %r(475), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(632)
	movq %rbx, -56(%rbp)		# movq %r(632), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(633)
	movq %rbx, -104(%rbp)		# movq %r(633), -104(%rbp)
	leaq .L184(%rip), %rdi		# leaq .L184(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(634)
	movq %rbx, -32(%rbp)		# movq %r(634), -32(%rbp)
	movq $1, %r12		# movq $1, %r(606)
	movq %r12, %r12		# movq %r(606), %r(635)
	movq %r12, -48(%rbp)		# movq %r(635), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(607)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(636)
	movq %r13, %r13		# movq %r(636), %r(608)
	subq %rbx, %r13		# subq %r(607), %r(608)
	movq (%r13), %r13		# movq (%r(608)), %r(609)
	movq $8, %r12		# movq $8, %r(610)
	movq -104(%rbp), %r14		# movq -104(%rbp), %r(637)
	movq %r14, %r14		# movq %r(637), %r(638)
	movq %r14, -64(%rbp)		# movq %r(638), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(639)
	subq %r12, %rbx		# subq %r(610), %r(639)
	movq %rbx, -64(%rbp)		# movq %r(639), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(640)
	movq (%rbx), %rbx		# movq (%r(640)), %r(612)
	cmpq %rbx, %r13		# cmpq %r(612), %r(609)
	je .L185		# je .L185
	.L186:		# .L186:
	movq $0, %r12		# movq $0, %r(613)
	movq %r12, %r12		# movq %r(613), %r(641)
	movq %r12, -48(%rbp)		# movq %r(641), -48(%rbp)
	.L185:		# .L185:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(642)
	movq %rbx, %rdi		# movq %r(642), %rdi
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(643)
	movq %rbx, %rsi		# movq %r(643), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r12		# movq $0, %r(614)
	movq %r12, %r12		# movq %r(614), %r(644)
	movq %r12, -80(%rbp)		# movq %r(644), -80(%rbp)
	.L187:		# .L187:
	movq $8, %rbx		# movq $8, %r(615)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(645)
	movq %r13, %r13		# movq %r(645), %r(616)
	subq %rbx, %r13		# subq %r(615), %r(616)
	movq (%r13), %rbx		# movq (%r(616)), %r(617)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(646)
	cmpq %rbx, %r12		# cmpq %r(617), %r(646)
	jge .L189		# jge .L189
	.L188:		# .L188:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(647)
	movq %rbx, %rdi		# movq %r(647), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(648)
	movq %rbx, -88(%rbp)		# movq %r(648), -88(%rbp)
	movq $1, %r12		# movq $1, %r(618)
	movq %r12, %r12		# movq %r(618), %r(649)
	movq %r12, -72(%rbp)		# movq %r(649), -72(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(650)
	movq %r12, %r12		# movq %r(650), %r(651)
	movq %r12, -128(%rbp)		# movq %r(651), -128(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(652)
	movq %r12, %r12		# movq %r(652), %r(653)
	movq %r12, -8(%rbp)		# movq %r(653), -8(%rbp)
	movq $8, %r12		# movq $8, %r(619)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(654)
	movq %r13, %r13		# movq %r(654), %r(655)
	movq %r13, -136(%rbp)		# movq %r(655), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(656)
	subq %r12, %rbx		# subq %r(619), %r(656)
	movq %rbx, -136(%rbp)		# movq %r(656), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(657)
	movq (%rbx), %rbx		# movq (%r(657)), %r(621)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(658)
	cmpq %rbx, %r12		# cmpq %r(621), %r(658)
	jae error_outofbounds		# jae error_outofbounds
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(659)
	movq %r12, %r12		# movq %r(659), %r(660)
	movq %r12, -96(%rbp)		# movq %r(660), -96(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(661)
	movq %r12, %r12		# movq %r(661), %r(662)
	movq %r12, -24(%rbp)		# movq %r(662), -24(%rbp)
	movq $8, %r12		# movq $8, %r(622)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(663)
	movq %r13, %r13		# movq %r(663), %r(664)
	movq %r13, -16(%rbp)		# movq %r(664), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(665)
	subq %r12, %rbx		# subq %r(622), %r(665)
	movq %rbx, -16(%rbp)		# movq %r(665), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(666)
	movq (%rbx), %rbx		# movq (%r(666)), %r(624)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(667)
	cmpq %rbx, %r12		# cmpq %r(624), %r(667)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(668)
	movq %r13, %r13		# movq %r(668), %r(625)
	salq $3, %r13		# salq $3, %r(625)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(669)
	movq %rbx, %rbx		# movq %r(669), %r(670)
	movq %rbx, -112(%rbp)		# movq %r(670), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(671)
	addq %r13, %r12		# addq %r(625), %r(671)
	movq %r12, -112(%rbp)		# movq %r(671), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(672)
	movq (%rbx), %rbx		# movq (%r(672)), %r(673)
	movq %rbx, -120(%rbp)		# movq %r(673), -120(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(674)
	movq %r12, %r12		# movq %r(674), %r(675)
	movq %r12, -40(%rbp)		# movq %r(675), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(676)
	salq $3, %rbx		# salq $3, %r(676)
	movq %rbx, -40(%rbp)		# movq %r(676), -40(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(677)
	movq %r13, %r13		# movq %r(677), %r(629)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(678)
	addq %r12, %r13		# addq %r(678), %r(629)
	movq (%r13), %rbx		# movq (%r(629)), %r(630)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(679)
	cmpq %rbx, %r12		# cmpq %r(630), %r(679)
	je .L194		# je .L194
	.L195:		# .L195:
	movq $0, %r12		# movq $0, %r(631)
	movq %r12, %r12		# movq %r(631), %r(680)
	movq %r12, -72(%rbp)		# movq %r(680), -72(%rbp)
	.L194:		# .L194:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(681)
	movq %rbx, %rdi		# movq %r(681), %rdi
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(682)
	movq %rbx, %rsi		# movq %r(682), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(683)
	incq %rbx		# incq %r(683)
	movq %rbx, -80(%rbp)		# movq %r(683), -80(%rbp)
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
	movq %rax, %r13		# movq %rax, %r(483)
	movq %r13, %r13		# movq %r(483), %r(str)
	leaq .L198(%rip), %rdi		# leaq .L198(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(484)
	movq %rbx, %rbx		# movq %r(484), %r(sorted)
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(698)
	movq %rbx, -16(%rbp)		# movq %r(698), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(699)
	movq (%rbx), %r12		# movq (%r(699)), %r(686)
	movq %r12, %r12		# movq %r(686), %r(700)
	movq %r12, -8(%rbp)		# movq %r(700), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(701)
	movq %rbx, %rbx		# movq %r(701), %r(687)
	salq $3, %rbx		# salq $3, %r(687)
	movq $8, %r12		# movq $8, %r(688)
	movq %rbx, %rbx		# movq %r(687), %r(689)
	addq %r12, %rbx		# addq %r(688), %r(689)
	movq %rbx, %rdi		# movq %r(689), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(488)
	movq %rbx, %r14		# movq %r(488), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(702)
	movq %r12, %r12		# movq %r(702), %r(690)
	salq $3, %r12		# salq $3, %r(690)
	movq %r14, %r13		# movq %r(t27), %r(691)
	addq %r12, %r13		# addq %r(690), %r(691)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(703)
	movq %rbx, %r12		# movq %r(703), %r(692)
	salq $3, %r12		# salq $3, %r(692)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(704)
	movq %rbx, %rbx		# movq %r(704), %r(705)
	movq %rbx, -24(%rbp)		# movq %r(705), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(706)
	addq %r12, %rbx		# addq %r(692), %r(706)
	movq %rbx, -24(%rbp)		# movq %r(706), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(707)
	movq (%rbx), %rbx		# movq (%r(707)), %r(694)
	movq %rbx, (%r13)		# movq %r(694), (%r(691))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(708)
	decq %rbx		# decq %r(708)
	movq %rbx, -8(%rbp)		# movq %r(708), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(695)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(709)
	cmpq %rbx, %r12		# cmpq %r(695), %r(709)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(696)
	movq %r14, %r12		# movq %r(t27), %r(697)
	addq %rbx, %r12		# addq %r(696), %r(697)
	movq %r12, %rax		# movq %r(697), %rax
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
.L184:
	.quad 6
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
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

error_outofbounds:
call _I_outOfBounds_p
