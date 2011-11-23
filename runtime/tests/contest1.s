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
	movq %rdi, %rbx		# movq %rdi, %r(427)
	movq %rbx, -56(%rbp)		# movq %r(427), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(428)
	movq %rbx, -272(%rbp)		# movq %r(428), -272(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(429)
	movq %rbx, -224(%rbp)		# movq %r(429), -224(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(430)
	movq %rbx, -400(%rbp)		# movq %r(430), -400(%rbp)
	movq %r8, %rbx		# movq %r8, %r(431)
	movq %rbx, -192(%rbp)		# movq %r(431), -192(%rbp)
	movq %r9, %rbx		# movq %r9, %r(432)
	movq %rbx, -168(%rbp)		# movq %r(432), -168(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(433)
	movq %rbx, -320(%rbp)		# movq %r(433), -320(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(434)
	movq %rbx, -128(%rbp)		# movq %r(434), -128(%rbp)
	movq $24, %rbx		# movq $24, %r(435)
	movq %rbx, -96(%rbp)		# movq %r(435), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(436)
	movq %rbx, %rdi		# movq %r(436), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(437)
	movq %rbx, -312(%rbp)		# movq %r(437), -312(%rbp)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(438)
	movq %r12, -408(%rbp)		# movq %r(439), -408(%rbp)
	movq $2, %rbx		# movq $2, %r(440)
	movq %rbx, -256(%rbp)		# movq %r(440), -256(%rbp)
	movq -408(%rbp), %rbx		# movq -408(%rbp), %r(441)
	movq -256(%rbp), %r12		# movq -256(%rbp), %r(442)
	movq %r12, (%rbx)		# movq %r(442), (%r(441))
	movq $8, %rbx		# movq $8, %r(443)
	movq %rbx, -64(%rbp)		# movq %r(443), -64(%rbp)
	movq -408(%rbp), %r12		# movq -408(%rbp), %r(444)
	movq %r12, -248(%rbp)		# movq %r(445), -248(%rbp)
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(446)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(447)
	addq %r12, %rbx		# addq %r(447), %r(446)
	movq %rbx, -248(%rbp)		# movq %r(446), -248(%rbp)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(448)
	movq %r12, -304(%rbp)		# movq %r(449), -304(%rbp)
	movq $24, %rbx		# movq $24, %r(450)
	movq %rbx, -344(%rbp)		# movq %r(450), -344(%rbp)
	movq -344(%rbp), %rbx		# movq -344(%rbp), %r(451)
	movq %rbx, %rdi		# movq %r(451), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(452)
	movq %rbx, -432(%rbp)		# movq %r(452), -432(%rbp)
	movq -432(%rbp), %r12		# movq -432(%rbp), %r(453)
	movq %r12, -464(%rbp)		# movq %r(454), -464(%rbp)
	movq $2, %rbx		# movq $2, %r(455)
	movq %rbx, -264(%rbp)		# movq %r(455), -264(%rbp)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(456)
	movq -464(%rbp), %r12		# movq -464(%rbp), %r(457)
	movq %rbx, (%r12)		# movq %r(456), (%r(457))
	movq $8, %rbx		# movq $8, %r(458)
	movq %rbx, -280(%rbp)		# movq %r(458), -280(%rbp)
	movq -464(%rbp), %r12		# movq -464(%rbp), %r(459)
	movq %r12, -120(%rbp)		# movq %r(460), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(461)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(462)
	addq %r12, %rbx		# addq %r(462), %r(461)
	movq %rbx, -120(%rbp)		# movq %r(461), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(463)
	movq %r12, -8(%rbp)		# movq %r(464), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(465)
	movq %rbx, -448(%rbp)		# movq %r(465), -448(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(466)
	movq %r12, -416(%rbp)		# movq %r(467), -416(%rbp)
	movq -448(%rbp), %rbx		# movq -448(%rbp), %r(468)
	movq -416(%rbp), %r12		# movq -416(%rbp), %r(469)
	addq %rbx, %r12		# addq %r(468), %r(469)
	movq %r12, -416(%rbp)		# movq %r(469), -416(%rbp)
	movq $1, %rbx		# movq $1, %r(470)
	movq %rbx, -176(%rbp)		# movq %r(470), -176(%rbp)
	movq -224(%rbp), %r13		# movq -224(%rbp), %r(471)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(472)
	xorq %r12, %r13		# xorq %r(472), %r(306)
	movq -416(%rbp), %r12		# movq -416(%rbp), %r(473)
	movq %r13, (%r12)		# movq %r(306), (%r(473))
	movq $1, %r13		# movq $1, %r(307)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(474)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(475)
	cmpq %rbx, %r12		# cmpq %r(474), %r(475)
	jl .L63		# jl .L63
	.L64:		# .L64:
	movq $0, %r13		# movq $0, %r(308)
	.L63:		# .L63:
	movq $8, %rbx		# movq $8, %r(476)
	movq %rbx, -240(%rbp)		# movq %r(476), -240(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(477)
	movq %r12, -152(%rbp)		# movq %r(478), -152(%rbp)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(479)
	movq -152(%rbp), %r12		# movq -152(%rbp), %r(480)
	addq %rbx, %r12		# addq %r(479), %r(480)
	movq %r12, -152(%rbp)		# movq %r(480), -152(%rbp)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(481)
	movq %r13, (%rbx)		# movq %r(245), (%r(481))
	movq $0, %r12		# movq $0, %r(311)
	movq -304(%rbp), %r13		# movq -304(%rbp), %r(482)
	movq %r13, -456(%rbp)		# movq %r(483), -456(%rbp)
	movq -456(%rbp), %rbx		# movq -456(%rbp), %r(484)
	addq %r12, %rbx		# addq %r(311), %r(484)
	movq %rbx, -456(%rbp)		# movq %r(484), -456(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(485)
	movq -456(%rbp), %r12		# movq -456(%rbp), %r(486)
	movq %rbx, (%r12)		# movq %r(485), (%r(486))
	movq $24, %rbx		# movq $24, %r(313)
	movq %rbx, %rdi		# movq %r(313), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(285)
	movq %r12, -48(%rbp)		# movq %r(487), -48(%rbp)
	movq $2, %rbx		# movq $2, %r(314)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(488)
	movq %rbx, (%r12)		# movq %r(314), (%r(488))
	movq $8, %rbx		# movq $8, %r(489)
	movq %rbx, -392(%rbp)		# movq %r(489), -392(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(490)
	movq -392(%rbp), %r12		# movq -392(%rbp), %r(491)
	addq %r12, %rbx		# addq %r(491), %r(316)
	movq %rbx, -296(%rbp)		# movq %r(492), -296(%rbp)
	movq $0, %r12		# movq $0, %r(317)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(493)
	movq %r13, -136(%rbp)		# movq %r(494), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(495)
	addq %r12, %rbx		# addq %r(317), %r(495)
	movq %rbx, -136(%rbp)		# movq %r(495), -136(%rbp)
	movq $1, %rbx		# movq $1, %r(319)
	movq -400(%rbp), %r13		# movq -400(%rbp), %r(496)
	xorq %rbx, %r13		# xorq %r(319), %r(320)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(497)
	movq %r13, (%rbx)		# movq %r(320), (%r(497))
	movq $1, %r13		# movq $1, %r(321)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(498)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(499)
	cmpq %r12, %rbx		# cmpq %r(499), %r(498)
	jge .L65		# jge .L65
	.L66:		# .L66:
	movq $0, %r13		# movq $0, %r(322)
	.L65:		# .L65:
	movq $8, %r12		# movq $8, %r(323)
	movq -296(%rbp), %r14		# movq -296(%rbp), %r(500)
	addq %r12, %r14		# addq %r(323), %r(324)
	movq %r13, (%r14)		# movq %r(248), (%r(324))
	movq $8, %rbx		# movq $8, %r(325)
	movq -304(%rbp), %r13		# movq -304(%rbp), %r(501)
	addq %rbx, %r13		# addq %r(325), %r(326)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(502)
	movq %rbx, (%r13)		# movq %r(502), (%r(326))
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(503)
	movq %r12, -72(%rbp)		# movq %r(504), -72(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(505)
	movq %r12, -424(%rbp)		# movq %r(506), -424(%rbp)
	movq $0, %r12		# movq $0, %r(327)
	movq %r12, -376(%rbp)		# movq %r(507), -376(%rbp)
	movq $8, %rbx		# movq $8, %r(328)
	movq -424(%rbp), %r13		# movq -424(%rbp), %r(508)
	subq %rbx, %r13		# subq %r(328), %r(329)
	movq (%r13), %rbx		# movq (%r(329)), %r(330)
	movq -376(%rbp), %r12		# movq -376(%rbp), %r(509)
	cmpq %rbx, %r12		# cmpq %r(330), %r(509)
	jae error_outofbounds		# jae error_outofbounds
	movq -376(%rbp), %r13		# movq -376(%rbp), %r(510)
	salq $3, %r13		# salq $3, %r(331)
	movq -424(%rbp), %rbx		# movq -424(%rbp), %r(511)
	movq %rbx, -80(%rbp)		# movq %r(512), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(513)
	addq %r13, %r12		# addq %r(331), %r(513)
	movq %r12, -80(%rbp)		# movq %r(513), -80(%rbp)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(514)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(515)
	imulq %r12, %r13		# imulq %r(515), %r(333)
	movq -320(%rbp), %r12		# movq -320(%rbp), %r(516)
	imulq %r12, %r13		# imulq %r(516), %r(334)
	movq $17179869184, %r12		# movq $17179869184, %r(335)
	imulq %r12, %r13		# imulq %r(335), %r(336)
	movq $72, %r12		# movq $72, %r(337)
	addq %r12, %r13		# addq %r(337), %r(338)
	movq $128, %r12		# movq $128, %r(339)
	movq %r13, %rax		# movq %r(338), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(339)
	movq %rdx, %rbx		# movq %rdx, %r(340)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(517)
	movq %rbx, (%r12)		# movq %r(340), (%r(517))
	movq $1, %r12		# movq $1, %r(341)
	movq %r12, -440(%rbp)		# movq %r(518), -440(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(519)
	movq %r12, -288(%rbp)		# movq %r(520), -288(%rbp)
	movq $0, %rbx		# movq $0, %r(342)
	movq $8, %r13		# movq $8, %r(343)
	movq -288(%rbp), %r14		# movq -288(%rbp), %r(521)
	movq %r14, -208(%rbp)		# movq %r(522), -208(%rbp)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(523)
	subq %r13, %r12		# subq %r(343), %r(523)
	movq %r12, -208(%rbp)		# movq %r(523), -208(%rbp)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(524)
	movq (%r12), %r12		# movq (%r(524)), %r(345)
	cmpq %r12, %rbx		# cmpq %r(345), %r(256)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(346)
	movq -288(%rbp), %r13		# movq -288(%rbp), %r(525)
	addq %rbx, %r13		# addq %r(346), %r(347)
	movq (%r13), %r12		# movq (%r(347)), %r(348)
	movq %r12, -360(%rbp)		# movq %r(526), -360(%rbp)
	movq $0, %rbx		# movq $0, %r(349)
	movq $8, %r13		# movq $8, %r(350)
	movq -360(%rbp), %r14		# movq -360(%rbp), %r(527)
	movq %r14, -40(%rbp)		# movq %r(528), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(529)
	subq %r13, %r12		# subq %r(350), %r(529)
	movq %r12, -40(%rbp)		# movq %r(529), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(530)
	movq (%r12), %r12		# movq (%r(530)), %r(352)
	cmpq %r12, %rbx		# cmpq %r(352), %r(258)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(353)
	movq -360(%rbp), %r13		# movq -360(%rbp), %r(531)
	addq %rbx, %r13		# addq %r(353), %r(354)
	movq (%r13), %rbx		# movq (%r(354)), %r(355)
	testq $1, %rbx		# testq $1, %r(355)
	jne .L81		# jne .L81
	.L83:		# .L83:
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(532)
	movq %r12, -232(%rbp)		# movq %r(533), -232(%rbp)
	movq $1, %rbx		# movq $1, %r(356)
	movq $8, %r13		# movq $8, %r(357)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(534)
	movq %r14, -336(%rbp)		# movq %r(535), -336(%rbp)
	movq -336(%rbp), %r12		# movq -336(%rbp), %r(536)
	subq %r13, %r12		# subq %r(357), %r(536)
	movq %r12, -336(%rbp)		# movq %r(536), -336(%rbp)
	movq -336(%rbp), %r12		# movq -336(%rbp), %r(537)
	movq (%r12), %r12		# movq (%r(537)), %r(359)
	cmpq %r12, %rbx		# cmpq %r(359), %r(260)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(360)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(538)
	addq %rbx, %r13		# addq %r(360), %r(361)
	movq (%r13), %r12		# movq (%r(361)), %r(362)
	movq %r12, -184(%rbp)		# movq %r(539), -184(%rbp)
	movq $1, %rbx		# movq $1, %r(363)
	movq $8, %r13		# movq $8, %r(364)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(540)
	movq %r14, -200(%rbp)		# movq %r(541), -200(%rbp)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(542)
	subq %r13, %r12		# subq %r(364), %r(542)
	movq %r12, -200(%rbp)		# movq %r(542), -200(%rbp)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(543)
	movq (%r12), %r12		# movq (%r(543)), %r(366)
	cmpq %r12, %rbx		# cmpq %r(366), %r(262)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(367)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(544)
	addq %rbx, %r13		# addq %r(367), %r(368)
	movq (%r13), %rbx		# movq (%r(368)), %r(369)
	testq $1, %rbx		# testq $1, %r(369)
	jne .L81		# jne .L81
	.L82:		# .L82:
	movq $0, %r12		# movq $0, %r(370)
	movq %r12, -440(%rbp)		# movq %r(545), -440(%rbp)
	.L81:		# .L81:
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(546)
	movq %r12, -104(%rbp)		# movq %r(547), -104(%rbp)
	movq $0, %rbx		# movq $0, %r(371)
	movq $8, %r13		# movq $8, %r(372)
	movq -104(%rbp), %r14		# movq -104(%rbp), %r(548)
	movq %r14, -16(%rbp)		# movq %r(549), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(550)
	subq %r13, %r12		# subq %r(372), %r(550)
	movq %r12, -16(%rbp)		# movq %r(550), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(551)
	movq (%r12), %r12		# movq (%r(551)), %r(374)
	cmpq %r12, %rbx		# cmpq %r(374), %r(252)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(375)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(552)
	addq %rbx, %r13		# addq %r(375), %r(376)
	movq (%r13), %r12		# movq (%r(376)), %r(377)
	movq %r12, -112(%rbp)		# movq %r(553), -112(%rbp)
	movq $0, %rbx		# movq $0, %r(378)
	movq $8, %r13		# movq $8, %r(379)
	movq -112(%rbp), %r14		# movq -112(%rbp), %r(554)
	movq %r14, -352(%rbp)		# movq %r(555), -352(%rbp)
	movq -352(%rbp), %r12		# movq -352(%rbp), %r(556)
	subq %r13, %r12		# subq %r(379), %r(556)
	movq %r12, -352(%rbp)		# movq %r(556), -352(%rbp)
	movq -352(%rbp), %r12		# movq -352(%rbp), %r(557)
	movq (%r12), %r12		# movq (%r(557)), %r(381)
	cmpq %r12, %rbx		# cmpq %r(381), %r(254)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(382)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(558)
	addq %rbx, %r13		# addq %r(382), %r(383)
	movq -440(%rbp), %rbx		# movq -440(%rbp), %r(559)
	movq %rbx, (%r13)		# movq %r(559), (%r(383))
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(560)
	movq %r12, -32(%rbp)		# movq %r(561), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(384)
	movq $8, %r13		# movq $8, %r(385)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(562)
	movq %r14, -368(%rbp)		# movq %r(563), -368(%rbp)
	movq -368(%rbp), %r12		# movq -368(%rbp), %r(564)
	subq %r13, %r12		# subq %r(385), %r(564)
	movq %r12, -368(%rbp)		# movq %r(564), -368(%rbp)
	movq -368(%rbp), %r12		# movq -368(%rbp), %r(565)
	movq (%r12), %r12		# movq (%r(565)), %r(387)
	cmpq %r12, %rbx		# cmpq %r(387), %r(265)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(388)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(566)
	addq %rbx, %r13		# addq %r(388), %r(389)
	movq (%r13), %rbx		# movq (%r(389)), %r(390)
	movq %rbx, %rdi		# movq %r(390), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(286)
	movq %rbx, %rdi		# movq %r(286), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(391)
	movq %r12, -24(%rbp)		# movq %r(567), -24(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(568)
	movq %r12, -88(%rbp)		# movq %r(569), -88(%rbp)
	movq $0, %rbx		# movq $0, %r(392)
	movq $8, %r13		# movq $8, %r(393)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(570)
	movq %r14, -160(%rbp)		# movq %r(571), -160(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(572)
	subq %r13, %r12		# subq %r(393), %r(572)
	movq %r12, -160(%rbp)		# movq %r(572), -160(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(573)
	movq (%r12), %r12		# movq (%r(573)), %r(395)
	cmpq %r12, %rbx		# cmpq %r(395), %r(267)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(396)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(574)
	addq %rbx, %r13		# addq %r(396), %r(397)
	movq (%r13), %r12		# movq (%r(397)), %r(398)
	movq %r12, -328(%rbp)		# movq %r(575), -328(%rbp)
	movq $0, %rbx		# movq $0, %r(399)
	movq $8, %r13		# movq $8, %r(400)
	movq -328(%rbp), %r14		# movq -328(%rbp), %r(576)
	movq %r14, -216(%rbp)		# movq %r(577), -216(%rbp)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(578)
	subq %r13, %r12		# subq %r(400), %r(578)
	movq %r12, -216(%rbp)		# movq %r(578), -216(%rbp)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(579)
	movq (%r12), %r12		# movq (%r(579)), %r(402)
	cmpq %r12, %rbx		# cmpq %r(402), %r(269)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(403)
	movq -328(%rbp), %r13		# movq -328(%rbp), %r(580)
	addq %rbx, %r13		# addq %r(403), %r(404)
	movq (%r13), %r13		# movq (%r(404)), %r(405)
	movq $1, %r12		# movq $1, %r(406)
	xorq %r12, %r13		# xorq %r(406), %r(407)
	testq $1, %r13		# testq $1, %r(407)
	jne .L95		# jne .L95
	.L96:		# .L96:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(581)
	movq $1, %r13		# movq $1, %r(408)
	movq %r13, -384(%rbp)		# movq %r(582), -384(%rbp)
	movq $8, %r12		# movq $8, %r(409)
	movq %rbx, %r14		# movq %r(270), %r(410)
	subq %r12, %r14		# subq %r(409), %r(410)
	movq (%r14), %r12		# movq (%r(410)), %r(411)
	movq -384(%rbp), %r13		# movq -384(%rbp), %r(583)
	cmpq %r12, %r13		# cmpq %r(411), %r(583)
	jae error_outofbounds		# jae error_outofbounds
	movq -384(%rbp), %r13		# movq -384(%rbp), %r(584)
	salq $3, %r13		# salq $3, %r(412)
	addq %r13, %rbx		# addq %r(412), %r(413)
	movq (%rbx), %rbx		# movq (%r(413)), %r(414)
	movq $1, %r13		# movq $1, %r(415)
	movq %r13, -144(%rbp)		# movq %r(585), -144(%rbp)
	movq $8, %r12		# movq $8, %r(416)
	movq %rbx, %r14		# movq %r(272), %r(417)
	subq %r12, %r14		# subq %r(416), %r(417)
	movq (%r14), %r12		# movq (%r(417)), %r(418)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(586)
	cmpq %r12, %r13		# cmpq %r(418), %r(586)
	jae error_outofbounds		# jae error_outofbounds
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(587)
	salq $3, %r13		# salq $3, %r(419)
	addq %r13, %rbx		# addq %r(419), %r(420)
	movq (%rbx), %rbx		# movq (%r(420)), %r(421)
	testq $1, %rbx		# testq $1, %r(421)
	jne .L94		# jne .L94
	.L95:		# .L95:
	movq $0, %r12		# movq $0, %r(422)
	movq %r12, -24(%rbp)		# movq %r(588), -24(%rbp)
	.L94:		# .L94:
	movq $0, %rbx		# movq $0, %r(423)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(589)
	addq %rbx, %r13		# addq %r(423), %r(424)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(590)
	movq %rbx, (%r13)		# movq %r(590), (%r(424))
	movq $8, %rbx		# movq $8, %r(425)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(591)
	addq %rbx, %r13		# addq %r(425), %r(426)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(592)
	movq %rbx, (%r13)		# movq %r(592), (%r(426))
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
	movq $16, %rbx		# movq $16, %r(593)
	movq %rbx, %rdi		# movq %r(593), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(288)
	leaq .L98(%rip), %rdi		# leaq .L98(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(621)
	movq %r12, -40(%rbp)		# movq %r(621), -40(%rbp)
	movq $1, %r12		# movq $1, %r(622)
	movq %r12, -48(%rbp)		# movq %r(622), -48(%rbp)
	movq $0, %r13		# movq $0, %r(596)
	movq $1, %r12		# movq $1, %r(623)
	movq %r12, -32(%rbp)		# movq %r(623), -32(%rbp)
	movq $2, %r12		# movq $2, %r(615)
	movq %r12, -24(%rbp)		# movq %r(615), -24(%rbp)
	movq $3, %r12		# movq $3, %r(616)
	movq %r12, -16(%rbp)		# movq %r(616), -16(%rbp)
	movq $4, %r12		# movq $4, %r(617)
	movq %r12, -8(%rbp)		# movq %r(617), -8(%rbp)
	movq %rbx, %rdi		# movq %r(277), %rdi
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(624)
	movq %r12, %rsi		# movq %r(624), %rsi
	movq %r13, %rdx		# movq %r(596), %rdx
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(625)
	movq %r12, %rcx		# movq %r(625), %rcx
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(618)
	movq %r12, %r8		# movq %r(618), %r8
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(619)
	movq %r12, %r9		# movq %r(619), %r9
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(620)
	pushq %r12		# pushq %r(620)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(626)
	pushq %r12		# pushq %r(626)
	call _IIam'___t2baiibbiiiai		# call _IIam'___t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq 0(%rbx), %r12		# movq 0(%r(277)), %r(toB)
	movq 8(%rbx), %r13		# movq 8(%r(277)), %r(a)
	testq $1, %r12		# testq $1, %r(toB)
	jne .L99		# jne .L99
	.L101:		# .L101:
	movq $1, %rbx		# movq $1, %r(601)
	xorq %rbx, %r12		# xorq %r(601), %r(602)
	movq $1, %rbx		# movq $1, %r(603)
	xorq %rbx, %r12		# xorq %r(603), %r(604)
	testq $1, %r12		# testq $1, %r(604)
	jne .L100		# jne .L100
	.L99:		# .L99:
	movq %r13, %rdi		# movq %r(a), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L100:		# .L100:
	movq $1, %rbx		# movq $1, %r(605)
	movq %rbx, %r15		# movq %r(605), %r(282)
	movq %r13, %r14		# movq %r(a), %r(280)
	movq $0, %rbx		# movq $0, %r(606)
	movq %rbx, %r12		# movq %r(606), %r(281)
	movq $8, %rbx		# movq $8, %r(607)
	movq %r14, %r13		# movq %r(280), %r(608)
	subq %rbx, %r13		# subq %r(607), %r(608)
	movq (%r13), %rbx		# movq (%r(608)), %r(609)
	cmpq %rbx, %r12		# cmpq %r(609), %r(281)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(610)
	movq %r14, %rbx		# movq %r(280), %r(611)
	addq %r12, %rbx		# addq %r(610), %r(611)
	movq (%rbx), %rbx		# movq (%r(611)), %r(612)
	movq $72, %r12		# movq $72, %r(613)
	cmpq %r12, %rbx		# cmpq %r(613), %r(612)
	je .L104		# je .L104
	.L105:		# .L105:
	movq $0, %rbx		# movq $0, %r(614)
	movq %rbx, %r15		# movq %r(614), %r(282)
	.L104:		# .L104:
	movq %r15, %rdi		# movq %r(282), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(639)
	movq %rbx, -8(%rbp)		# movq %r(639), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(640)
	movq (%rbx), %rbx		# movq (%r(640)), %r(627)
	movq %rbx, %r14		# movq %r(627), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(628)
	salq $3, %rbx		# salq $3, %r(628)
	movq $8, %r12		# movq $8, %r(629)
	addq %r12, %rbx		# addq %r(629), %r(630)
	movq %rbx, %rdi		# movq %r(630), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(293)
	movq %rbx, %r13		# movq %r(293), %r(t27)
	.L24:		# .L24:
	movq %r14, %rbx		# movq %r(t10), %r(631)
	salq $3, %rbx		# salq $3, %r(631)
	movq %r13, %r15		# movq %r(t27), %r(632)
	addq %rbx, %r15		# addq %r(631), %r(632)
	movq %r14, %r12		# movq %r(t10), %r(633)
	salq $3, %r12		# salq $3, %r(633)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(641)
	movq %rbx, -16(%rbp)		# movq %r(642), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(643)
	addq %r12, %rbx		# addq %r(633), %r(643)
	movq %rbx, -16(%rbp)		# movq %r(643), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(644)
	movq (%rbx), %rbx		# movq (%r(644)), %r(635)
	movq %rbx, (%r15)		# movq %r(635), (%r(632))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(636)
	cmpq %rbx, %r14		# cmpq %r(636), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(637)
	movq %r13, %r12		# movq %r(t27), %r(638)
	addq %rbx, %r12		# addq %r(637), %r(638)
	movq %r12, %rax		# movq %r(638), %rax
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
