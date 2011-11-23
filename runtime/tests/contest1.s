.att_syntax prefix
.text
.globl _IIam____t2baiibbiiiai
_IIam____t2baiibbiiiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $480, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(433)
	movq %rbx, -208(%rbp)		# movq %r(433), -208(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(434)
	movq %rbx, -328(%rbp)		# movq %r(434), -328(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(435)
	movq %rbx, -320(%rbp)		# movq %r(435), -320(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(436)
	movq %rbx, -96(%rbp)		# movq %r(436), -96(%rbp)
	movq %r8, %rbx		# movq %r8, %r(437)
	movq %rbx, -40(%rbp)		# movq %r(437), -40(%rbp)
	movq %r9, %rbx		# movq %r9, %r(438)
	movq %rbx, -240(%rbp)		# movq %r(438), -240(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(439)
	movq %rbx, -280(%rbp)		# movq %r(439), -280(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(440)
	movq %rbx, -184(%rbp)		# movq %r(440), -184(%rbp)
	movq $24, %rbx		# movq $24, %r(441)
	movq %rbx, -80(%rbp)		# movq %r(441), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(442)
	movq %rbx, %rdi		# movq %r(442), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(443)
	movq %rbx, -104(%rbp)		# movq %r(443), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(444)
	movq %r12, -448(%rbp)		# movq %r(445), -448(%rbp)
	movq $2, %rbx		# movq $2, %r(446)
	movq %rbx, -248(%rbp)		# movq %r(446), -248(%rbp)
	movq -448(%rbp), %rbx		# movq -448(%rbp), %r(447)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(448)
	movq %r12, (%rbx)		# movq %r(448), (%r(447))
	movq $8, %rbx		# movq $8, %r(449)
	movq %rbx, -72(%rbp)		# movq %r(449), -72(%rbp)
	movq -448(%rbp), %r12		# movq -448(%rbp), %r(450)
	movq %r12, -144(%rbp)		# movq %r(451), -144(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(452)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(453)
	addq %rbx, %r12		# addq %r(452), %r(453)
	movq %r12, -144(%rbp)		# movq %r(453), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(454)
	movq %r12, -400(%rbp)		# movq %r(455), -400(%rbp)
	movq $24, %rbx		# movq $24, %r(456)
	movq %rbx, -128(%rbp)		# movq %r(456), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(457)
	movq %rbx, %rdi		# movq %r(457), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(458)
	movq %rbx, -152(%rbp)		# movq %r(458), -152(%rbp)
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(459)
	movq %r12, -344(%rbp)		# movq %r(460), -344(%rbp)
	movq $2, %rbx		# movq $2, %r(461)
	movq %rbx, -16(%rbp)		# movq %r(461), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(462)
	movq -344(%rbp), %r12		# movq -344(%rbp), %r(463)
	movq %rbx, (%r12)		# movq %r(462), (%r(463))
	movq $8, %rbx		# movq $8, %r(464)
	movq %rbx, -256(%rbp)		# movq %r(464), -256(%rbp)
	movq -344(%rbp), %r12		# movq -344(%rbp), %r(465)
	movq %r12, -48(%rbp)		# movq %r(466), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(467)
	movq -256(%rbp), %r12		# movq -256(%rbp), %r(468)
	addq %r12, %rbx		# addq %r(468), %r(467)
	movq %rbx, -48(%rbp)		# movq %r(467), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(469)
	movq %r12, -376(%rbp)		# movq %r(470), -376(%rbp)
	movq $0, %rbx		# movq $0, %r(471)
	movq %rbx, -384(%rbp)		# movq %r(471), -384(%rbp)
	movq -376(%rbp), %r12		# movq -376(%rbp), %r(472)
	movq %r12, -216(%rbp)		# movq %r(473), -216(%rbp)
	movq -384(%rbp), %rbx		# movq -384(%rbp), %r(474)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(475)
	addq %rbx, %r12		# addq %r(474), %r(475)
	movq %r12, -216(%rbp)		# movq %r(475), -216(%rbp)
	movq $1, %rbx		# movq $1, %r(476)
	movq %rbx, -200(%rbp)		# movq %r(476), -200(%rbp)
	movq -320(%rbp), %r13		# movq -320(%rbp), %r(477)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(478)
	xorq %r12, %r13		# xorq %r(478), %r(312)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(479)
	movq %r13, (%r12)		# movq %r(312), (%r(479))
	movq $1, %r13		# movq $1, %r(313)
	movq -328(%rbp), %rbx		# movq -328(%rbp), %r(480)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(481)
	cmpq %r12, %rbx		# cmpq %r(481), %r(480)
	jl .L63		# jl .L63
	.L64:		# .L64:
	movq $0, %r13		# movq $0, %r(314)
	.L63:		# .L63:
	movq $8, %rbx		# movq $8, %r(482)
	movq %rbx, -264(%rbp)		# movq %r(482), -264(%rbp)
	movq -376(%rbp), %r12		# movq -376(%rbp), %r(483)
	movq %r12, -416(%rbp)		# movq %r(484), -416(%rbp)
	movq -416(%rbp), %rbx		# movq -416(%rbp), %r(485)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(486)
	addq %r12, %rbx		# addq %r(486), %r(485)
	movq %rbx, -416(%rbp)		# movq %r(485), -416(%rbp)
	movq -416(%rbp), %rbx		# movq -416(%rbp), %r(487)
	movq %r13, (%rbx)		# movq %r(251), (%r(487))
	movq $0, %r12		# movq $0, %r(317)
	movq -400(%rbp), %r13		# movq -400(%rbp), %r(488)
	movq %r13, -392(%rbp)		# movq %r(489), -392(%rbp)
	movq -392(%rbp), %rbx		# movq -392(%rbp), %r(490)
	addq %r12, %rbx		# addq %r(317), %r(490)
	movq %rbx, -392(%rbp)		# movq %r(490), -392(%rbp)
	movq -392(%rbp), %rbx		# movq -392(%rbp), %r(491)
	movq -376(%rbp), %r12		# movq -376(%rbp), %r(492)
	movq %r12, (%rbx)		# movq %r(492), (%r(491))
	movq $24, %rbx		# movq $24, %r(319)
	movq %rbx, %rdi		# movq %r(319), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(291)
	movq %r12, -32(%rbp)		# movq %r(493), -32(%rbp)
	movq $2, %rbx		# movq $2, %r(320)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(494)
	movq %rbx, (%r12)		# movq %r(320), (%r(494))
	movq $8, %rbx		# movq $8, %r(495)
	movq %rbx, -8(%rbp)		# movq %r(495), -8(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(496)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(497)
	addq %r12, %rbx		# addq %r(497), %r(322)
	movq %rbx, -336(%rbp)		# movq %r(498), -336(%rbp)
	movq $0, %r12		# movq $0, %r(323)
	movq -336(%rbp), %r13		# movq -336(%rbp), %r(499)
	movq %r13, -432(%rbp)		# movq %r(500), -432(%rbp)
	movq -432(%rbp), %rbx		# movq -432(%rbp), %r(501)
	addq %r12, %rbx		# addq %r(323), %r(501)
	movq %rbx, -432(%rbp)		# movq %r(501), -432(%rbp)
	movq $1, %rbx		# movq $1, %r(325)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(502)
	xorq %rbx, %r13		# xorq %r(325), %r(326)
	movq -432(%rbp), %rbx		# movq -432(%rbp), %r(503)
	movq %r13, (%rbx)		# movq %r(326), (%r(503))
	movq $1, %r13		# movq $1, %r(327)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(504)
	movq -328(%rbp), %r12		# movq -328(%rbp), %r(505)
	cmpq %rbx, %r12		# cmpq %r(504), %r(505)
	jge .L65		# jge .L65
	.L66:		# .L66:
	movq $0, %r13		# movq $0, %r(328)
	.L65:		# .L65:
	movq $8, %r12		# movq $8, %r(329)
	movq -336(%rbp), %r14		# movq -336(%rbp), %r(506)
	addq %r12, %r14		# addq %r(329), %r(330)
	movq %r13, (%r14)		# movq %r(254), (%r(330))
	movq $8, %rbx		# movq $8, %r(331)
	movq -400(%rbp), %r13		# movq -400(%rbp), %r(507)
	addq %rbx, %r13		# addq %r(331), %r(332)
	movq -336(%rbp), %rbx		# movq -336(%rbp), %r(508)
	movq %rbx, (%r13)		# movq %r(508), (%r(332))
	movq -400(%rbp), %r12		# movq -400(%rbp), %r(509)
	movq %r12, -112(%rbp)		# movq %r(510), -112(%rbp)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(511)
	movq %r12, -304(%rbp)		# movq %r(512), -304(%rbp)
	movq $0, %r12		# movq $0, %r(333)
	movq %r12, -456(%rbp)		# movq %r(513), -456(%rbp)
	movq $8, %rbx		# movq $8, %r(334)
	movq -304(%rbp), %r13		# movq -304(%rbp), %r(514)
	subq %rbx, %r13		# subq %r(334), %r(335)
	movq (%r13), %rbx		# movq (%r(335)), %r(336)
	movq -456(%rbp), %r12		# movq -456(%rbp), %r(515)
	cmpq %rbx, %r12		# cmpq %r(336), %r(515)
	jae error_outofbounds		# jae error_outofbounds
	movq -456(%rbp), %r13		# movq -456(%rbp), %r(516)
	salq $3, %r13		# salq $3, %r(337)
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(517)
	movq %rbx, -440(%rbp)		# movq %r(518), -440(%rbp)
	movq -440(%rbp), %r12		# movq -440(%rbp), %r(519)
	addq %r13, %r12		# addq %r(337), %r(519)
	movq %r12, -440(%rbp)		# movq %r(519), -440(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(520)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(521)
	imulq %r12, %r13		# imulq %r(521), %r(339)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(522)
	imulq %r12, %r13		# imulq %r(522), %r(340)
	movq $17179869184, %r12		# movq $17179869184, %r(341)
	imulq %r12, %r13		# imulq %r(341), %r(342)
	movq $72, %r12		# movq $72, %r(343)
	addq %r12, %r13		# addq %r(343), %r(344)
	movq $128, %r12		# movq $128, %r(345)
	movq %r13, %rax		# movq %r(344), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(345)
	movq %rdx, %rbx		# movq %rdx, %r(346)
	movq -440(%rbp), %r12		# movq -440(%rbp), %r(523)
	movq %rbx, (%r12)		# movq %r(346), (%r(523))
	movq $1, %r12		# movq $1, %r(347)
	movq %r12, -312(%rbp)		# movq %r(524), -312(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(525)
	movq %r12, -424(%rbp)		# movq %r(526), -424(%rbp)
	movq $0, %rbx		# movq $0, %r(348)
	movq $8, %r13		# movq $8, %r(349)
	movq -424(%rbp), %r14		# movq -424(%rbp), %r(527)
	movq %r14, -64(%rbp)		# movq %r(528), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(529)
	subq %r13, %r12		# subq %r(349), %r(529)
	movq %r12, -64(%rbp)		# movq %r(529), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(530)
	movq (%r12), %r12		# movq (%r(530)), %r(351)
	cmpq %r12, %rbx		# cmpq %r(351), %r(262)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(352)
	movq -424(%rbp), %r13		# movq -424(%rbp), %r(531)
	addq %rbx, %r13		# addq %r(352), %r(353)
	movq (%r13), %r12		# movq (%r(353)), %r(354)
	movq %r12, -160(%rbp)		# movq %r(532), -160(%rbp)
	movq $0, %rbx		# movq $0, %r(355)
	movq $8, %r13		# movq $8, %r(356)
	movq -160(%rbp), %r14		# movq -160(%rbp), %r(533)
	movq %r14, -296(%rbp)		# movq %r(534), -296(%rbp)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(535)
	subq %r13, %r12		# subq %r(356), %r(535)
	movq %r12, -296(%rbp)		# movq %r(535), -296(%rbp)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(536)
	movq (%r12), %r12		# movq (%r(536)), %r(358)
	cmpq %r12, %rbx		# cmpq %r(358), %r(264)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(359)
	movq -160(%rbp), %r13		# movq -160(%rbp), %r(537)
	addq %rbx, %r13		# addq %r(359), %r(360)
	movq (%r13), %rbx		# movq (%r(360)), %r(361)
	testq $1, %rbx		# testq $1, %r(361)
	jne .L81		# jne .L81
	.L83:		# .L83:
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(538)
	movq %r12, -352(%rbp)		# movq %r(539), -352(%rbp)
	movq $1, %rbx		# movq $1, %r(362)
	movq $8, %r13		# movq $8, %r(363)
	movq -352(%rbp), %r14		# movq -352(%rbp), %r(540)
	movq %r14, -176(%rbp)		# movq %r(541), -176(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(542)
	subq %r13, %r12		# subq %r(363), %r(542)
	movq %r12, -176(%rbp)		# movq %r(542), -176(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(543)
	movq (%r12), %r12		# movq (%r(543)), %r(365)
	cmpq %r12, %rbx		# cmpq %r(365), %r(266)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(366)
	movq -352(%rbp), %r13		# movq -352(%rbp), %r(544)
	addq %rbx, %r13		# addq %r(366), %r(367)
	movq (%r13), %r12		# movq (%r(367)), %r(368)
	movq %r12, -408(%rbp)		# movq %r(545), -408(%rbp)
	movq $1, %rbx		# movq $1, %r(369)
	movq $8, %r13		# movq $8, %r(370)
	movq -408(%rbp), %r14		# movq -408(%rbp), %r(546)
	movq %r14, -464(%rbp)		# movq %r(547), -464(%rbp)
	movq -464(%rbp), %r12		# movq -464(%rbp), %r(548)
	subq %r13, %r12		# subq %r(370), %r(548)
	movq %r12, -464(%rbp)		# movq %r(548), -464(%rbp)
	movq -464(%rbp), %r12		# movq -464(%rbp), %r(549)
	movq (%r12), %r12		# movq (%r(549)), %r(372)
	cmpq %r12, %rbx		# cmpq %r(372), %r(268)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(373)
	movq -408(%rbp), %r13		# movq -408(%rbp), %r(550)
	addq %rbx, %r13		# addq %r(373), %r(374)
	movq (%r13), %rbx		# movq (%r(374)), %r(375)
	testq $1, %rbx		# testq $1, %r(375)
	jne .L81		# jne .L81
	.L82:		# .L82:
	movq $0, %r12		# movq $0, %r(376)
	movq %r12, -312(%rbp)		# movq %r(551), -312(%rbp)
	.L81:		# .L81:
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(552)
	movq %r12, -288(%rbp)		# movq %r(553), -288(%rbp)
	movq $0, %rbx		# movq $0, %r(377)
	movq $8, %r13		# movq $8, %r(378)
	movq -288(%rbp), %r14		# movq -288(%rbp), %r(554)
	movq %r14, -24(%rbp)		# movq %r(555), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(556)
	subq %r13, %r12		# subq %r(378), %r(556)
	movq %r12, -24(%rbp)		# movq %r(556), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(557)
	movq (%r12), %r12		# movq (%r(557)), %r(380)
	cmpq %r12, %rbx		# cmpq %r(380), %r(258)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(381)
	movq -288(%rbp), %r13		# movq -288(%rbp), %r(558)
	addq %rbx, %r13		# addq %r(381), %r(382)
	movq (%r13), %r12		# movq (%r(382)), %r(383)
	movq %r12, -120(%rbp)		# movq %r(559), -120(%rbp)
	movq $0, %rbx		# movq $0, %r(384)
	movq $8, %r13		# movq $8, %r(385)
	movq -120(%rbp), %r14		# movq -120(%rbp), %r(560)
	movq %r14, -136(%rbp)		# movq %r(561), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(562)
	subq %r13, %r12		# subq %r(385), %r(562)
	movq %r12, -136(%rbp)		# movq %r(562), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(563)
	movq (%r12), %r12		# movq (%r(563)), %r(387)
	cmpq %r12, %rbx		# cmpq %r(387), %r(260)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(388)
	movq -120(%rbp), %r13		# movq -120(%rbp), %r(564)
	addq %rbx, %r13		# addq %r(388), %r(389)
	movq -312(%rbp), %rbx		# movq -312(%rbp), %r(565)
	movq %rbx, (%r13)		# movq %r(565), (%r(389))
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(566)
	movq %r12, -168(%rbp)		# movq %r(567), -168(%rbp)
	movq $0, %rbx		# movq $0, %r(390)
	movq $8, %r13		# movq $8, %r(391)
	movq -168(%rbp), %r14		# movq -168(%rbp), %r(568)
	movq %r14, -224(%rbp)		# movq %r(569), -224(%rbp)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(570)
	subq %r13, %r12		# subq %r(391), %r(570)
	movq %r12, -224(%rbp)		# movq %r(570), -224(%rbp)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(571)
	movq (%r12), %r12		# movq (%r(571)), %r(393)
	cmpq %r12, %rbx		# cmpq %r(393), %r(271)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(394)
	movq -168(%rbp), %r13		# movq -168(%rbp), %r(572)
	addq %rbx, %r13		# addq %r(394), %r(395)
	movq (%r13), %rbx		# movq (%r(395)), %r(396)
	movq %rbx, %rdi		# movq %r(396), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(292)
	movq %rbx, %rdi		# movq %r(292), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(397)
	movq %r12, -232(%rbp)		# movq %r(573), -232(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(574)
	movq %r12, -368(%rbp)		# movq %r(575), -368(%rbp)
	movq $0, %rbx		# movq $0, %r(398)
	movq $8, %r13		# movq $8, %r(399)
	movq -368(%rbp), %r14		# movq -368(%rbp), %r(576)
	movq %r14, -360(%rbp)		# movq %r(577), -360(%rbp)
	movq -360(%rbp), %r12		# movq -360(%rbp), %r(578)
	subq %r13, %r12		# subq %r(399), %r(578)
	movq %r12, -360(%rbp)		# movq %r(578), -360(%rbp)
	movq -360(%rbp), %r12		# movq -360(%rbp), %r(579)
	movq (%r12), %r12		# movq (%r(579)), %r(401)
	cmpq %r12, %rbx		# cmpq %r(401), %r(273)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(402)
	movq -368(%rbp), %r13		# movq -368(%rbp), %r(580)
	addq %rbx, %r13		# addq %r(402), %r(403)
	movq (%r13), %r12		# movq (%r(403)), %r(404)
	movq %r12, -192(%rbp)		# movq %r(581), -192(%rbp)
	movq $0, %rbx		# movq $0, %r(405)
	movq $8, %r13		# movq $8, %r(406)
	movq -192(%rbp), %r14		# movq -192(%rbp), %r(582)
	movq %r14, -88(%rbp)		# movq %r(583), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(584)
	subq %r13, %r12		# subq %r(406), %r(584)
	movq %r12, -88(%rbp)		# movq %r(584), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(585)
	movq (%r12), %r12		# movq (%r(585)), %r(408)
	cmpq %r12, %rbx		# cmpq %r(408), %r(275)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(409)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(586)
	addq %rbx, %r13		# addq %r(409), %r(410)
	movq (%r13), %r13		# movq (%r(410)), %r(411)
	movq $1, %r12		# movq $1, %r(412)
	xorq %r12, %r13		# xorq %r(412), %r(413)
	testq $1, %r13		# testq $1, %r(413)
	jne .L95		# jne .L95
	.L96:		# .L96:
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(587)
	movq $1, %r13		# movq $1, %r(414)
	movq %r13, -56(%rbp)		# movq %r(588), -56(%rbp)
	movq $8, %r12		# movq $8, %r(415)
	movq %rbx, %r14		# movq %r(276), %r(416)
	subq %r12, %r14		# subq %r(415), %r(416)
	movq (%r14), %r12		# movq (%r(416)), %r(417)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(589)
	cmpq %r12, %r13		# cmpq %r(417), %r(589)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(590)
	salq $3, %r13		# salq $3, %r(418)
	addq %r13, %rbx		# addq %r(418), %r(419)
	movq (%rbx), %rbx		# movq (%r(419)), %r(420)
	movq $1, %r13		# movq $1, %r(421)
	movq %r13, -272(%rbp)		# movq %r(591), -272(%rbp)
	movq $8, %r12		# movq $8, %r(422)
	movq %rbx, %r14		# movq %r(278), %r(423)
	subq %r12, %r14		# subq %r(422), %r(423)
	movq (%r14), %r12		# movq (%r(423)), %r(424)
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(592)
	cmpq %r12, %r13		# cmpq %r(424), %r(592)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(593)
	salq $3, %r13		# salq $3, %r(425)
	addq %r13, %rbx		# addq %r(425), %r(426)
	movq (%rbx), %rbx		# movq (%r(426)), %r(427)
	testq $1, %rbx		# testq $1, %r(427)
	jne .L94		# jne .L94
	.L95:		# .L95:
	movq $0, %r12		# movq $0, %r(428)
	movq %r12, -232(%rbp)		# movq %r(594), -232(%rbp)
	.L94:		# .L94:
	movq $0, %rbx		# movq $0, %r(429)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(595)
	addq %rbx, %r13		# addq %r(429), %r(430)
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(596)
	movq %rbx, (%r13)		# movq %r(596), (%r(430))
	movq $8, %rbx		# movq $8, %r(431)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(597)
	addq %rbx, %r13		# addq %r(431), %r(432)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(598)
	movq %rbx, (%r13)		# movq %r(598), (%r(432))
	jmp .L62		# jmp .L62
	.L62:		# .L62:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $480, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $16, %rbx		# movq $16, %r(599)
	movq %rbx, %rdi		# movq %r(599), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(294)
	movq %rbx, %r14		# movq %r(294), %r(283)
	leaq .L98(%rip), %rdi		# leaq .L98(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(295)
	movq $1, %rbx		# movq $1, %r(627)
	movq %rbx, -32(%rbp)		# movq %r(627), -32(%rbp)
	movq $0, %r13		# movq $0, %r(602)
	movq $1, %rbx		# movq $1, %r(628)
	movq %rbx, -40(%rbp)		# movq %r(628), -40(%rbp)
	movq $2, %rbx		# movq $2, %r(621)
	movq %rbx, -8(%rbp)		# movq %r(621), -8(%rbp)
	movq $3, %rbx		# movq $3, %r(622)
	movq %rbx, -24(%rbp)		# movq %r(622), -24(%rbp)
	movq $4, %rbx		# movq $4, %r(623)
	movq %rbx, -16(%rbp)		# movq %r(623), -16(%rbp)
	movq %r14, %rdi		# movq %r(283), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(629)
	movq %rbx, %rsi		# movq %r(629), %rsi
	movq %r13, %rdx		# movq %r(602), %rdx
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(630)
	movq %rbx, %rcx		# movq %r(630), %rcx
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(624)
	movq %rbx, %r8		# movq %r(624), %r8
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(625)
	movq %rbx, %r9		# movq %r(625), %r9
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(626)
	pushq %rbx		# pushq %r(626)
	pushq %r12		# pushq %r(295)
	call _IIam____t2baiibbiiiai		# call _IIam____t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq 0(%r14), %r13		# movq 0(%r(283)), %r(toB)
	movq 8(%r14), %r12		# movq 8(%r(283)), %r(a)
	testq $1, %r13		# testq $1, %r(toB)
	jne .L99		# jne .L99
	.L101:		# .L101:
	movq $1, %rbx		# movq $1, %r(607)
	xorq %rbx, %r13		# xorq %r(607), %r(608)
	movq $1, %rbx		# movq $1, %r(609)
	xorq %rbx, %r13		# xorq %r(609), %r(610)
	testq $1, %r13		# testq $1, %r(610)
	jne .L100		# jne .L100
	.L99:		# .L99:
	movq %r12, %rdi		# movq %r(a), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L100:		# .L100:
	movq $1, %rbx		# movq $1, %r(611)
	movq %rbx, %r14		# movq %r(611), %r(288)
	movq %r12, %r15		# movq %r(a), %r(286)
	movq $0, %rbx		# movq $0, %r(612)
	movq %rbx, %r12		# movq %r(612), %r(287)
	movq $8, %rbx		# movq $8, %r(613)
	movq %r15, %r13		# movq %r(286), %r(614)
	subq %rbx, %r13		# subq %r(613), %r(614)
	movq (%r13), %rbx		# movq (%r(614)), %r(615)
	cmpq %rbx, %r12		# cmpq %r(615), %r(287)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(616)
	movq %r15, %rbx		# movq %r(286), %r(617)
	addq %r12, %rbx		# addq %r(616), %r(617)
	movq (%rbx), %rbx		# movq (%r(617)), %r(618)
	movq $72, %r12		# movq $72, %r(619)
	cmpq %r12, %rbx		# cmpq %r(619), %r(618)
	je .L104		# je .L104
	.L105:		# .L105:
	movq $0, %rbx		# movq $0, %r(620)
	movq %rbx, %r14		# movq %r(620), %r(288)
	.L104:		# .L104:
	movq %r14, %rdi		# movq %r(288), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L97:		# .L97:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(631)
	movq %r12, -16(%rbp)		# movq %r(643), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(644)
	salq $3, %rbx		# salq $3, %r(632)
	movq $8, %r12		# movq $8, %r(633)
	addq %r12, %rbx		# addq %r(633), %r(634)
	movq %rbx, %rdi		# movq %r(634), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(299)
	movq %rbx, %r13		# movq %r(299), %r(t27)
	.L24:		# .L24:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(645)
	salq $3, %r12		# salq $3, %r(635)
	movq %r13, %r15		# movq %r(t27), %r(636)
	addq %r12, %r15		# addq %r(635), %r(636)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(646)
	movq %rbx, %r12		# movq %r(646), %r(637)
	salq $3, %r12		# salq $3, %r(637)
	movq %r14, %rbx		# movq %r(p0), %r(647)
	movq %rbx, -8(%rbp)		# movq %r(647), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(648)
	addq %r12, %rbx		# addq %r(637), %r(648)
	movq %rbx, -8(%rbp)		# movq %r(648), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(649)
	movq (%rbx), %rbx		# movq (%r(649)), %r(639)
	movq %rbx, (%r15)		# movq %r(639), (%r(636))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(650)
	decq %rbx		# decq %r(650)
	movq %rbx, -16(%rbp)		# movq %r(650), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(640)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(651)
	cmpq %rbx, %r12		# cmpq %r(640), %r(651)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(641)
	movq %r13, %r12		# movq %r(t27), %r(642)
	addq %rbx, %r12		# addq %r(641), %r(642)
	movq %r12, %rax		# movq %r(642), %rax
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
.L98:
	.quad 10
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
