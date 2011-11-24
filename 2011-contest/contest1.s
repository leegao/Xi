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
	movq %rdi, %rbx		# movq %rdi, %r(443)
	movq %rbx, -112(%rbp)		# movq %r(443), -112(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(444)
	movq %rbx, -264(%rbp)		# movq %r(444), -264(%rbp)
	movq %rdx, %rbx		# movq %rdx, %r(445)
	movq %rbx, -256(%rbp)		# movq %r(445), -256(%rbp)
	movq %rcx, %rbx		# movq %rcx, %r(446)
	movq %rbx, -272(%rbp)		# movq %r(446), -272(%rbp)
	movq %r8, %rbx		# movq %r8, %r(447)
	movq %rbx, -16(%rbp)		# movq %r(447), -16(%rbp)
	movq %r9, %rbx		# movq %r9, %r(448)
	movq %rbx, -200(%rbp)		# movq %r(448), -200(%rbp)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(449)
	movq %rbx, -168(%rbp)		# movq %r(449), -168(%rbp)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(450)
	movq %rbx, -288(%rbp)		# movq %r(450), -288(%rbp)
	movq $24, %rbx		# movq $24, %r(451)
	movq %rbx, -152(%rbp)		# movq %r(451), -152(%rbp)
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(452)
	movq %rbx, %rdi		# movq %r(452), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(453)
	movq %rbx, -176(%rbp)		# movq %r(453), -176(%rbp)
	movq $2, %rbx		# movq $2, %r(454)
	movq %rbx, -48(%rbp)		# movq %r(454), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(455)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(456)
	movq %rbx, (%r12)		# movq %r(455), (%r(456))
	movq $8, %rbx		# movq $8, %r(457)
	movq %rbx, -24(%rbp)		# movq %r(457), -24(%rbp)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(458)
	movq %r12, -224(%rbp)		# movq %r(459), -224(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(460)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(461)
	addq %rbx, %r12		# addq %r(460), %r(461)
	movq %r12, -224(%rbp)		# movq %r(461), -224(%rbp)
	movq -224(%rbp), %r12		# movq -224(%rbp), %r(462)
	movq %r12, -240(%rbp)		# movq %r(463), -240(%rbp)
	movq $24, %rbx		# movq $24, %r(464)
	movq %rbx, -56(%rbp)		# movq %r(464), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(465)
	movq %rbx, %rdi		# movq %r(465), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(466)
	movq %rbx, -232(%rbp)		# movq %r(466), -232(%rbp)
	movq $2, %rbx		# movq $2, %r(467)
	movq %rbx, -144(%rbp)		# movq %r(467), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(468)
	movq -232(%rbp), %r12		# movq -232(%rbp), %r(469)
	movq %rbx, (%r12)		# movq %r(468), (%r(469))
	movq $8, %rbx		# movq $8, %r(470)
	movq %rbx, -64(%rbp)		# movq %r(470), -64(%rbp)
	movq -232(%rbp), %r12		# movq -232(%rbp), %r(471)
	movq %r12, -184(%rbp)		# movq %r(472), -184(%rbp)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(473)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(474)
	addq %r12, %rbx		# addq %r(474), %r(473)
	movq %rbx, -184(%rbp)		# movq %r(473), -184(%rbp)
	movq -184(%rbp), %r12		# movq -184(%rbp), %r(475)
	movq %r12, -208(%rbp)		# movq %r(476), -208(%rbp)
	movq $0, %rbx		# movq $0, %r(477)
	movq %rbx, -32(%rbp)		# movq %r(477), -32(%rbp)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(478)
	movq %r12, -248(%rbp)		# movq %r(479), -248(%rbp)
	movq -248(%rbp), %rbx		# movq -248(%rbp), %r(480)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(481)
	addq %r12, %rbx		# addq %r(481), %r(480)
	movq %rbx, -248(%rbp)		# movq %r(480), -248(%rbp)
	movq $1, %rbx		# movq $1, %r(482)
	movq %rbx, -104(%rbp)		# movq %r(482), -104(%rbp)
	movq -256(%rbp), %r13		# movq -256(%rbp), %r(483)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(484)
	xorq %r12, %r13		# xorq %r(484), %r(310)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(485)
	movq %r13, (%r12)		# movq %r(310), (%r(485))
	movq $1, %r13		# movq $1, %r(311)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(486)
	movq -264(%rbp), %r12		# movq -264(%rbp), %r(487)
	cmpq %rbx, %r12		# cmpq %r(486), %r(487)
	jl .L188		# jl .L188
	movq $0, %r13		# movq $0, %r(312)
	.L188:		# .L188:
	movq $8, %rbx		# movq $8, %r(488)
	movq %rbx, -88(%rbp)		# movq %r(488), -88(%rbp)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(489)
	movq %r12, -160(%rbp)		# movq %r(490), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(491)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(492)
	addq %r12, %rbx		# addq %r(492), %r(491)
	movq %rbx, -160(%rbp)		# movq %r(491), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(493)
	movq %r13, (%rbx)		# movq %r(248), (%r(493))
	movq $0, %r12		# movq $0, %r(315)
	movq -240(%rbp), %r13		# movq -240(%rbp), %r(494)
	movq %r13, -128(%rbp)		# movq %r(495), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(496)
	addq %r12, %rbx		# addq %r(315), %r(496)
	movq %rbx, -128(%rbp)		# movq %r(496), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(497)
	movq -208(%rbp), %r12		# movq -208(%rbp), %r(498)
	movq %r12, (%rbx)		# movq %r(498), (%r(497))
	movq $24, %rbx		# movq $24, %r(317)
	movq %rbx, %rdi		# movq %r(317), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(499)
	movq %rbx, -40(%rbp)		# movq %r(499), -40(%rbp)
	movq $2, %rbx		# movq $2, %r(318)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(500)
	movq %rbx, (%r12)		# movq %r(318), (%r(500))
	movq $8, %rbx		# movq $8, %r(501)
	movq %rbx, -80(%rbp)		# movq %r(501), -80(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(502)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(503)
	addq %r12, %rbx		# addq %r(503), %r(320)
	movq %rbx, -8(%rbp)		# movq %r(504), -8(%rbp)
	movq $0, %r12		# movq $0, %r(321)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(505)
	movq %r13, -136(%rbp)		# movq %r(506), -136(%rbp)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(507)
	addq %r12, %rbx		# addq %r(321), %r(507)
	movq %rbx, -136(%rbp)		# movq %r(507), -136(%rbp)
	movq $1, %rbx		# movq $1, %r(323)
	movq -272(%rbp), %r13		# movq -272(%rbp), %r(508)
	xorq %rbx, %r13		# xorq %r(323), %r(324)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(509)
	movq %r13, (%rbx)		# movq %r(324), (%r(509))
	movq $1, %r13		# movq $1, %r(325)
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(510)
	movq -200(%rbp), %r12		# movq -200(%rbp), %r(511)
	cmpq %r12, %rbx		# cmpq %r(511), %r(510)
	jge .L189		# jge .L189
	movq $0, %r13		# movq $0, %r(326)
	.L189:		# .L189:
	movq $8, %r12		# movq $8, %r(327)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(512)
	addq %r12, %r14		# addq %r(327), %r(328)
	movq %r13, (%r14)		# movq %r(251), (%r(328))
	movq $8, %rbx		# movq $8, %r(329)
	movq -240(%rbp), %r13		# movq -240(%rbp), %r(513)
	addq %rbx, %r13		# addq %r(329), %r(330)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(514)
	movq %rbx, (%r13)		# movq %r(514), (%r(330))
	movq $0, %r13		# movq $0, %r(331)
	movq $8, %r12		# movq $8, %r(332)
	movq -288(%rbp), %r14		# movq -288(%rbp), %r(515)
	subq %r12, %r14		# subq %r(332), %r(333)
	movq (%r14), %rbx		# movq (%r(333)), %r(334)
	cmpq %rbx, %r13		# cmpq %r(334), %r(331)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(335)
	salq $3, %r13		# salq $3, %r(336)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(516)
	addq %r13, %r12		# addq %r(336), %r(337)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(517)
	movq -200(%rbp), %r13		# movq -200(%rbp), %r(518)
	imulq %r13, %r14		# imulq %r(518), %r(338)
	movq -168(%rbp), %r13		# movq -168(%rbp), %r(519)
	imulq %r13, %r14		# imulq %r(519), %r(339)
	movq $17179869184, %r13		# movq $17179869184, %r(340)
	imulq %r13, %r14		# imulq %r(340), %r(341)
	movq $72, %r13		# movq $72, %r(342)
	addq %r13, %r14		# addq %r(342), %r(343)
	movq $128, %r13		# movq $128, %r(344)
	movq %r14, %rax		# movq %r(343), %rax
	cqto		# cqto
	idivq %r13		# idivq %r(344)
	movq %rdx, %rbx		# movq %rdx, %r(345)
	movq %rbx, (%r12)		# movq %r(345), (%r(337))
	movq $1, %r12		# movq $1, %r(346)
	movq %r12, -72(%rbp)		# movq %r(520), -72(%rbp)
	movq $0, %r13		# movq $0, %r(347)
	movq $8, %r12		# movq $8, %r(348)
	movq -240(%rbp), %r14		# movq -240(%rbp), %r(521)
	subq %r12, %r14		# subq %r(348), %r(349)
	movq (%r14), %rbx		# movq (%r(349)), %r(350)
	cmpq %rbx, %r13		# cmpq %r(350), %r(347)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(351)
	salq $3, %r13		# salq $3, %r(352)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(522)
	addq %r13, %rbx		# addq %r(352), %r(353)
	movq (%rbx), %r12		# movq (%r(353)), %r(354)
	movq %r12, -96(%rbp)		# movq %r(523), -96(%rbp)
	movq $0, %r13		# movq $0, %r(355)
	movq $8, %r12		# movq $8, %r(356)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(524)
	movq %r14, -120(%rbp)		# movq %r(525), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(526)
	subq %r12, %rbx		# subq %r(356), %r(526)
	movq %rbx, -120(%rbp)		# movq %r(526), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(527)
	movq (%rbx), %rbx		# movq (%r(527)), %r(358)
	cmpq %rbx, %r13		# cmpq %r(358), %r(355)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(359)
	salq $3, %r13		# salq $3, %r(360)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(528)
	addq %r13, %rbx		# addq %r(360), %r(361)
	movq (%rbx), %rbx		# movq (%r(361)), %r(362)
	testq $1, %rbx		# testq $1, %r(362)
	jne .L190		# jne .L190
	movq $1, %r13		# movq $1, %r(363)
	movq $8, %r12		# movq $8, %r(364)
	movq -240(%rbp), %r14		# movq -240(%rbp), %r(529)
	subq %r12, %r14		# subq %r(364), %r(365)
	movq (%r14), %rbx		# movq (%r(365)), %r(366)
	cmpq %rbx, %r13		# cmpq %r(366), %r(363)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(367)
	salq $3, %r13		# salq $3, %r(368)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(530)
	addq %r13, %rbx		# addq %r(368), %r(369)
	movq (%rbx), %r12		# movq (%r(369)), %r(370)
	movq %r12, -216(%rbp)		# movq %r(531), -216(%rbp)
	movq $1, %r13		# movq $1, %r(371)
	movq $8, %r12		# movq $8, %r(372)
	movq -216(%rbp), %r14		# movq -216(%rbp), %r(532)
	movq %r14, -296(%rbp)		# movq %r(533), -296(%rbp)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(534)
	subq %r12, %rbx		# subq %r(372), %r(534)
	movq %rbx, -296(%rbp)		# movq %r(534), -296(%rbp)
	movq -296(%rbp), %rbx		# movq -296(%rbp), %r(535)
	movq (%rbx), %rbx		# movq (%r(535)), %r(374)
	cmpq %rbx, %r13		# cmpq %r(374), %r(371)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(375)
	salq $3, %r13		# salq $3, %r(376)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(536)
	addq %r13, %rbx		# addq %r(376), %r(377)
	movq (%rbx), %rbx		# movq (%r(377)), %r(378)
	testq $1, %rbx		# testq $1, %r(378)
	jne .L190		# jne .L190
	movq $0, %r12		# movq $0, %r(379)
	movq %r12, -72(%rbp)		# movq %r(537), -72(%rbp)
	.L190:		# .L190:
	movq $0, %r13		# movq $0, %r(380)
	movq $8, %r12		# movq $8, %r(381)
	movq -240(%rbp), %r14		# movq -240(%rbp), %r(538)
	subq %r12, %r14		# subq %r(381), %r(382)
	movq (%r14), %rbx		# movq (%r(382)), %r(383)
	cmpq %rbx, %r13		# cmpq %r(383), %r(380)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(384)
	salq $3, %r13		# salq $3, %r(385)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(539)
	addq %r13, %rbx		# addq %r(385), %r(386)
	movq (%rbx), %rbx		# movq (%r(386)), %r(387)
	movq %rbx, %r15		# movq %r(387), %r(256)
	movq $0, %r14		# movq $0, %r(388)
	movq $8, %r12		# movq $8, %r(389)
	movq %r15, %rbx		# movq %r(256), %r(540)
	movq %rbx, -192(%rbp)		# movq %r(540), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(541)
	subq %r12, %rbx		# subq %r(389), %r(541)
	movq %rbx, -192(%rbp)		# movq %r(541), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(542)
	movq (%rbx), %rbx		# movq (%r(542)), %r(391)
	cmpq %rbx, %r14		# cmpq %r(391), %r(388)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(392)
	salq $3, %r12		# salq $3, %r(393)
	addq %r12, %r15		# addq %r(393), %r(394)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(543)
	movq %rbx, (%r15)		# movq %r(543), (%r(394))
	movq $0, %r13		# movq $0, %r(395)
	movq $8, %r12		# movq $8, %r(396)
	movq -288(%rbp), %r14		# movq -288(%rbp), %r(544)
	subq %r12, %r14		# subq %r(396), %r(397)
	movq (%r14), %rbx		# movq (%r(397)), %r(398)
	cmpq %rbx, %r13		# cmpq %r(398), %r(395)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(399)
	salq $3, %r13		# salq $3, %r(400)
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(545)
	addq %r13, %rbx		# addq %r(400), %r(401)
	movq (%rbx), %rbx		# movq (%r(401)), %r(402)
	movq %rbx, %rdi		# movq %r(402), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(289)
	movq %rbx, %rdi		# movq %r(289), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(403)
	movq %r12, -280(%rbp)		# movq %r(546), -280(%rbp)
	movq $0, %r13		# movq $0, %r(404)
	movq $8, %r12		# movq $8, %r(405)
	movq -240(%rbp), %r14		# movq -240(%rbp), %r(547)
	subq %r12, %r14		# subq %r(405), %r(406)
	movq (%r14), %rbx		# movq (%r(406)), %r(407)
	cmpq %rbx, %r13		# cmpq %r(407), %r(404)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(408)
	salq $3, %r13		# salq $3, %r(409)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(548)
	addq %r13, %rbx		# addq %r(409), %r(410)
	movq (%rbx), %rbx		# movq (%r(410)), %r(411)
	movq $0, %r13		# movq $0, %r(412)
	movq $8, %r12		# movq $8, %r(413)
	movq %rbx, %r14		# movq %r(271), %r(414)
	subq %r12, %r14		# subq %r(413), %r(414)
	movq (%r14), %r12		# movq (%r(414)), %r(415)
	cmpq %r12, %r13		# cmpq %r(415), %r(412)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(416)
	salq $3, %r13		# salq $3, %r(417)
	addq %r13, %rbx		# addq %r(417), %r(418)
	movq (%rbx), %r13		# movq (%r(418)), %r(419)
	movq $1, %r12		# movq $1, %r(420)
	xorq %r12, %r13		# xorq %r(420), %r(421)
	testq $1, %r13		# testq $1, %r(421)
	jne .L191		# jne .L191
	movq $1, %r13		# movq $1, %r(422)
	movq $8, %r12		# movq $8, %r(423)
	movq -240(%rbp), %r14		# movq -240(%rbp), %r(549)
	subq %r12, %r14		# subq %r(423), %r(424)
	movq (%r14), %rbx		# movq (%r(424)), %r(425)
	cmpq %rbx, %r13		# cmpq %r(425), %r(422)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(426)
	salq $3, %r13		# salq $3, %r(427)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(550)
	addq %r13, %rbx		# addq %r(427), %r(428)
	movq (%rbx), %rbx		# movq (%r(428)), %r(429)
	movq $1, %r13		# movq $1, %r(430)
	movq $8, %r12		# movq $8, %r(431)
	movq %rbx, %r14		# movq %r(275), %r(432)
	subq %r12, %r14		# subq %r(431), %r(432)
	movq (%r14), %r12		# movq (%r(432)), %r(433)
	cmpq %r12, %r13		# cmpq %r(433), %r(430)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(434)
	salq $3, %r13		# salq $3, %r(435)
	addq %r13, %rbx		# addq %r(435), %r(436)
	movq (%rbx), %rbx		# movq (%r(436)), %r(437)
	testq $1, %rbx		# testq $1, %r(437)
	jne .L192		# jne .L192
	.L191:		# .L191:
	movq $0, %r12		# movq $0, %r(438)
	movq %r12, -280(%rbp)		# movq %r(551), -280(%rbp)
	.L192:		# .L192:
	movq $0, %rbx		# movq $0, %r(439)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(552)
	addq %rbx, %r13		# addq %r(439), %r(440)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(553)
	movq %rbx, (%r13)		# movq %r(553), (%r(440))
	movq $8, %rbx		# movq $8, %r(441)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(554)
	addq %rbx, %r13		# addq %r(441), %r(442)
	movq -288(%rbp), %rbx		# movq -288(%rbp), %r(555)
	movq %rbx, (%r13)		# movq %r(555), (%r(442))
	jmp .L193		# jmp .L193
	.L193:		# .L193:
	.L144:		# .L144:
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
	movq $16, %rbx		# movq $16, %r(556)
	movq %rbx, %rdi		# movq %r(556), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(579)
	movq %rbx, -80(%rbp)		# movq %r(579), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(580)
	movq %r12, -32(%rbp)		# movq %r(581), -32(%rbp)
	leaq .L180(%rip), %rdi		# leaq .L180(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(582)
	movq %rbx, -88(%rbp)		# movq %r(582), -88(%rbp)
	movq $1, %rbx		# movq $1, %r(583)
	movq %rbx, -40(%rbp)		# movq %r(583), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(584)
	movq %rbx, -56(%rbp)		# movq %r(584), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(585)
	movq %rbx, -72(%rbp)		# movq %r(585), -72(%rbp)
	movq $2, %rbx		# movq $2, %r(586)
	movq %rbx, -48(%rbp)		# movq %r(586), -48(%rbp)
	movq $3, %rbx		# movq $3, %r(587)
	movq %rbx, -64(%rbp)		# movq %r(587), -64(%rbp)
	movq $4, %rbx		# movq $4, %r(588)
	movq %rbx, -24(%rbp)		# movq %r(588), -24(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(589)
	movq %rbx, %rdi		# movq %r(589), %rdi
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(590)
	movq %rbx, %rsi		# movq %r(590), %rsi
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(591)
	movq %rbx, %rdx		# movq %r(591), %rdx
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(592)
	movq %rbx, %rcx		# movq %r(592), %rcx
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(593)
	movq %rbx, %r8		# movq %r(593), %r8
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(594)
	movq %rbx, %r9		# movq %r(594), %r9
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(595)
	pushq %rbx		# pushq %r(595)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(596)
	pushq %rbx		# pushq %r(596)
	call _IIam____t2baiibbiiiai		# call _IIam____t2baiibbiiiai
	popq %rsi		# popq %rsi
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(597)
	movq 0(%rbx), %r12		# movq 0(%r(597)), %r(toB)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(598)
	movq 8(%rbx), %rbx		# movq 8(%r(598)), %r(599)
	movq %rbx, -16(%rbp)		# movq %r(599), -16(%rbp)
	testq $1, %r12		# testq $1, %r(toB)
	jne .L194		# jne .L194
	movq $1, %rbx		# movq $1, %r(564)
	xorq %rbx, %r12		# xorq %r(564), %r(565)
	movq $1, %rbx		# movq $1, %r(566)
	xorq %rbx, %r12		# xorq %r(566), %r(567)
	testq $1, %r12		# testq $1, %r(567)
	jne .L195		# jne .L195
	.L194:		# .L194:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(600)
	movq %rbx, %rdi		# movq %r(600), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L195:		# .L195:
	movq $1, %rbx		# movq $1, %r(568)
	movq %rbx, %r13		# movq %r(568), %r(285)
	movq $0, %r12		# movq $0, %r(569)
	movq $8, %r14		# movq $8, %r(570)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(601)
	subq %r14, %rbx		# subq %r(570), %r(571)
	movq (%rbx), %rbx		# movq (%r(571)), %r(572)
	cmpq %rbx, %r12		# cmpq %r(572), %r(569)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r15		# movq $0, %r(573)
	salq $3, %r15		# salq $3, %r(574)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(602)
	movq %r14, -8(%rbp)		# movq %r(603), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(604)
	addq %r15, %r12		# addq %r(574), %r(604)
	movq %r12, -8(%rbp)		# movq %r(604), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(605)
	movq (%rbx), %rbx		# movq (%r(605)), %r(576)
	movq $72, %r12		# movq $72, %r(577)
	cmpq %r12, %rbx		# cmpq %r(577), %r(576)
	je .L196		# je .L196
	movq $0, %r13		# movq $0, %r(578)
	.L196:		# .L196:
	movq %r13, %rdi		# movq %r(285), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L179:		# .L179:
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(606)
	movq %r12, -24(%rbp)		# movq %r(619), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(620)
	salq $3, %r13		# salq $3, %r(607)
	movq $8, %r12		# movq $8, %r(608)
	movq %r13, %rbx		# movq %r(298), %r(609)
	addq %r12, %rbx		# addq %r(608), %r(609)
	movq %rbx, %rdi		# movq %r(609), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(621)
	movq %r12, -16(%rbp)		# movq %r(621), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(622)
	movq %rbx, -8(%rbp)		# movq %r(616), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(617)
	addq %r13, %r12		# addq %r(298), %r(617)
	movq %r12, -8(%rbp)		# movq %r(617), -8(%rbp)
	addq %r13, %r14		# addq %r(298), %r(611)
	movq (%r14), %rbx		# movq (%r(611)), %r(612)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(618)
	movq %rbx, (%r12)		# movq %r(612), (%r(618))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(623)
	decq %rbx		# decq %r(623)
	movq %rbx, -24(%rbp)		# movq %r(623), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(613)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(624)
	cmpq %rbx, %r12		# cmpq %r(613), %r(624)
	jge .L70		# jge .L70
	movq $8, %rbx		# movq $8, %r(614)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(625)
	addq %rbx, %r13		# addq %r(614), %r(615)
	movq %r13, %rax		# movq %r(615), %rax
	.L72:		# .L72:
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
.L180:
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
