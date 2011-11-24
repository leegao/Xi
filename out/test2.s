.att_syntax prefix
.text
.globl _Iitoa_aiii
_Iitoa_aiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4427)
	movq %rbx, -72(%rbp)		# movq %r(4427), -72(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4428)
	movq %rbx, -56(%rbp)		# movq %r(4428), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(4383)
	movq %rbx, %rdi		# movq %r(4383), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4371)
	movq $0, %r12		# movq $0, %r(4384)
	movq %r12, (%r13)		# movq %r(4384), (%r(4371))
	movq $8, %r12		# movq $8, %r(4385)
	addq %r12, %r13		# addq %r(4385), %r(4386)
	movq %r13, -64(%rbp)		# movq %r(4429), -64(%rbp)
	jmp .L759		# jmp .L759
	.L759:		# .L759:
	jmp .L760		# jmp .L760
	.L760:		# .L760:
	movq $16, %rbx		# movq $16, %r(4387)
	movq %rbx, %rdi		# movq %r(4387), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4372)
	movq $1, %r12		# movq $1, %r(4388)
	movq %r12, (%rbx)		# movq %r(4388), (%r(4372))
	movq $8, %r12		# movq $8, %r(4389)
	addq %r12, %rbx		# addq %r(4389), %r(4390)
	movq %rbx, -80(%rbp)		# movq %r(4430), -80(%rbp)
	movq $0, %r12		# movq $0, %r(4391)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(4431)
	movq %r13, -24(%rbp)		# movq %r(4432), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4433)
	addq %r12, %rbx		# addq %r(4391), %r(4433)
	movq %rbx, -24(%rbp)		# movq %r(4433), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(4393)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4434)
	subq %rbx, %r13		# subq %r(4393), %r(4394)
	movq (%r13), %r13		# movq (%r(4394)), %r(4395)
	movq $1, %r12		# movq $1, %r(4396)
	addq %r12, %r13		# addq %r(4396), %r(4397)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4435)
	movq %r13, (%r12)		# movq %r(4397), (%r(4435))
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4436)
	movq %rbx, %rdi		# movq %r(4436), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4437)
	movq %rbx, -48(%rbp)		# movq %r(4437), -48(%rbp)
	movq $0, %r12		# movq $0, %r(4398)
	movq %r12, -16(%rbp)		# movq %r(4438), -16(%rbp)
	jmp .L763		# jmp .L763
	.L763:		# .L763:
	movq $8, %rbx		# movq $8, %r(4399)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4439)
	subq %rbx, %r13		# subq %r(4399), %r(4400)
	movq (%r13), %rbx		# movq (%r(4400)), %r(4401)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4440)
	cmpq %rbx, %r12		# cmpq %r(4401), %r(4440)
	jge .L765		# jge .L765
	.L764:		# .L764:
	movq $8, %rbx		# movq $8, %r(4402)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4441)
	subq %rbx, %r13		# subq %r(4402), %r(4403)
	movq (%r13), %rbx		# movq (%r(4403)), %r(4404)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4442)
	cmpq %rbx, %r12		# cmpq %r(4404), %r(4442)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4405)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4443)
	addq %rbx, %r14		# addq %r(4405), %r(4406)
	movq $8, %r13		# movq $8, %r(4407)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4444)
	movq %r12, -88(%rbp)		# movq %r(4445), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4446)
	subq %r13, %rbx		# subq %r(4407), %r(4446)
	movq %rbx, -88(%rbp)		# movq %r(4446), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4447)
	movq (%rbx), %rbx		# movq (%r(4447)), %r(4409)
	cmpq %rbx, %r14		# cmpq %r(4409), %r(4345)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4410)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4448)
	addq %r14, %rbx		# addq %r(4410), %r(4411)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4449)
	salq $3, %r14		# salq $3, %r(4412)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4450)
	movq %r12, -32(%rbp)		# movq %r(4451), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4452)
	addq %r14, %r13		# addq %r(4412), %r(4452)
	movq %r13, -32(%rbp)		# movq %r(4452), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4453)
	movq (%r12), %r12		# movq (%r(4453)), %r(4414)
	movq %r12, (%rbx)		# movq %r(4414), (%r(4411))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4454)
	incq %rbx		# incq %r(4454)
	movq %rbx, -16(%rbp)		# movq %r(4454), -16(%rbp)
	jmp .L763		# jmp .L763
	.L765:		# .L765:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4455)
	movq %r12, -64(%rbp)		# movq %r(4456), -64(%rbp)
	movq $0, %r13		# movq $0, %r(4415)
	movq $8, %r12		# movq $8, %r(4416)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(4457)
	movq %r14, -8(%rbp)		# movq %r(4458), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4459)
	subq %r12, %rbx		# subq %r(4416), %r(4459)
	movq %rbx, -8(%rbp)		# movq %r(4459), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4460)
	movq (%rbx), %rbx		# movq (%r(4460)), %r(4418)
	cmpq %rbx, %r13		# cmpq %r(4418), %r(4415)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4419)
	salq $3, %r13		# salq $3, %r(4420)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4461)
	addq %r13, %r12		# addq %r(4420), %r(4421)
	movq $48, %r14		# movq $48, %r(4422)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4462)
	movq %rbx, %rax		# movq %r(4462), %rax
	cqto		# cqto
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4463)
	idivq %rbx		# idivq %r(4463)
	movq %rdx, %rbx		# movq %rdx, %r(4464)
	movq %rbx, -40(%rbp)		# movq %r(4464), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4465)
	addq %rbx, %r14		# addq %r(4465), %r(4424)
	movq %r14, (%r12)		# movq %r(4424), (%r(4421))
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4466)
	movq %rbx, %rax		# movq %r(4466), %rax
	cqto		# cqto
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4467)
	idivq %rbx		# idivq %r(4467)
	movq %rax, %r12		# movq %rax, %r(4425)
	movq %r12, -72(%rbp)		# movq %r(4468), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(4426)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4469)
	cmpq %rbx, %r12		# cmpq %r(4426), %r(4469)
	jne .L773		# jne .L773
	.L772:		# .L772:
	jmp .L761		# jmp .L761
	.L761:		# .L761:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4470)
	movq %rbx, %rax		# movq %r(4470), %rax
	jmp .L758		# jmp .L758
	.L758:		# .L758:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L773:		# .L773:
	jmp .L759		# jmp .L759
	
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
	movq %rdi, %rbx		# movq %rdi, %r(4551)
	movq %rbx, -32(%rbp)		# movq %r(4551), -32(%rbp)
	movq $153, %rbx		# movq $153, %r(4471)
	movq $10, %r12		# movq $10, %r(4472)
	movq %rbx, %rdi		# movq %r(4471), %rdi
	movq %r12, %rsi		# movq %r(4472), %rsi
	call _Iitoa_aiii		# call _Iitoa_aiii
	movq %rax, %r14		# movq %rax, %r(4374)
	movq $0, %r12		# movq $0, %r(4473)
	movq $8, %r13		# movq $8, %r(4474)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4552)
	subq %r13, %rbx		# subq %r(4474), %r(4475)
	movq (%rbx), %rbx		# movq (%r(4475)), %r(4476)
	cmpq %rbx, %r12		# cmpq %r(4476), %r(4473)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4477)
	salq $3, %r13		# salq $3, %r(4478)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4553)
	addq %r13, %rbx		# addq %r(4478), %r(4479)
	movq %r14, (%rbx)		# movq %r(4374), (%r(4479))
	movq $1, %rbx		# movq $1, %r(4480)
	movq %rbx, %r13		# movq %r(4480), %r(4355)
	movq $0, %r12		# movq $0, %r(4481)
	movq $8, %r14		# movq $8, %r(4482)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4554)
	subq %r14, %rbx		# subq %r(4482), %r(4483)
	movq (%rbx), %rbx		# movq (%r(4483)), %r(4484)
	cmpq %rbx, %r12		# cmpq %r(4484), %r(4481)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(4485)
	salq $3, %r14		# salq $3, %r(4486)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4555)
	addq %r14, %rbx		# addq %r(4486), %r(4487)
	movq (%rbx), %r14		# movq (%r(4487)), %r(4488)
	movq $8, %r12		# movq $8, %r(4489)
	subq %r12, %r14		# subq %r(4489), %r(4490)
	movq (%r14), %rbx		# movq (%r(4490)), %r(4491)
	movq $3, %r12		# movq $3, %r(4492)
	cmpq %r12, %rbx		# cmpq %r(4492), %r(4491)
	je .L779		# je .L779
	.L780:		# .L780:
	movq $0, %r13		# movq $0, %r(4493)
	jmp .L779		# jmp .L779
	.L779:		# .L779:
	movq %r13, %rdi		# movq %r(4355), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(4494)
	movq %r12, -16(%rbp)		# movq %r(4556), -16(%rbp)
	movq $0, %r13		# movq $0, %r(4495)
	movq $8, %r12		# movq $8, %r(4496)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4557)
	subq %r12, %r14		# subq %r(4496), %r(4497)
	movq (%r14), %rbx		# movq (%r(4497)), %r(4498)
	cmpq %rbx, %r13		# cmpq %r(4498), %r(4495)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4499)
	salq $3, %r13		# salq $3, %r(4500)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4558)
	addq %r13, %rbx		# addq %r(4500), %r(4501)
	movq (%rbx), %rbx		# movq (%r(4501)), %r(4502)
	movq %rbx, %r15		# movq %r(4502), %r(4358)
	movq $0, %r14		# movq $0, %r(4503)
	movq $8, %r12		# movq $8, %r(4504)
	movq %r15, %rbx		# movq %r(4358), %r(4559)
	movq %rbx, -24(%rbp)		# movq %r(4559), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4560)
	subq %r12, %rbx		# subq %r(4504), %r(4560)
	movq %rbx, -24(%rbp)		# movq %r(4560), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4561)
	movq (%rbx), %rbx		# movq (%r(4561)), %r(4506)
	cmpq %rbx, %r14		# cmpq %r(4506), %r(4503)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(4507)
	salq $3, %r12		# salq $3, %r(4508)
	addq %r12, %r15		# addq %r(4508), %r(4509)
	movq (%r15), %rbx		# movq (%r(4509)), %r(4510)
	movq $49, %r12		# movq $49, %r(4511)
	cmpq %r12, %rbx		# cmpq %r(4511), %r(4510)
	je .L785		# je .L785
	.L786:		# .L786:
	movq $0, %r12		# movq $0, %r(4512)
	movq %r12, -16(%rbp)		# movq %r(4562), -16(%rbp)
	jmp .L785		# jmp .L785
	.L785:		# .L785:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4563)
	movq %rbx, %rdi		# movq %r(4563), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(4513)
	movq %rbx, %r15		# movq %r(4513), %r(4365)
	movq $0, %r13		# movq $0, %r(4514)
	movq $8, %r12		# movq $8, %r(4515)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4564)
	subq %r12, %rbx		# subq %r(4515), %r(4516)
	movq (%rbx), %rbx		# movq (%r(4516)), %r(4517)
	cmpq %rbx, %r13		# cmpq %r(4517), %r(4514)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4518)
	salq $3, %r13		# salq $3, %r(4519)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4565)
	addq %r13, %rbx		# addq %r(4519), %r(4520)
	movq (%rbx), %rbx		# movq (%r(4520)), %r(4521)
	movq %rbx, %r12		# movq %r(4521), %r(4363)
	movq $1, %r13		# movq $1, %r(4522)
	movq $8, %r14		# movq $8, %r(4523)
	movq %r12, %rbx		# movq %r(4363), %r(4566)
	movq %rbx, -8(%rbp)		# movq %r(4566), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4567)
	subq %r14, %rbx		# subq %r(4523), %r(4567)
	movq %rbx, -8(%rbp)		# movq %r(4567), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4568)
	movq (%rbx), %rbx		# movq (%r(4568)), %r(4525)
	cmpq %rbx, %r13		# cmpq %r(4525), %r(4522)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(4526)
	salq $3, %r13		# salq $3, %r(4527)
	addq %r13, %r12		# addq %r(4527), %r(4528)
	movq (%r12), %rbx		# movq (%r(4528)), %r(4529)
	movq $53, %r12		# movq $53, %r(4530)
	cmpq %r12, %rbx		# cmpq %r(4530), %r(4529)
	je .L791		# je .L791
	.L792:		# .L792:
	movq $0, %rbx		# movq $0, %r(4531)
	movq %rbx, %r15		# movq %r(4531), %r(4365)
	jmp .L791		# jmp .L791
	.L791:		# .L791:
	movq %r15, %rdi		# movq %r(4365), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(4532)
	movq %rbx, %r15		# movq %r(4532), %r(4370)
	movq $0, %r12		# movq $0, %r(4533)
	movq $8, %r13		# movq $8, %r(4534)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4569)
	subq %r13, %rbx		# subq %r(4534), %r(4535)
	movq (%rbx), %rbx		# movq (%r(4535)), %r(4536)
	cmpq %rbx, %r12		# cmpq %r(4536), %r(4533)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4537)
	salq $3, %r13		# salq $3, %r(4538)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4570)
	addq %r13, %rbx		# addq %r(4538), %r(4539)
	movq (%rbx), %rbx		# movq (%r(4539)), %r(4540)
	movq %rbx, %r12		# movq %r(4540), %r(4368)
	movq $2, %r13		# movq $2, %r(4541)
	movq $8, %rbx		# movq $8, %r(4542)
	movq %r12, %r14		# movq %r(4368), %r(4543)
	subq %rbx, %r14		# subq %r(4542), %r(4543)
	movq (%r14), %rbx		# movq (%r(4543)), %r(4544)
	cmpq %rbx, %r13		# cmpq %r(4544), %r(4541)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(4545)
	salq $3, %r13		# salq $3, %r(4546)
	addq %r13, %r12		# addq %r(4546), %r(4547)
	movq (%r12), %rbx		# movq (%r(4547)), %r(4548)
	movq $51, %r12		# movq $51, %r(4549)
	cmpq %r12, %rbx		# cmpq %r(4549), %r(4548)
	je .L797		# je .L797
	.L798:		# .L798:
	movq $0, %rbx		# movq $0, %r(4550)
	movq %rbx, %r15		# movq %r(4550), %r(4370)
	jmp .L797		# jmp .L797
	.L797:		# .L797:
	movq %r15, %rdi		# movq %r(4370), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L774		# jmp .L774
	.L774:		# .L774:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4614)
	movq %rbx, -88(%rbp)		# movq %r(4614), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(4571)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4615)
	subq %rbx, %r13		# subq %r(4571), %r(4572)
	movq (%r13), %r12		# movq (%r(4572)), %r(4573)
	movq %r12, -72(%rbp)		# movq %r(4616), -72(%rbp)
	movq $1, %r12		# movq $1, %r(4574)
	movq %r12, -8(%rbp)		# movq %r(4617), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(4575)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4618)
	cmpq %rbx, %r12		# cmpq %r(4575), %r(4618)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(4576)
	movq %rbx, %rax		# movq %r(4576), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L318:		# .L318:
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4619)
	salq $3, %r12		# salq $3, %r(4577)
	movq %r12, %rdi		# movq %r(4577), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4379)
	movq $1, %r12		# movq $1, %r(4578)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4620)
	movq %r14, -24(%rbp)		# movq %r(4621), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4622)
	subq %r12, %rbx		# subq %r(4578), %r(4622)
	movq %rbx, -24(%rbp)		# movq %r(4622), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4623)
	movq %rbx, (%r13)		# movq %r(4623), (%r(4379))
	movq $8, %rbx		# movq $8, %r(4580)
	addq %rbx, %r13		# addq %r(4580), %r(4581)
	movq %r13, -56(%rbp)		# movq %r(4624), -56(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4625)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4626)
	cmpq %r12, %rbx		# cmpq %r(4626), %r(4625)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(4582)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4627)
	subq %rbx, %r13		# subq %r(4582), %r(4583)
	movq (%r13), %rbx		# movq (%r(4583)), %r(4584)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4628)
	cmpq %rbx, %r12		# cmpq %r(4584), %r(4628)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4585)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4629)
	subq %rbx, %r14		# subq %r(4585), %r(4586)
	movq $8, %r13		# movq $8, %r(4587)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4630)
	movq %r12, -16(%rbp)		# movq %r(4631), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4632)
	subq %r13, %rbx		# subq %r(4587), %r(4632)
	movq %rbx, -16(%rbp)		# movq %r(4632), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4633)
	movq (%rbx), %rbx		# movq (%r(4633)), %r(4589)
	cmpq %rbx, %r14		# cmpq %r(4589), %r(1728)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4590)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4634)
	addq %r14, %rbx		# addq %r(4590), %r(4591)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4635)
	salq $3, %r14		# salq $3, %r(4592)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4636)
	movq %r12, -32(%rbp)		# movq %r(4637), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4638)
	addq %r14, %r13		# addq %r(4592), %r(4638)
	movq %r13, -32(%rbp)		# movq %r(4638), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4639)
	movq (%r12), %r12		# movq (%r(4639)), %r(4594)
	movq %r12, (%rbx)		# movq %r(4594), (%r(4591))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4640)
	incq %rbx		# incq %r(4640)
	movq %rbx, -8(%rbp)		# movq %r(4640), -8(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(4595)
	movq $8, %r12		# movq $8, %r(4596)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(4641)
	subq %r12, %r14		# subq %r(4596), %r(4597)
	movq (%r14), %rbx		# movq (%r(4597)), %r(4598)
	cmpq %rbx, %r13		# cmpq %r(4598), %r(4595)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4599)
	salq $3, %r13		# salq $3, %r(4600)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4642)
	addq %r13, %rbx		# addq %r(4600), %r(4601)
	movq (%rbx), %r12		# movq (%r(4601)), %r(4602)
	movq %r12, -8(%rbp)		# movq %r(4643), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(4603)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4644)
	addq %rbx, %r12		# addq %r(4603), %r(4604)
	salq $3, %r12		# salq $3, %r(4605)
	movq %r12, %rdi		# movq %r(4605), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4380)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4645)
	movq %r12, (%rbx)		# movq %r(4645), (%r(4380))
	movq $8, %r12		# movq $8, %r(4606)
	addq %r12, %rbx		# addq %r(4606), %r(4607)
	movq %rbx, -48(%rbp)		# movq %r(4646), -48(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(4608)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4647)
	cmpq %rbx, %r12		# cmpq %r(4608), %r(4647)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4648)
	decq %rbx		# decq %r(4648)
	movq %rbx, -8(%rbp)		# movq %r(4648), -8(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4649)
	movq %rbx, %rdi		# movq %r(4649), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4650)
	movq %rbx, -40(%rbp)		# movq %r(4650), -40(%rbp)
	movq $8, %r12		# movq $8, %r(4609)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4651)
	movq %r13, -80(%rbp)		# movq %r(4652), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4653)
	subq %r12, %rbx		# subq %r(4609), %r(4653)
	movq %rbx, -80(%rbp)		# movq %r(4653), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4654)
	movq (%rbx), %rbx		# movq (%r(4654)), %r(4611)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4655)
	cmpq %rbx, %r12		# cmpq %r(4611), %r(4655)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4656)
	salq $3, %r13		# salq $3, %r(4612)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4657)
	movq %rbx, -64(%rbp)		# movq %r(4658), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4659)
	addq %r13, %r12		# addq %r(4612), %r(4659)
	movq %r12, -64(%rbp)		# movq %r(4659), -64(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4660)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4661)
	movq %rbx, (%r12)		# movq %r(4660), (%r(4661))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4662)
	movq %rbx, %rax		# movq %r(4662), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
