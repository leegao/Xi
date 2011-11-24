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
	movq %rdi, %rbx		# movq %rdi, %r(555)
	movq %rbx, -136(%rbp)		# movq %r(555), -136(%rbp)
	movq $0, %r12		# movq $0, %r(510)
	movq %r12, -112(%rbp)		# movq %r(556), -112(%rbp)
	movq $8, %rbx		# movq $8, %r(511)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(557)
	subq %rbx, %r13		# subq %r(511), %r(512)
	movq (%r13), %r12		# movq (%r(512)), %r(513)
	movq %r12, -160(%rbp)		# movq %r(558), -160(%rbp)
	.L162:		# .L162:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(559)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(560)
	cmpq %r12, %rbx		# cmpq %r(560), %r(559)
	jge .L164		# jge .L164
	.L163:		# .L163:
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(561)
	movq %r12, -64(%rbp)		# movq %r(562), -64(%rbp)
	.L165:		# .L165:
	movq $0, %rbx		# movq $0, %r(514)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(563)
	cmpq %rbx, %r12		# cmpq %r(514), %r(563)
	jle .L167		# jle .L167
	.L166:		# .L166:
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(564)
	movq %r12, -152(%rbp)		# movq %r(565), -152(%rbp)
	movq $1, %rbx		# movq $1, %r(515)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(566)
	subq %rbx, %r12		# subq %r(515), %r(516)
	movq %r12, -24(%rbp)		# movq %r(567), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(517)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(568)
	subq %rbx, %r13		# subq %r(517), %r(518)
	movq (%r13), %rbx		# movq (%r(518)), %r(519)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(569)
	cmpq %rbx, %r12		# cmpq %r(519), %r(569)
	jae error_outofbounds		# jae error_outofbounds
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(570)
	movq %r12, -120(%rbp)		# movq %r(571), -120(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(572)
	movq %r12, -56(%rbp)		# movq %r(573), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(520)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(574)
	subq %rbx, %r13		# subq %r(520), %r(521)
	movq (%r13), %rbx		# movq (%r(521)), %r(522)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(575)
	cmpq %rbx, %r12		# cmpq %r(522), %r(575)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(576)
	salq $3, %r13		# salq $3, %r(523)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(577)
	addq %r13, %rbx		# addq %r(523), %r(524)
	movq (%rbx), %rbx		# movq (%r(524)), %r(578)
	movq %rbx, -32(%rbp)		# movq %r(578), -32(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(579)
	salq $3, %r13		# salq $3, %r(526)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(580)
	addq %r13, %rbx		# addq %r(526), %r(527)
	movq (%rbx), %rbx		# movq (%r(527)), %r(528)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(581)
	cmpq %rbx, %r12		# cmpq %r(528), %r(581)
	jle .L173		# jle .L173
	.L172:		# .L172:
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(582)
	movq %r12, -72(%rbp)		# movq %r(583), -72(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(584)
	movq $8, %r13		# movq $8, %r(529)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(585)
	movq %r14, -80(%rbp)		# movq %r(586), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(587)
	subq %r13, %r12		# subq %r(529), %r(587)
	movq %r12, -80(%rbp)		# movq %r(587), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(588)
	movq (%r12), %r12		# movq (%r(588)), %r(531)
	cmpq %r12, %rbx		# cmpq %r(531), %r(474)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(532)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(589)
	addq %rbx, %r13		# addq %r(532), %r(533)
	movq (%r13), %r12		# movq (%r(533)), %r(534)
	movq %r12, -48(%rbp)		# movq %r(590), -48(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(591)
	movq %r12, -16(%rbp)		# movq %r(592), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(535)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(593)
	subq %rbx, %r12		# subq %r(535), %r(536)
	movq %r12, -96(%rbp)		# movq %r(594), -96(%rbp)
	movq $8, %rbx		# movq $8, %r(537)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(595)
	subq %rbx, %r13		# subq %r(537), %r(538)
	movq (%r13), %rbx		# movq (%r(538)), %r(539)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(596)
	cmpq %rbx, %r12		# cmpq %r(539), %r(596)
	jae error_outofbounds		# jae error_outofbounds
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(597)
	movq %r12, -88(%rbp)		# movq %r(598), -88(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(599)
	movq %r12, -144(%rbp)		# movq %r(600), -144(%rbp)
	movq $8, %r12		# movq $8, %r(540)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(601)
	movq %r13, -128(%rbp)		# movq %r(602), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(603)
	subq %r12, %rbx		# subq %r(540), %r(603)
	movq %rbx, -128(%rbp)		# movq %r(603), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(604)
	movq (%rbx), %rbx		# movq (%r(604)), %r(542)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(605)
	cmpq %rbx, %r12		# cmpq %r(542), %r(605)
	jae error_outofbounds		# jae error_outofbounds
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(606)
	salq $3, %r13		# salq $3, %r(543)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(607)
	movq %rbx, -8(%rbp)		# movq %r(608), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(609)
	addq %r13, %r12		# addq %r(543), %r(609)
	movq %r12, -8(%rbp)		# movq %r(609), -8(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(610)
	salq $3, %r13		# salq $3, %r(545)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(611)
	addq %r13, %rbx		# addq %r(545), %r(546)
	movq (%rbx), %rbx		# movq (%r(546)), %r(547)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(612)
	movq %rbx, (%r12)		# movq %r(547), (%r(612))
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(613)
	movq %r12, -40(%rbp)		# movq %r(614), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(548)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(615)
	subq %rbx, %r14		# subq %r(548), %r(549)
	movq $8, %r13		# movq $8, %r(550)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(616)
	movq %r12, -104(%rbp)		# movq %r(617), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(618)
	subq %r13, %rbx		# subq %r(550), %r(618)
	movq %rbx, -104(%rbp)		# movq %r(618), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(619)
	movq (%rbx), %rbx		# movq (%r(619)), %r(552)
	cmpq %rbx, %r14		# cmpq %r(552), %r(480)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(553)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(620)
	addq %r14, %r13		# addq %r(553), %r(554)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(621)
	movq %r12, (%r13)		# movq %r(621), (%r(554))
	.L173:		# .L173:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(622)
	decq %rbx		# decq %r(622)
	movq %rbx, -64(%rbp)		# movq %r(622), -64(%rbp)
	jmp .L165		# jmp .L165
	.L167:		# .L167:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(623)
	incq %rbx		# incq %r(623)
	movq %rbx, -112(%rbp)		# movq %r(623), -112(%rbp)
	jmp .L162		# jmp .L162
	.L164:		# .L164:
	.L161:		# .L161:
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
	leaq .L183(%rip), %rdi		# leaq .L183(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(495)
	movq %r13, %rdi		# movq %r(495), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L182:		# .L182:
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
	movq %rdi, %rbx		# movq %rdi, %r(652)
	movq %rbx, -120(%rbp)		# movq %r(652), -120(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(653)
	movq %rbx, -136(%rbp)		# movq %r(653), -136(%rbp)
	leaq .L185(%rip), %rdi		# leaq .L185(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(654)
	movq %rbx, -104(%rbp)		# movq %r(654), -104(%rbp)
	movq $1, %r12		# movq $1, %r(626)
	movq %r12, -96(%rbp)		# movq %r(655), -96(%rbp)
	movq $8, %rbx		# movq $8, %r(627)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(656)
	subq %rbx, %r13		# subq %r(627), %r(628)
	movq (%r13), %r13		# movq (%r(628)), %r(629)
	movq $8, %r12		# movq $8, %r(630)
	movq -136(%rbp), %r14		# movq -136(%rbp), %r(657)
	movq %r14, -8(%rbp)		# movq %r(658), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(659)
	subq %r12, %rbx		# subq %r(630), %r(659)
	movq %rbx, -8(%rbp)		# movq %r(659), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(660)
	movq (%rbx), %rbx		# movq (%r(660)), %r(632)
	cmpq %rbx, %r13		# cmpq %r(632), %r(629)
	je .L186		# je .L186
	.L187:		# .L187:
	movq $0, %r12		# movq $0, %r(633)
	movq %r12, -96(%rbp)		# movq %r(661), -96(%rbp)
	.L186:		# .L186:
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(662)
	movq %rbx, %rdi		# movq %r(662), %rdi
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(663)
	movq %rbx, %rsi		# movq %r(663), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r12		# movq $0, %r(634)
	movq %r12, -48(%rbp)		# movq %r(664), -48(%rbp)
	.L188:		# .L188:
	movq $8, %rbx		# movq $8, %r(635)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(665)
	subq %rbx, %r13		# subq %r(635), %r(636)
	movq (%r13), %rbx		# movq (%r(636)), %r(637)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(666)
	cmpq %rbx, %r12		# cmpq %r(637), %r(666)
	jge .L190		# jge .L190
	.L189:		# .L189:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(667)
	movq %rbx, %rdi		# movq %r(667), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(668)
	movq %rbx, -88(%rbp)		# movq %r(668), -88(%rbp)
	movq $1, %r12		# movq $1, %r(638)
	movq %r12, -64(%rbp)		# movq %r(669), -64(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(670)
	movq %r12, -72(%rbp)		# movq %r(671), -72(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(672)
	movq %r12, -40(%rbp)		# movq %r(673), -40(%rbp)
	movq $8, %r12		# movq $8, %r(639)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(674)
	movq %r13, -16(%rbp)		# movq %r(675), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(676)
	subq %r12, %rbx		# subq %r(639), %r(676)
	movq %rbx, -16(%rbp)		# movq %r(676), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(677)
	movq (%rbx), %rbx		# movq (%r(677)), %r(641)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(678)
	cmpq %rbx, %r12		# cmpq %r(641), %r(678)
	jae error_outofbounds		# jae error_outofbounds
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(679)
	movq %r12, -80(%rbp)		# movq %r(680), -80(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(681)
	movq %r12, -32(%rbp)		# movq %r(682), -32(%rbp)
	movq $8, %r12		# movq $8, %r(642)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(683)
	movq %r13, -112(%rbp)		# movq %r(684), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(685)
	subq %r12, %rbx		# subq %r(642), %r(685)
	movq %rbx, -112(%rbp)		# movq %r(685), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(686)
	movq (%rbx), %rbx		# movq (%r(686)), %r(644)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(687)
	cmpq %rbx, %r12		# cmpq %r(644), %r(687)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(688)
	salq $3, %r13		# salq $3, %r(645)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(689)
	movq %rbx, -56(%rbp)		# movq %r(690), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(691)
	addq %r13, %r12		# addq %r(645), %r(691)
	movq %r12, -56(%rbp)		# movq %r(691), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(692)
	movq (%rbx), %rbx		# movq (%r(692)), %r(693)
	movq %rbx, -24(%rbp)		# movq %r(693), -24(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(694)
	movq %r12, -128(%rbp)		# movq %r(695), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(696)
	salq $3, %rbx		# salq $3, %r(696)
	movq %rbx, -128(%rbp)		# movq %r(696), -128(%rbp)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(697)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(698)
	addq %r12, %r13		# addq %r(698), %r(649)
	movq (%r13), %rbx		# movq (%r(649)), %r(650)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(699)
	cmpq %rbx, %r12		# cmpq %r(650), %r(699)
	je .L195		# je .L195
	.L196:		# .L196:
	movq $0, %r12		# movq $0, %r(651)
	movq %r12, -64(%rbp)		# movq %r(700), -64(%rbp)
	.L195:		# .L195:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(701)
	movq %rbx, %rdi		# movq %r(701), %rdi
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(702)
	movq %rbx, %rsi		# movq %r(702), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(703)
	incq %rbx		# incq %r(703)
	movq %rbx, -48(%rbp)		# movq %r(703), -48(%rbp)
	jmp .L188		# jmp .L188
	.L190:		# .L190:
	.L184:		# .L184:
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
	leaq .L198(%rip), %rdi		# leaq .L198(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(503)
	leaq .L199(%rip), %rdi		# leaq .L199(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(504)
	movq %r13, %rdi		# movq %r(str), %rdi
	call _Isort_pai		# call _Isort_pai
	movq %r13, %rdi		# movq %r(str), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r13, %rdi		# movq %r(str), %rdi
	movq %rbx, %rsi		# movq %r(sorted), %rsi
	call _IassertSameArray_paiai		# call _IassertSameArray_paiai
	.L197:		# .L197:
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
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %rbx		# movq (%r(p0)), %r(706)
	movq %rbx, %r14		# movq %r(706), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(707)
	salq $3, %rbx		# salq $3, %r(707)
	movq $8, %r12		# movq $8, %r(708)
	addq %r12, %rbx		# addq %r(708), %r(709)
	movq %rbx, %rdi		# movq %r(709), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(508)
	movq %r12, -24(%rbp)		# movq %r(721), -24(%rbp)
	.L16:		# .L16:
	movq %r14, %r12		# movq %r(t10), %r(710)
	salq $3, %r12		# salq $3, %r(710)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(722)
	movq %rbx, %r13		# movq %r(722), %r(711)
	addq %r12, %r13		# addq %r(710), %r(711)
	movq %r14, %rbx		# movq %r(t10), %r(723)
	movq %rbx, -16(%rbp)		# movq %r(723), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(724)
	salq $3, %rbx		# salq $3, %r(724)
	movq %rbx, -16(%rbp)		# movq %r(724), -16(%rbp)
	movq %r15, %rbx		# movq %r(p0), %r(718)
	movq %rbx, -8(%rbp)		# movq %r(718), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(719)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(725)
	addq %r12, %rbx		# addq %r(725), %r(719)
	movq %rbx, -8(%rbp)		# movq %r(719), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(720)
	movq (%rbx), %rbx		# movq (%r(720)), %r(714)
	movq %rbx, (%r13)		# movq %r(714), (%r(711))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(715)
	cmpq %rbx, %r14		# cmpq %r(715), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(716)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(726)
	addq %rbx, %r13		# addq %r(716), %r(717)
	movq %r13, %rax		# movq %r(717), %rax
	.L18:		# .L18:
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
.L185:
	.quad 6
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
	.text

#.section .rodata
.align 8
.L183:
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
.L198:
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

#.section .rodata
.align 8
.L199:
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

error_outofbounds:
call _I_outOfBounds_p
