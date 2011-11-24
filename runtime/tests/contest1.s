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
	movq %rdi, %rbx		# movq %rdi, %r(442)
	movq %rbx, -344(%rbp)		# movq %r(442), -344(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(443)
	movq %rbx, -416(%rbp)		# movq %r(443), -416(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(444)
	movq %rbx, -232(%rbp)		# movq %r(444), -232(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(445)
	movq %rbx, -136(%rbp)		# movq %r(445), -136(%rbp)
	movq %r8, %rbx		# movq %r8, %r(446)
	movq %rbx, -224(%rbp)		# movq %r(446), -224(%rbp)
	movq %r9, %rbx		# movq %r9, %r(447)
	movq %rbx, -272(%rbp)		# movq %r(447), -272(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(448)
	movq %rbx, -200(%rbp)		# movq %r(448), -200(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(449)
	movq %rbx, -352(%rbp)		# movq %r(449), -352(%rbp)
	movq $24, %rbx		# movq $24, %r(450)
	movq %rbx, -192(%rbp)		# movq %r(450), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(451)
	movq %rbx, %rdi		# movq %r(451), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(452)
	movq %rbx, -168(%rbp)		# movq %r(452), -168(%rbp)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(453)
	movq %r12, -160(%rbp)		# movq %r(454), -160(%rbp)
	movq $2, %rbx		# movq $2, %r(455)
	movq %rbx, -48(%rbp)		# movq %r(455), -48(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(456)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(457)
	movq %r12, (%rbx)		# movq %r(457), (%r(456))
	movq $8, %rbx		# movq $8, %r(458)
	movq %rbx, -104(%rbp)		# movq %r(458), -104(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(459)
	movq %r12, -240(%rbp)		# movq %r(460), -240(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(461)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(462)
	addq %rbx, %r12		# addq %r(461), %r(462)
	movq %r12, -240(%rbp)		# movq %r(462), -240(%rbp)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(463)
	movq %r12, -280(%rbp)		# movq %r(464), -280(%rbp)
	movq $24, %rbx		# movq $24, %r(465)
	movq %rbx, -432(%rbp)		# movq %r(465), -432(%rbp)
	movq -432(%rbp), %rbx		# movq -432(%rbp), %r(466)
	movq %rbx, %rdi		# movq %r(466), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(467)
	movq %rbx, -24(%rbp)		# movq %r(467), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(468)
	movq %r12, -64(%rbp)		# movq %r(469), -64(%rbp)
	movq $2, %rbx		# movq $2, %r(470)
	movq %rbx, -408(%rbp)		# movq %r(470), -408(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(471)
	movq -408(%rbp), %r12		# movq -408(%rbp), %r(472)
	movq %r12, (%rbx)		# movq %r(472), (%r(471))
	movq $8, %rbx		# movq $8, %r(473)
	movq %rbx, -8(%rbp)		# movq %r(473), -8(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(474)
	movq %r12, -376(%rbp)		# movq %r(475), -376(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(476)
	movq -376(%rbp), %r12		# movq -376(%rbp), %r(477)
	addq %rbx, %r12		# addq %r(476), %r(477)
	movq %r12, -376(%rbp)		# movq %r(477), -376(%rbp)
	movq -376(%rbp), %r12		# movq -376(%rbp), %r(478)
	movq %r12, -208(%rbp)		# movq %r(479), -208(%rbp)
	movq $0, %rbx		# movq $0, %r(480)
	movq %rbx, -88(%rbp)		# movq %r(480), -88(%rbp)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(481)
	movq %r12, -456(%rbp)		# movq %r(482), -456(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(483)
	movq -456(%rbp), %r12		# movq -456(%rbp), %r(484)
	addq %rbx, %r12		# addq %r(483), %r(484)
	movq %r12, -456(%rbp)		# movq %r(484), -456(%rbp)
	movq $1, %rbx		# movq $1, %r(485)
	movq %rbx, -96(%rbp)		# movq %r(485), -96(%rbp)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(486)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(487)
	xorq %r12, %r13		# xorq %r(487), %r(321)
	movq -456(%rbp), %r12		# movq -456(%rbp), %r(488)
	movq %r13, (%r12)		# movq %r(321), (%r(488))
	movq $1, %r13		# movq $1, %r(322)
	movq -416(%rbp), %rbx		# movq -416(%rbp), %r(489)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(490)
	cmpq %r12, %rbx		# cmpq %r(490), %r(489)
	jl .L65		# jl .L65
	.L66:		# .L66:
	movq $0, %r13		# movq $0, %r(323)
	.L65:		# .L65:
	movq $8, %rbx		# movq $8, %r(491)
	movq %rbx, -80(%rbp)		# movq %r(491), -80(%rbp)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(492)
	movq %r12, -312(%rbp)		# movq %r(493), -312(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(494)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(495)
	addq %rbx, %r12		# addq %r(494), %r(495)
	movq %r12, -312(%rbp)		# movq %r(495), -312(%rbp)
	movq -312(%rbp), %rbx		# movq -312(%rbp), %r(496)
	movq %r13, (%rbx)		# movq %r(260), (%r(496))
	movq $0, %r12		# movq $0, %r(326)
	movq -280(%rbp), %r13		# movq -280(%rbp), %r(497)
	movq %r13, -120(%rbp)		# movq %r(498), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(499)
	addq %r12, %rbx		# addq %r(326), %r(499)
	movq %rbx, -120(%rbp)		# movq %r(499), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(500)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(501)
	movq %r12, (%rbx)		# movq %r(501), (%r(500))
	movq $24, %rbx		# movq $24, %r(328)
	movq %rbx, %rdi		# movq %r(328), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(300)
	movq %r12, -176(%rbp)		# movq %r(502), -176(%rbp)
	movq $2, %rbx		# movq $2, %r(329)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(503)
	movq %rbx, (%r12)		# movq %r(329), (%r(503))
	movq $8, %rbx		# movq $8, %r(504)
	movq %rbx, -360(%rbp)		# movq %r(504), -360(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(505)
	movq -360(%rbp), %r12		# movq -360(%rbp), %r(506)
	addq %r12, %rbx		# addq %r(506), %r(331)
	movq %rbx, -216(%rbp)		# movq %r(507), -216(%rbp)
	movq $0, %r12		# movq $0, %r(332)
	movq -216(%rbp), %r13		# movq -216(%rbp), %r(508)
	movq %r13, -112(%rbp)		# movq %r(509), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(510)
	addq %r12, %rbx		# addq %r(332), %r(510)
	movq %rbx, -112(%rbp)		# movq %r(510), -112(%rbp)
	movq $1, %rbx		# movq $1, %r(334)
	movq -136(%rbp), %r13		# movq -136(%rbp), %r(511)
	xorq %rbx, %r13		# xorq %r(334), %r(335)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(512)
	movq %r13, (%rbx)		# movq %r(335), (%r(512))
	movq $1, %r13		# movq $1, %r(336)
	movq -416(%rbp), %rbx		# movq -416(%rbp), %r(513)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(514)
	cmpq %r12, %rbx		# cmpq %r(514), %r(513)
	jge .L67		# jge .L67
	.L68:		# .L68:
	movq $0, %r13		# movq $0, %r(337)
	.L67:		# .L67:
	movq $8, %r12		# movq $8, %r(338)
	movq -216(%rbp), %r14		# movq -216(%rbp), %r(515)
	addq %r12, %r14		# addq %r(338), %r(339)
	movq %r13, (%r14)		# movq %r(263), (%r(339))
	movq $8, %rbx		# movq $8, %r(340)
	movq -280(%rbp), %r13		# movq -280(%rbp), %r(516)
	addq %rbx, %r13		# addq %r(340), %r(341)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(517)
	movq %rbx, (%r13)		# movq %r(517), (%r(341))
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(518)
	movq %r12, -320(%rbp)		# movq %r(519), -320(%rbp)
	movq -352(%rbp), %r12		# movq -352(%rbp), %r(520)
	movq %r12, -304(%rbp)		# movq %r(521), -304(%rbp)
	movq $0, %r12		# movq $0, %r(342)
	movq %r12, -128(%rbp)		# movq %r(522), -128(%rbp)
	movq $8, %rbx		# movq $8, %r(343)
	movq -304(%rbp), %r13		# movq -304(%rbp), %r(523)
	subq %rbx, %r13		# subq %r(343), %r(344)
	movq (%r13), %rbx		# movq (%r(344)), %r(345)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(524)
	cmpq %rbx, %r12		# cmpq %r(345), %r(524)
	jae error_outofbounds		# jae error_outofbounds
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(525)
	salq $3, %r13		# salq $3, %r(346)
	movq -304(%rbp), %rbx		# movq -304(%rbp), %r(526)
	movq %rbx, -144(%rbp)		# movq %r(527), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(528)
	addq %r13, %r12		# addq %r(346), %r(528)
	movq %r12, -144(%rbp)		# movq %r(528), -144(%rbp)
	movq -224(%rbp), %r13		# movq -224(%rbp), %r(529)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(530)
	imulq %r12, %r13		# imulq %r(530), %r(348)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(531)
	imulq %r12, %r13		# imulq %r(531), %r(349)
	movq $17179869184, %r12		# movq $17179869184, %r(350)
	imulq %r12, %r13		# imulq %r(350), %r(351)
	movq $72, %r12		# movq $72, %r(352)
	addq %r12, %r13		# addq %r(352), %r(353)
	movq $128, %r12		# movq $128, %r(354)
	movq %r13, %rax		# movq %r(353), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(354)
	movq %rdx, %rbx		# movq %rdx, %r(355)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(532)
	movq %rbx, (%r12)		# movq %r(355), (%r(532))
	movq $1, %r12		# movq $1, %r(356)
	movq %r12, -440(%rbp)		# movq %r(533), -440(%rbp)
	movq -320(%rbp), %r12		# movq -320(%rbp), %r(534)
	movq %r12, -392(%rbp)		# movq %r(535), -392(%rbp)
	movq $0, %rbx		# movq $0, %r(357)
	movq $8, %r13		# movq $8, %r(358)
	movq -392(%rbp), %r14		# movq -392(%rbp), %r(536)
	movq %r14, -288(%rbp)		# movq %r(537), -288(%rbp)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(538)
	subq %r13, %r12		# subq %r(358), %r(538)
	movq %r12, -288(%rbp)		# movq %r(538), -288(%rbp)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(539)
	movq (%r12), %r12		# movq (%r(539)), %r(360)
	cmpq %r12, %rbx		# cmpq %r(360), %r(271)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(361)
	movq -392(%rbp), %r13		# movq -392(%rbp), %r(540)
	addq %rbx, %r13		# addq %r(361), %r(362)
	movq (%r13), %r12		# movq (%r(362)), %r(363)
	movq %r12, -336(%rbp)		# movq %r(541), -336(%rbp)
	movq $0, %rbx		# movq $0, %r(364)
	movq $8, %r13		# movq $8, %r(365)
	movq -336(%rbp), %r14		# movq -336(%rbp), %r(542)
	movq %r14, -32(%rbp)		# movq %r(543), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(544)
	subq %r13, %r12		# subq %r(365), %r(544)
	movq %r12, -32(%rbp)		# movq %r(544), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(545)
	movq (%r12), %r12		# movq (%r(545)), %r(367)
	cmpq %r12, %rbx		# cmpq %r(367), %r(273)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(368)
	movq -336(%rbp), %r13		# movq -336(%rbp), %r(546)
	addq %rbx, %r13		# addq %r(368), %r(369)
	movq (%r13), %rbx		# movq (%r(369)), %r(370)
	testq $1, %rbx		# testq $1, %r(370)
	jne .L83		# jne .L83
	.L85:		# .L85:
	movq -320(%rbp), %r12		# movq -320(%rbp), %r(547)
	movq %r12, -296(%rbp)		# movq %r(548), -296(%rbp)
	movq $1, %rbx		# movq $1, %r(371)
	movq $8, %r13		# movq $8, %r(372)
	movq -296(%rbp), %r14		# movq -296(%rbp), %r(549)
	movq %r14, -56(%rbp)		# movq %r(550), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(551)
	subq %r13, %r12		# subq %r(372), %r(551)
	movq %r12, -56(%rbp)		# movq %r(551), -56(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(552)
	movq (%r12), %r12		# movq (%r(552)), %r(374)
	cmpq %r12, %rbx		# cmpq %r(374), %r(275)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(375)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(553)
	addq %rbx, %r13		# addq %r(375), %r(376)
	movq (%r13), %r12		# movq (%r(376)), %r(377)
	movq %r12, -328(%rbp)		# movq %r(554), -328(%rbp)
	movq $1, %rbx		# movq $1, %r(378)
	movq $8, %r13		# movq $8, %r(379)
	movq -328(%rbp), %r14		# movq -328(%rbp), %r(555)
	movq %r14, -464(%rbp)		# movq %r(556), -464(%rbp)
	movq -464(%rbp), %r12		# movq -464(%rbp), %r(557)
	subq %r13, %r12		# subq %r(379), %r(557)
	movq %r12, -464(%rbp)		# movq %r(557), -464(%rbp)
	movq -464(%rbp), %r12		# movq -464(%rbp), %r(558)
	movq (%r12), %r12		# movq (%r(558)), %r(381)
	cmpq %r12, %rbx		# cmpq %r(381), %r(277)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(382)
	movq -328(%rbp), %r13		# movq -328(%rbp), %r(559)
	addq %rbx, %r13		# addq %r(382), %r(383)
	movq (%r13), %rbx		# movq (%r(383)), %r(384)
	testq $1, %rbx		# testq $1, %r(384)
	jne .L83		# jne .L83
	.L84:		# .L84:
	movq $0, %r12		# movq $0, %r(385)
	movq %r12, -440(%rbp)		# movq %r(560), -440(%rbp)
	.L83:		# .L83:
	movq -320(%rbp), %r12		# movq -320(%rbp), %r(561)
	movq %r12, -256(%rbp)		# movq %r(562), -256(%rbp)
	movq $0, %rbx		# movq $0, %r(386)
	movq $8, %r13		# movq $8, %r(387)
	movq -256(%rbp), %r14		# movq -256(%rbp), %r(563)
	movq %r14, -424(%rbp)		# movq %r(564), -424(%rbp)
	movq -424(%rbp), %r12		# movq -424(%rbp), %r(565)
	subq %r13, %r12		# subq %r(387), %r(565)
	movq %r12, -424(%rbp)		# movq %r(565), -424(%rbp)
	movq -424(%rbp), %r12		# movq -424(%rbp), %r(566)
	movq (%r12), %r12		# movq (%r(566)), %r(389)
	cmpq %r12, %rbx		# cmpq %r(389), %r(267)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(390)
	movq -256(%rbp), %r13		# movq -256(%rbp), %r(567)
	addq %rbx, %r13		# addq %r(390), %r(391)
	movq (%r13), %r12		# movq (%r(391)), %r(392)
	movq %r12, -384(%rbp)		# movq %r(568), -384(%rbp)
	movq $0, %rbx		# movq $0, %r(393)
	movq $8, %r13		# movq $8, %r(394)
	movq -384(%rbp), %r14		# movq -384(%rbp), %r(569)
	movq %r14, -448(%rbp)		# movq %r(570), -448(%rbp)
	movq -448(%rbp), %r12		# movq -448(%rbp), %r(571)
	subq %r13, %r12		# subq %r(394), %r(571)
	movq %r12, -448(%rbp)		# movq %r(571), -448(%rbp)
	movq -448(%rbp), %r12		# movq -448(%rbp), %r(572)
	movq (%r12), %r12		# movq (%r(572)), %r(396)
	cmpq %r12, %rbx		# cmpq %r(396), %r(269)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(397)
	movq -384(%rbp), %r13		# movq -384(%rbp), %r(573)
	addq %rbx, %r13		# addq %r(397), %r(398)
	movq -440(%rbp), %rbx		# movq -440(%rbp), %r(574)
	movq %rbx, (%r13)		# movq %r(574), (%r(398))
	movq -352(%rbp), %r12		# movq -352(%rbp), %r(575)
	movq %r12, -368(%rbp)		# movq %r(576), -368(%rbp)
	movq $0, %rbx		# movq $0, %r(399)
	movq $8, %r13		# movq $8, %r(400)
	movq -368(%rbp), %r14		# movq -368(%rbp), %r(577)
	movq %r14, -40(%rbp)		# movq %r(578), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(579)
	subq %r13, %r12		# subq %r(400), %r(579)
	movq %r12, -40(%rbp)		# movq %r(579), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(580)
	movq (%r12), %r12		# movq (%r(580)), %r(402)
	cmpq %r12, %rbx		# cmpq %r(402), %r(280)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(403)
	movq -368(%rbp), %r13		# movq -368(%rbp), %r(581)
	addq %rbx, %r13		# addq %r(403), %r(404)
	movq (%r13), %rbx		# movq (%r(404)), %r(405)
	movq %rbx, %rdi		# movq %r(405), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(301)
	movq %rbx, %rdi		# movq %r(301), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(406)
	movq %r12, -72(%rbp)		# movq %r(582), -72(%rbp)
	movq -320(%rbp), %r12		# movq -320(%rbp), %r(583)
	movq %r12, -152(%rbp)		# movq %r(584), -152(%rbp)
	movq $0, %rbx		# movq $0, %r(407)
	movq $8, %r13		# movq $8, %r(408)
	movq -152(%rbp), %r14		# movq -152(%rbp), %r(585)
	movq %r14, -16(%rbp)		# movq %r(586), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(587)
	subq %r13, %r12		# subq %r(408), %r(587)
	movq %r12, -16(%rbp)		# movq %r(587), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(588)
	movq (%r12), %r12		# movq (%r(588)), %r(410)
	cmpq %r12, %rbx		# cmpq %r(410), %r(282)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(411)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(589)
	addq %rbx, %r13		# addq %r(411), %r(412)
	movq (%r13), %r12		# movq (%r(412)), %r(413)
	movq %r12, -248(%rbp)		# movq %r(590), -248(%rbp)
	movq $0, %rbx		# movq $0, %r(414)
	movq $8, %r13		# movq $8, %r(415)
	movq -248(%rbp), %r14		# movq -248(%rbp), %r(591)
	movq %r14, -400(%rbp)		# movq %r(592), -400(%rbp)
	movq -400(%rbp), %r12		# movq -400(%rbp), %r(593)
	subq %r13, %r12		# subq %r(415), %r(593)
	movq %r12, -400(%rbp)		# movq %r(593), -400(%rbp)
	movq -400(%rbp), %r12		# movq -400(%rbp), %r(594)
	movq (%r12), %r12		# movq (%r(594)), %r(417)
	cmpq %r12, %rbx		# cmpq %r(417), %r(284)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(418)
	movq -248(%rbp), %r13		# movq -248(%rbp), %r(595)
	addq %rbx, %r13		# addq %r(418), %r(419)
	movq (%r13), %r13		# movq (%r(419)), %r(420)
	movq $1, %r12		# movq $1, %r(421)
	xorq %r12, %r13		# xorq %r(421), %r(422)
	testq $1, %r13		# testq $1, %r(422)
	jne .L97		# jne .L97
	.L98:		# .L98:
	movq -320(%rbp), %rbx		# movq -320(%rbp), %r(596)
	movq $1, %r13		# movq $1, %r(423)
	movq %r13, -264(%rbp)		# movq %r(597), -264(%rbp)
	movq $8, %r12		# movq $8, %r(424)
	movq %rbx, %r14		# movq %r(285), %r(425)
	subq %r12, %r14		# subq %r(424), %r(425)
	movq (%r14), %r12		# movq (%r(425)), %r(426)
	movq -264(%rbp), %r13		# movq -264(%rbp), %r(598)
	cmpq %r12, %r13		# cmpq %r(426), %r(598)
	jae error_outofbounds		# jae error_outofbounds
	movq -264(%rbp), %r13		# movq -264(%rbp), %r(599)
	salq $3, %r13		# salq $3, %r(427)
	addq %r13, %rbx		# addq %r(427), %r(428)
	movq (%rbx), %rbx		# movq (%r(428)), %r(429)
	movq $1, %r13		# movq $1, %r(430)
	movq %r13, -184(%rbp)		# movq %r(600), -184(%rbp)
	movq $8, %r12		# movq $8, %r(431)
	movq %rbx, %r14		# movq %r(287), %r(432)
	subq %r12, %r14		# subq %r(431), %r(432)
	movq (%r14), %r12		# movq (%r(432)), %r(433)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(601)
	cmpq %r12, %r13		# cmpq %r(433), %r(601)
	jae error_outofbounds		# jae error_outofbounds
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(602)
	salq $3, %r13		# salq $3, %r(434)
	addq %r13, %rbx		# addq %r(434), %r(435)
	movq (%rbx), %rbx		# movq (%r(435)), %r(436)
	testq $1, %rbx		# testq $1, %r(436)
	jne .L96		# jne .L96
	.L97:		# .L97:
	movq $0, %r12		# movq $0, %r(437)
	movq %r12, -72(%rbp)		# movq %r(603), -72(%rbp)
	.L96:		# .L96:
	movq $0, %rbx		# movq $0, %r(438)
	movq -344(%rbp), %r13		# movq -344(%rbp), %r(604)
	addq %rbx, %r13		# addq %r(438), %r(439)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(605)
	movq %rbx, (%r13)		# movq %r(605), (%r(439))
	movq $8, %rbx		# movq $8, %r(440)
	movq -344(%rbp), %r13		# movq -344(%rbp), %r(606)
	addq %rbx, %r13		# addq %r(440), %r(441)
	movq -352(%rbp), %rbx		# movq -352(%rbp), %r(607)
	movq %rbx, (%r13)		# movq %r(607), (%r(441))
	jmp .L64		# jmp .L64
	.L64:		# .L64:
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
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $16, %rbx		# movq $16, %r(608)
	movq %rbx, %rdi		# movq %r(608), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(303)
	leaq .L100(%rip), %rdi		# leaq .L100(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(636)
	movq %r12, -40(%rbp)		# movq %r(636), -40(%rbp)
	movq $1, %r12		# movq $1, %r(637)
	movq %r12, -48(%rbp)		# movq %r(637), -48(%rbp)
	movq $0, %r13		# movq $0, %r(611)
	movq $1, %r12		# movq $1, %r(638)
	movq %r12, -32(%rbp)		# movq %r(638), -32(%rbp)
	movq $2, %r12		# movq $2, %r(630)
	movq %r12, -24(%rbp)		# movq %r(630), -24(%rbp)
	movq $3, %r12		# movq $3, %r(631)
	movq %r12, -8(%rbp)		# movq %r(631), -8(%rbp)
	movq $4, %r12		# movq $4, %r(632)
	movq %r12, -16(%rbp)		# movq %r(632), -16(%rbp)
	movq %rbx, %rdi		# movq %r(292), %rdi
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(639)
	movq %r12, %rsi		# movq %r(639), %rsi
	movq %r13, %rdx		# movq %r(611), %rdx
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(640)
	movq %r12, %rcx		# movq %r(640), %rcx
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(633)
	movq %r12, %r8		# movq %r(633), %r8
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(634)
	movq %r12, %r9		# movq %r(634), %r9
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(641)
	pushq %r12		# pushq %r(641)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(635)
	pushq %r12		# pushq %r(635)
	call _IIam____t2baiibbiiiai		# call _IIam____t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq 0(%rbx), %r12		# movq 0(%r(292)), %r(toB)
	movq 8(%rbx), %rbx		# movq 8(%r(292)), %r(645)
	movq %rbx, -80(%rbp)		# movq %r(645), -80(%rbp)
	testq $1, %r12		# testq $1, %r(toB)
	jne .L101		# jne .L101
	.L103:		# .L103:
	movq $1, %rbx		# movq $1, %r(616)
	xorq %rbx, %r12		# xorq %r(616), %r(617)
	movq $1, %rbx		# movq $1, %r(618)
	xorq %rbx, %r12		# xorq %r(618), %r(619)
	testq $1, %r12		# testq $1, %r(619)
	jne .L102		# jne .L102
	.L101:		# .L101:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(646)
	movq %rbx, %rdi		# movq %r(646), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L102:		# .L102:
	movq $1, %r12		# movq $1, %r(620)
	movq %r12, -56(%rbp)		# movq %r(642), -56(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(647)
	movq %r12, -64(%rbp)		# movq %r(648), -64(%rbp)
	movq $0, %rbx		# movq $0, %r(649)
	movq %rbx, -96(%rbp)		# movq %r(649), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(650)
	movq %r12, -72(%rbp)		# movq %r(651), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(622)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(652)
	subq %rbx, %r13		# subq %r(622), %r(623)
	movq (%r13), %rbx		# movq (%r(623)), %r(624)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(653)
	cmpq %rbx, %r12		# cmpq %r(624), %r(653)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(654)
	movq %r12, -88(%rbp)		# movq %r(655), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(656)
	salq $3, %rbx		# salq $3, %r(656)
	movq %rbx, -88(%rbp)		# movq %r(656), -88(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(657)
	movq %r12, -104(%rbp)		# movq %r(658), -104(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(659)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(660)
	addq %rbx, %r12		# addq %r(659), %r(660)
	movq %r12, -104(%rbp)		# movq %r(660), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(661)
	movq (%rbx), %rbx		# movq (%r(661)), %r(627)
	movq $72, %r12		# movq $72, %r(628)
	cmpq %r12, %rbx		# cmpq %r(628), %r(627)
	je .L106		# je .L106
	.L107:		# .L107:
	movq $0, %r12		# movq $0, %r(629)
	movq %r12, -56(%rbp)		# movq %r(643), -56(%rbp)
	.L106:		# .L106:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(644)
	movq %rbx, %rdi		# movq %r(644), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L99:		# .L99:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
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
	movq (%rbx), %r12		# movq (%r(675)), %r(662)
	movq %r12, -24(%rbp)		# movq %r(676), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(677)
	salq $3, %rbx		# salq $3, %r(663)
	movq $8, %r12		# movq $8, %r(664)
	addq %r12, %rbx		# addq %r(664), %r(665)
	movq %rbx, %rdi		# movq %r(665), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(308)
	movq %rbx, %r14		# movq %r(308), %r(t27)
	.L24:		# .L24:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(678)
	salq $3, %r12		# salq $3, %r(666)
	movq %r14, %r13		# movq %r(t27), %r(667)
	addq %r12, %r13		# addq %r(666), %r(667)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(679)
	movq %rbx, %r12		# movq %r(679), %r(668)
	salq $3, %r12		# salq $3, %r(668)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(680)
	movq %rbx, -16(%rbp)		# movq %r(681), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(682)
	addq %r12, %rbx		# addq %r(668), %r(682)
	movq %rbx, -16(%rbp)		# movq %r(682), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(683)
	movq (%rbx), %rbx		# movq (%r(683)), %r(670)
	movq %rbx, (%r13)		# movq %r(670), (%r(667))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(684)
	decq %rbx		# decq %r(684)
	movq %rbx, -24(%rbp)		# movq %r(684), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(671)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(685)
	cmpq %rbx, %r12		# cmpq %r(671), %r(685)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(672)
	movq %r14, %r12		# movq %r(t27), %r(673)
	addq %rbx, %r12		# addq %r(672), %r(673)
	movq %r12, %rax		# movq %r(673), %rax
	.L26:		# .L26:
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
.L100:
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
