.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $144, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L885(%rip), %rdi		# leaq .L885(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4391)
	leaq .L886(%rip), %rdi		# leaq .L886(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(4392)
	movq %rbx, %rdi		# movq %r(4391), %rdi
	movq %r12, %rsi		# movq %r(4392), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r14		# movq %rax, %r(4393)
	movq $24, %rbx		# movq $24, %r(4423)
	movq %rbx, %rdi		# movq %r(4423), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4394)
	movq $2, %rbx		# movq $2, %r(4424)
	movq %rbx, (%r13)		# movq %r(4424), (%r(4394))
	movq $8, %rbx		# movq $8, %r(4425)
	addq %rbx, %r13		# addq %r(4425), %r(4426)
	movq %r13, %r15		# movq %r(4426), %r(4333)
	movq $0, %rbx		# movq $0, %r(4427)
	movq %r15, %r13		# movq %r(4333), %r(4428)
	addq %rbx, %r13		# addq %r(4427), %r(4428)
	movq $100, %rbx		# movq $100, %r(4429)
	movq %rbx, (%r13)		# movq %r(4429), (%r(4428))
	movq $8, %rbx		# movq $8, %r(4430)
	movq %r15, %r12		# movq %r(4333), %r(4431)
	addq %rbx, %r12		# addq %r(4430), %r(4431)
	movq $101, %rbx		# movq $101, %r(4432)
	movq %rbx, (%r12)		# movq %r(4432), (%r(4431))
	movq %r14, %rdi		# movq %r(4393), %rdi
	movq %r15, %rsi		# movq %r(4333), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(4541)
	movq %rbx, -88(%rbp)		# movq %r(4541), -88(%rbp)
	movq $32, %rbx		# movq $32, %r(4433)
	movq %rbx, %rdi		# movq %r(4433), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4396)
	movq $3, %r12		# movq $3, %r(4434)
	movq %r12, (%rbx)		# movq %r(4434), (%r(4396))
	movq $8, %r12		# movq $8, %r(4435)
	addq %r12, %rbx		# addq %r(4435), %r(4436)
	movq %rbx, -16(%rbp)		# movq %r(4542), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(4437)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4543)
	addq %rbx, %r13		# addq %r(4437), %r(4438)
	movq $1, %rbx		# movq $1, %r(4439)
	movq %rbx, (%r13)		# movq %r(4439), (%r(4438))
	movq $8, %rbx		# movq $8, %r(4440)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4544)
	addq %rbx, %r13		# addq %r(4440), %r(4441)
	movq $1, %rbx		# movq $1, %r(4442)
	movq %rbx, (%r13)		# movq %r(4442), (%r(4441))
	movq $16, %rbx		# movq $16, %r(4443)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4545)
	addq %rbx, %r13		# addq %r(4443), %r(4444)
	movq $1, %rbx		# movq $1, %r(4445)
	movq %rbx, (%r13)		# movq %r(4445), (%r(4444))
	movq $32, %rbx		# movq $32, %r(4446)
	movq %rbx, %rdi		# movq %r(4446), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4397)
	movq $3, %r12		# movq $3, %r(4447)
	movq %r12, (%rbx)		# movq %r(4447), (%r(4397))
	movq $8, %r12		# movq $8, %r(4448)
	addq %r12, %rbx		# addq %r(4448), %r(4449)
	movq %rbx, -8(%rbp)		# movq %r(4546), -8(%rbp)
	movq $24, %rbx		# movq $24, %r(4450)
	movq %rbx, %rdi		# movq %r(4450), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4398)
	movq $2, %r12		# movq $2, %r(4451)
	movq %r12, (%r14)		# movq %r(4451), (%r(4398))
	movq $8, %r12		# movq $8, %r(4452)
	addq %r12, %r14		# addq %r(4452), %r(4453)
	movq $0, %r12		# movq $0, %r(4454)
	movq %r14, %rbx		# movq %r(4343), %r(4455)
	addq %r12, %rbx		# addq %r(4454), %r(4455)
	movq $1, %r12		# movq $1, %r(4456)
	movq %r12, (%rbx)		# movq %r(4456), (%r(4455))
	movq $8, %r12		# movq $8, %r(4457)
	movq %r14, %rbx		# movq %r(4343), %r(4458)
	addq %r12, %rbx		# addq %r(4457), %r(4458)
	movq $2, %r12		# movq $2, %r(4459)
	movq %r12, (%rbx)		# movq %r(4459), (%r(4458))
	movq $0, %r13		# movq $0, %r(4460)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4547)
	addq %r13, %rbx		# addq %r(4460), %r(4461)
	movq %r14, (%rbx)		# movq %r(4343), (%r(4461))
	movq $24, %rbx		# movq $24, %r(4462)
	movq %rbx, %rdi		# movq %r(4462), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4399)
	movq $2, %r12		# movq $2, %r(4463)
	movq %r12, (%r14)		# movq %r(4463), (%r(4399))
	movq $8, %r12		# movq $8, %r(4464)
	addq %r12, %r14		# addq %r(4464), %r(4465)
	movq $0, %r12		# movq $0, %r(4466)
	movq %r14, %rbx		# movq %r(4345), %r(4467)
	addq %r12, %rbx		# addq %r(4466), %r(4467)
	movq $3, %r12		# movq $3, %r(4468)
	movq %r12, (%rbx)		# movq %r(4468), (%r(4467))
	movq $8, %r12		# movq $8, %r(4469)
	movq %r14, %rbx		# movq %r(4345), %r(4470)
	addq %r12, %rbx		# addq %r(4469), %r(4470)
	movq $4, %r12		# movq $4, %r(4471)
	movq %r12, (%rbx)		# movq %r(4471), (%r(4470))
	movq $8, %r13		# movq $8, %r(4472)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4548)
	addq %r13, %rbx		# addq %r(4472), %r(4473)
	movq %r14, (%rbx)		# movq %r(4345), (%r(4473))
	movq $24, %rbx		# movq $24, %r(4474)
	movq %rbx, %rdi		# movq %r(4474), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4400)
	movq $2, %r12		# movq $2, %r(4475)
	movq %r12, (%r14)		# movq %r(4475), (%r(4400))
	movq $8, %r12		# movq $8, %r(4476)
	addq %r12, %r14		# addq %r(4476), %r(4477)
	movq $0, %r12		# movq $0, %r(4478)
	movq %r14, %rbx		# movq %r(4347), %r(4479)
	addq %r12, %rbx		# addq %r(4478), %r(4479)
	movq $5, %r12		# movq $5, %r(4480)
	movq %r12, (%rbx)		# movq %r(4480), (%r(4479))
	movq $8, %r12		# movq $8, %r(4481)
	movq %r14, %rbx		# movq %r(4347), %r(4482)
	addq %r12, %rbx		# addq %r(4481), %r(4482)
	movq $6, %r12		# movq $6, %r(4483)
	movq %r12, (%rbx)		# movq %r(4483), (%r(4482))
	movq $16, %r13		# movq $16, %r(4484)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4549)
	addq %r13, %rbx		# addq %r(4484), %r(4485)
	movq %r14, (%rbx)		# movq %r(4347), (%r(4485))
	movq $32, %rbx		# movq $32, %r(4486)
	movq %rbx, %rdi		# movq %r(4486), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4401)
	movq $3, %r12		# movq $3, %r(4487)
	movq %r12, (%rbx)		# movq %r(4487), (%r(4401))
	movq $8, %r12		# movq $8, %r(4488)
	addq %r12, %rbx		# addq %r(4488), %r(4489)
	movq %rbx, -128(%rbp)		# movq %r(4550), -128(%rbp)
	movq $0, %rbx		# movq $0, %r(4490)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(4551)
	addq %rbx, %r13		# addq %r(4490), %r(4491)
	movq $1, %rbx		# movq $1, %r(4492)
	movq %rbx, (%r13)		# movq %r(4492), (%r(4491))
	movq $8, %rbx		# movq $8, %r(4493)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(4552)
	addq %rbx, %r13		# addq %r(4493), %r(4494)
	movq $2, %rbx		# movq $2, %r(4495)
	movq %rbx, (%r13)		# movq %r(4495), (%r(4494))
	movq $16, %rbx		# movq $16, %r(4496)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(4553)
	addq %rbx, %r13		# addq %r(4496), %r(4497)
	movq $3, %rbx		# movq $3, %r(4498)
	movq %rbx, (%r13)		# movq %r(4498), (%r(4497))
	leaq .L887(%rip), %rdi		# leaq .L887(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4554)
	movq %rbx, -136(%rbp)		# movq %r(4554), -136(%rbp)
	movq $16, %rbx		# movq $16, %r(4500)
	movq %rbx, %rdi		# movq %r(4500), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4403)
	movq $1, %r12		# movq $1, %r(4501)
	movq %r12, (%rbx)		# movq %r(4501), (%r(4403))
	movq $8, %r12		# movq $8, %r(4555)
	movq %r12, -96(%rbp)		# movq %r(4555), -96(%rbp)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(4556)
	addq %r12, %rbx		# addq %r(4556), %r(4503)
	movq %rbx, -64(%rbp)		# movq %r(4557), -64(%rbp)
	movq $32, %rbx		# movq $32, %r(4504)
	movq %rbx, %rdi		# movq %r(4504), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4404)
	movq $3, %r12		# movq $3, %r(4505)
	movq %r12, (%rbx)		# movq %r(4505), (%r(4404))
	movq $8, %r12		# movq $8, %r(4558)
	movq %r12, -104(%rbp)		# movq %r(4558), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(4559)
	addq %r12, %rbx		# addq %r(4559), %r(4507)
	movq %rbx, -32(%rbp)		# movq %r(4560), -32(%rbp)
	movq $16, %rbx		# movq $16, %r(4508)
	movq %rbx, %rdi		# movq %r(4508), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4405)
	movq $1, %r12		# movq $1, %r(4509)
	movq %r12, (%rbx)		# movq %r(4509), (%r(4405))
	movq $8, %r12		# movq $8, %r(4561)
	movq %r12, -112(%rbp)		# movq %r(4561), -112(%rbp)
	movq -112(%rbp), %r12		# movq -112(%rbp), %r(4562)
	addq %r12, %rbx		# addq %r(4562), %r(4511)
	movq %rbx, -56(%rbp)		# movq %r(4563), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(4512)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4564)
	addq %rbx, %r13		# addq %r(4512), %r(4513)
	movq $1, %rbx		# movq $1, %r(4514)
	movq %rbx, (%r13)		# movq %r(4514), (%r(4513))
	movq $0, %rbx		# movq $0, %r(4515)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4565)
	addq %rbx, %r13		# addq %r(4515), %r(4516)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4566)
	movq %rbx, (%r13)		# movq %r(4566), (%r(4516))
	movq $16, %rbx		# movq $16, %r(4517)
	movq %rbx, %rdi		# movq %r(4517), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4406)
	movq $1, %r12		# movq $1, %r(4518)
	movq %r12, (%rbx)		# movq %r(4518), (%r(4406))
	movq $8, %r12		# movq $8, %r(4567)
	movq %r12, -48(%rbp)		# movq %r(4567), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4568)
	addq %r12, %rbx		# addq %r(4568), %r(4520)
	movq %rbx, -40(%rbp)		# movq %r(4569), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(4521)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4570)
	addq %rbx, %r13		# addq %r(4521), %r(4522)
	movq $1, %rbx		# movq $1, %r(4523)
	movq %rbx, (%r13)		# movq %r(4523), (%r(4522))
	movq $8, %rbx		# movq $8, %r(4524)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4571)
	addq %rbx, %r13		# addq %r(4524), %r(4525)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4572)
	movq %rbx, (%r13)		# movq %r(4572), (%r(4525))
	movq $16, %rbx		# movq $16, %r(4526)
	movq %rbx, %rdi		# movq %r(4526), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4407)
	movq $1, %r12		# movq $1, %r(4527)
	movq %r12, (%rbx)		# movq %r(4527), (%r(4407))
	movq $8, %r12		# movq $8, %r(4573)
	movq %r12, -72(%rbp)		# movq %r(4573), -72(%rbp)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4574)
	addq %r12, %rbx		# addq %r(4574), %r(4529)
	movq %rbx, -80(%rbp)		# movq %r(4575), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(4530)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(4576)
	addq %rbx, %r13		# addq %r(4530), %r(4531)
	movq $1, %rbx		# movq $1, %r(4532)
	movq %rbx, (%r13)		# movq %r(4532), (%r(4531))
	movq $16, %rbx		# movq $16, %r(4533)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4577)
	addq %rbx, %r13		# addq %r(4533), %r(4534)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4578)
	movq %rbx, (%r13)		# movq %r(4578), (%r(4534))
	movq $0, %rbx		# movq $0, %r(4535)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4579)
	addq %rbx, %r13		# addq %r(4535), %r(4536)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4580)
	movq %rbx, (%r13)		# movq %r(4580), (%r(4536))
	movq $32, %rbx		# movq $32, %r(4537)
	movq %rbx, %rdi		# movq %r(4537), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4408)
	movq $0, %r13		# movq $0, %r(4538)
	movq $195, %r12		# movq $195, %r(4581)
	movq %r12, -24(%rbp)		# movq %r(4581), -24(%rbp)
	movq $1, %r12		# movq $1, %r(4582)
	movq %r12, -120(%rbp)		# movq %r(4582), -120(%rbp)
	movq %rbx, %rdi		# movq %r(4369), %rdi
	movq %r13, %rsi		# movq %r(4538), %rsi
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4583)
	movq %rbx, %rdx		# movq %r(4583), %rdx
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4584)
	movq %rbx, %rcx		# movq %r(4584), %rcx
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4585)
	movq %rbx, %r8		# movq %r(4585), %r8
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4586)
	movq %rbx, %r9		# movq %r(4586), %r9
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4587)
	pushq %rbx		# pushq %r(4587)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(4588)
	pushq %rbx		# pushq %r(4588)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(4589)
	pushq %rbx		# pushq %r(4589)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(4590)
	pushq %rbx		# pushq %r(4590)
	call _If_t4iaiaabaibaiabaaiibaiaiaaai		# call _If_t4iaiaabaibaiabaaiibaiaiaaai
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	jmp .L884		# jmp .L884
	.L884:		# .L884:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $144, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_t4iaiaabaibaiabaaiibaiaiaaai
