.att_syntax prefix
.text
.globl _IIam'___t2baiibbiiiai
_IIam'___t2baiibbiiiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $480, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(439)
	movq %rbx, -168(%rbp)		# movq %r(439), -168(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(440)
	movq %rbx, -160(%rbp)		# movq %r(440), -160(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(441)
	movq %rbx, -232(%rbp)		# movq %r(441), -232(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(442)
	movq %rbx, -208(%rbp)		# movq %r(442), -208(%rbp)
	movq %r8, %rbx		# movq %r8, %r(443)
	movq %rbx, -56(%rbp)		# movq %r(443), -56(%rbp)
	movq %r9, %rbx		# movq %r9, %r(444)
	movq %rbx, -136(%rbp)		# movq %r(444), -136(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(445)
	movq %rbx, -64(%rbp)		# movq %r(445), -64(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(446)
	movq %rbx, -224(%rbp)		# movq %r(446), -224(%rbp)
	movq $24, %rbx		# movq $24, %r(447)
	movq %rbx, -128(%rbp)		# movq %r(447), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(448)
	movq %rbx, %rdi		# movq %r(448), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(449)
	movq %rbx, -264(%rbp)		# movq %r(449), -264(%rbp)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(450)
	movq %r12, -432(%rbp)		# movq %r(451), -432(%rbp)
	movq $2, %rbx		# movq $2, %r(452)
	movq %rbx, -200(%rbp)		# movq %r(452), -200(%rbp)
	movq -432(%rbp), %rbx		# movq -432(%rbp), %r(453)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(454)
	movq %r12, (%rbx)		# movq %r(454), (%r(453))
	movq $8, %rbx		# movq $8, %r(455)
	movq %rbx, -48(%rbp)		# movq %r(455), -48(%rbp)
	movq -432(%rbp), %r12		# movq -432(%rbp), %r(456)
	movq %r12, -24(%rbp)		# movq %r(457), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(458)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(459)
	addq %r12, %rbx		# addq %r(459), %r(458)
	movq %rbx, -24(%rbp)		# movq %r(458), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(460)
	movq %r12, -328(%rbp)		# movq %r(461), -328(%rbp)
	movq $24, %rbx		# movq $24, %r(462)
	movq %rbx, -376(%rbp)		# movq %r(462), -376(%rbp)
	movq -376(%rbp), %rbx		# movq -376(%rbp), %r(463)
	movq %rbx, %rdi		# movq %r(463), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(464)
	movq %rbx, -416(%rbp)		# movq %r(464), -416(%rbp)
	movq -416(%rbp), %r12		# movq -416(%rbp), %r(465)
	movq %r12, -256(%rbp)		# movq %r(466), -256(%rbp)
	movq $2, %rbx		# movq $2, %r(467)
	movq %rbx, -32(%rbp)		# movq %r(467), -32(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(468)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(469)
	movq %r12, (%rbx)		# movq %r(469), (%r(468))
	movq $8, %rbx		# movq $8, %r(470)
	movq %rbx, -120(%rbp)		# movq %r(470), -120(%rbp)
	movq -256(%rbp), %r12		# movq -256(%rbp), %r(471)
	movq %r12, -144(%rbp)		# movq %r(472), -144(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(473)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(474)
	addq %rbx, %r12		# addq %r(473), %r(474)
	movq %r12, -144(%rbp)		# movq %r(474), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(475)
	movq %r12, -240(%rbp)		# movq %r(476), -240(%rbp)
	movq $0, %rbx		# movq $0, %r(477)
	movq %rbx, -288(%rbp)		# movq %r(477), -288(%rbp)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(478)
	movq %r12, -248(%rbp)		# movq %r(479), -248(%rbp)
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(480)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(481)
	addq %rbx, %r12		# addq %r(480), %r(481)
	movq %r12, -248(%rbp)		# movq %r(481), -248(%rbp)
	movq $1, %rbx		# movq $1, %r(482)
	movq %rbx, -72(%rbp)		# movq %r(482), -72(%rbp)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(483)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(484)
	xorq %r12, %r13		# xorq %r(484), %r(318)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(485)
	movq %r13, (%r12)		# movq %r(318), (%r(485))
	movq $1, %r13		# movq $1, %r(319)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(486)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(487)
	cmpq %rbx, %r12		# cmpq %r(486), %r(487)
	jl .L63		# jl .L63
	.L64:		# .L64:
	movq $0, %r13		# movq $0, %r(320)
	.L63:		# .L63:
	movq $8, %rbx		# movq $8, %r(488)
	movq %rbx, -80(%rbp)		# movq %r(488), -80(%rbp)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(489)
	movq %r12, -408(%rbp)		# movq %r(490), -408(%rbp)
	movq -408(%rbp), %rbx		# movq -408(%rbp), %r(491)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(492)
	addq %r12, %rbx		# addq %r(492), %r(491)
	movq %rbx, -408(%rbp)		# movq %r(491), -408(%rbp)
	movq -408(%rbp), %rbx		# movq -408(%rbp), %r(493)
	movq %r13, (%rbx)		# movq %r(257), (%r(493))
	movq $0, %r12		# movq $0, %r(323)
	movq -328(%rbp), %r13		# movq -328(%rbp), %r(494)
	movq %r13, -344(%rbp)		# movq %r(495), -344(%rbp)
	movq -344(%rbp), %rbx		# movq -344(%rbp), %r(496)
	addq %r12, %rbx		# addq %r(323), %r(496)
	movq %rbx, -344(%rbp)		# movq %r(496), -344(%rbp)
	movq -344(%rbp), %rbx		# movq -344(%rbp), %r(497)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(498)
	movq %r12, (%rbx)		# movq %r(498), (%r(497))
	movq $24, %rbx		# movq $24, %r(325)
	movq %rbx, %rdi		# movq %r(325), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(297)
	movq %r12, -336(%rbp)		# movq %r(499), -336(%rbp)
	movq $2, %rbx		# movq $2, %r(326)
	movq -336(%rbp), %r12		# movq -336(%rbp), %r(500)
	movq %rbx, (%r12)		# movq %r(326), (%r(500))
	movq $8, %rbx		# movq $8, %r(501)
	movq %rbx, -88(%rbp)		# movq %r(501), -88(%rbp)
	movq -336(%rbp), %rbx		# movq -336(%rbp), %r(502)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(503)
	addq %r12, %rbx		# addq %r(503), %r(328)
	movq %rbx, -104(%rbp)		# movq %r(504), -104(%rbp)
	movq $0, %r12		# movq $0, %r(329)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(505)
	movq %r13, -192(%rbp)		# movq %r(506), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(507)
	addq %r12, %rbx		# addq %r(329), %r(507)
	movq %rbx, -192(%rbp)		# movq %r(507), -192(%rbp)
	movq $1, %rbx		# movq $1, %r(331)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(508)
	xorq %rbx, %r13		# xorq %r(331), %r(332)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(509)
	movq %r13, (%rbx)		# movq %r(332), (%r(509))
	movq $1, %r13		# movq $1, %r(333)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(510)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(511)
	cmpq %rbx, %r12		# cmpq %r(510), %r(511)
	jge .L65		# jge .L65
	.L66:		# .L66:
	movq $0, %r13		# movq $0, %r(334)
	.L65:		# .L65:
	movq $8, %r12		# movq $8, %r(335)
	movq -104(%rbp), %r14		# movq -104(%rbp), %r(512)
	addq %r12, %r14		# addq %r(335), %r(336)
	movq %r13, (%r14)		# movq %r(260), (%r(336))
	movq $8, %rbx		# movq $8, %r(337)
	movq -328(%rbp), %r13		# movq -328(%rbp), %r(513)
	addq %rbx, %r13		# addq %r(337), %r(338)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(514)
	movq %rbx, (%r13)		# movq %r(514), (%r(338))
	movq -328(%rbp), %r12		# movq -328(%rbp), %r(515)
	movq %r12, -184(%rbp)		# movq %r(516), -184(%rbp)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(517)
	movq %r12, -280(%rbp)		# movq %r(518), -280(%rbp)
	movq $0, %r12		# movq $0, %r(339)
	movq %r12, -272(%rbp)		# movq %r(519), -272(%rbp)
	movq $8, %rbx		# movq $8, %r(340)
	movq -280(%rbp), %r13		# movq -280(%rbp), %r(520)
	subq %rbx, %r13		# subq %r(340), %r(341)
	movq (%r13), %rbx		# movq (%r(341)), %r(342)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(521)
	cmpq %rbx, %r12		# cmpq %r(342), %r(521)
	jae error_outofbounds		# jae error_outofbounds
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(522)
	salq $3, %r13		# salq $3, %r(343)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(523)
	movq %rbx, -16(%rbp)		# movq %r(524), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(525)
	addq %r13, %r12		# addq %r(343), %r(525)
	movq %r12, -16(%rbp)		# movq %r(525), -16(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(526)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(527)
	imulq %r12, %r13		# imulq %r(527), %r(345)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(528)
	imulq %r12, %r13		# imulq %r(528), %r(346)
	movq $17179869184, %r12		# movq $17179869184, %r(347)
	imulq %r12, %r13		# imulq %r(347), %r(348)
	movq $72, %r12		# movq $72, %r(349)
	addq %r12, %r13		# addq %r(349), %r(350)
	movq $128, %r12		# movq $128, %r(351)
	movq %r13, %rax		# movq %r(350), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(351)
	movq %rdx, %rbx		# movq %rdx, %r(352)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(529)
	movq %rbx, (%r12)		# movq %r(352), (%r(529))
	movq $1, %r12		# movq $1, %r(353)
	movq %r12, -312(%rbp)		# movq %r(530), -312(%rbp)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(531)
	movq %r12, -352(%rbp)		# movq %r(532), -352(%rbp)
	movq $0, %rbx		# movq $0, %r(354)
	movq $8, %r13		# movq $8, %r(355)
	movq -352(%rbp), %r14		# movq -352(%rbp), %r(533)
	movq %r14, -176(%rbp)		# movq %r(534), -176(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(535)
	subq %r13, %r12		# subq %r(355), %r(535)
	movq %r12, -176(%rbp)		# movq %r(535), -176(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(536)
	movq (%r12), %r12		# movq (%r(536)), %r(357)
	cmpq %r12, %rbx		# cmpq %r(357), %r(268)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(358)
	movq -352(%rbp), %r13		# movq -352(%rbp), %r(537)
	addq %rbx, %r13		# addq %r(358), %r(359)
	movq (%r13), %r12		# movq (%r(359)), %r(360)
	movq %r12, -384(%rbp)		# movq %r(538), -384(%rbp)
	movq $0, %rbx		# movq $0, %r(361)
	movq $8, %r13		# movq $8, %r(362)
	movq -384(%rbp), %r14		# movq -384(%rbp), %r(539)
	movq %r14, -392(%rbp)		# movq %r(540), -392(%rbp)
	movq -392(%rbp), %r12		# movq -392(%rbp), %r(541)
	subq %r13, %r12		# subq %r(362), %r(541)
	movq %r12, -392(%rbp)		# movq %r(541), -392(%rbp)
	movq -392(%rbp), %r12		# movq -392(%rbp), %r(542)
	movq (%r12), %r12		# movq (%r(542)), %r(364)
	cmpq %r12, %rbx		# cmpq %r(364), %r(270)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(365)
	movq -384(%rbp), %r13		# movq -384(%rbp), %r(543)
	addq %rbx, %r13		# addq %r(365), %r(366)
	movq (%r13), %rbx		# movq (%r(366)), %r(367)
	testq $1, %rbx		# testq $1, %r(367)
	jne .L81		# jne .L81
	.L83:		# .L83:
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(544)
	movq %r12, -440(%rbp)		# movq %r(545), -440(%rbp)
	movq $1, %rbx		# movq $1, %r(368)
	movq $8, %r13		# movq $8, %r(369)
	movq -440(%rbp), %r14		# movq -440(%rbp), %r(546)
	movq %r14, -448(%rbp)		# movq %r(547), -448(%rbp)
	movq -448(%rbp), %r12		# movq -448(%rbp), %r(548)
	subq %r13, %r12		# subq %r(369), %r(548)
	movq %r12, -448(%rbp)		# movq %r(548), -448(%rbp)
	movq -448(%rbp), %r12		# movq -448(%rbp), %r(549)
	movq (%r12), %r12		# movq (%r(549)), %r(371)
	cmpq %r12, %rbx		# cmpq %r(371), %r(272)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(372)
	movq -440(%rbp), %r13		# movq -440(%rbp), %r(550)
	addq %rbx, %r13		# addq %r(372), %r(373)
	movq (%r13), %r12		# movq (%r(373)), %r(374)
	movq %r12, -304(%rbp)		# movq %r(551), -304(%rbp)
	movq $1, %rbx		# movq $1, %r(375)
	movq $8, %r13		# movq $8, %r(376)
	movq -304(%rbp), %r14		# movq -304(%rbp), %r(552)
	movq %r14, -40(%rbp)		# movq %r(553), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(554)
	subq %r13, %r12		# subq %r(376), %r(554)
	movq %r12, -40(%rbp)		# movq %r(554), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(555)
	movq (%r12), %r12		# movq (%r(555)), %r(378)
	cmpq %r12, %rbx		# cmpq %r(378), %r(274)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(379)
	movq -304(%rbp), %r13		# movq -304(%rbp), %r(556)
	addq %rbx, %r13		# addq %r(379), %r(380)
	movq (%r13), %rbx		# movq (%r(380)), %r(381)
	testq $1, %rbx		# testq $1, %r(381)
	jne .L81		# jne .L81
	.L82:		# .L82:
	movq $0, %r12		# movq $0, %r(382)
	movq %r12, -312(%rbp)		# movq %r(557), -312(%rbp)
	.L81:		# .L81:
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(558)
	movq %r12, -424(%rbp)		# movq %r(559), -424(%rbp)
	movq $0, %rbx		# movq $0, %r(383)
	movq $8, %r13		# movq $8, %r(384)
	movq -424(%rbp), %r14		# movq -424(%rbp), %r(560)
	movq %r14, -8(%rbp)		# movq %r(561), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(562)
	subq %r13, %r12		# subq %r(384), %r(562)
	movq %r12, -8(%rbp)		# movq %r(562), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(563)
	movq (%r12), %r12		# movq (%r(563)), %r(386)
	cmpq %r12, %rbx		# cmpq %r(386), %r(264)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(387)
	movq -424(%rbp), %r13		# movq -424(%rbp), %r(564)
	addq %rbx, %r13		# addq %r(387), %r(388)
	movq (%r13), %r12		# movq (%r(388)), %r(389)
	movq %r12, -152(%rbp)		# movq %r(565), -152(%rbp)
	movq $0, %rbx		# movq $0, %r(390)
	movq $8, %r13		# movq $8, %r(391)
	movq -152(%rbp), %r14		# movq -152(%rbp), %r(566)
	movq %r14, -112(%rbp)		# movq %r(567), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(568)
	subq %r13, %r12		# subq %r(391), %r(568)
	movq %r12, -112(%rbp)		# movq %r(568), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(569)
	movq (%r12), %r12		# movq (%r(569)), %r(393)
	cmpq %r12, %rbx		# cmpq %r(393), %r(266)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(394)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(570)
	addq %rbx, %r13		# addq %r(394), %r(395)
	movq -312(%rbp), %rbx		# movq -312(%rbp), %r(571)
	movq %rbx, (%r13)		# movq %r(571), (%r(395))
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(572)
	movq %r12, -320(%rbp)		# movq %r(573), -320(%rbp)
	movq $0, %rbx		# movq $0, %r(396)
	movq $8, %r13		# movq $8, %r(397)
	movq -320(%rbp), %r14		# movq -320(%rbp), %r(574)
	movq %r14, -456(%rbp)		# movq %r(575), -456(%rbp)
	movq -456(%rbp), %r12		# movq -456(%rbp), %r(576)
	subq %r13, %r12		# subq %r(397), %r(576)
	movq %r12, -456(%rbp)		# movq %r(576), -456(%rbp)
	movq -456(%rbp), %r12		# movq -456(%rbp), %r(577)
	movq (%r12), %r12		# movq (%r(577)), %r(399)
	cmpq %r12, %rbx		# cmpq %r(399), %r(277)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(400)
	movq -320(%rbp), %r13		# movq -320(%rbp), %r(578)
	addq %rbx, %r13		# addq %r(400), %r(401)
	movq (%r13), %rbx		# movq (%r(401)), %r(402)
	movq %rbx, %rdi		# movq %r(402), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(298)
	movq %rbx, %rdi		# movq %r(298), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(403)
	movq %r12, -360(%rbp)		# movq %r(579), -360(%rbp)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(580)
	movq %r12, -216(%rbp)		# movq %r(581), -216(%rbp)
	movq $0, %rbx		# movq $0, %r(404)
	movq $8, %r13		# movq $8, %r(405)
	movq -216(%rbp), %r14		# movq -216(%rbp), %r(582)
	movq %r14, -96(%rbp)		# movq %r(583), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(584)
	subq %r13, %r12		# subq %r(405), %r(584)
	movq %r12, -96(%rbp)		# movq %r(584), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(585)
	movq (%r12), %r12		# movq (%r(585)), %r(407)
	cmpq %r12, %rbx		# cmpq %r(407), %r(279)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(408)
	movq -216(%rbp), %r13		# movq -216(%rbp), %r(586)
	addq %rbx, %r13		# addq %r(408), %r(409)
	movq (%r13), %r12		# movq (%r(409)), %r(410)
	movq %r12, -400(%rbp)		# movq %r(587), -400(%rbp)
	movq $0, %rbx		# movq $0, %r(411)
	movq $8, %r13		# movq $8, %r(412)
	movq -400(%rbp), %r14		# movq -400(%rbp), %r(588)
	movq %r14, -296(%rbp)		# movq %r(589), -296(%rbp)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(590)
	subq %r13, %r12		# subq %r(412), %r(590)
	movq %r12, -296(%rbp)		# movq %r(590), -296(%rbp)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(591)
	movq (%r12), %r12		# movq (%r(591)), %r(414)
	cmpq %r12, %rbx		# cmpq %r(414), %r(281)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(415)
	movq -400(%rbp), %r13		# movq -400(%rbp), %r(592)
	addq %rbx, %r13		# addq %r(415), %r(416)
	movq (%r13), %r13		# movq (%r(416)), %r(417)
	movq $1, %r12		# movq $1, %r(418)
	xorq %r12, %r13		# xorq %r(418), %r(419)
	testq $1, %r13		# testq $1, %r(419)
	jne .L95		# jne .L95
	.L96:		# .L96:
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(593)
	movq $1, %r13		# movq $1, %r(420)
	movq %r13, -368(%rbp)		# movq %r(594), -368(%rbp)
	movq $8, %r12		# movq $8, %r(421)
	movq %rbx, %r14		# movq %r(282), %r(422)
	subq %r12, %r14		# subq %r(421), %r(422)
	movq (%r14), %r12		# movq (%r(422)), %r(423)
	movq -368(%rbp), %r13		# movq -368(%rbp), %r(595)
	cmpq %r12, %r13		# cmpq %r(423), %r(595)
	jae error_outofbounds		# jae error_outofbounds
	movq -368(%rbp), %r13		# movq -368(%rbp), %r(596)
	salq $3, %r13		# salq $3, %r(424)
	addq %r13, %rbx		# addq %r(424), %r(425)
	movq (%rbx), %rbx		# movq (%r(425)), %r(426)
	movq $1, %r13		# movq $1, %r(427)
	movq %r13, -464(%rbp)		# movq %r(597), -464(%rbp)
	movq $8, %r12		# movq $8, %r(428)
	movq %rbx, %r14		# movq %r(284), %r(429)
	subq %r12, %r14		# subq %r(428), %r(429)
	movq (%r14), %r12		# movq (%r(429)), %r(430)
	movq -464(%rbp), %r13		# movq -464(%rbp), %r(598)
	cmpq %r12, %r13		# cmpq %r(430), %r(598)
	jae error_outofbounds		# jae error_outofbounds
	movq -464(%rbp), %r13		# movq -464(%rbp), %r(599)
	salq $3, %r13		# salq $3, %r(431)
	addq %r13, %rbx		# addq %r(431), %r(432)
	movq (%rbx), %rbx		# movq (%r(432)), %r(433)
	testq $1, %rbx		# testq $1, %r(433)
	jne .L94		# jne .L94
	.L95:		# .L95:
	movq $0, %r12		# movq $0, %r(434)
	movq %r12, -360(%rbp)		# movq %r(600), -360(%rbp)
	.L94:		# .L94:
	movq $0, %rbx		# movq $0, %r(435)
	movq -168(%rbp), %r13		# movq -168(%rbp), %r(601)
	addq %rbx, %r13		# addq %r(435), %r(436)
	movq -360(%rbp), %rbx		# movq -360(%rbp), %r(602)
	movq %rbx, (%r13)		# movq %r(602), (%r(436))
	movq $8, %rbx		# movq $8, %r(437)
	movq -168(%rbp), %r13		# movq -168(%rbp), %r(603)
	addq %rbx, %r13		# addq %r(437), %r(438)
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(604)
	movq %rbx, (%r13)		# movq %r(604), (%r(438))
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
	subq $64, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $16, %rbx		# movq $16, %r(605)
	movq %rbx, %rdi		# movq %r(605), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(300)
	leaq .L98(%rip), %rdi		# leaq .L98(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(633)
	movq %r12, -40(%rbp)		# movq %r(633), -40(%rbp)
	movq $1, %r12		# movq $1, %r(634)
	movq %r12, -32(%rbp)		# movq %r(634), -32(%rbp)
	movq $0, %r13		# movq $0, %r(608)
	movq $1, %r12		# movq $1, %r(635)
	movq %r12, -48(%rbp)		# movq %r(635), -48(%rbp)
	movq $2, %r12		# movq $2, %r(627)
	movq %r12, -16(%rbp)		# movq %r(627), -16(%rbp)
	movq $3, %r12		# movq $3, %r(628)
	movq %r12, -24(%rbp)		# movq %r(628), -24(%rbp)
	movq $4, %r12		# movq $4, %r(629)
	movq %r12, -8(%rbp)		# movq %r(629), -8(%rbp)
	movq %rbx, %rdi		# movq %r(289), %rdi
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(636)
	movq %r12, %rsi		# movq %r(636), %rsi
	movq %r13, %rdx		# movq %r(608), %rdx
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(637)
	movq %r12, %rcx		# movq %r(637), %rcx
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(630)
	movq %r12, %r8		# movq %r(630), %r8
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(631)
	movq %r12, %r9		# movq %r(631), %r9
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(632)
	pushq %r12		# pushq %r(632)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(638)
	pushq %r12		# pushq %r(638)
	call _IIam'___t2baiibbiiiai		# call _IIam'___t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq 0(%rbx), %r12		# movq 0(%r(289)), %r(toB)
	movq 8(%rbx), %r13		# movq 8(%r(289)), %r(a)
	testq $1, %r12		# testq $1, %r(toB)
	jne .L99		# jne .L99
	.L101:		# .L101:
	movq $1, %rbx		# movq $1, %r(613)
	xorq %rbx, %r12		# xorq %r(613), %r(614)
	movq $1, %rbx		# movq $1, %r(615)
	xorq %rbx, %r12		# xorq %r(615), %r(616)
	testq $1, %r12		# testq $1, %r(616)
	jne .L100		# jne .L100
	.L99:		# .L99:
	movq %r13, %rdi		# movq %r(a), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L100:		# .L100:
	movq $1, %rbx		# movq $1, %r(617)
	movq %rbx, %r15		# movq %r(617), %r(294)
	movq %r13, %r14		# movq %r(a), %r(292)
	movq $0, %rbx		# movq $0, %r(618)
	movq %rbx, %r12		# movq %r(618), %r(293)
	movq $8, %rbx		# movq $8, %r(619)
	movq %r14, %r13		# movq %r(292), %r(620)
	subq %rbx, %r13		# subq %r(619), %r(620)
	movq (%r13), %rbx		# movq (%r(620)), %r(621)
	cmpq %rbx, %r12		# cmpq %r(621), %r(293)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(622)
	movq %r14, %rbx		# movq %r(292), %r(623)
	addq %r12, %rbx		# addq %r(622), %r(623)
	movq (%rbx), %rbx		# movq (%r(623)), %r(624)
	movq $72, %r12		# movq $72, %r(625)
	cmpq %r12, %rbx		# cmpq %r(625), %r(624)
	je .L104		# je .L104
	.L105:		# .L105:
	movq $0, %rbx		# movq $0, %r(626)
	movq %rbx, %r15		# movq %r(626), %r(294)
	.L104:		# .L104:
	movq %r15, %rdi		# movq %r(294), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L97:		# .L97:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $64, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(651)
	movq %rbx, -24(%rbp)		# movq %r(651), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(652)
	movq (%rbx), %r12		# movq (%r(652)), %r(639)
	movq %r12, -16(%rbp)		# movq %r(653), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(654)
	salq $3, %rbx		# salq $3, %r(640)
	movq $8, %r12		# movq $8, %r(641)
	addq %r12, %rbx		# addq %r(641), %r(642)
	movq %rbx, %rdi		# movq %r(642), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(305)
	movq %rbx, %r14		# movq %r(305), %r(t27)
	.L24:		# .L24:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(655)
	salq $3, %r12		# salq $3, %r(643)
	movq %r14, %r13		# movq %r(t27), %r(644)
	addq %r12, %r13		# addq %r(643), %r(644)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(656)
	movq %rbx, %r12		# movq %r(656), %r(645)
	salq $3, %r12		# salq $3, %r(645)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(657)
	movq %rbx, -8(%rbp)		# movq %r(658), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(659)
	addq %r12, %rbx		# addq %r(645), %r(659)
	movq %rbx, -8(%rbp)		# movq %r(659), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(660)
	movq (%rbx), %rbx		# movq (%r(660)), %r(647)
	movq %rbx, (%r13)		# movq %r(647), (%r(644))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(661)
	decq %rbx		# decq %r(661)
	movq %rbx, -16(%rbp)		# movq %r(661), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(648)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(662)
	cmpq %rbx, %r12		# cmpq %r(648), %r(662)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(649)
	movq %r14, %r12		# movq %r(t27), %r(650)
	addq %rbx, %r12		# addq %r(649), %r(650)
	movq %r12, %rax		# movq %r(650), %rax
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
