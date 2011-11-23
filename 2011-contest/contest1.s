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
	movq %rdi, %rbx		# movq %rdi, %r(356)
	movq %rbx, -128(%rbp)		# movq %r(356), -128(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(357)
	movq %rbx, -216(%rbp)		# movq %r(357), -216(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(358)
	movq %rbx, -440(%rbp)		# movq %r(358), -440(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(359)
	movq %rbx, -456(%rbp)		# movq %r(359), -456(%rbp)
	movq %r8, %rbx		# movq %r8, %r(360)
	movq %rbx, -312(%rbp)		# movq %r(360), -312(%rbp)
	movq %r9, %rbx		# movq %r9, %r(361)
	movq %rbx, -384(%rbp)		# movq %r(361), -384(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(362)
	movq %rbx, -232(%rbp)		# movq %r(362), -232(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(363)
	movq %rbx, -360(%rbp)		# movq %r(363), -360(%rbp)
	movq $24, %rbx		# movq $24, %r(364)
	movq %rbx, -352(%rbp)		# movq %r(364), -352(%rbp)
	movq -352(%rbp), %rbx		# movq -352(%rbp), %r(365)
	movq %rbx, %rdi		# movq %r(365), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(366)
	movq %rbx, -168(%rbp)		# movq %r(366), -168(%rbp)
	movq -168(%rbp), %r12		# movq -168(%rbp), %r(367)
	movq %r12, -8(%rbp)		# movq %r(368), -8(%rbp)
	movq $2, %rbx		# movq $2, %r(369)
	movq %rbx, -64(%rbp)		# movq %r(369), -64(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(370)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(371)
	movq %r12, (%rbx)		# movq %r(371), (%r(370))
	movq $8, %rbx		# movq $8, %r(372)
	movq %rbx, -296(%rbp)		# movq %r(372), -296(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(373)
	movq %r12, -400(%rbp)		# movq %r(374), -400(%rbp)
	movq -400(%rbp), %rbx		# movq -400(%rbp), %r(375)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(376)
	addq %r12, %rbx		# addq %r(376), %r(375)
	movq %rbx, -400(%rbp)		# movq %r(375), -400(%rbp)
	movq -400(%rbp), %r12		# movq -400(%rbp), %r(377)
	movq %r12, -96(%rbp)		# movq %r(378), -96(%rbp)
	movq $24, %rbx		# movq $24, %r(379)
	movq %rbx, -152(%rbp)		# movq %r(379), -152(%rbp)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(380)
	movq %rbx, %rdi		# movq %r(380), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(381)
	movq %rbx, -240(%rbp)		# movq %r(381), -240(%rbp)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(382)
	movq %r12, -200(%rbp)		# movq %r(383), -200(%rbp)
	movq $2, %rbx		# movq $2, %r(384)
	movq %rbx, -192(%rbp)		# movq %r(384), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(385)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(386)
	movq %rbx, (%r12)		# movq %r(385), (%r(386))
	movq $8, %rbx		# movq $8, %r(387)
	movq %rbx, -264(%rbp)		# movq %r(387), -264(%rbp)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(388)
	movq %r12, -448(%rbp)		# movq %r(389), -448(%rbp)
	movq -448(%rbp), %rbx		# movq -448(%rbp), %r(390)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(391)
	addq %r12, %rbx		# addq %r(391), %r(390)
	movq %rbx, -448(%rbp)		# movq %r(390), -448(%rbp)
	movq -448(%rbp), %r12		# movq -448(%rbp), %r(392)
	movq %r12, -104(%rbp)		# movq %r(393), -104(%rbp)
	movq $0, %rbx		# movq $0, %r(394)
	movq %rbx, -376(%rbp)		# movq %r(394), -376(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(395)
	movq %r12, -176(%rbp)		# movq %r(396), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(397)
	movq -376(%rbp), %r12		# movq -376(%rbp), %r(398)
	addq %r12, %rbx		# addq %r(398), %r(397)
	movq %rbx, -176(%rbp)		# movq %r(397), -176(%rbp)
	movq $1, %rbx		# movq $1, %r(399)
	movq %rbx, -408(%rbp)		# movq %r(399), -408(%rbp)
	movq -440(%rbp), %r13		# movq -440(%rbp), %r(400)
	movq -408(%rbp), %r12		# movq -408(%rbp), %r(401)
	xorq %r12, %r13		# xorq %r(401), %r(235)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(402)
	movq %r13, (%r12)		# movq %r(235), (%r(402))
	movq $1, %r13		# movq $1, %r(236)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(403)
	movq -312(%rbp), %r12		# movq -312(%rbp), %r(404)
	cmpq %r12, %rbx		# cmpq %r(404), %r(403)
	jl .L33		# jl .L33
	.L34:		# .L34:
	movq $0, %r13		# movq $0, %r(237)
	.L33:		# .L33:
	movq $8, %rbx		# movq $8, %r(405)
	movq %rbx, -56(%rbp)		# movq %r(405), -56(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(406)
	movq %r12, -16(%rbp)		# movq %r(407), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(408)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(409)
	addq %r12, %rbx		# addq %r(409), %r(408)
	movq %rbx, -16(%rbp)		# movq %r(408), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(410)
	movq %r13, (%rbx)		# movq %r(174), (%r(410))
	movq $0, %r12		# movq $0, %r(240)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(411)
	movq %r13, -88(%rbp)		# movq %r(412), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(413)
	addq %r12, %rbx		# addq %r(240), %r(413)
	movq %rbx, -88(%rbp)		# movq %r(413), -88(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(414)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(415)
	movq %rbx, (%r12)		# movq %r(414), (%r(415))
	movq $24, %rbx		# movq $24, %r(242)
	movq %rbx, %rdi		# movq %r(242), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(214)
	movq %r12, -424(%rbp)		# movq %r(416), -424(%rbp)
	movq $2, %rbx		# movq $2, %r(243)
	movq -424(%rbp), %r12		# movq -424(%rbp), %r(417)
	movq %rbx, (%r12)		# movq %r(243), (%r(417))
	movq $8, %rbx		# movq $8, %r(418)
	movq %rbx, -24(%rbp)		# movq %r(418), -24(%rbp)
	movq -424(%rbp), %rbx		# movq -424(%rbp), %r(419)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(420)
	addq %r12, %rbx		# addq %r(420), %r(245)
	movq %rbx, -416(%rbp)		# movq %r(421), -416(%rbp)
	movq $0, %r12		# movq $0, %r(246)
	movq -416(%rbp), %r13		# movq -416(%rbp), %r(422)
	movq %r13, -72(%rbp)		# movq %r(423), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(424)
	addq %r12, %rbx		# addq %r(246), %r(424)
	movq %rbx, -72(%rbp)		# movq %r(424), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(248)
	movq -456(%rbp), %r13		# movq -456(%rbp), %r(425)
	xorq %rbx, %r13		# xorq %r(248), %r(249)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(426)
	movq %r13, (%rbx)		# movq %r(249), (%r(426))
	movq $1, %r13		# movq $1, %r(250)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(427)
	movq -384(%rbp), %r12		# movq -384(%rbp), %r(428)
	cmpq %r12, %rbx		# cmpq %r(428), %r(427)
	jge .L35		# jge .L35
	.L36:		# .L36:
	movq $0, %r13		# movq $0, %r(251)
	.L35:		# .L35:
	movq $8, %r12		# movq $8, %r(252)
	movq -416(%rbp), %r14		# movq -416(%rbp), %r(429)
	addq %r12, %r14		# addq %r(252), %r(253)
	movq %r13, (%r14)		# movq %r(177), (%r(253))
	movq $8, %rbx		# movq $8, %r(254)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(430)
	addq %rbx, %r13		# addq %r(254), %r(255)
	movq -416(%rbp), %rbx		# movq -416(%rbp), %r(431)
	movq %rbx, (%r13)		# movq %r(431), (%r(255))
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(432)
	movq %r12, -160(%rbp)		# movq %r(433), -160(%rbp)
	movq -360(%rbp), %r12		# movq -360(%rbp), %r(434)
	movq %r12, -208(%rbp)		# movq %r(435), -208(%rbp)
	movq $0, %r12		# movq $0, %r(256)
	movq %r12, -392(%rbp)		# movq %r(436), -392(%rbp)
	movq $8, %rbx		# movq $8, %r(257)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(437)
	subq %rbx, %r13		# subq %r(257), %r(258)
	movq (%r13), %rbx		# movq (%r(258)), %r(259)
	movq -392(%rbp), %r12		# movq -392(%rbp), %r(438)
	cmpq %rbx, %r12		# cmpq %r(259), %r(438)
	jae error_outofbounds		# jae error_outofbounds
	movq -392(%rbp), %r13		# movq -392(%rbp), %r(439)
	salq $3, %r13		# salq $3, %r(260)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(440)
	movq %rbx, -112(%rbp)		# movq %r(441), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(442)
	addq %r13, %r12		# addq %r(260), %r(442)
	movq %r12, -112(%rbp)		# movq %r(442), -112(%rbp)
	movq -312(%rbp), %r13		# movq -312(%rbp), %r(443)
	movq -384(%rbp), %r12		# movq -384(%rbp), %r(444)
	imulq %r12, %r13		# imulq %r(444), %r(262)
	movq -232(%rbp), %r12		# movq -232(%rbp), %r(445)
	imulq %r12, %r13		# imulq %r(445), %r(263)
	movq $17179869184, %r12		# movq $17179869184, %r(264)
	imulq %r12, %r13		# imulq %r(264), %r(265)
	movq $72, %r12		# movq $72, %r(266)
	addq %r12, %r13		# addq %r(266), %r(267)
	movq $128, %r12		# movq $128, %r(268)
	movq %r13, %rax		# movq %r(267), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(268)
	movq %rdx, %rbx		# movq %rdx, %r(269)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(446)
	movq %rbx, (%r12)		# movq %r(269), (%r(446))
	movq $1, %r12		# movq $1, %r(270)
	movq %r12, -136(%rbp)		# movq %r(447), -136(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(448)
	movq %r12, -368(%rbp)		# movq %r(449), -368(%rbp)
	movq $0, %rbx		# movq $0, %r(271)
	movq $8, %r13		# movq $8, %r(272)
	movq -368(%rbp), %r14		# movq -368(%rbp), %r(450)
	movq %r14, -288(%rbp)		# movq %r(451), -288(%rbp)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(452)
	subq %r13, %r12		# subq %r(272), %r(452)
	movq %r12, -288(%rbp)		# movq %r(452), -288(%rbp)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(453)
	movq (%r12), %r12		# movq (%r(453)), %r(274)
	cmpq %r12, %rbx		# cmpq %r(274), %r(185)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(275)
	movq -368(%rbp), %r13		# movq -368(%rbp), %r(454)
	addq %rbx, %r13		# addq %r(275), %r(276)
	movq (%r13), %r12		# movq (%r(276)), %r(277)
	movq %r12, -464(%rbp)		# movq %r(455), -464(%rbp)
	movq $0, %rbx		# movq $0, %r(278)
	movq $8, %r13		# movq $8, %r(279)
	movq -464(%rbp), %r14		# movq -464(%rbp), %r(456)
	movq %r14, -120(%rbp)		# movq %r(457), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(458)
	subq %r13, %r12		# subq %r(279), %r(458)
	movq %r12, -120(%rbp)		# movq %r(458), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(459)
	movq (%r12), %r12		# movq (%r(459)), %r(281)
	cmpq %r12, %rbx		# cmpq %r(281), %r(187)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(282)
	movq -464(%rbp), %r13		# movq -464(%rbp), %r(460)
	addq %rbx, %r13		# addq %r(282), %r(283)
	movq (%r13), %rbx		# movq (%r(283)), %r(284)
	testq $1, %rbx		# testq $1, %r(284)
	jne .L51		# jne .L51
	.L53:		# .L53:
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(461)
	movq %r12, -432(%rbp)		# movq %r(462), -432(%rbp)
	movq $1, %rbx		# movq $1, %r(285)
	movq $8, %r13		# movq $8, %r(286)
	movq -432(%rbp), %r14		# movq -432(%rbp), %r(463)
	movq %r14, -144(%rbp)		# movq %r(464), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(465)
	subq %r13, %r12		# subq %r(286), %r(465)
	movq %r12, -144(%rbp)		# movq %r(465), -144(%rbp)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(466)
	movq (%r12), %r12		# movq (%r(466)), %r(288)
	cmpq %r12, %rbx		# cmpq %r(288), %r(189)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(289)
	movq -432(%rbp), %r13		# movq -432(%rbp), %r(467)
	addq %rbx, %r13		# addq %r(289), %r(290)
	movq (%r13), %r12		# movq (%r(290)), %r(291)
	movq %r12, -320(%rbp)		# movq %r(468), -320(%rbp)
	movq $1, %rbx		# movq $1, %r(292)
	movq $8, %r13		# movq $8, %r(293)
	movq -320(%rbp), %r14		# movq -320(%rbp), %r(469)
	movq %r14, -304(%rbp)		# movq %r(470), -304(%rbp)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(471)
	subq %r13, %r12		# subq %r(293), %r(471)
	movq %r12, -304(%rbp)		# movq %r(471), -304(%rbp)
	movq -304(%rbp), %r12		# movq -304(%rbp), %r(472)
	movq (%r12), %r12		# movq (%r(472)), %r(295)
	cmpq %r12, %rbx		# cmpq %r(295), %r(191)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(296)
	movq -320(%rbp), %r13		# movq -320(%rbp), %r(473)
	addq %rbx, %r13		# addq %r(296), %r(297)
	movq (%r13), %rbx		# movq (%r(297)), %r(298)
	testq $1, %rbx		# testq $1, %r(298)
	jne .L51		# jne .L51
	.L52:		# .L52:
	movq $0, %r12		# movq $0, %r(299)
	movq %r12, -136(%rbp)		# movq %r(474), -136(%rbp)
	.L51:		# .L51:
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(475)
	movq %r12, -272(%rbp)		# movq %r(476), -272(%rbp)
	movq $0, %rbx		# movq $0, %r(300)
	movq $8, %r13		# movq $8, %r(301)
	movq -272(%rbp), %r14		# movq -272(%rbp), %r(477)
	movq %r14, -248(%rbp)		# movq %r(478), -248(%rbp)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(479)
	subq %r13, %r12		# subq %r(301), %r(479)
	movq %r12, -248(%rbp)		# movq %r(479), -248(%rbp)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(480)
	movq (%r12), %r12		# movq (%r(480)), %r(303)
	cmpq %r12, %rbx		# cmpq %r(303), %r(181)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(304)
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(481)
	addq %rbx, %r13		# addq %r(304), %r(305)
	movq (%r13), %r12		# movq (%r(305)), %r(306)
	movq %r12, -280(%rbp)		# movq %r(482), -280(%rbp)
	movq $0, %rbx		# movq $0, %r(307)
	movq $8, %r13		# movq $8, %r(308)
	movq -280(%rbp), %r14		# movq -280(%rbp), %r(483)
	movq %r14, -344(%rbp)		# movq %r(484), -344(%rbp)
	movq -344(%rbp), %r12		# movq -344(%rbp), %r(485)
	subq %r13, %r12		# subq %r(308), %r(485)
	movq %r12, -344(%rbp)		# movq %r(485), -344(%rbp)
	movq -344(%rbp), %r12		# movq -344(%rbp), %r(486)
	movq (%r12), %r12		# movq (%r(486)), %r(310)
	cmpq %r12, %rbx		# cmpq %r(310), %r(183)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(311)
	movq -280(%rbp), %r13		# movq -280(%rbp), %r(487)
	addq %rbx, %r13		# addq %r(311), %r(312)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(488)
	movq %rbx, (%r13)		# movq %r(488), (%r(312))
	movq -360(%rbp), %r12		# movq -360(%rbp), %r(489)
	movq %r12, -32(%rbp)		# movq %r(490), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(313)
	movq $8, %r13		# movq $8, %r(314)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(491)
	movq %r14, -336(%rbp)		# movq %r(492), -336(%rbp)
	movq -336(%rbp), %r12		# movq -336(%rbp), %r(493)
	subq %r13, %r12		# subq %r(314), %r(493)
	movq %r12, -336(%rbp)		# movq %r(493), -336(%rbp)
	movq -336(%rbp), %r12		# movq -336(%rbp), %r(494)
	movq (%r12), %r12		# movq (%r(494)), %r(316)
	cmpq %r12, %rbx		# cmpq %r(316), %r(194)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(317)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(495)
	addq %rbx, %r13		# addq %r(317), %r(318)
	movq (%r13), %rbx		# movq (%r(318)), %r(319)
	movq %rbx, %rdi		# movq %r(319), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(215)
	movq %rbx, %rdi		# movq %r(215), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(320)
	movq %r12, -256(%rbp)		# movq %r(496), -256(%rbp)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(497)
	movq %r12, -184(%rbp)		# movq %r(498), -184(%rbp)
	movq $0, %rbx		# movq $0, %r(321)
	movq $8, %r13		# movq $8, %r(322)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(499)
	movq %r14, -328(%rbp)		# movq %r(500), -328(%rbp)
	movq -328(%rbp), %r12		# movq -328(%rbp), %r(501)
	subq %r13, %r12		# subq %r(322), %r(501)
	movq %r12, -328(%rbp)		# movq %r(501), -328(%rbp)
	movq -328(%rbp), %r12		# movq -328(%rbp), %r(502)
	movq (%r12), %r12		# movq (%r(502)), %r(324)
	cmpq %r12, %rbx		# cmpq %r(324), %r(196)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(325)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(503)
	addq %rbx, %r13		# addq %r(325), %r(326)
	movq (%r13), %r12		# movq (%r(326)), %r(327)
	movq %r12, -224(%rbp)		# movq %r(504), -224(%rbp)
	movq $0, %rbx		# movq $0, %r(328)
	movq $8, %r13		# movq $8, %r(329)
	movq -224(%rbp), %r14		# movq -224(%rbp), %r(505)
	movq %r14, -80(%rbp)		# movq %r(506), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(507)
	subq %r13, %r12		# subq %r(329), %r(507)
	movq %r12, -80(%rbp)		# movq %r(507), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(508)
	movq (%r12), %r12		# movq (%r(508)), %r(331)
	cmpq %r12, %rbx		# cmpq %r(331), %r(198)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(332)
	movq -224(%rbp), %r13		# movq -224(%rbp), %r(509)
	addq %rbx, %r13		# addq %r(332), %r(333)
	movq (%r13), %r13		# movq (%r(333)), %r(334)
	movq $1, %r12		# movq $1, %r(335)
	xorq %r12, %r13		# xorq %r(335), %r(336)
	testq $1, %r13		# testq $1, %r(336)
	jne .L65		# jne .L65
	.L66:		# .L66:
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(510)
	movq $1, %r13		# movq $1, %r(337)
	movq %r13, -48(%rbp)		# movq %r(511), -48(%rbp)
	movq $8, %r12		# movq $8, %r(338)
	movq %rbx, %r14		# movq %r(199), %r(339)
	subq %r12, %r14		# subq %r(338), %r(339)
	movq (%r14), %r12		# movq (%r(339)), %r(340)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(512)
	cmpq %r12, %r13		# cmpq %r(340), %r(512)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(513)
	salq $3, %r13		# salq $3, %r(341)
	addq %r13, %rbx		# addq %r(341), %r(342)
	movq (%rbx), %rbx		# movq (%r(342)), %r(343)
	movq $1, %r13		# movq $1, %r(344)
	movq %r13, -40(%rbp)		# movq %r(514), -40(%rbp)
	movq $8, %r12		# movq $8, %r(345)
	movq %rbx, %r14		# movq %r(201), %r(346)
	subq %r12, %r14		# subq %r(345), %r(346)
	movq (%r14), %r12		# movq (%r(346)), %r(347)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(515)
	cmpq %r12, %r13		# cmpq %r(347), %r(515)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(516)
	salq $3, %r13		# salq $3, %r(348)
	addq %r13, %rbx		# addq %r(348), %r(349)
	movq (%rbx), %rbx		# movq (%r(349)), %r(350)
	testq $1, %rbx		# testq $1, %r(350)
	jne .L64		# jne .L64
	.L65:		# .L65:
	movq $0, %r12		# movq $0, %r(351)
	movq %r12, -256(%rbp)		# movq %r(517), -256(%rbp)
	.L64:		# .L64:
	movq $0, %rbx		# movq $0, %r(352)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(518)
	addq %rbx, %r13		# addq %r(352), %r(353)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(519)
	movq %rbx, (%r13)		# movq %r(519), (%r(353))
	movq $8, %rbx		# movq $8, %r(354)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(520)
	addq %rbx, %r13		# addq %r(354), %r(355)
	movq -360(%rbp), %rbx		# movq -360(%rbp), %r(521)
	movq %rbx, (%r13)		# movq %r(521), (%r(355))
	jmp .L32		# jmp .L32
	.L32:		# .L32:
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
	movq $16, %rbx		# movq $16, %r(522)
	movq %rbx, %rdi		# movq %r(522), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(217)
	leaq .L68(%rip), %rdi		# leaq .L68(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(553)
	movq %r12, -88(%rbp)		# movq %r(553), -88(%rbp)
	movq $1, %r12		# movq $1, %r(554)
	movq %r12, -104(%rbp)		# movq %r(554), -104(%rbp)
	movq $0, %r12		# movq $0, %r(555)
	movq %r12, -64(%rbp)		# movq %r(555), -64(%rbp)
	movq $1, %r13		# movq $1, %r(526)
	movq $2, %r12		# movq $2, %r(544)
	movq %r12, -8(%rbp)		# movq %r(544), -8(%rbp)
	movq $3, %r12		# movq $3, %r(545)
	movq %r12, -32(%rbp)		# movq %r(545), -32(%rbp)
	movq $4, %r12		# movq $4, %r(546)
	movq %r12, -24(%rbp)		# movq %r(546), -24(%rbp)
	movq %rbx, %rdi		# movq %r(206), %rdi
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(556)
	movq %r12, %rsi		# movq %r(556), %rsi
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(557)
	movq %r12, %rdx		# movq %r(557), %rdx
	movq %r13, %rcx		# movq %r(526), %rcx
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(547)
	movq %r12, %r8		# movq %r(547), %r8
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(548)
	movq %r12, %r9		# movq %r(548), %r9
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(549)
	pushq %r12		# pushq %r(549)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(558)
	pushq %r12		# pushq %r(558)
	call _IIam____t2baiibbiiiai		# call _IIam____t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq 0(%rbx), %r12		# movq 0(%r(206)), %r(toB)
	movq 8(%rbx), %rbx		# movq 8(%r(206)), %r(559)
	movq %rbx, -96(%rbp)		# movq %r(559), -96(%rbp)
	testq $1, %r12		# testq $1, %r(toB)
	jne .L69		# jne .L69
	.L71:		# .L71:
	movq $1, %rbx		# movq $1, %r(530)
	xorq %rbx, %r12		# xorq %r(530), %r(531)
	movq $1, %rbx		# movq $1, %r(532)
	xorq %rbx, %r12		# xorq %r(532), %r(533)
	testq $1, %r12		# testq $1, %r(533)
	jne .L70		# jne .L70
	.L69:		# .L69:
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(560)
	movq %rbx, %rdi		# movq %r(560), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L70:		# .L70:
	movq $1, %r12		# movq $1, %r(534)
	movq %r12, -16(%rbp)		# movq %r(550), -16(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(561)
	movq %r12, -56(%rbp)		# movq %r(562), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(563)
	movq %rbx, -80(%rbp)		# movq %r(563), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(564)
	movq %r12, -40(%rbp)		# movq %r(565), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(536)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(566)
	subq %rbx, %r13		# subq %r(536), %r(537)
	movq (%r13), %rbx		# movq (%r(537)), %r(538)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(567)
	cmpq %rbx, %r12		# cmpq %r(538), %r(567)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(568)
	movq %r12, -72(%rbp)		# movq %r(569), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(570)
	salq $3, %rbx		# salq $3, %r(570)
	movq %rbx, -72(%rbp)		# movq %r(570), -72(%rbp)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(571)
	movq %r12, -48(%rbp)		# movq %r(572), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(573)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(574)
	addq %r12, %rbx		# addq %r(574), %r(573)
	movq %rbx, -48(%rbp)		# movq %r(573), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(575)
	movq (%rbx), %rbx		# movq (%r(575)), %r(541)
	movq $72, %r12		# movq $72, %r(542)
	cmpq %r12, %rbx		# cmpq %r(542), %r(541)
	je .L74		# je .L74
	.L75:		# .L75:
	movq $0, %r12		# movq $0, %r(543)
	movq %r12, -16(%rbp)		# movq %r(551), -16(%rbp)
	.L74:		# .L74:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(552)
	movq %rbx, %rdi		# movq %r(552), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L67:		# .L67:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(591)
	movq %rbx, -16(%rbp)		# movq %r(591), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(592)
	movq (%rbx), %r12		# movq (%r(592)), %r(576)
	movq %r12, -32(%rbp)		# movq %r(593), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(594)
	salq $3, %rbx		# salq $3, %r(577)
	movq $8, %r12		# movq $8, %r(578)
	addq %r12, %rbx		# addq %r(578), %r(579)
	movq %rbx, %rdi		# movq %r(579), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(222)
	movq %r12, -40(%rbp)		# movq %r(595), -40(%rbp)
	.L14:		# .L14:
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(596)
	salq $3, %r13		# salq $3, %r(580)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(597)
	addq %r13, %r12		# addq %r(580), %r(581)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(598)
	movq %r13, -24(%rbp)		# movq %r(599), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(600)
	salq $3, %rbx		# salq $3, %r(600)
	movq %rbx, -24(%rbp)		# movq %r(600), -24(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(601)
	movq %r13, -8(%rbp)		# movq %r(588), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(589)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(602)
	addq %r13, %rbx		# addq %r(602), %r(589)
	movq %rbx, -8(%rbp)		# movq %r(589), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(590)
	movq (%rbx), %rbx		# movq (%r(590)), %r(584)
	movq %rbx, (%r12)		# movq %r(584), (%r(581))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(603)
	decq %rbx		# decq %r(603)
	movq %rbx, -32(%rbp)		# movq %r(603), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(585)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(604)
	cmpq %rbx, %r12		# cmpq %r(585), %r(604)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(586)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(605)
	addq %rbx, %r13		# addq %r(586), %r(587)
	movq %r13, %rax		# movq %r(587), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L68:
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
