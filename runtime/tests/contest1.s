.att_syntax prefix
.text
.globl _IIam____t2baiibbiiiai
_IIam____t2baiibbiiiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $224, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(351)
	movq %rbx, -88(%rbp)		# movq %r(351), -88(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(352)
	movq %rbx, -96(%rbp)		# movq %r(352), -96(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(353)
	movq %rbx, -152(%rbp)		# movq %r(353), -152(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(354)
	movq %rbx, -192(%rbp)		# movq %r(354), -192(%rbp)
	movq %r8, %rbx		# movq %r8, %r(355)
	movq %rbx, -24(%rbp)		# movq %r(355), -24(%rbp)
	movq %r9, %rbx		# movq %r9, %r(356)
	movq %rbx, -32(%rbp)		# movq %r(356), -32(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(357)
	movq %rbx, -80(%rbp)		# movq %r(357), -80(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(358)
	movq %rbx, -8(%rbp)		# movq %r(358), -8(%rbp)
	movq $24, %rbx		# movq $24, %r(359)
	movq %rbx, -168(%rbp)		# movq %r(359), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(360)
	movq %rbx, %rdi		# movq %r(360), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(361)
	movq %rbx, -136(%rbp)		# movq %r(361), -136(%rbp)
	movq -136(%rbp), %r12		# movq -136(%rbp), %r(362)
	movq %r12, -160(%rbp)		# movq %r(363), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(364)
	movq (%rbx), %rbx		# movq (%r(364)), %r(264)
	movq $2, %rbx		# movq $2, %r(264)
	movq -160(%rbp), %r12		# movq -160(%rbp), %r(365)
	movq %r12, -16(%rbp)		# movq %r(366), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(367)
	addq $8, %rbx		# addq $8, %r(367)
	movq %rbx, -16(%rbp)		# movq %r(367), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(368)
	movq %r12, -208(%rbp)		# movq %r(369), -208(%rbp)
	movq $24, %rbx		# movq $24, %r(370)
	movq %rbx, -40(%rbp)		# movq %r(370), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(371)
	movq %rbx, %rdi		# movq %r(371), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(372)
	movq %rbx, -128(%rbp)		# movq %r(372), -128(%rbp)
	movq -128(%rbp), %r12		# movq -128(%rbp), %r(373)
	movq %r12, -48(%rbp)		# movq %r(374), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(375)
	movq (%rbx), %rbx		# movq (%r(375)), %r(267)
	movq $2, %rbx		# movq $2, %r(267)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(376)
	movq %r12, -112(%rbp)		# movq %r(377), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(378)
	addq $8, %rbx		# addq $8, %r(378)
	movq %rbx, -112(%rbp)		# movq %r(378), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(379)
	movq %r12, -64(%rbp)		# movq %r(380), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(381)
	movq %r12, -184(%rbp)		# movq %r(382), -184(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(383)
	addq $0, %rbx		# addq $0, %r(383)
	movq %rbx, -184(%rbp)		# movq %r(383), -184(%rbp)
	movq $1, %rbx		# movq $1, %r(384)
	movq %rbx, -200(%rbp)		# movq %r(384), -200(%rbp)
	movq -152(%rbp), %r13		# movq -152(%rbp), %r(385)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(386)
	xorq %r12, %r13		# xorq %r(386), %r(271)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(387)
	movq %r13, (%r12)		# movq %r(271), (%r(387))
	movq $1, %r13		# movq $1, %r(213)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(388)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(389)
	cmpq %rbx, %r12		# cmpq %r(388), %r(389)
	jl .L63		# jl .L63
	.L64:		# .L64:
	movq $0, %r13		# movq $0, %r(213)
	.L63:		# .L63:
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(390)
	movq %r12, -176(%rbp)		# movq %r(391), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(392)
	addq $8, %rbx		# addq $8, %r(392)
	movq %rbx, -176(%rbp)		# movq %r(392), -176(%rbp)
	movq -176(%rbp), %rbx		# movq -176(%rbp), %r(393)
	movq %r13, (%rbx)		# movq %r(213), (%r(393))
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(394)
	addq $0, %r13		# addq $0, %r(273)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(395)
	movq %r12, (%r13)		# movq %r(395), (%r(273))
	movq $24, %rbx		# movq $24, %r(274)
	movq %rbx, %rdi		# movq %r(274), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(253)
	movq (%r12), %rbx		# movq (%r(215)), %r(275)
	movq $2, %rbx		# movq $2, %r(275)
	addq $8, %r12		# addq $8, %r(276)
	movq %r12, -56(%rbp)		# movq %r(396), -56(%rbp)
	movq -56(%rbp), %r15		# movq -56(%rbp), %r(397)
	addq $0, %r15		# addq $0, %r(277)
	movq $1, %r12		# movq $1, %r(398)
	movq %r12, -104(%rbp)		# movq %r(398), -104(%rbp)
	movq -192(%rbp), %r14		# movq -192(%rbp), %r(399)
	movq -104(%rbp), %r13		# movq -104(%rbp), %r(400)
	xorq %r13, %r14		# xorq %r(400), %r(279)
	movq %r14, (%r15)		# movq %r(279), (%r(277))
	movq $1, %r13		# movq $1, %r(216)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(401)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(402)
	cmpq %rbx, %r12		# cmpq %r(401), %r(402)
	jge .L65		# jge .L65
	.L66:		# .L66:
	movq $0, %r13		# movq $0, %r(216)
	.L65:		# .L65:
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(403)
	addq $8, %r12		# addq $8, %r(280)
	movq %r13, (%r12)		# movq %r(216), (%r(280))
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(404)
	addq $8, %r13		# addq $8, %r(281)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(405)
	movq %r12, (%r13)		# movq %r(405), (%r(281))
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(406)
	movq %r12, -144(%rbp)		# movq %r(407), -144(%rbp)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(408)
	movq $0, %rbx		# movq $0, %r(218)
	movq %r15, %r14		# movq %r(217), %r(282)
	subq $8, %r14		# subq $8, %r(282)
	movq (%r14), %r12		# movq (%r(282)), %r(283)
	cmpq %r12, %rbx		# cmpq %r(283), %r(218)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(284)
	addq %rbx, %r15		# addq %r(284), %r(285)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(409)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(410)
	imulq %r13, %rbx		# imulq %r(410), %r(286)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(411)
	imulq %r13, %rbx		# imulq %r(411), %r(287)
	movq $17179869184, %r13		# movq $17179869184, %r(288)
	imulq %r13, %rbx		# imulq %r(288), %r(289)
	addq $72, %rbx		# addq $72, %r(290)
	movq $128, %r13		# movq $128, %r(291)
	movq %rbx, %rax		# movq %r(290), %rax
	cqto		# cqto
	idivq %r13		# idivq %r(291)
	movq %rdx, %r12		# movq %rdx, %r(292)
	movq %r12, (%r15)		# movq %r(292), (%r(285))
	movq $1, %rbx		# movq $1, %r(412)
	movq %rbx, -120(%rbp)		# movq %r(412), -120(%rbp)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(413)
	movq $0, %rbx		# movq $0, %r(224)
	movq %r13, %r14		# movq %r(223), %r(293)
	subq $8, %r14		# subq $8, %r(293)
	movq (%r14), %r12		# movq (%r(293)), %r(294)
	cmpq %r12, %rbx		# cmpq %r(294), %r(224)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(295)
	addq %rbx, %r13		# addq %r(295), %r(296)
	movq (%r13), %r13		# movq (%r(296)), %r(297)
	movq $0, %rbx		# movq $0, %r(226)
	movq %r13, %r14		# movq %r(225), %r(298)
	subq $8, %r14		# subq $8, %r(298)
	movq (%r14), %r12		# movq (%r(298)), %r(299)
	cmpq %r12, %rbx		# cmpq %r(299), %r(226)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(300)
	addq %rbx, %r13		# addq %r(300), %r(301)
	movq (%r13), %rbx		# movq (%r(301)), %r(302)
	testq $1, %rbx		# testq $1, %r(302)
	jne .L81		# jne .L81
	.L83:		# .L83:
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(414)
	movq $1, %rbx		# movq $1, %r(228)
	movq %r13, %r14		# movq %r(227), %r(303)
	subq $8, %r14		# subq $8, %r(303)
	movq (%r14), %r12		# movq (%r(303)), %r(304)
	cmpq %r12, %rbx		# cmpq %r(304), %r(228)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(305)
	addq %rbx, %r13		# addq %r(305), %r(306)
	movq (%r13), %r13		# movq (%r(306)), %r(307)
	movq $1, %rbx		# movq $1, %r(230)
	movq %r13, %r14		# movq %r(229), %r(308)
	subq $8, %r14		# subq $8, %r(308)
	movq (%r14), %r12		# movq (%r(308)), %r(309)
	cmpq %r12, %rbx		# cmpq %r(309), %r(230)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(310)
	addq %rbx, %r13		# addq %r(310), %r(311)
	movq (%r13), %rbx		# movq (%r(311)), %r(312)
	testq $1, %rbx		# testq $1, %r(312)
	jne .L81		# jne .L81
	.L82:		# .L82:
	movq $0, %rbx		# movq $0, %r(415)
	movq %rbx, -120(%rbp)		# movq %r(415), -120(%rbp)
	.L81:		# .L81:
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(416)
	movq $0, %rbx		# movq $0, %r(220)
	movq %r13, %r14		# movq %r(219), %r(313)
	subq $8, %r14		# subq $8, %r(313)
	movq (%r14), %r12		# movq (%r(313)), %r(314)
	cmpq %r12, %rbx		# cmpq %r(314), %r(220)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(315)
	addq %rbx, %r13		# addq %r(315), %r(316)
	movq (%r13), %r13		# movq (%r(316)), %r(317)
	movq $0, %rbx		# movq $0, %r(222)
	movq %r13, %r14		# movq %r(221), %r(318)
	subq $8, %r14		# subq $8, %r(318)
	movq (%r14), %r12		# movq (%r(318)), %r(319)
	cmpq %r12, %rbx		# cmpq %r(319), %r(222)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(320)
	addq %rbx, %r13		# addq %r(320), %r(321)
	movq -120(%rbp), %r12		# movq -120(%rbp), %r(417)
	movq %r12, (%r13)		# movq %r(417), (%r(321))
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(418)
	movq $0, %rbx		# movq $0, %r(233)
	movq %r13, %r14		# movq %r(232), %r(322)
	subq $8, %r14		# subq $8, %r(322)
	movq (%r14), %r12		# movq (%r(322)), %r(323)
	cmpq %r12, %rbx		# cmpq %r(323), %r(233)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(324)
	addq %rbx, %r13		# addq %r(324), %r(325)
	movq (%r13), %rbx		# movq (%r(325)), %r(326)
	movq %rbx, %rdi		# movq %r(326), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(254)
	movq %rbx, %rdi		# movq %r(254), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %rbx		# movq $1, %r(419)
	movq %rbx, -72(%rbp)		# movq %r(419), -72(%rbp)
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(420)
	movq $0, %rbx		# movq $0, %r(235)
	movq %r13, %r14		# movq %r(234), %r(327)
	subq $8, %r14		# subq $8, %r(327)
	movq (%r14), %r12		# movq (%r(327)), %r(328)
	cmpq %r12, %rbx		# cmpq %r(328), %r(235)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(329)
	addq %rbx, %r13		# addq %r(329), %r(330)
	movq (%r13), %r13		# movq (%r(330)), %r(331)
	movq $0, %rbx		# movq $0, %r(237)
	movq %r13, %r14		# movq %r(236), %r(332)
	subq $8, %r14		# subq $8, %r(332)
	movq (%r14), %r12		# movq (%r(332)), %r(333)
	cmpq %r12, %rbx		# cmpq %r(333), %r(237)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(334)
	addq %rbx, %r13		# addq %r(334), %r(335)
	movq (%r13), %r13		# movq (%r(335)), %r(336)
	movq $1, %r12		# movq $1, %r(337)
	xorq %r12, %r13		# xorq %r(337), %r(338)
	testq $1, %r13		# testq $1, %r(338)
	jne .L95		# jne .L95
	.L96:		# .L96:
	movq -144(%rbp), %r13		# movq -144(%rbp), %r(421)
	movq $1, %rbx		# movq $1, %r(239)
	movq %r13, %r14		# movq %r(238), %r(339)
	subq $8, %r14		# subq $8, %r(339)
	movq (%r14), %r12		# movq (%r(339)), %r(340)
	cmpq %r12, %rbx		# cmpq %r(340), %r(239)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(341)
	addq %rbx, %r13		# addq %r(341), %r(342)
	movq (%r13), %r13		# movq (%r(342)), %r(343)
	movq $1, %rbx		# movq $1, %r(241)
	movq %r13, %r14		# movq %r(240), %r(344)
	subq $8, %r14		# subq $8, %r(344)
	movq (%r14), %r12		# movq (%r(344)), %r(345)
	cmpq %r12, %rbx		# cmpq %r(345), %r(241)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(346)
	addq %rbx, %r13		# addq %r(346), %r(347)
	movq (%r13), %rbx		# movq (%r(347)), %r(348)
	testq $1, %rbx		# testq $1, %r(348)
	jne .L94		# jne .L94
	.L95:		# .L95:
	movq $0, %rbx		# movq $0, %r(422)
	movq %rbx, -72(%rbp)		# movq %r(422), -72(%rbp)
	.L94:		# .L94:
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(423)
	addq $0, %r13		# addq $0, %r(349)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(424)
	movq %r12, (%r13)		# movq %r(424), (%r(349))
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(425)
	addq $8, %r13		# addq $8, %r(350)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(426)
	movq %r12, (%r13)		# movq %r(426), (%r(350))
	jmp .L62		# jmp .L62
	.L62:		# .L62:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $224, %rsp
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
	movq $16, %rbx		# movq $16, %r(427)
	movq %rbx, %rdi		# movq %r(427), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(256)
	leaq .L98(%rip), %rdi		# leaq .L98(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(451)
	movq %r12, -40(%rbp)		# movq %r(451), -40(%rbp)
	movq $1, %r12		# movq $1, %r(452)
	movq %r12, -48(%rbp)		# movq %r(452), -48(%rbp)
	movq $0, %r12		# movq $0, %r(453)
	movq %r12, -32(%rbp)		# movq %r(453), -32(%rbp)
	movq $1, %r13		# movq $1, %r(431)
	movq $2, %r12		# movq $2, %r(445)
	movq %r12, -16(%rbp)		# movq %r(445), -16(%rbp)
	movq $3, %r12		# movq $3, %r(446)
	movq %r12, -8(%rbp)		# movq %r(446), -8(%rbp)
	movq $4, %r12		# movq $4, %r(447)
	movq %r12, -24(%rbp)		# movq %r(447), -24(%rbp)
	movq %rbx, %rdi		# movq %r(245), %rdi
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(454)
	movq %r12, %rsi		# movq %r(454), %rsi
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(455)
	movq %r12, %rdx		# movq %r(455), %rdx
	movq %r13, %rcx		# movq %r(431), %rcx
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(448)
	movq %r12, %r8		# movq %r(448), %r8
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(449)
	movq %r12, %r9		# movq %r(449), %r9
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(456)
	pushq %r12		# pushq %r(456)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(450)
	pushq %r12		# pushq %r(450)
	call _IIam____t2baiibbiiiai		# call _IIam____t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq 0(%rbx), %r12		# movq 0(%r(245)), %r(toB)
	movq 8(%rbx), %r13		# movq 8(%r(245)), %r(a)
	testq $1, %r12		# testq $1, %r(toB)
	jne .L99		# jne .L99
	.L101:		# .L101:
	movq $1, %rbx		# movq $1, %r(435)
	xorq %rbx, %r12		# xorq %r(435), %r(436)
	movq $1, %rbx		# movq $1, %r(437)
	xorq %rbx, %r12		# xorq %r(437), %r(438)
	testq $1, %r12		# testq $1, %r(438)
	jne .L100		# jne .L100
	.L99:		# .L99:
	movq %r13, %rdi		# movq %r(a), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L100:		# .L100:
	movq $1, %r15		# movq $1, %r(250)
	movq $0, %r12		# movq $0, %r(249)
	movq %r13, %rbx		# movq %r(248), %r(439)
	subq $8, %rbx		# subq $8, %r(439)
	movq (%rbx), %rbx		# movq (%r(439)), %r(440)
	cmpq %rbx, %r12		# cmpq %r(440), %r(249)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r12		# salq $3, %r(441)
	movq %r13, %rbx		# movq %r(248), %r(442)
	addq %r12, %rbx		# addq %r(441), %r(442)
	movq (%rbx), %rbx		# movq (%r(442)), %r(443)
	movq $72, %r12		# movq $72, %r(444)
	cmpq %r12, %rbx		# cmpq %r(444), %r(443)
	je .L104		# je .L104
	.L105:		# .L105:
	movq $0, %r15		# movq $0, %r(250)
	.L104:		# .L104:
	movq %r15, %rdi		# movq %r(250), %rdi
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(p0)
	movq (%r15), %rbx		# movq (%r(p0)), %r(457)
	movq %rbx, %r12		# movq %r(457), %r(t10)
	movq %r12, %rbx		# movq %r(t10), %r(458)
	salq $3, %rbx		# salq $3, %r(458)
	addq $8, %rbx		# addq $8, %r(459)
	movq %rbx, %rdi		# movq %r(459), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(261)
	movq %rbx, %r13		# movq %r(261), %r(t27)
	.L24:		# .L24:
	movq %r12, %r14		# movq %r(t10), %r(460)
	salq $3, %r14		# salq $3, %r(460)
	movq %r13, %rbx		# movq %r(t27), %r(467)
	movq %rbx, -8(%rbp)		# movq %r(467), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(468)
	addq %r14, %rbx		# addq %r(460), %r(468)
	movq %rbx, -8(%rbp)		# movq %r(468), -8(%rbp)
	movq %r12, %rbx		# movq %r(t10), %r(462)
	salq $3, %rbx		# salq $3, %r(462)
	movq %r15, %r14		# movq %r(p0), %r(463)
	addq %rbx, %r14		# addq %r(462), %r(463)
	movq (%r14), %rbx		# movq (%r(463)), %r(464)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(469)
	movq %rbx, (%r14)		# movq %r(464), (%r(469))
	decq %r12		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(465)
	cmpq %rbx, %r12		# cmpq %r(465), %r(t10)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq %r13, %rbx		# movq %r(t27), %r(466)
	addq $8, %rbx		# addq $8, %r(466)
	movq %rbx, %rax		# movq %r(466), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
