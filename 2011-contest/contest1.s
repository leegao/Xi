.att_syntax prefix
.text
.globl _IIam____t2baiibbiiiai
_IIam____t2baiibbiiiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $304, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(365)
	movq %rbx, -200(%rbp)		# movq %r(365), -200(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(366)
	movq %rbx, -40(%rbp)		# movq %r(366), -40(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(367)
	movq %rbx, -104(%rbp)		# movq %r(367), -104(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(368)
	movq %rbx, -296(%rbp)		# movq %r(368), -296(%rbp)
	movq %r8, %rbx		# movq %r8, %r(369)
	movq %rbx, -264(%rbp)		# movq %r(369), -264(%rbp)
	movq %r9, %rbx		# movq %r9, %r(370)
	movq %rbx, -208(%rbp)		# movq %r(370), -208(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(371)
	movq %rbx, -232(%rbp)		# movq %r(371), -232(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(372)
	movq %rbx, -280(%rbp)		# movq %r(372), -280(%rbp)
	movq $24, %rbx		# movq $24, %r(373)
	movq %rbx, -112(%rbp)		# movq %r(373), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(374)
	movq %rbx, %rdi		# movq %r(374), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(375)
	movq %rbx, -96(%rbp)		# movq %r(375), -96(%rbp)
	movq $2, %rbx		# movq $2, %r(376)
	movq %rbx, -136(%rbp)		# movq %r(376), -136(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(377)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(378)
	movq %r12, (%rbx)		# movq %r(378), (%r(377))
	movq $8, %rbx		# movq $8, %r(379)
	movq %rbx, -80(%rbp)		# movq %r(379), -80(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(380)
	movq %r12, -120(%rbp)		# movq %r(381), -120(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(382)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(383)
	addq %rbx, %r12		# addq %r(382), %r(383)
	movq %r12, -120(%rbp)		# movq %r(383), -120(%rbp)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(384)
	movq %r12, -184(%rbp)		# movq %r(385), -184(%rbp)
	movq $24, %rbx		# movq $24, %r(386)
	movq %rbx, -24(%rbp)		# movq %r(386), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(387)
	movq %rbx, %rdi		# movq %r(387), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(388)
	movq %rbx, -88(%rbp)		# movq %r(388), -88(%rbp)
	movq $2, %rbx		# movq $2, %r(389)
	movq %rbx, -248(%rbp)		# movq %r(389), -248(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(390)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(391)
	movq %r12, (%rbx)		# movq %r(391), (%r(390))
	movq $8, %rbx		# movq $8, %r(392)
	movq %rbx, -16(%rbp)		# movq %r(392), -16(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(393)
	movq %r12, -240(%rbp)		# movq %r(394), -240(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(395)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(396)
	addq %rbx, %r12		# addq %r(395), %r(396)
	movq %r12, -240(%rbp)		# movq %r(396), -240(%rbp)
	movq -240(%rbp), %r12		# movq -240(%rbp), %r(397)
	movq %r12, -48(%rbp)		# movq %r(398), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(399)
	movq %rbx, -56(%rbp)		# movq %r(399), -56(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(400)
	movq %r12, -8(%rbp)		# movq %r(401), -8(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(402)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(403)
	addq %rbx, %r12		# addq %r(402), %r(403)
	movq %r12, -8(%rbp)		# movq %r(403), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(404)
	movq %rbx, -160(%rbp)		# movq %r(404), -160(%rbp)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(405)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(406)
	xorq %r12, %r13		# xorq %r(406), %r(232)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(407)
	movq %r13, (%r12)		# movq %r(232), (%r(407))
	movq $1, %r13		# movq $1, %r(233)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(408)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(409)
	cmpq %r12, %rbx		# cmpq %r(409), %r(408)
	jl .L35		# jl .L35
	.L36:		# .L36:
	movq $0, %r13		# movq $0, %r(234)
	.L35:		# .L35:
	movq $8, %rbx		# movq $8, %r(410)
	movq %rbx, -288(%rbp)		# movq %r(410), -288(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(411)
	movq %r12, -224(%rbp)		# movq %r(412), -224(%rbp)
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(413)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(414)
	addq %r12, %rbx		# addq %r(414), %r(413)
	movq %rbx, -224(%rbp)		# movq %r(413), -224(%rbp)
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(415)
	movq %r13, (%rbx)		# movq %r(171), (%r(415))
	movq $0, %r12		# movq $0, %r(237)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(416)
	movq %r13, -216(%rbp)		# movq %r(417), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(418)
	addq %r12, %rbx		# addq %r(237), %r(418)
	movq %rbx, -216(%rbp)		# movq %r(418), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(419)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(420)
	movq %r12, (%rbx)		# movq %r(420), (%r(419))
	movq $24, %rbx		# movq $24, %r(239)
	movq %rbx, %rdi		# movq %r(239), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(421)
	movq %rbx, -256(%rbp)		# movq %r(421), -256(%rbp)
	movq $2, %rbx		# movq $2, %r(240)
	movq -256(%rbp), %r12		# movq -256(%rbp), %r(422)
	movq %rbx, (%r12)		# movq %r(240), (%r(422))
	movq $8, %rbx		# movq $8, %r(423)
	movq %rbx, -176(%rbp)		# movq %r(423), -176(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(424)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(425)
	addq %r12, %rbx		# addq %r(425), %r(242)
	movq %rbx, -272(%rbp)		# movq %r(426), -272(%rbp)
	movq $0, %r12		# movq $0, %r(243)
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(427)
	movq %r13, -128(%rbp)		# movq %r(428), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(429)
	addq %r12, %rbx		# addq %r(243), %r(429)
	movq %rbx, -128(%rbp)		# movq %r(429), -128(%rbp)
	movq $1, %rbx		# movq $1, %r(245)
	movq -296(%rbp), %r13		# movq -296(%rbp), %r(430)
	xorq %rbx, %r13		# xorq %r(245), %r(246)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(431)
	movq %r13, (%rbx)		# movq %r(246), (%r(431))
	movq $1, %r13		# movq $1, %r(247)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(432)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(433)
	cmpq %rbx, %r12		# cmpq %r(432), %r(433)
	jge .L37		# jge .L37
	.L38:		# .L38:
	movq $0, %r13		# movq $0, %r(248)
	.L37:		# .L37:
	movq $8, %r12		# movq $8, %r(249)
	movq -272(%rbp), %r14		# movq -272(%rbp), %r(434)
	addq %r12, %r14		# addq %r(249), %r(250)
	movq %r13, (%r14)		# movq %r(174), (%r(250))
	movq $8, %rbx		# movq $8, %r(251)
	movq -184(%rbp), %r13		# movq -184(%rbp), %r(435)
	addq %rbx, %r13		# addq %r(251), %r(252)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(436)
	movq %rbx, (%r13)		# movq %r(436), (%r(252))
	movq $0, %r13		# movq $0, %r(253)
	movq $8, %r12		# movq $8, %r(254)
	movq -280(%rbp), %r14		# movq -280(%rbp), %r(437)
	subq %r12, %r14		# subq %r(254), %r(255)
	movq (%r14), %rbx		# movq (%r(255)), %r(256)
	cmpq %rbx, %r13		# cmpq %r(256), %r(253)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(257)
	salq $3, %r13		# salq $3, %r(258)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(438)
	addq %r13, %r12		# addq %r(258), %r(259)
	movq -264(%rbp), %r14		# movq -264(%rbp), %r(439)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(440)
	imulq %r13, %r14		# imulq %r(440), %r(260)
	movq -232(%rbp), %r13		# movq -232(%rbp), %r(441)
	imulq %r13, %r14		# imulq %r(441), %r(261)
	movq $17179869184, %r13		# movq $17179869184, %r(262)
	imulq %r13, %r14		# imulq %r(262), %r(263)
	movq $72, %r13		# movq $72, %r(264)
	addq %r13, %r14		# addq %r(264), %r(265)
	movq $128, %r13		# movq $128, %r(266)
	movq %r14, %rax		# movq %r(265), %rax
	cqto		# cqto
	idivq %r13		# idivq %r(266)
	movq %rdx, %rbx		# movq %rdx, %r(267)
	movq %rbx, (%r12)		# movq %r(267), (%r(259))
	movq $1, %r12		# movq $1, %r(268)
	movq %r12, -152(%rbp)		# movq %r(442), -152(%rbp)
	movq $0, %r13		# movq $0, %r(269)
	movq $8, %r12		# movq $8, %r(270)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(443)
	subq %r12, %r14		# subq %r(270), %r(271)
	movq (%r14), %rbx		# movq (%r(271)), %r(272)
	cmpq %rbx, %r13		# cmpq %r(272), %r(269)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(273)
	salq $3, %r13		# salq $3, %r(274)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(444)
	addq %r13, %rbx		# addq %r(274), %r(275)
	movq (%rbx), %r12		# movq (%r(275)), %r(276)
	movq %r12, -32(%rbp)		# movq %r(445), -32(%rbp)
	movq $0, %r13		# movq $0, %r(277)
	movq $8, %r12		# movq $8, %r(278)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(446)
	movq %r14, -168(%rbp)		# movq %r(447), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(448)
	subq %r12, %rbx		# subq %r(278), %r(448)
	movq %rbx, -168(%rbp)		# movq %r(448), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(449)
	movq (%rbx), %rbx		# movq (%r(449)), %r(280)
	cmpq %rbx, %r13		# cmpq %r(280), %r(277)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(281)
	salq $3, %r13		# salq $3, %r(282)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(450)
	addq %r13, %rbx		# addq %r(282), %r(283)
	movq (%rbx), %rbx		# movq (%r(283)), %r(284)
	testq $1, %rbx		# testq $1, %r(284)
	jne .L53		# jne .L53
	.L55:		# .L55:
	movq $1, %r13		# movq $1, %r(285)
	movq $8, %r12		# movq $8, %r(286)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(451)
	subq %r12, %r14		# subq %r(286), %r(287)
	movq (%r14), %rbx		# movq (%r(287)), %r(288)
	cmpq %rbx, %r13		# cmpq %r(288), %r(285)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(289)
	salq $3, %r13		# salq $3, %r(290)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(452)
	addq %r13, %rbx		# addq %r(290), %r(291)
	movq (%rbx), %r12		# movq (%r(291)), %r(292)
	movq %r12, -64(%rbp)		# movq %r(453), -64(%rbp)
	movq $1, %r13		# movq $1, %r(293)
	movq $8, %r12		# movq $8, %r(294)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(454)
	movq %r14, -72(%rbp)		# movq %r(455), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(456)
	subq %r12, %rbx		# subq %r(294), %r(456)
	movq %rbx, -72(%rbp)		# movq %r(456), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(457)
	movq (%rbx), %rbx		# movq (%r(457)), %r(296)
	cmpq %rbx, %r13		# cmpq %r(296), %r(293)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(297)
	salq $3, %r13		# salq $3, %r(298)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(458)
	addq %r13, %rbx		# addq %r(298), %r(299)
	movq (%rbx), %rbx		# movq (%r(299)), %r(300)
	testq $1, %rbx		# testq $1, %r(300)
	jne .L53		# jne .L53
	.L54:		# .L54:
	movq $0, %r12		# movq $0, %r(301)
	movq %r12, -152(%rbp)		# movq %r(459), -152(%rbp)
	.L53:		# .L53:
	movq $0, %r13		# movq $0, %r(302)
	movq $8, %r12		# movq $8, %r(303)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(460)
	subq %r12, %r14		# subq %r(303), %r(304)
	movq (%r14), %rbx		# movq (%r(304)), %r(305)
	cmpq %rbx, %r13		# cmpq %r(305), %r(302)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(306)
	salq $3, %r13		# salq $3, %r(307)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(461)
	addq %r13, %rbx		# addq %r(307), %r(308)
	movq (%rbx), %rbx		# movq (%r(308)), %r(309)
	movq %rbx, %r15		# movq %r(309), %r(179)
	movq $0, %r14		# movq $0, %r(310)
	movq $8, %r12		# movq $8, %r(311)
	movq %r15, %rbx		# movq %r(179), %r(462)
	movq %rbx, -192(%rbp)		# movq %r(462), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(463)
	subq %r12, %rbx		# subq %r(311), %r(463)
	movq %rbx, -192(%rbp)		# movq %r(463), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(464)
	movq (%rbx), %rbx		# movq (%r(464)), %r(313)
	cmpq %rbx, %r14		# cmpq %r(313), %r(310)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(314)
	salq $3, %r12		# salq $3, %r(315)
	addq %r12, %r15		# addq %r(315), %r(316)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(465)
	movq %rbx, (%r15)		# movq %r(465), (%r(316))
	movq $0, %r13		# movq $0, %r(317)
	movq $8, %r12		# movq $8, %r(318)
	movq -280(%rbp), %r14		# movq -280(%rbp), %r(466)
	subq %r12, %r14		# subq %r(318), %r(319)
	movq (%r14), %rbx		# movq (%r(319)), %r(320)
	cmpq %rbx, %r13		# cmpq %r(320), %r(317)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(321)
	salq $3, %r13		# salq $3, %r(322)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(467)
	addq %r13, %rbx		# addq %r(322), %r(323)
	movq (%rbx), %rbx		# movq (%r(323)), %r(324)
	movq %rbx, %rdi		# movq %r(324), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(212)
	movq %rbx, %rdi		# movq %r(212), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(325)
	movq %r12, -144(%rbp)		# movq %r(468), -144(%rbp)
	movq $0, %r13		# movq $0, %r(326)
	movq $8, %r12		# movq $8, %r(327)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(469)
	subq %r12, %r14		# subq %r(327), %r(328)
	movq (%r14), %rbx		# movq (%r(328)), %r(329)
	cmpq %rbx, %r13		# cmpq %r(329), %r(326)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(330)
	salq $3, %r13		# salq $3, %r(331)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(470)
	addq %r13, %rbx		# addq %r(331), %r(332)
	movq (%rbx), %rbx		# movq (%r(332)), %r(333)
	movq $0, %r13		# movq $0, %r(334)
	movq $8, %r12		# movq $8, %r(335)
	movq %rbx, %r14		# movq %r(194), %r(336)
	subq %r12, %r14		# subq %r(335), %r(336)
	movq (%r14), %r12		# movq (%r(336)), %r(337)
	cmpq %r12, %r13		# cmpq %r(337), %r(334)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(338)
	salq $3, %r13		# salq $3, %r(339)
	addq %r13, %rbx		# addq %r(339), %r(340)
	movq (%rbx), %r13		# movq (%r(340)), %r(341)
	movq $1, %r12		# movq $1, %r(342)
	xorq %r12, %r13		# xorq %r(342), %r(343)
	testq $1, %r13		# testq $1, %r(343)
	jne .L67		# jne .L67
	.L68:		# .L68:
	movq $1, %r13		# movq $1, %r(344)
	movq $8, %r12		# movq $8, %r(345)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(471)
	subq %r12, %r14		# subq %r(345), %r(346)
	movq (%r14), %rbx		# movq (%r(346)), %r(347)
	cmpq %rbx, %r13		# cmpq %r(347), %r(344)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(348)
	salq $3, %r13		# salq $3, %r(349)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(472)
	addq %r13, %rbx		# addq %r(349), %r(350)
	movq (%rbx), %rbx		# movq (%r(350)), %r(351)
	movq $1, %r13		# movq $1, %r(352)
	movq $8, %r12		# movq $8, %r(353)
	movq %rbx, %r14		# movq %r(198), %r(354)
	subq %r12, %r14		# subq %r(353), %r(354)
	movq (%r14), %r12		# movq (%r(354)), %r(355)
	cmpq %r12, %r13		# cmpq %r(355), %r(352)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(356)
	salq $3, %r13		# salq $3, %r(357)
	addq %r13, %rbx		# addq %r(357), %r(358)
	movq (%rbx), %rbx		# movq (%r(358)), %r(359)
	testq $1, %rbx		# testq $1, %r(359)
	jne .L66		# jne .L66
	.L67:		# .L67:
	movq $0, %r12		# movq $0, %r(360)
	movq %r12, -144(%rbp)		# movq %r(473), -144(%rbp)
	.L66:		# .L66:
	movq $0, %rbx		# movq $0, %r(361)
	movq -200(%rbp), %r13		# movq -200(%rbp), %r(474)
	addq %rbx, %r13		# addq %r(361), %r(362)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(475)
	movq %rbx, (%r13)		# movq %r(475), (%r(362))
	movq $8, %rbx		# movq $8, %r(363)
	movq -200(%rbp), %r13		# movq -200(%rbp), %r(476)
	addq %rbx, %r13		# addq %r(363), %r(364)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(477)
	movq %rbx, (%r13)		# movq %r(477), (%r(364))
	jmp .L34		# jmp .L34
	.L34:		# .L34:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $304, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $16, %rbx		# movq $16, %r(478)
	movq %rbx, %rdi		# movq %r(478), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(501)
	movq %rbx, -32(%rbp)		# movq %r(501), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(502)
	movq %r12, -64(%rbp)		# movq %r(503), -64(%rbp)
	leaq .L70(%rip), %rdi		# leaq .L70(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(504)
	movq %rbx, -24(%rbp)		# movq %r(504), -24(%rbp)
	movq $1, %rbx		# movq $1, %r(505)
	movq %rbx, -56(%rbp)		# movq %r(505), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(506)
	movq %rbx, -72(%rbp)		# movq %r(506), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(507)
	movq %rbx, -88(%rbp)		# movq %r(507), -88(%rbp)
	movq $2, %rbx		# movq $2, %r(508)
	movq %rbx, -16(%rbp)		# movq %r(508), -16(%rbp)
	movq $3, %rbx		# movq $3, %r(509)
	movq %rbx, -80(%rbp)		# movq %r(509), -80(%rbp)
	movq $4, %rbx		# movq $4, %r(510)
	movq %rbx, -8(%rbp)		# movq %r(510), -8(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(511)
	movq %rbx, %rdi		# movq %r(511), %rdi
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(512)
	movq %rbx, %rsi		# movq %r(512), %rsi
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(513)
	movq %rbx, %rdx		# movq %r(513), %rdx
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(514)
	movq %rbx, %rcx		# movq %r(514), %rcx
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(515)
	movq %rbx, %r8		# movq %r(515), %r8
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(516)
	movq %rbx, %r9		# movq %r(516), %r9
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(517)
	pushq %rbx		# pushq %r(517)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(518)
	pushq %rbx		# pushq %r(518)
	call _IIam____t2baiibbiiiai		# call _IIam____t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(519)
	movq 0(%rbx), %r12		# movq 0(%r(519)), %r(toB)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(520)
	movq 8(%rbx), %rbx		# movq 8(%r(520)), %r(521)
	movq %rbx, -48(%rbp)		# movq %r(521), -48(%rbp)
	testq $1, %r12		# testq $1, %r(toB)
	jne .L71		# jne .L71
	.L73:		# .L73:
	movq $1, %rbx		# movq $1, %r(486)
	xorq %rbx, %r12		# xorq %r(486), %r(487)
	movq $1, %rbx		# movq $1, %r(488)
	xorq %rbx, %r12		# xorq %r(488), %r(489)
	testq $1, %r12		# testq $1, %r(489)
	jne .L72		# jne .L72
	.L71:		# .L71:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(522)
	movq %rbx, %rdi		# movq %r(522), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L72:		# .L72:
	movq $1, %rbx		# movq $1, %r(490)
	movq %rbx, %r13		# movq %r(490), %r(208)
	movq $0, %r12		# movq $0, %r(491)
	movq $8, %r14		# movq $8, %r(492)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(523)
	subq %r14, %rbx		# subq %r(492), %r(493)
	movq (%rbx), %rbx		# movq (%r(493)), %r(494)
	cmpq %rbx, %r12		# cmpq %r(494), %r(491)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r15		# movq $0, %r(495)
	salq $3, %r15		# salq $3, %r(496)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(524)
	movq %r14, -40(%rbp)		# movq %r(525), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(526)
	addq %r15, %r12		# addq %r(496), %r(526)
	movq %r12, -40(%rbp)		# movq %r(526), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(527)
	movq (%rbx), %rbx		# movq (%r(527)), %r(498)
	movq $72, %r12		# movq $72, %r(499)
	cmpq %r12, %rbx		# cmpq %r(499), %r(498)
	je .L76		# je .L76
	.L77:		# .L77:
	movq $0, %r13		# movq $0, %r(500)
	.L76:		# .L76:
	movq %r13, %rdi		# movq %r(208), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L69:		# .L69:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(540)
	movq %rbx, -8(%rbp)		# movq %r(540), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(541)
	movq (%rbx), %rbx		# movq (%r(541)), %r(528)
	movq %rbx, %r14		# movq %r(528), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(529)
	salq $3, %rbx		# salq $3, %r(529)
	movq $8, %r12		# movq $8, %r(530)
	addq %r12, %rbx		# addq %r(530), %r(531)
	movq %rbx, %rdi		# movq %r(531), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(219)
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(532)
	salq $3, %rbx		# salq $3, %r(532)
	movq %r15, %r12		# movq %r(219), %r(533)
	addq %rbx, %r12		# addq %r(532), %r(533)
	movq %r14, %r13		# movq %r(t10), %r(534)
	salq $3, %r13		# salq $3, %r(534)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(542)
	movq %rbx, -16(%rbp)		# movq %r(543), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(544)
	addq %r13, %rbx		# addq %r(534), %r(544)
	movq %rbx, -16(%rbp)		# movq %r(544), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(545)
	movq (%rbx), %rbx		# movq (%r(545)), %r(536)
	movq %rbx, (%r12)		# movq %r(536), (%r(533))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(537)
	cmpq %rbx, %r14		# cmpq %r(537), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(538)
	movq %r15, %r12		# movq %r(219), %r(539)
	addq %rbx, %r12		# addq %r(538), %r(539)
	movq %r12, %rax		# movq %r(539), %rax
	.L16:		# .L16:
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
.L70:
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
