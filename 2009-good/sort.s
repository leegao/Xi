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
	movq %rdi, %rbx		# movq %rdi, %r(511)
	movq %rbx, -120(%rbp)		# movq %r(511), -120(%rbp)
	movq $0, %r12		# movq $0, %r(466)
	movq %r12, -24(%rbp)		# movq %r(512), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(467)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(513)
	subq %rbx, %r13		# subq %r(467), %r(468)
	movq (%r13), %r12		# movq (%r(468)), %r(469)
	movq %r12, -136(%rbp)		# movq %r(514), -136(%rbp)
	.L161:		# .L161:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(515)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(516)
	cmpq %r12, %rbx		# cmpq %r(516), %r(515)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(517)
	movq %r12, -144(%rbp)		# movq %r(518), -144(%rbp)
	.L164:		# .L164:
	movq $0, %rbx		# movq $0, %r(470)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(519)
	cmpq %rbx, %r12		# cmpq %r(470), %r(519)
	jle .L166		# jle .L166
	.L165:		# .L165:
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(520)
	movq %r12, -64(%rbp)		# movq %r(521), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(471)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(522)
	subq %rbx, %r12		# subq %r(471), %r(472)
	movq %r12, -88(%rbp)		# movq %r(523), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(473)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(524)
	subq %rbx, %r13		# subq %r(473), %r(474)
	movq (%r13), %rbx		# movq (%r(474)), %r(475)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(525)
	cmpq %rbx, %r12		# cmpq %r(475), %r(525)
	jae error_outofbounds		# jae error_outofbounds
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(526)
	movq %r12, -48(%rbp)		# movq %r(527), -48(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(528)
	movq %r12, -16(%rbp)		# movq %r(529), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(476)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(530)
	subq %rbx, %r13		# subq %r(476), %r(477)
	movq (%r13), %rbx		# movq (%r(477)), %r(478)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(531)
	cmpq %rbx, %r12		# cmpq %r(478), %r(531)
	jae error_outofbounds		# jae error_outofbounds
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(532)
	salq $3, %r13		# salq $3, %r(479)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(533)
	addq %r13, %rbx		# addq %r(479), %r(480)
	movq (%rbx), %rbx		# movq (%r(480)), %r(534)
	movq %rbx, -128(%rbp)		# movq %r(534), -128(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(535)
	salq $3, %r13		# salq $3, %r(482)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(536)
	addq %r13, %rbx		# addq %r(482), %r(483)
	movq (%rbx), %rbx		# movq (%r(483)), %r(484)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(537)
	cmpq %rbx, %r12		# cmpq %r(484), %r(537)
	jle .L172		# jle .L172
	.L171:		# .L171:
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(538)
	movq %r12, -152(%rbp)		# movq %r(539), -152(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(540)
	movq $8, %r13		# movq $8, %r(485)
	movq -152(%rbp), %r14		# movq -152(%rbp), %r(541)
	movq %r14, -8(%rbp)		# movq %r(542), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(543)
	subq %r13, %r12		# subq %r(485), %r(543)
	movq %r12, -8(%rbp)		# movq %r(543), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(544)
	movq (%r12), %r12		# movq (%r(544)), %r(487)
	cmpq %r12, %rbx		# cmpq %r(487), %r(430)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(488)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(545)
	addq %rbx, %r13		# addq %r(488), %r(489)
	movq (%r13), %r12		# movq (%r(489)), %r(490)
	movq %r12, -104(%rbp)		# movq %r(546), -104(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(547)
	movq %r12, -112(%rbp)		# movq %r(548), -112(%rbp)
	movq $1, %rbx		# movq $1, %r(491)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(549)
	subq %rbx, %r12		# subq %r(491), %r(492)
	movq %r12, -96(%rbp)		# movq %r(550), -96(%rbp)
	movq $8, %rbx		# movq $8, %r(493)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(551)
	subq %rbx, %r13		# subq %r(493), %r(494)
	movq (%r13), %rbx		# movq (%r(494)), %r(495)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(552)
	cmpq %rbx, %r12		# cmpq %r(495), %r(552)
	jae error_outofbounds		# jae error_outofbounds
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(553)
	movq %r12, -80(%rbp)		# movq %r(554), -80(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(555)
	movq %r12, -72(%rbp)		# movq %r(556), -72(%rbp)
	movq $8, %r12		# movq $8, %r(496)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(557)
	movq %r13, -56(%rbp)		# movq %r(558), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(559)
	subq %r12, %rbx		# subq %r(496), %r(559)
	movq %rbx, -56(%rbp)		# movq %r(559), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(560)
	movq (%rbx), %rbx		# movq (%r(560)), %r(498)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(561)
	cmpq %rbx, %r12		# cmpq %r(498), %r(561)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(562)
	salq $3, %r13		# salq $3, %r(499)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(563)
	movq %rbx, -32(%rbp)		# movq %r(564), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(565)
	addq %r13, %r12		# addq %r(499), %r(565)
	movq %r12, -32(%rbp)		# movq %r(565), -32(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(566)
	salq $3, %r13		# salq $3, %r(501)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(567)
	addq %r13, %rbx		# addq %r(501), %r(502)
	movq (%rbx), %rbx		# movq (%r(502)), %r(503)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(568)
	movq %rbx, (%r12)		# movq %r(503), (%r(568))
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(569)
	movq %r12, -40(%rbp)		# movq %r(570), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(504)
	movq -144(%rbp), %r14		# movq -144(%rbp), %r(571)
	subq %rbx, %r14		# subq %r(504), %r(505)
	movq $8, %r13		# movq $8, %r(506)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(572)
	movq %r12, -160(%rbp)		# movq %r(573), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(574)
	subq %r13, %rbx		# subq %r(506), %r(574)
	movq %rbx, -160(%rbp)		# movq %r(574), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(575)
	movq (%rbx), %rbx		# movq (%r(575)), %r(508)
	cmpq %rbx, %r14		# cmpq %r(508), %r(436)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(509)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(576)
	addq %r14, %r13		# addq %r(509), %r(510)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(577)
	movq %r12, (%r13)		# movq %r(577), (%r(510))
	.L172:		# .L172:
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(578)
	decq %rbx		# decq %r(578)
	movq %rbx, -144(%rbp)		# movq %r(578), -144(%rbp)
	jmp .L164		# jmp .L164
	.L166:		# .L166:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(579)
	incq %rbx		# incq %r(579)
	movq %rbx, -24(%rbp)		# movq %r(579), -24(%rbp)
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
	movq %rax, %r13		# movq %rax, %r(451)
	movq %r13, %rdi		# movq %r(451), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(608)
	movq %rbx, -8(%rbp)		# movq %r(608), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(609)
	movq %rbx, -16(%rbp)		# movq %r(609), -16(%rbp)
	leaq .L184(%rip), %rdi		# leaq .L184(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(610)
	movq %rbx, -128(%rbp)		# movq %r(610), -128(%rbp)
	movq $1, %r12		# movq $1, %r(582)
	movq %r12, -104(%rbp)		# movq %r(611), -104(%rbp)
	movq $8, %rbx		# movq $8, %r(583)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(612)
	subq %rbx, %r13		# subq %r(583), %r(584)
	movq (%r13), %r13		# movq (%r(584)), %r(585)
	movq $8, %r12		# movq $8, %r(586)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(613)
	movq %r14, -88(%rbp)		# movq %r(614), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(615)
	subq %r12, %rbx		# subq %r(586), %r(615)
	movq %rbx, -88(%rbp)		# movq %r(615), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(616)
	movq (%rbx), %rbx		# movq (%r(616)), %r(588)
	cmpq %rbx, %r13		# cmpq %r(588), %r(585)
	je .L185		# je .L185
	.L186:		# .L186:
	movq $0, %r12		# movq $0, %r(589)
	movq %r12, -104(%rbp)		# movq %r(617), -104(%rbp)
	.L185:		# .L185:
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(618)
	movq %rbx, %rdi		# movq %r(618), %rdi
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(619)
	movq %rbx, %rsi		# movq %r(619), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r12		# movq $0, %r(590)
	movq %r12, -32(%rbp)		# movq %r(620), -32(%rbp)
	.L187:		# .L187:
	movq $8, %rbx		# movq $8, %r(591)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(621)
	subq %rbx, %r13		# subq %r(591), %r(592)
	movq (%r13), %rbx		# movq (%r(592)), %r(593)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(622)
	cmpq %rbx, %r12		# cmpq %r(593), %r(622)
	jge .L189		# jge .L189
	.L188:		# .L188:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(623)
	movq %rbx, %rdi		# movq %r(623), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(624)
	movq %rbx, -112(%rbp)		# movq %r(624), -112(%rbp)
	movq $1, %r12		# movq $1, %r(594)
	movq %r12, -136(%rbp)		# movq %r(625), -136(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(626)
	movq %r12, -72(%rbp)		# movq %r(627), -72(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(628)
	movq %r12, -80(%rbp)		# movq %r(629), -80(%rbp)
	movq $8, %r12		# movq $8, %r(595)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(630)
	movq %r13, -64(%rbp)		# movq %r(631), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(632)
	subq %r12, %rbx		# subq %r(595), %r(632)
	movq %rbx, -64(%rbp)		# movq %r(632), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(633)
	movq (%rbx), %rbx		# movq (%r(633)), %r(597)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(634)
	cmpq %rbx, %r12		# cmpq %r(597), %r(634)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(635)
	movq %r12, -120(%rbp)		# movq %r(636), -120(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(637)
	movq %r12, -40(%rbp)		# movq %r(638), -40(%rbp)
	movq $8, %r12		# movq $8, %r(598)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(639)
	movq %r13, -56(%rbp)		# movq %r(640), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(641)
	subq %r12, %rbx		# subq %r(598), %r(641)
	movq %rbx, -56(%rbp)		# movq %r(641), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(642)
	movq (%rbx), %rbx		# movq (%r(642)), %r(600)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(643)
	cmpq %rbx, %r12		# cmpq %r(600), %r(643)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(644)
	salq $3, %r13		# salq $3, %r(601)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(645)
	movq %rbx, -96(%rbp)		# movq %r(646), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(647)
	addq %r13, %r12		# addq %r(601), %r(647)
	movq %r12, -96(%rbp)		# movq %r(647), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(648)
	movq (%rbx), %rbx		# movq (%r(648)), %r(649)
	movq %rbx, -48(%rbp)		# movq %r(649), -48(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(650)
	movq %r12, -24(%rbp)		# movq %r(651), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(652)
	salq $3, %rbx		# salq $3, %r(652)
	movq %rbx, -24(%rbp)		# movq %r(652), -24(%rbp)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(653)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(654)
	addq %r12, %r13		# addq %r(654), %r(605)
	movq (%r13), %rbx		# movq (%r(605)), %r(606)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(655)
	cmpq %rbx, %r12		# cmpq %r(606), %r(655)
	je .L194		# je .L194
	.L195:		# .L195:
	movq $0, %r12		# movq $0, %r(607)
	movq %r12, -136(%rbp)		# movq %r(656), -136(%rbp)
	.L194:		# .L194:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(657)
	movq %rbx, %rdi		# movq %r(657), %rdi
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(658)
	movq %rbx, %rsi		# movq %r(658), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(659)
	incq %rbx		# incq %r(659)
	movq %rbx, -32(%rbp)		# movq %r(659), -32(%rbp)
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
	movq %rax, %r13		# movq %rax, %r(459)
	leaq .L198(%rip), %rdi		# leaq .L198(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(460)
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
	movq %rdi, %rbx		# movq %rdi, %r(674)
	movq %rbx, -8(%rbp)		# movq %r(674), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(675)
	movq (%rbx), %rbx		# movq (%r(675)), %r(662)
	movq %rbx, %r14		# movq %r(662), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(663)
	salq $3, %rbx		# salq $3, %r(663)
	movq $8, %r12		# movq $8, %r(664)
	addq %r12, %rbx		# addq %r(664), %r(665)
	movq %rbx, %rdi		# movq %r(665), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(464)
	movq %rbx, %r13		# movq %r(464), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(666)
	salq $3, %rbx		# salq $3, %r(666)
	movq %r13, %r12		# movq %r(t27), %r(667)
	addq %rbx, %r12		# addq %r(666), %r(667)
	movq %r14, %r15		# movq %r(t10), %r(668)
	salq $3, %r15		# salq $3, %r(668)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(676)
	movq %rbx, -16(%rbp)		# movq %r(677), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(678)
	addq %r15, %rbx		# addq %r(668), %r(678)
	movq %rbx, -16(%rbp)		# movq %r(678), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(679)
	movq (%rbx), %rbx		# movq (%r(679)), %r(670)
	movq %rbx, (%r12)		# movq %r(670), (%r(667))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(671)
	cmpq %rbx, %r14		# cmpq %r(671), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(672)
	movq %r13, %r12		# movq %r(t27), %r(673)
	addq %rbx, %r12		# addq %r(672), %r(673)
	movq %r12, %rax		# movq %r(673), %rax
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

#.section .rodata
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

#.section .rodata
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

#.section .rodata
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
