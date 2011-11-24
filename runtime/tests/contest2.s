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
	movq $64, %rbx		# movq $64, %r(545)
	movq %rbx, %rdi		# movq %r(545), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(536)
	movq (%r14), %rbx		# movq (%r(473)), %r(546)
	movq $7, %rbx		# movq $7, %r(546)
	addq $8, %r14		# addq $8, %r(547)
	movq %r14, %r13		# movq %r(472), %r(548)
	addq $0, %r13		# addq $0, %r(548)
	movq (%r13), %rbx		# movq (%r(548)), %r(549)
	movq $7, %rbx		# movq $7, %r(549)
	movq %r14, %r13		# movq %r(472), %r(550)
	addq $8, %r13		# addq $8, %r(550)
	movq (%r13), %rbx		# movq (%r(550)), %r(551)
	movq $7, %rbx		# movq $7, %r(551)
	movq %r14, %r13		# movq %r(472), %r(552)
	addq $16, %r13		# addq $16, %r(552)
	movq (%r13), %rbx		# movq (%r(552)), %r(553)
	movq $7, %rbx		# movq $7, %r(553)
	movq %r14, %r13		# movq %r(472), %r(554)
	addq $24, %r13		# addq $24, %r(554)
	movq (%r13), %rbx		# movq (%r(554)), %r(555)
	movq $7, %rbx		# movq $7, %r(555)
	movq %r14, %r13		# movq %r(472), %r(556)
	addq $32, %r13		# addq $32, %r(556)
	movq (%r13), %rbx		# movq (%r(556)), %r(557)
	movq $7, %rbx		# movq $7, %r(557)
	movq %r14, %r13		# movq %r(472), %r(558)
	addq $40, %r13		# addq $40, %r(558)
	movq (%r13), %rbx		# movq (%r(558)), %r(559)
	movq $7, %rbx		# movq $7, %r(559)
	movq %r14, %rbx		# movq %r(472), %r(560)
	addq $48, %rbx		# addq $48, %r(560)
	movq (%rbx), %rbx		# movq (%r(560)), %r(561)
	movq $7, %rbx		# movq $7, %r(561)
	movq %r14, %rdi		# movq %r(472), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(537)
	movq %rbx, %r15		# movq %r(537), %r(a)
	movq %r15, %r14		# movq %r(a), %r(474)
	movq $0, %r12		# movq $0, %r(475)
	movq %r14, %rbx		# movq %r(474), %r(562)
	subq $8, %rbx		# subq $8, %r(562)
	movq (%rbx), %rbx		# movq (%r(562)), %r(563)
	cmpq %rbx, %r12		# cmpq %r(563), %r(475)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(564)
	movq %r14, %rbx		# movq %r(474), %r(565)
	addq %r12, %rbx		# addq %r(564), %r(565)
	movq (%rbx), %rbx		# movq (%r(565)), %r(566)
	movq %rbx, %r14		# movq %r(566), %r(476)
	movq $1, %r12		# movq $1, %r(477)
	movq %r14, %rbx		# movq %r(476), %r(567)
	subq $8, %rbx		# subq $8, %r(567)
	movq (%rbx), %rbx		# movq (%r(567)), %r(568)
	cmpq %rbx, %r12		# cmpq %r(568), %r(477)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(569)
	movq %r14, %rbx		# movq %r(476), %r(570)
	addq %r12, %rbx		# addq %r(569), %r(570)
	movq (%rbx), %rbx		# movq (%r(570)), %r(571)
	movq %rbx, %r14		# movq %r(571), %r(478)
	movq $2, %r12		# movq $2, %r(479)
	movq %r14, %rbx		# movq %r(478), %r(572)
	subq $8, %rbx		# subq $8, %r(572)
	movq (%rbx), %rbx		# movq (%r(572)), %r(573)
	cmpq %rbx, %r12		# cmpq %r(573), %r(479)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(574)
	movq %r14, %rbx		# movq %r(478), %r(575)
	addq %r12, %rbx		# addq %r(574), %r(575)
	movq (%rbx), %rbx		# movq (%r(575)), %r(576)
	movq %rbx, %r14		# movq %r(576), %r(480)
	movq $3, %r12		# movq $3, %r(481)
	movq %r14, %rbx		# movq %r(480), %r(577)
	subq $8, %rbx		# subq $8, %r(577)
	movq (%rbx), %rbx		# movq (%r(577)), %r(578)
	cmpq %rbx, %r12		# cmpq %r(578), %r(481)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(579)
	movq %r14, %rbx		# movq %r(480), %r(580)
	addq %r12, %rbx		# addq %r(579), %r(580)
	movq (%rbx), %rbx		# movq (%r(580)), %r(581)
	movq %rbx, %r14		# movq %r(581), %r(482)
	movq $4, %r12		# movq $4, %r(483)
	movq %r14, %rbx		# movq %r(482), %r(582)
	subq $8, %rbx		# subq $8, %r(582)
	movq (%rbx), %rbx		# movq (%r(582)), %r(583)
	cmpq %rbx, %r12		# cmpq %r(583), %r(483)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(584)
	movq %r14, %rbx		# movq %r(482), %r(585)
	addq %r12, %rbx		# addq %r(584), %r(585)
	movq (%rbx), %rbx		# movq (%r(585)), %r(586)
	movq %rbx, %r14		# movq %r(586), %r(484)
	movq $5, %r12		# movq $5, %r(485)
	movq %r14, %rbx		# movq %r(484), %r(587)
	subq $8, %rbx		# subq $8, %r(587)
	movq (%rbx), %rbx		# movq (%r(587)), %r(588)
	cmpq %rbx, %r12		# cmpq %r(588), %r(485)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(589)
	movq %r14, %rbx		# movq %r(484), %r(590)
	addq %r12, %rbx		# addq %r(589), %r(590)
	movq (%rbx), %rbx		# movq (%r(590)), %r(591)
	movq %rbx, %r14		# movq %r(591), %r(486)
	movq $6, %r12		# movq $6, %r(487)
	movq %r14, %rbx		# movq %r(486), %r(592)
	subq $8, %rbx		# subq $8, %r(592)
	movq (%rbx), %rbx		# movq (%r(592)), %r(593)
	cmpq %rbx, %r12		# cmpq %r(593), %r(487)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(594)
	movq %r14, %rbx		# movq %r(486), %r(595)
	addq %r12, %rbx		# addq %r(594), %r(595)
	movq (%rbx), %rbx		# movq (%r(595)), %r(596)
	movq $7, %rbx		# movq $7, %r(596)
	movq %r15, %r14		# movq %r(a), %r(488)
	movq $0, %r12		# movq $0, %r(489)
	movq %r14, %rbx		# movq %r(488), %r(597)
	subq $8, %rbx		# subq $8, %r(597)
	movq (%rbx), %rbx		# movq (%r(597)), %r(598)
	cmpq %rbx, %r12		# cmpq %r(598), %r(489)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(599)
	movq %r14, %rbx		# movq %r(488), %r(600)
	addq %r12, %rbx		# addq %r(599), %r(600)
	movq (%rbx), %rbx		# movq (%r(600)), %r(601)
	movq %rbx, %r14		# movq %r(601), %r(490)
	movq $1, %r12		# movq $1, %r(491)
	movq %r14, %rbx		# movq %r(490), %r(602)
	subq $8, %rbx		# subq $8, %r(602)
	movq (%rbx), %rbx		# movq (%r(602)), %r(603)
	cmpq %rbx, %r12		# cmpq %r(603), %r(491)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(604)
	movq %r14, %rbx		# movq %r(490), %r(605)
	addq %r12, %rbx		# addq %r(604), %r(605)
	movq (%rbx), %rbx		# movq (%r(605)), %r(606)
	movq %rbx, %r14		# movq %r(606), %r(492)
	movq $2, %r12		# movq $2, %r(493)
	movq %r14, %rbx		# movq %r(492), %r(607)
	subq $8, %rbx		# subq $8, %r(607)
	movq (%rbx), %rbx		# movq (%r(607)), %r(608)
	cmpq %rbx, %r12		# cmpq %r(608), %r(493)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(609)
	movq %r14, %rbx		# movq %r(492), %r(610)
	addq %r12, %rbx		# addq %r(609), %r(610)
	movq (%rbx), %rbx		# movq (%r(610)), %r(611)
	movq %rbx, %r14		# movq %r(611), %r(494)
	movq $3, %r12		# movq $3, %r(495)
	movq %r14, %rbx		# movq %r(494), %r(612)
	subq $8, %rbx		# subq $8, %r(612)
	movq (%rbx), %rbx		# movq (%r(612)), %r(613)
	cmpq %rbx, %r12		# cmpq %r(613), %r(495)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(614)
	movq %r14, %rbx		# movq %r(494), %r(615)
	addq %r12, %rbx		# addq %r(614), %r(615)
	movq (%rbx), %rbx		# movq (%r(615)), %r(616)
	movq %rbx, %r14		# movq %r(616), %r(496)
	movq $4, %r12		# movq $4, %r(497)
	movq %r14, %rbx		# movq %r(496), %r(617)
	subq $8, %rbx		# subq $8, %r(617)
	movq (%rbx), %rbx		# movq (%r(617)), %r(618)
	cmpq %rbx, %r12		# cmpq %r(618), %r(497)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(619)
	movq %r14, %rbx		# movq %r(496), %r(620)
	addq %r12, %rbx		# addq %r(619), %r(620)
	movq (%rbx), %rbx		# movq (%r(620)), %r(621)
	movq %rbx, %r14		# movq %r(621), %r(498)
	movq $5, %r12		# movq $5, %r(499)
	movq %r14, %rbx		# movq %r(498), %r(622)
	subq $8, %rbx		# subq $8, %r(622)
	movq (%rbx), %rbx		# movq (%r(622)), %r(623)
	cmpq %rbx, %r12		# cmpq %r(623), %r(499)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(624)
	movq %r14, %rbx		# movq %r(498), %r(625)
	addq %r12, %rbx		# addq %r(624), %r(625)
	movq (%rbx), %rbx		# movq (%r(625)), %r(626)
	movq %rbx, %r14		# movq %r(626), %r(500)
	movq $6, %r12		# movq $6, %r(501)
	movq %r14, %rbx		# movq %r(500), %r(627)
	subq $8, %rbx		# subq $8, %r(627)
	movq (%rbx), %rbx		# movq (%r(627)), %r(628)
	cmpq %rbx, %r12		# cmpq %r(628), %r(501)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(629)
	movq %r14, %rbx		# movq %r(500), %r(630)
	addq %r12, %rbx		# addq %r(629), %r(630)
	movq (%rbx), %rbx		# movq (%r(630)), %r(631)
	movq %rbx, %rdi		# movq %r(631), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(538)
	movq %rbx, %rdi		# movq %r(538), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %rbx		# movq $1, %r(668)
	movq %rbx, -8(%rbp)		# movq %r(668), -8(%rbp)
	movq %r15, %r12		# movq %r(a), %r(502)
	movq $0, %r15		# movq $0, %r(503)
	movq %r12, %r13		# movq %r(502), %r(632)
	subq $8, %r13		# subq $8, %r(632)
	movq (%r13), %rbx		# movq (%r(632)), %r(633)
	cmpq %rbx, %r15		# cmpq %r(633), %r(503)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r15		# salq $3, %r(634)
	addq %r15, %r12		# addq %r(634), %r(635)
	movq (%r12), %r13		# movq (%r(635)), %r(636)
	movq $1, %rbx		# movq $1, %r(505)
	movq %r13, %r14		# movq %r(504), %r(637)
	subq $8, %r14		# subq $8, %r(637)
	movq (%r14), %r12		# movq (%r(637)), %r(638)
	cmpq %r12, %rbx		# cmpq %r(638), %r(505)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(639)
	addq %rbx, %r13		# addq %r(639), %r(640)
	movq (%r13), %r13		# movq (%r(640)), %r(641)
	movq $2, %rbx		# movq $2, %r(507)
	movq %r13, %r14		# movq %r(506), %r(642)
	subq $8, %r14		# subq $8, %r(642)
	movq (%r14), %r12		# movq (%r(642)), %r(643)
	cmpq %r12, %rbx		# cmpq %r(643), %r(507)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(644)
	addq %rbx, %r13		# addq %r(644), %r(645)
	movq (%r13), %r13		# movq (%r(645)), %r(646)
	movq $3, %rbx		# movq $3, %r(509)
	movq %r13, %r14		# movq %r(508), %r(647)
	subq $8, %r14		# subq $8, %r(647)
	movq (%r14), %r12		# movq (%r(647)), %r(648)
	cmpq %r12, %rbx		# cmpq %r(648), %r(509)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(649)
	addq %rbx, %r13		# addq %r(649), %r(650)
	movq (%r13), %r13		# movq (%r(650)), %r(651)
	movq $4, %rbx		# movq $4, %r(511)
	movq %r13, %r14		# movq %r(510), %r(652)
	subq $8, %r14		# subq $8, %r(652)
	movq (%r14), %r12		# movq (%r(652)), %r(653)
	cmpq %r12, %rbx		# cmpq %r(653), %r(511)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(654)
	addq %rbx, %r13		# addq %r(654), %r(655)
	movq (%r13), %r13		# movq (%r(655)), %r(656)
	movq $5, %rbx		# movq $5, %r(513)
	movq %r13, %r14		# movq %r(512), %r(657)
	subq $8, %r14		# subq $8, %r(657)
	movq (%r14), %r12		# movq (%r(657)), %r(658)
	cmpq %r12, %rbx		# cmpq %r(658), %r(513)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(659)
	addq %rbx, %r13		# addq %r(659), %r(660)
	movq (%r13), %r13		# movq (%r(660)), %r(661)
	movq $6, %rbx		# movq $6, %r(515)
	movq %r13, %r14		# movq %r(514), %r(662)
	subq $8, %r14		# subq $8, %r(662)
	movq (%r14), %r12		# movq (%r(662)), %r(663)
	cmpq %r12, %rbx		# cmpq %r(663), %r(515)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(664)
	addq %rbx, %r13		# addq %r(664), %r(665)
	movq (%r13), %rbx		# movq (%r(665)), %r(666)
	movq $7, %r12		# movq $7, %r(667)
	cmpq %r12, %rbx		# cmpq %r(667), %r(666)
	je .L159		# je .L159
	.L160:		# .L160:
	movq $0, %rbx		# movq $0, %r(669)
	movq %rbx, -8(%rbp)		# movq %r(669), -8(%rbp)
	.L159:		# .L159:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(670)
	movq %rbx, %rdi		# movq %r(670), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L115:		# .L115:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(700)
	movq %rbx, -40(%rbp)		# movq %r(700), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(701)
	subq $8, %r12		# subq $8, %r(671)
	movq (%r12), %r12		# movq (%r(671)), %r(672)
	movq %r12, -64(%rbp)		# movq %r(702), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(703)
	movq %rbx, -56(%rbp)		# movq %r(703), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(673)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(704)
	cmpq %rbx, %r12		# cmpq %r(673), %r(704)
	jne .L161		# jne .L161
	.L162:		# .L162:
	movq $0, %rax		# movq $0, %rax
	jmp .L163		# jmp .L163
	.L161:		# .L161:
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(705)
	salq $3, %r12		# salq $3, %r(674)
	movq %r12, %rdi		# movq %r(674), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(541)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(706)
	subq $1, %r13		# subq $1, %r(675)
	movq %r13, (%rbx)		# movq %r(675), (%r(521))
	addq $8, %rbx		# addq $8, %r(676)
	movq %rbx, -24(%rbp)		# movq %r(707), -24(%rbp)
	.L164:		# .L164:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(708)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(709)
	cmpq %r12, %rbx		# cmpq %r(709), %r(708)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(710)
	movq %r12, -72(%rbp)		# movq %r(711), -72(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(712)
	movq %r12, -88(%rbp)		# movq %r(713), -88(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(714)
	subq $8, %r12		# subq $8, %r(677)
	movq (%r12), %rbx		# movq (%r(677)), %r(678)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(715)
	cmpq %rbx, %r12		# cmpq %r(678), %r(715)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(716)
	movq %r12, -16(%rbp)		# movq %r(717), -16(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(718)
	subq $1, %rbx		# subq $1, %r(679)
	movq %rbx, -32(%rbp)		# movq %r(719), -32(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(720)
	subq $8, %r12		# subq $8, %r(680)
	movq (%r12), %rbx		# movq (%r(680)), %r(681)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(721)
	cmpq %rbx, %r12		# cmpq %r(681), %r(721)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(722)
	salq $3, %r13		# salq $3, %r(682)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(723)
	movq %rbx, -48(%rbp)		# movq %r(724), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(725)
	addq %r13, %r12		# addq %r(682), %r(725)
	movq %r12, -48(%rbp)		# movq %r(725), -48(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(726)
	movq %r12, -96(%rbp)		# movq %r(727), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(728)
	salq $3, %rbx		# salq $3, %r(728)
	movq %rbx, -96(%rbp)		# movq %r(728), -96(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(729)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(730)
	addq %r12, %r13		# addq %r(730), %r(685)
	movq (%r13), %rbx		# movq (%r(685)), %r(686)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(731)
	movq %rbx, (%r12)		# movq %r(686), (%r(731))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(732)
	incq %rbx		# incq %r(732)
	movq %rbx, -56(%rbp)		# movq %r(732), -56(%rbp)
	jmp .L164		# jmp .L164
	.L165:		# .L165:
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(733)
	movq $0, %rbx		# movq $0, %r(528)
	movq %r13, %r14		# movq %r(527), %r(687)
	subq $8, %r14		# subq $8, %r(687)
	movq (%r14), %r12		# movq (%r(687)), %r(688)
	cmpq %r12, %rbx		# cmpq %r(688), %r(528)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(689)
	addq %rbx, %r13		# addq %r(689), %r(690)
	movq (%r13), %r12		# movq (%r(690)), %r(691)
	movq %r12, -56(%rbp)		# movq %r(734), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(735)
	addq $1, %rbx		# addq $1, %r(692)
	salq $3, %rbx		# salq $3, %r(693)
	movq %rbx, %rdi		# movq %r(693), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(542)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(736)
	movq %r12, (%r14)		# movq %r(736), (%r(530))
	addq $8, %r14		# addq $8, %r(694)
	.L170:		# .L170:
	movq $0, %r12		# movq $0, %r(695)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(737)
	cmpq %r12, %r13		# cmpq %r(695), %r(737)
	jle .L171		# jle .L171
	.L172:		# .L172:
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(738)
	decq %r12		# decq %r(738)
	movq %r12, -56(%rbp)		# movq %r(738), -56(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(739)
	movq %r12, %rdi		# movq %r(739), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(543)
	movq %r12, -80(%rbp)		# movq %r(740), -80(%rbp)
	movq %r14, %rbx		# movq %r(list), %r(741)
	movq %rbx, -8(%rbp)		# movq %r(741), -8(%rbp)
	movq -56(%rbp), %r15		# movq -56(%rbp), %r(742)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(743)
	subq $8, %r12		# subq $8, %r(696)
	movq (%r12), %r13		# movq (%r(696)), %r(697)
	cmpq %r13, %r15		# cmpq %r(697), %r(535)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r15		# salq $3, %r(698)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(744)
	addq %r15, %rbx		# addq %r(698), %r(699)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(745)
	movq %r12, (%rbx)		# movq %r(745), (%r(699))
	jmp .L170		# jmp .L170
	.L171:		# .L171:
	movq %r14, %rax		# movq %r(list), %rax
	jmp .L163		# jmp .L163
	.L163:		# .L163:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
