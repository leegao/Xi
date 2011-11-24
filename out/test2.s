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
	movq %rdi, %rbx		# movq %rdi, %r(4455)
	movq %rbx, -72(%rbp)		# movq %r(4455), -72(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4456)
	movq %rbx, -32(%rbp)		# movq %r(4456), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(4411)
	movq %rbx, %rdi		# movq %r(4411), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4399)
	movq $0, %r12		# movq $0, %r(4412)
	movq %r12, (%r13)		# movq %r(4412), (%r(4399))
	movq $8, %r12		# movq $8, %r(4413)
	addq %r12, %r13		# addq %r(4413), %r(4414)
	movq %r13, -24(%rbp)		# movq %r(4457), -24(%rbp)
	jmp .L759		# jmp .L759
	.L759:		# .L759:
	jmp .L760		# jmp .L760
	.L760:		# .L760:
	movq $16, %rbx		# movq $16, %r(4415)
	movq %rbx, %rdi		# movq %r(4415), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4400)
	movq $1, %r12		# movq $1, %r(4416)
	movq %r12, (%rbx)		# movq %r(4416), (%r(4400))
	movq $8, %r12		# movq $8, %r(4417)
	addq %r12, %rbx		# addq %r(4417), %r(4418)
	movq %rbx, -56(%rbp)		# movq %r(4458), -56(%rbp)
	movq $0, %r12		# movq $0, %r(4419)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4459)
	movq %r13, -40(%rbp)		# movq %r(4460), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4461)
	addq %r12, %rbx		# addq %r(4419), %r(4461)
	movq %rbx, -40(%rbp)		# movq %r(4461), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(4421)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4462)
	subq %rbx, %r13		# subq %r(4421), %r(4422)
	movq (%r13), %r13		# movq (%r(4422)), %r(4423)
	movq $1, %r12		# movq $1, %r(4424)
	addq %r12, %r13		# addq %r(4424), %r(4425)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4463)
	movq %r13, (%r12)		# movq %r(4425), (%r(4463))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4464)
	movq %rbx, %rdi		# movq %r(4464), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4465)
	movq %rbx, -48(%rbp)		# movq %r(4465), -48(%rbp)
	movq $0, %r12		# movq $0, %r(4426)
	movq %r12, -8(%rbp)		# movq %r(4466), -8(%rbp)
	jmp .L763		# jmp .L763
	.L763:		# .L763:
	movq $8, %rbx		# movq $8, %r(4427)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4467)
	subq %rbx, %r13		# subq %r(4427), %r(4428)
	movq (%r13), %rbx		# movq (%r(4428)), %r(4429)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4468)
	cmpq %rbx, %r12		# cmpq %r(4429), %r(4468)
	jge .L765		# jge .L765
	.L764:		# .L764:
	movq $8, %rbx		# movq $8, %r(4430)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4469)
	subq %rbx, %r13		# subq %r(4430), %r(4431)
	movq (%r13), %rbx		# movq (%r(4431)), %r(4432)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4470)
	cmpq %rbx, %r12		# cmpq %r(4432), %r(4470)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4433)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4471)
	addq %rbx, %r14		# addq %r(4433), %r(4434)
	movq $8, %r13		# movq $8, %r(4435)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4472)
	movq %r12, -64(%rbp)		# movq %r(4473), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4474)
	subq %r13, %rbx		# subq %r(4435), %r(4474)
	movq %rbx, -64(%rbp)		# movq %r(4474), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4475)
	movq (%rbx), %rbx		# movq (%r(4475)), %r(4437)
	cmpq %rbx, %r14		# cmpq %r(4437), %r(4373)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4438)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4476)
	addq %r14, %rbx		# addq %r(4438), %r(4439)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4477)
	salq $3, %r14		# salq $3, %r(4440)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4478)
	movq %r12, -88(%rbp)		# movq %r(4479), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4480)
	addq %r14, %r13		# addq %r(4440), %r(4480)
	movq %r13, -88(%rbp)		# movq %r(4480), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4481)
	movq (%r12), %r12		# movq (%r(4481)), %r(4442)
	movq %r12, (%rbx)		# movq %r(4442), (%r(4439))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4482)
	incq %rbx		# incq %r(4482)
	movq %rbx, -8(%rbp)		# movq %r(4482), -8(%rbp)
	jmp .L763		# jmp .L763
	.L765:		# .L765:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4483)
	movq %r12, -24(%rbp)		# movq %r(4484), -24(%rbp)
	movq $0, %r13		# movq $0, %r(4443)
	movq $8, %r12		# movq $8, %r(4444)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(4485)
	movq %r14, -16(%rbp)		# movq %r(4486), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4487)
	subq %r12, %rbx		# subq %r(4444), %r(4487)
	movq %rbx, -16(%rbp)		# movq %r(4487), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4488)
	movq (%rbx), %rbx		# movq (%r(4488)), %r(4446)
	cmpq %rbx, %r13		# cmpq %r(4446), %r(4443)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4447)
	salq $3, %r13		# salq $3, %r(4448)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4489)
	addq %r13, %r12		# addq %r(4448), %r(4449)
	movq $48, %r14		# movq $48, %r(4450)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4490)
	movq %rbx, %rax		# movq %r(4490), %rax
	cqto		# cqto
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4491)
	idivq %rbx		# idivq %r(4491)
	movq %rdx, %rbx		# movq %rdx, %r(4492)
	movq %rbx, -80(%rbp)		# movq %r(4492), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4493)
	addq %rbx, %r14		# addq %r(4493), %r(4452)
	movq %r14, (%r12)		# movq %r(4452), (%r(4449))
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4494)
	movq %rbx, %rax		# movq %r(4494), %rax
	cqto		# cqto
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4495)
	idivq %rbx		# idivq %r(4495)
	movq %rax, %r12		# movq %rax, %r(4453)
	movq %r12, -72(%rbp)		# movq %r(4496), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(4454)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4497)
	cmpq %rbx, %r12		# cmpq %r(4454), %r(4497)
	jne .L773		# jne .L773
	.L772:		# .L772:
	jmp .L761		# jmp .L761
	.L761:		# .L761:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4498)
	movq %rbx, %rax		# movq %r(4498), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(4579)
	movq %rbx, -16(%rbp)		# movq %r(4579), -16(%rbp)
	movq $153, %rbx		# movq $153, %r(4499)
	movq $10, %r12		# movq $10, %r(4500)
	movq %rbx, %rdi		# movq %r(4499), %rdi
	movq %r12, %rsi		# movq %r(4500), %rsi
	call _Iitoa_aiii		# call _Iitoa_aiii
	movq %rax, %r13		# movq %rax, %r(4402)
	movq $0, %r12		# movq $0, %r(4501)
	movq $8, %r14		# movq $8, %r(4502)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4580)
	subq %r14, %rbx		# subq %r(4502), %r(4503)
	movq (%rbx), %rbx		# movq (%r(4503)), %r(4504)
	cmpq %rbx, %r12		# cmpq %r(4504), %r(4501)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(4505)
	salq $3, %r14		# salq $3, %r(4506)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4581)
	addq %r14, %rbx		# addq %r(4506), %r(4507)
	movq %r13, (%rbx)		# movq %r(4402), (%r(4507))
	movq $1, %rbx		# movq $1, %r(4508)
	movq %rbx, %r13		# movq %r(4508), %r(4383)
	movq $0, %r12		# movq $0, %r(4509)
	movq $8, %r14		# movq $8, %r(4510)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4582)
	subq %r14, %rbx		# subq %r(4510), %r(4511)
	movq (%rbx), %rbx		# movq (%r(4511)), %r(4512)
	cmpq %rbx, %r12		# cmpq %r(4512), %r(4509)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(4513)
	salq $3, %r14		# salq $3, %r(4514)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4583)
	addq %r14, %rbx		# addq %r(4514), %r(4515)
	movq (%rbx), %r14		# movq (%r(4515)), %r(4516)
	movq $8, %r12		# movq $8, %r(4517)
	subq %r12, %r14		# subq %r(4517), %r(4518)
	movq (%r14), %rbx		# movq (%r(4518)), %r(4519)
	movq $3, %r12		# movq $3, %r(4520)
	cmpq %r12, %rbx		# cmpq %r(4520), %r(4519)
	je .L779		# je .L779
	.L780:		# .L780:
	movq $0, %r13		# movq $0, %r(4521)
	jmp .L779		# jmp .L779
	.L779:		# .L779:
	movq %r13, %rdi		# movq %r(4383), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(4522)
	movq %r12, -24(%rbp)		# movq %r(4584), -24(%rbp)
	movq $0, %r13		# movq $0, %r(4523)
	movq $8, %r12		# movq $8, %r(4524)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4585)
	subq %r12, %r14		# subq %r(4524), %r(4525)
	movq (%r14), %rbx		# movq (%r(4525)), %r(4526)
	cmpq %rbx, %r13		# cmpq %r(4526), %r(4523)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4527)
	salq $3, %r13		# salq $3, %r(4528)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4586)
	addq %r13, %rbx		# addq %r(4528), %r(4529)
	movq (%rbx), %rbx		# movq (%r(4529)), %r(4530)
	movq %rbx, %r15		# movq %r(4530), %r(4386)
	movq $0, %r12		# movq $0, %r(4531)
	movq $8, %r14		# movq $8, %r(4532)
	movq %r15, %rbx		# movq %r(4386), %r(4587)
	movq %rbx, -8(%rbp)		# movq %r(4587), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4588)
	subq %r14, %rbx		# subq %r(4532), %r(4588)
	movq %rbx, -8(%rbp)		# movq %r(4588), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4589)
	movq (%rbx), %rbx		# movq (%r(4589)), %r(4534)
	cmpq %rbx, %r12		# cmpq %r(4534), %r(4531)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(4535)
	salq $3, %r12		# salq $3, %r(4536)
	addq %r12, %r15		# addq %r(4536), %r(4537)
	movq (%r15), %rbx		# movq (%r(4537)), %r(4538)
	movq $49, %r12		# movq $49, %r(4539)
	cmpq %r12, %rbx		# cmpq %r(4539), %r(4538)
	je .L785		# je .L785
	.L786:		# .L786:
	movq $0, %r12		# movq $0, %r(4540)
	movq %r12, -24(%rbp)		# movq %r(4590), -24(%rbp)
	jmp .L785		# jmp .L785
	.L785:		# .L785:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4591)
	movq %rbx, %rdi		# movq %r(4591), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(4541)
	movq %rbx, %r15		# movq %r(4541), %r(4393)
	movq $0, %r13		# movq $0, %r(4542)
	movq $8, %r12		# movq $8, %r(4543)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4592)
	subq %r12, %rbx		# subq %r(4543), %r(4544)
	movq (%rbx), %rbx		# movq (%r(4544)), %r(4545)
	cmpq %rbx, %r13		# cmpq %r(4545), %r(4542)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4546)
	salq $3, %r13		# salq $3, %r(4547)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4593)
	addq %r13, %rbx		# addq %r(4547), %r(4548)
	movq (%rbx), %rbx		# movq (%r(4548)), %r(4549)
	movq %rbx, %r12		# movq %r(4549), %r(4391)
	movq $1, %r13		# movq $1, %r(4550)
	movq $8, %r14		# movq $8, %r(4551)
	movq %r12, %rbx		# movq %r(4391), %r(4594)
	movq %rbx, -32(%rbp)		# movq %r(4594), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4595)
	subq %r14, %rbx		# subq %r(4551), %r(4595)
	movq %rbx, -32(%rbp)		# movq %r(4595), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4596)
	movq (%rbx), %rbx		# movq (%r(4596)), %r(4553)
	cmpq %rbx, %r13		# cmpq %r(4553), %r(4550)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(4554)
	salq $3, %r13		# salq $3, %r(4555)
	addq %r13, %r12		# addq %r(4555), %r(4556)
	movq (%r12), %rbx		# movq (%r(4556)), %r(4557)
	movq $53, %r12		# movq $53, %r(4558)
	cmpq %r12, %rbx		# cmpq %r(4558), %r(4557)
	je .L791		# je .L791
	.L792:		# .L792:
	movq $0, %rbx		# movq $0, %r(4559)
	movq %rbx, %r15		# movq %r(4559), %r(4393)
	jmp .L791		# jmp .L791
	.L791:		# .L791:
	movq %r15, %rdi		# movq %r(4393), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %rbx		# movq $1, %r(4560)
	movq %rbx, %r15		# movq %r(4560), %r(4398)
	movq $0, %r13		# movq $0, %r(4561)
	movq $8, %r12		# movq $8, %r(4562)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4597)
	subq %r12, %rbx		# subq %r(4562), %r(4563)
	movq (%rbx), %rbx		# movq (%r(4563)), %r(4564)
	cmpq %rbx, %r13		# cmpq %r(4564), %r(4561)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4565)
	salq $3, %r13		# salq $3, %r(4566)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4598)
	addq %r13, %rbx		# addq %r(4566), %r(4567)
	movq (%rbx), %rbx		# movq (%r(4567)), %r(4568)
	movq %rbx, %r12		# movq %r(4568), %r(4396)
	movq $2, %r13		# movq $2, %r(4569)
	movq $8, %rbx		# movq $8, %r(4570)
	movq %r12, %r14		# movq %r(4396), %r(4571)
	subq %rbx, %r14		# subq %r(4570), %r(4571)
	movq (%r14), %rbx		# movq (%r(4571)), %r(4572)
	cmpq %rbx, %r13		# cmpq %r(4572), %r(4569)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(4573)
	salq $3, %r13		# salq $3, %r(4574)
	addq %r13, %r12		# addq %r(4574), %r(4575)
	movq (%r12), %rbx		# movq (%r(4575)), %r(4576)
	movq $51, %r12		# movq $51, %r(4577)
	cmpq %r12, %rbx		# cmpq %r(4577), %r(4576)
	je .L797		# je .L797
	.L798:		# .L798:
	movq $0, %rbx		# movq $0, %r(4578)
	movq %rbx, %r15		# movq %r(4578), %r(4398)
	jmp .L797		# jmp .L797
	.L797:		# .L797:
	movq %r15, %rdi		# movq %r(4398), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(4642)
	movq %rbx, -24(%rbp)		# movq %r(4642), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(4599)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4643)
	subq %rbx, %r13		# subq %r(4599), %r(4600)
	movq (%r13), %r12		# movq (%r(4600)), %r(4601)
	movq %r12, -64(%rbp)		# movq %r(4644), -64(%rbp)
	movq $1, %r12		# movq $1, %r(4602)
	movq %r12, -32(%rbp)		# movq %r(4645), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(4603)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4646)
	cmpq %rbx, %r12		# cmpq %r(4603), %r(4646)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(4604)
	movq %rbx, %rax		# movq %r(4604), %rax
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
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4647)
	salq $3, %r12		# salq $3, %r(4605)
	movq %r12, %rdi		# movq %r(4605), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4407)
	movq $1, %r12		# movq $1, %r(4606)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(4648)
	movq %r14, -88(%rbp)		# movq %r(4649), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4650)
	subq %r12, %rbx		# subq %r(4606), %r(4650)
	movq %rbx, -88(%rbp)		# movq %r(4650), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4651)
	movq %rbx, (%r13)		# movq %r(4651), (%r(4407))
	movq $8, %rbx		# movq $8, %r(4608)
	addq %rbx, %r13		# addq %r(4608), %r(4609)
	movq %r13, -56(%rbp)		# movq %r(4652), -56(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4653)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4654)
	cmpq %r12, %rbx		# cmpq %r(4654), %r(4653)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(4610)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4655)
	subq %rbx, %r13		# subq %r(4610), %r(4611)
	movq (%r13), %rbx		# movq (%r(4611)), %r(4612)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4656)
	cmpq %rbx, %r12		# cmpq %r(4612), %r(4656)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4613)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4657)
	subq %rbx, %r14		# subq %r(4613), %r(4614)
	movq $8, %r13		# movq $8, %r(4615)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4658)
	movq %r12, -72(%rbp)		# movq %r(4659), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4660)
	subq %r13, %rbx		# subq %r(4615), %r(4660)
	movq %rbx, -72(%rbp)		# movq %r(4660), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4661)
	movq (%rbx), %rbx		# movq (%r(4661)), %r(4617)
	cmpq %rbx, %r14		# cmpq %r(4617), %r(1740)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4618)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4662)
	addq %r14, %rbx		# addq %r(4618), %r(4619)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4663)
	salq $3, %r14		# salq $3, %r(4620)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4664)
	movq %r12, -48(%rbp)		# movq %r(4665), -48(%rbp)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4666)
	addq %r14, %r13		# addq %r(4620), %r(4666)
	movq %r13, -48(%rbp)		# movq %r(4666), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4667)
	movq (%r12), %r12		# movq (%r(4667)), %r(4622)
	movq %r12, (%rbx)		# movq %r(4622), (%r(4619))
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4668)
	incq %rbx		# incq %r(4668)
	movq %rbx, -32(%rbp)		# movq %r(4668), -32(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(4623)
	movq $8, %r12		# movq $8, %r(4624)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4669)
	subq %r12, %r14		# subq %r(4624), %r(4625)
	movq (%r14), %rbx		# movq (%r(4625)), %r(4626)
	cmpq %rbx, %r13		# cmpq %r(4626), %r(4623)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4627)
	salq $3, %r13		# salq $3, %r(4628)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4670)
	addq %r13, %rbx		# addq %r(4628), %r(4629)
	movq (%rbx), %r12		# movq (%r(4629)), %r(4630)
	movq %r12, -32(%rbp)		# movq %r(4671), -32(%rbp)
	movq $1, %rbx		# movq $1, %r(4631)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4672)
	addq %rbx, %r12		# addq %r(4631), %r(4632)
	salq $3, %r12		# salq $3, %r(4633)
	movq %r12, %rdi		# movq %r(4633), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4408)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4673)
	movq %r12, (%rbx)		# movq %r(4673), (%r(4408))
	movq $8, %r12		# movq $8, %r(4634)
	addq %r12, %rbx		# addq %r(4634), %r(4635)
	movq %rbx, -40(%rbp)		# movq %r(4674), -40(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(4636)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4675)
	cmpq %rbx, %r12		# cmpq %r(4636), %r(4675)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4676)
	decq %rbx		# decq %r(4676)
	movq %rbx, -32(%rbp)		# movq %r(4676), -32(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4677)
	movq %rbx, %rdi		# movq %r(4677), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4678)
	movq %rbx, -8(%rbp)		# movq %r(4678), -8(%rbp)
	movq $8, %r12		# movq $8, %r(4637)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4679)
	movq %r13, -80(%rbp)		# movq %r(4680), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4681)
	subq %r12, %rbx		# subq %r(4637), %r(4681)
	movq %rbx, -80(%rbp)		# movq %r(4681), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4682)
	movq (%rbx), %rbx		# movq (%r(4682)), %r(4639)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4683)
	cmpq %rbx, %r12		# cmpq %r(4639), %r(4683)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4684)
	salq $3, %r13		# salq $3, %r(4640)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4685)
	movq %rbx, -16(%rbp)		# movq %r(4686), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4687)
	addq %r13, %r12		# addq %r(4640), %r(4687)
	movq %r12, -16(%rbp)		# movq %r(4687), -16(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4688)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4689)
	movq %rbx, (%r12)		# movq %r(4688), (%r(4689))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4690)
	movq %rbx, %rax		# movq %r(4690), %rax
	jmp .L320		# jmp .L320
	
error_outofbounds:
call _I_outOfBounds_p