_If_t4iaiaabaibaiabaaiibaiaiaaai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4642)
	movq %rbx, -8(%rbp)		# movq %r(4642), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(a)
	movq %rdx, %rbx		# movq %rdx, %r(b)
	movq %rcx, %rbx		# movq %rcx, %r(c)
	movq %r8, %rbx		# movq %r8, %r(d)
	movq %r9, %rbx		# movq %r9, %r(e)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(f_)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(g)
	movq 32(%rbp), %rbx		# movq 32(%rbp), %r(h)
	movq 40(%rbp), %rbx		# movq 40(%rbp), %r(i)
	movq $0, %rbx		# movq $0, %r(4591)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4643)
	addq %rbx, %r13		# addq %r(4591), %r(4592)
	movq $1, %rbx		# movq $1, %r(4593)
	movq %rbx, (%r13)		# movq %r(4593), (%r(4592))
	movq $32, %rbx		# movq $32, %r(4594)
	movq %rbx, %rdi		# movq %r(4594), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4410)
	movq $3, %r12		# movq $3, %r(4595)
	movq %r12, (%r14)		# movq %r(4595), (%r(4410))
	movq $8, %r12		# movq $8, %r(4596)
	addq %r12, %r14		# addq %r(4596), %r(4597)
	movq $0, %r12		# movq $0, %r(4598)
	movq %r14, %rbx		# movq %r(4383), %r(4599)
	addq %r12, %rbx		# addq %r(4598), %r(4599)
	movq $100, %r12		# movq $100, %r(4600)
	movq %r12, (%rbx)		# movq %r(4600), (%r(4599))
	movq $8, %r12		# movq $8, %r(4601)
	movq %r14, %rbx		# movq %r(4383), %r(4602)
	addq %r12, %rbx		# addq %r(4601), %r(4602)
	movq $3, %r12		# movq $3, %r(4603)
	movq %r12, (%rbx)		# movq %r(4603), (%r(4602))
	movq $16, %r12		# movq $16, %r(4604)
	movq %r14, %rbx		# movq %r(4383), %r(4605)
	addq %r12, %rbx		# addq %r(4604), %r(4605)
	movq $2, %r12		# movq $2, %r(4606)
	movq %r12, (%rbx)		# movq %r(4606), (%r(4605))
	movq $8, %r13		# movq $8, %r(4607)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4644)
	addq %r13, %rbx		# addq %r(4607), %r(4608)
	movq %r14, (%rbx)		# movq %r(4383), (%r(4608))
	movq $24, %rbx		# movq $24, %r(4609)
	movq %rbx, %rdi		# movq %r(4609), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4411)
	movq $2, %r12		# movq $2, %r(4610)
	movq %r12, (%rbx)		# movq %r(4610), (%r(4411))
	movq $8, %r12		# movq $8, %r(4611)
	addq %r12, %rbx		# addq %r(4611), %r(4612)
	movq %rbx, -16(%rbp)		# movq %r(4645), -16(%rbp)
	movq $24, %rbx		# movq $24, %r(4613)
	movq %rbx, %rdi		# movq %r(4613), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4412)
	movq $2, %r12		# movq $2, %r(4614)
	movq %r12, (%r14)		# movq %r(4614), (%r(4412))
	movq $8, %r12		# movq $8, %r(4615)
	addq %r12, %r14		# addq %r(4615), %r(4616)
	movq $0, %r12		# movq $0, %r(4617)
	movq %r14, %rbx		# movq %r(4387), %r(4618)
	addq %r12, %rbx		# addq %r(4617), %r(4618)
	movq $1, %r12		# movq $1, %r(4619)
	movq %r12, (%rbx)		# movq %r(4619), (%r(4618))
	movq $8, %r12		# movq $8, %r(4620)
	movq %r14, %rbx		# movq %r(4387), %r(4621)
	addq %r12, %rbx		# addq %r(4620), %r(4621)
	movq $0, %r12		# movq $0, %r(4622)
	movq %r12, (%rbx)		# movq %r(4622), (%r(4621))
	movq $0, %r13		# movq $0, %r(4623)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4646)
	addq %r13, %rbx		# addq %r(4623), %r(4624)
	movq %r14, (%rbx)		# movq %r(4387), (%r(4624))
	movq $24, %rbx		# movq $24, %r(4625)
	movq %rbx, %rdi		# movq %r(4625), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4413)
	movq $2, %r12		# movq $2, %r(4626)
	movq %r12, (%r14)		# movq %r(4626), (%r(4413))
	movq $8, %r12		# movq $8, %r(4627)
	addq %r12, %r14		# addq %r(4627), %r(4628)
	movq $0, %r12		# movq $0, %r(4629)
	movq %r14, %rbx		# movq %r(4389), %r(4630)
	addq %r12, %rbx		# addq %r(4629), %r(4630)
	movq $0, %r12		# movq $0, %r(4631)
	movq %r12, (%rbx)		# movq %r(4631), (%r(4630))
	movq $8, %r12		# movq $8, %r(4632)
	movq %r14, %rbx		# movq %r(4389), %r(4633)
	addq %r12, %rbx		# addq %r(4632), %r(4633)
	movq $1, %r12		# movq $1, %r(4634)
	movq %r12, (%rbx)		# movq %r(4634), (%r(4633))
	movq $8, %r13		# movq $8, %r(4635)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4647)
	addq %r13, %rbx		# addq %r(4635), %r(4636)
	movq %r14, (%rbx)		# movq %r(4389), (%r(4636))
	movq $16, %rbx		# movq $16, %r(4637)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4648)
	addq %rbx, %r13		# addq %r(4637), %r(4638)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4649)
	movq %rbx, (%r13)		# movq %r(4649), (%r(4638))
	leaq .L890(%rip), %rdi		# leaq .L890(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4414)
	movq $24, %r12		# movq $24, %r(4640)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4650)
	addq %r12, %r14		# addq %r(4640), %r(4641)
	movq %r13, (%r14)		# movq %r(4414), (%r(4641))
	jmp .L889		# jmp .L889
	.L889:		# .L889:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(4694)
	movq %rbx, -88(%rbp)		# movq %r(4694), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(4651)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4695)
	subq %rbx, %r13		# subq %r(4651), %r(4652)
	movq (%r13), %r12		# movq (%r(4652)), %r(4653)
	movq %r12, -56(%rbp)		# movq %r(4696), -56(%rbp)
	movq $1, %r12		# movq $1, %r(4654)
	movq %r12, -64(%rbp)		# movq %r(4697), -64(%rbp)
	movq $0, %rbx		# movq $0, %r(4655)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4698)
	cmpq %rbx, %r12		# cmpq %r(4655), %r(4698)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(4656)
	movq %rbx, %rax		# movq %r(4656), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L69:		# .L69:
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4699)
	salq $3, %r12		# salq $3, %r(4657)
	movq %r12, %rdi		# movq %r(4657), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4415)
	movq $1, %r12		# movq $1, %r(4658)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(4700)
	movq %r14, -8(%rbp)		# movq %r(4701), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4702)
	subq %r12, %rbx		# subq %r(4658), %r(4702)
	movq %rbx, -8(%rbp)		# movq %r(4702), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4703)
	movq %rbx, (%r13)		# movq %r(4703), (%r(4415))
	movq $8, %rbx		# movq $8, %r(4660)
	addq %rbx, %r13		# addq %r(4660), %r(4661)
	movq %r13, -48(%rbp)		# movq %r(4704), -48(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4705)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4706)
	cmpq %rbx, %r12		# cmpq %r(4705), %r(4706)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(4662)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4707)
	subq %rbx, %r13		# subq %r(4662), %r(4663)
	movq (%r13), %rbx		# movq (%r(4663)), %r(4664)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4708)
	cmpq %rbx, %r12		# cmpq %r(4664), %r(4708)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4665)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(4709)
	subq %rbx, %r14		# subq %r(4665), %r(4666)
	movq $8, %r13		# movq $8, %r(4667)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4710)
	movq %r12, -72(%rbp)		# movq %r(4711), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4712)
	subq %r13, %rbx		# subq %r(4667), %r(4712)
	movq %rbx, -72(%rbp)		# movq %r(4712), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4713)
	movq (%rbx), %rbx		# movq (%r(4713)), %r(4669)
	cmpq %rbx, %r14		# cmpq %r(4669), %r(70)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4670)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4714)
	addq %r14, %rbx		# addq %r(4670), %r(4671)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(4715)
	salq $3, %r14		# salq $3, %r(4672)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4716)
	movq %r12, -16(%rbp)		# movq %r(4717), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4718)
	addq %r14, %r13		# addq %r(4672), %r(4718)
	movq %r13, -16(%rbp)		# movq %r(4718), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4719)
	movq (%r12), %r12		# movq (%r(4719)), %r(4674)
	movq %r12, (%rbx)		# movq %r(4674), (%r(4671))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4720)
	incq %rbx		# incq %r(4720)
	movq %rbx, -64(%rbp)		# movq %r(4720), -64(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(4675)
	movq $8, %r12		# movq $8, %r(4676)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(4721)
	subq %r12, %r14		# subq %r(4676), %r(4677)
	movq (%r14), %rbx		# movq (%r(4677)), %r(4678)
	cmpq %rbx, %r13		# cmpq %r(4678), %r(4675)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4679)
	salq $3, %r13		# salq $3, %r(4680)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4722)
	addq %r13, %rbx		# addq %r(4680), %r(4681)
	movq (%rbx), %r12		# movq (%r(4681)), %r(4682)
	movq %r12, -64(%rbp)		# movq %r(4723), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(4683)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4724)
	addq %rbx, %r12		# addq %r(4683), %r(4684)
	salq $3, %r12		# salq $3, %r(4685)
	movq %r12, %rdi		# movq %r(4685), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4416)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4725)
	movq %r12, (%rbx)		# movq %r(4725), (%r(4416))
	movq $8, %r12		# movq $8, %r(4686)
	addq %r12, %rbx		# addq %r(4686), %r(4687)
	movq %rbx, -80(%rbp)		# movq %r(4726), -80(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(4688)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4727)
	cmpq %rbx, %r12		# cmpq %r(4688), %r(4727)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4728)
	decq %rbx		# decq %r(4728)
	movq %rbx, -64(%rbp)		# movq %r(4728), -64(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4729)
	movq %rbx, %rdi		# movq %r(4729), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4730)
	movq %rbx, -24(%rbp)		# movq %r(4730), -24(%rbp)
	movq $8, %r12		# movq $8, %r(4689)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(4731)
	movq %r13, -40(%rbp)		# movq %r(4732), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4733)
	subq %r12, %rbx		# subq %r(4689), %r(4733)
	movq %rbx, -40(%rbp)		# movq %r(4733), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4734)
	movq (%rbx), %rbx		# movq (%r(4734)), %r(4691)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4735)
	cmpq %rbx, %r12		# cmpq %r(4691), %r(4735)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4736)
	salq $3, %r13		# salq $3, %r(4692)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4737)
	movq %rbx, -32(%rbp)		# movq %r(4738), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4739)
	addq %r13, %r12		# addq %r(4692), %r(4739)
	movq %r12, -32(%rbp)		# movq %r(4739), -32(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4740)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4741)
	movq %rbx, (%r12)		# movq %r(4740), (%r(4741))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4742)
	movq %rbx, %rax		# movq %r(4742), %rax
	jmp .L71		# jmp .L71
	
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
	movq %rdi, %rbx		# movq %rdi, %r(4758)
	movq %rbx, -16(%rbp)		# movq %r(4758), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4759)
	movq (%rbx), %rbx		# movq (%r(4759)), %r(4743)
	movq %rbx, %r12		# movq %r(t10), %r(4744)
	salq $3, %r12		# salq $3, %r(4744)
	movq $8, %r13		# movq $8, %r(4745)
	addq %r13, %r12		# addq %r(4745), %r(4746)
	movq %r12, %rdi		# movq %r(4746), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(4760)
	movq %r12, -32(%rbp)		# movq %r(4760), -32(%rbp)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %rbx, %r14		# movq %r(t10), %r(4747)
	salq $3, %r14		# salq $3, %r(4747)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4761)
	addq %r14, %r12		# addq %r(4747), %r(4748)
	movq %rbx, %r14		# movq %r(t10), %r(4762)
	movq %r14, -24(%rbp)		# movq %r(4762), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4763)
	salq $3, %r13		# salq $3, %r(4763)
	movq %r13, -24(%rbp)		# movq %r(4763), -24(%rbp)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4764)
	movq %r14, -8(%rbp)		# movq %r(4755), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4756)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4765)
	addq %r14, %r13		# addq %r(4765), %r(4756)
	movq %r13, -8(%rbp)		# movq %r(4756), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4757)
	movq (%r13), %r13		# movq (%r(4757)), %r(4751)
	movq %r13, (%r12)		# movq %r(4751), (%r(4748))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(4752)
	cmpq %r12, %rbx		# cmpq %r(4752), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(4753)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4766)
	addq %rbx, %r13		# addq %r(4753), %r(4754)
	movq %r13, %rax		# movq %r(4754), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4790)
	movq %rbx, -40(%rbp)		# movq %r(4790), -40(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4791)
	movq %rbx, -72(%rbp)		# movq %r(4791), -72(%rbp)
	movq $0, %r12		# movq $0, %r(4767)
	movq %r12, -24(%rbp)		# movq %r(4792), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(4768)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4793)
	subq %rbx, %r13		# subq %r(4768), %r(4769)
	movq (%r13), %r12		# movq (%r(4769)), %r(4770)
	movq %r12, -56(%rbp)		# movq %r(4794), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(4771)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(4795)
	subq %rbx, %r13		# subq %r(4771), %r(4772)
	movq (%r13), %rbx		# movq (%r(4772)), %r(4773)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4796)
	addq %rbx, %r12		# addq %r(4773), %r(4774)
	movq %r12, -16(%rbp)		# movq %r(4797), -16(%rbp)
	movq $1, %rbx		# movq $1, %r(4775)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4798)
	addq %rbx, %r13		# addq %r(4775), %r(4776)
	movq %r13, %rdi		# movq %r(4776), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4419)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4799)
	movq %r12, (%rbx)		# movq %r(4799), (%r(4419))
	movq $8, %r12		# movq $8, %r(4777)
	addq %r12, %rbx		# addq %r(4777), %r(4778)
	movq %rbx, -64(%rbp)		# movq %r(4800), -64(%rbp)
	jmp .L158		# jmp .L158
	.L158:		# .L158:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4801)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4802)
	cmpq %r12, %rbx		# cmpq %r(4802), %r(4801)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4803)
	salq $3, %r13		# salq $3, %r(4779)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4804)
	movq %rbx, -48(%rbp)		# movq %r(4805), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4806)
	addq %r13, %r12		# addq %r(4779), %r(4806)
	movq %r12, -48(%rbp)		# movq %r(4806), -48(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4807)
	salq $3, %r13		# salq $3, %r(4781)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4808)
	movq %rbx, -8(%rbp)		# movq %r(4809), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4810)
	addq %r13, %r12		# addq %r(4781), %r(4810)
	movq %r12, -8(%rbp)		# movq %r(4810), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4811)
	movq (%rbx), %rbx		# movq (%r(4811)), %r(4783)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4812)
	movq %rbx, (%r12)		# movq %r(4783), (%r(4812))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4813)
	incq %rbx		# incq %r(4813)
	movq %rbx, -24(%rbp)		# movq %r(4813), -24(%rbp)
	jmp .L158		# jmp .L158
	.L160:		# .L160:
	jmp .L161		# jmp .L161
	.L161:		# .L161:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4814)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4815)
	cmpq %rbx, %r12		# cmpq %r(4814), %r(4815)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4816)
	salq $3, %r13		# salq $3, %r(4784)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(4817)
	addq %r13, %r14		# addq %r(4784), %r(4785)
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(4818)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4819)
	subq %r13, %r15		# subq %r(4819), %r(4786)
	salq $3, %r15		# salq $3, %r(4787)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4820)
	movq %rbx, -32(%rbp)		# movq %r(4821), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4822)
	addq %r15, %r13		# addq %r(4787), %r(4822)
	movq %r13, -32(%rbp)		# movq %r(4822), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4823)
	movq (%rbx), %rbx		# movq (%r(4823)), %r(4789)
	movq %rbx, (%r14)		# movq %r(4789), (%r(4785))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4824)
	incq %rbx		# incq %r(4824)
	movq %rbx, -24(%rbp)		# movq %r(4824), -24(%rbp)
	jmp .L161		# jmp .L161
	.L163:		# .L163:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4825)
	movq %rbx, %rax		# movq %r(4825), %rax
	jmp .L164		# jmp .L164
	.L164:		# .L164:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L885:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

#.section .rodata
.align 8
.L886:
	.quad 5
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L890:
	.quad 7
	.quad 78
	.quad 111
	.quad 116
	.quad 104
	.quad 105
	.quad 110
	.quad 103
	.text

#.section .rodata
.align 8
.L887:
	.quad 9
	.quad 71
	.quad 111
	.quad 111
	.quad 100
	.quad 32
	.quad 76
	.quad 117
	.quad 99
	.quad 107
	.text

error_outofbounds:
call _I_outOfBounds_p
