.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $304, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4072)
	leaq .L725(%rip), %rdi		# leaq .L725(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4133)
	leaq .L726(%rip), %rdi		# leaq .L726(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(4134)
	movq %rbx, %rdi		# movq %r(4133), %rdi
	movq %r12, %rsi		# movq %r(4134), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %r15		# movq %rax, %r(4135)
	movq $24, %rbx		# movq $24, %r(4165)
	movq %rbx, %rdi		# movq %r(4165), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4136)
	movq $2, %rbx		# movq $2, %r(4166)
	movq %rbx, (%r13)		# movq %r(4166), (%r(4136))
	movq $8, %rbx		# movq $8, %r(4167)
	movq %r13, %r14		# movq %r(4136), %r(4168)
	addq %rbx, %r14		# addq %r(4167), %r(4168)
	movq %r14, %r12		# movq %r(4168), %r(4075)
	movq $0, %rbx		# movq $0, %r(4169)
	movq %r12, %r13		# movq %r(4075), %r(4170)
	addq %rbx, %r13		# addq %r(4169), %r(4170)
	movq $100, %rbx		# movq $100, %r(4171)
	movq %rbx, (%r13)		# movq %r(4171), (%r(4170))
	movq $8, %rbx		# movq $8, %r(4172)
	movq %r12, %r13		# movq %r(4075), %r(4173)
	addq %rbx, %r13		# addq %r(4172), %r(4173)
	movq $101, %rbx		# movq $101, %r(4174)
	movq %rbx, (%r13)		# movq %r(4174), (%r(4173))
	movq %r15, %rdi		# movq %r(4135), %rdi
	movq %r12, %rsi		# movq %r(4075), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(4283)
	movq %rbx, -264(%rbp)		# movq %r(4283), -264(%rbp)
	movq $32, %rbx		# movq $32, %r(4175)
	movq %rbx, %rdi		# movq %r(4175), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4138)
	movq $3, %rbx		# movq $3, %r(4176)
	movq %rbx, (%r14)		# movq %r(4176), (%r(4138))
	movq $8, %rbx		# movq $8, %r(4177)
	movq %r14, %r13		# movq %r(4138), %r(4178)
	addq %rbx, %r13		# addq %r(4177), %r(4178)
	movq %r13, %r12		# movq %r(4178), %r(4284)
	movq %r12, -152(%rbp)		# movq %r(4284), -152(%rbp)
	movq $0, %rbx		# movq $0, %r(4179)
	movq -152(%rbp), %r14		# movq -152(%rbp), %r(4285)
	movq %r14, %r12		# movq %r(4285), %r(4180)
	addq %rbx, %r12		# addq %r(4179), %r(4180)
	movq $1, %rbx		# movq $1, %r(4181)
	movq %rbx, (%r12)		# movq %r(4181), (%r(4180))
	movq $8, %rbx		# movq $8, %r(4182)
	movq -152(%rbp), %r14		# movq -152(%rbp), %r(4286)
	movq %r14, %r12		# movq %r(4286), %r(4183)
	addq %rbx, %r12		# addq %r(4182), %r(4183)
	movq $1, %rbx		# movq $1, %r(4184)
	movq %rbx, (%r12)		# movq %r(4184), (%r(4183))
	movq $16, %rbx		# movq $16, %r(4185)
	movq -152(%rbp), %r14		# movq -152(%rbp), %r(4287)
	movq %r14, %r12		# movq %r(4287), %r(4186)
	addq %rbx, %r12		# addq %r(4185), %r(4186)
	movq $1, %rbx		# movq $1, %r(4187)
	movq %rbx, (%r12)		# movq %r(4187), (%r(4186))
	movq $32, %rbx		# movq $32, %r(4188)
	movq %rbx, %rdi		# movq %r(4188), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4139)
	movq $3, %rbx		# movq $3, %r(4189)
	movq %rbx, (%r14)		# movq %r(4189), (%r(4139))
	movq $8, %rbx		# movq $8, %r(4190)
	movq %r14, %r13		# movq %r(4139), %r(4191)
	addq %rbx, %r13		# addq %r(4190), %r(4191)
	movq %r13, %r12		# movq %r(4191), %r(4288)
	movq %r12, -232(%rbp)		# movq %r(4288), -232(%rbp)
	movq $24, %rbx		# movq $24, %r(4192)
	movq %rbx, %rdi		# movq %r(4192), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4140)
	movq $2, %rbx		# movq $2, %r(4193)
	movq %rbx, (%r14)		# movq %r(4193), (%r(4140))
	movq $8, %r13		# movq $8, %r(4194)
	movq %r14, %r12		# movq %r(4140), %r(4289)
	movq %r12, -128(%rbp)		# movq %r(4289), -128(%rbp)
	movq -128(%rbp), %rbx		# movq -128(%rbp), %r(4290)
	addq %r13, %rbx		# addq %r(4194), %r(4290)
	movq %rbx, -128(%rbp)		# movq %r(4290), -128(%rbp)
	movq -128(%rbp), %r13		# movq -128(%rbp), %r(4291)
	movq %r13, %rbx		# movq %r(4291), %r(4292)
	movq %rbx, -80(%rbp)		# movq %r(4292), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(4196)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(4293)
	movq %r14, %r12		# movq %r(4293), %r(4197)
	addq %rbx, %r12		# addq %r(4196), %r(4197)
	movq $1, %rbx		# movq $1, %r(4198)
	movq %rbx, (%r12)		# movq %r(4198), (%r(4197))
	movq $8, %rbx		# movq $8, %r(4199)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(4294)
	movq %r14, %r12		# movq %r(4294), %r(4200)
	addq %rbx, %r12		# addq %r(4199), %r(4200)
	movq $2, %rbx		# movq $2, %r(4201)
	movq %rbx, (%r12)		# movq %r(4201), (%r(4200))
	movq $0, %rbx		# movq $0, %r(4202)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(4295)
	movq %r14, %r12		# movq %r(4295), %r(4203)
	addq %rbx, %r12		# addq %r(4202), %r(4203)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4296)
	movq %rbx, (%r12)		# movq %r(4296), (%r(4203))
	movq $24, %rbx		# movq $24, %r(4204)
	movq %rbx, %rdi		# movq %r(4204), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4141)
	movq $2, %rbx		# movq $2, %r(4205)
	movq %rbx, (%r14)		# movq %r(4205), (%r(4141))
	movq $8, %r13		# movq $8, %r(4206)
	movq %r14, %r12		# movq %r(4141), %r(4297)
	movq %r12, -32(%rbp)		# movq %r(4297), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4298)
	addq %r13, %rbx		# addq %r(4206), %r(4298)
	movq %rbx, -32(%rbp)		# movq %r(4298), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4299)
	movq %r13, %rbx		# movq %r(4299), %r(4300)
	movq %rbx, -184(%rbp)		# movq %r(4300), -184(%rbp)
	movq $0, %rbx		# movq $0, %r(4208)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(4301)
	movq %r14, %r12		# movq %r(4301), %r(4209)
	addq %rbx, %r12		# addq %r(4208), %r(4209)
	movq $3, %rbx		# movq $3, %r(4210)
	movq %rbx, (%r12)		# movq %r(4210), (%r(4209))
	movq $8, %rbx		# movq $8, %r(4211)
	movq -184(%rbp), %r14		# movq -184(%rbp), %r(4302)
	movq %r14, %r12		# movq %r(4302), %r(4212)
	addq %rbx, %r12		# addq %r(4211), %r(4212)
	movq $4, %rbx		# movq $4, %r(4213)
	movq %rbx, (%r12)		# movq %r(4213), (%r(4212))
	movq $8, %rbx		# movq $8, %r(4214)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(4303)
	movq %r14, %r12		# movq %r(4303), %r(4215)
	addq %rbx, %r12		# addq %r(4214), %r(4215)
	movq -184(%rbp), %rbx		# movq -184(%rbp), %r(4304)
	movq %rbx, (%r12)		# movq %r(4304), (%r(4215))
	movq $24, %rbx		# movq $24, %r(4216)
	movq %rbx, %rdi		# movq %r(4216), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4142)
	movq $2, %rbx		# movq $2, %r(4217)
	movq %rbx, (%r14)		# movq %r(4217), (%r(4142))
	movq $8, %r13		# movq $8, %r(4218)
	movq %r14, %r12		# movq %r(4142), %r(4305)
	movq %r12, -160(%rbp)		# movq %r(4305), -160(%rbp)
	movq -160(%rbp), %rbx		# movq -160(%rbp), %r(4306)
	addq %r13, %rbx		# addq %r(4218), %r(4306)
	movq %rbx, -160(%rbp)		# movq %r(4306), -160(%rbp)
	movq -160(%rbp), %r13		# movq -160(%rbp), %r(4307)
	movq %r13, %rbx		# movq %r(4307), %r(4308)
	movq %rbx, -8(%rbp)		# movq %r(4308), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(4220)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4309)
	movq %r14, %r12		# movq %r(4309), %r(4221)
	addq %rbx, %r12		# addq %r(4220), %r(4221)
	movq $5, %rbx		# movq $5, %r(4222)
	movq %rbx, (%r12)		# movq %r(4222), (%r(4221))
	movq $8, %rbx		# movq $8, %r(4223)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4310)
	movq %r14, %r12		# movq %r(4310), %r(4224)
	addq %rbx, %r12		# addq %r(4223), %r(4224)
	movq $6, %rbx		# movq $6, %r(4225)
	movq %rbx, (%r12)		# movq %r(4225), (%r(4224))
	movq $16, %rbx		# movq $16, %r(4226)
	movq -232(%rbp), %r14		# movq -232(%rbp), %r(4311)
	movq %r14, %r12		# movq %r(4311), %r(4227)
	addq %rbx, %r12		# addq %r(4226), %r(4227)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4312)
	movq %rbx, (%r12)		# movq %r(4312), (%r(4227))
	movq $32, %rbx		# movq $32, %r(4228)
	movq %rbx, %rdi		# movq %r(4228), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4143)
	movq $3, %rbx		# movq $3, %r(4229)
	movq %rbx, (%r14)		# movq %r(4229), (%r(4143))
	movq $8, %r13		# movq $8, %r(4230)
	movq %r14, %r12		# movq %r(4143), %r(4313)
	movq %r12, -112(%rbp)		# movq %r(4313), -112(%rbp)
	movq -112(%rbp), %rbx		# movq -112(%rbp), %r(4314)
	addq %r13, %rbx		# addq %r(4230), %r(4314)
	movq %rbx, -112(%rbp)		# movq %r(4314), -112(%rbp)
	movq -112(%rbp), %r13		# movq -112(%rbp), %r(4315)
	movq %r13, %rbx		# movq %r(4315), %r(4316)
	movq %rbx, -72(%rbp)		# movq %r(4316), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(4232)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4317)
	movq %r14, %r12		# movq %r(4317), %r(4233)
	addq %rbx, %r12		# addq %r(4232), %r(4233)
	movq $1, %rbx		# movq $1, %r(4234)
	movq %rbx, (%r12)		# movq %r(4234), (%r(4233))
	movq $8, %rbx		# movq $8, %r(4235)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4318)
	movq %r14, %r12		# movq %r(4318), %r(4236)
	addq %rbx, %r12		# addq %r(4235), %r(4236)
	movq $2, %rbx		# movq $2, %r(4237)
	movq %rbx, (%r12)		# movq %r(4237), (%r(4236))
	movq $16, %rbx		# movq $16, %r(4238)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4319)
	movq %r14, %r12		# movq %r(4319), %r(4239)
	addq %rbx, %r12		# addq %r(4238), %r(4239)
	movq $3, %rbx		# movq $3, %r(4240)
	movq %rbx, (%r12)		# movq %r(4240), (%r(4239))
	leaq .L727(%rip), %rdi		# leaq .L727(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4320)
	movq %rbx, -240(%rbp)		# movq %r(4320), -240(%rbp)
	movq $16, %rbx		# movq $16, %r(4242)
	movq %rbx, %rdi		# movq %r(4242), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4321)
	movq %rbx, -248(%rbp)		# movq %r(4321), -248(%rbp)
	movq $1, %rbx		# movq $1, %r(4243)
	movq -248(%rbp), %r12		# movq -248(%rbp), %r(4322)
	movq %rbx, (%r12)		# movq %r(4243), (%r(4322))
	movq $8, %r13		# movq $8, %r(4244)
	movq -248(%rbp), %r14		# movq -248(%rbp), %r(4323)
	movq %r14, %rbx		# movq %r(4323), %r(4324)
	movq %rbx, -168(%rbp)		# movq %r(4324), -168(%rbp)
	movq -168(%rbp), %rbx		# movq -168(%rbp), %r(4325)
	addq %r13, %rbx		# addq %r(4244), %r(4325)
	movq %rbx, -168(%rbp)		# movq %r(4325), -168(%rbp)
	movq -168(%rbp), %r13		# movq -168(%rbp), %r(4326)
	movq %r13, %rbx		# movq %r(4326), %r(4327)
	movq %rbx, -64(%rbp)		# movq %r(4327), -64(%rbp)
	movq $32, %rbx		# movq $32, %r(4246)
	movq %rbx, %rdi		# movq %r(4246), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4328)
	movq %rbx, -288(%rbp)		# movq %r(4328), -288(%rbp)
	movq $3, %rbx		# movq $3, %r(4247)
	movq -288(%rbp), %r12		# movq -288(%rbp), %r(4329)
	movq %rbx, (%r12)		# movq %r(4247), (%r(4329))
	movq $8, %r13		# movq $8, %r(4248)
	movq -288(%rbp), %r14		# movq -288(%rbp), %r(4330)
	movq %r14, %rbx		# movq %r(4330), %r(4331)
	movq %rbx, -16(%rbp)		# movq %r(4331), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4332)
	addq %r13, %rbx		# addq %r(4248), %r(4332)
	movq %rbx, -16(%rbp)		# movq %r(4332), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4333)
	movq %r13, %rbx		# movq %r(4333), %r(4334)
	movq %rbx, -48(%rbp)		# movq %r(4334), -48(%rbp)
	movq $16, %rbx		# movq $16, %r(4250)
	movq %rbx, %rdi		# movq %r(4250), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4335)
	movq %rbx, -296(%rbp)		# movq %r(4335), -296(%rbp)
	movq $1, %rbx		# movq $1, %r(4251)
	movq -296(%rbp), %r12		# movq -296(%rbp), %r(4336)
	movq %rbx, (%r12)		# movq %r(4251), (%r(4336))
	movq $8, %r13		# movq $8, %r(4252)
	movq -296(%rbp), %r14		# movq -296(%rbp), %r(4337)
	movq %r14, %rbx		# movq %r(4337), %r(4338)
	movq %rbx, -192(%rbp)		# movq %r(4338), -192(%rbp)
	movq -192(%rbp), %rbx		# movq -192(%rbp), %r(4339)
	addq %r13, %rbx		# addq %r(4252), %r(4339)
	movq %rbx, -192(%rbp)		# movq %r(4339), -192(%rbp)
	movq -192(%rbp), %r13		# movq -192(%rbp), %r(4340)
	movq %r13, %rbx		# movq %r(4340), %r(4341)
	movq %rbx, -104(%rbp)		# movq %r(4341), -104(%rbp)
	movq $0, %r13		# movq $0, %r(4254)
	movq -104(%rbp), %r14		# movq -104(%rbp), %r(4342)
	movq %r14, %rbx		# movq %r(4342), %r(4343)
	movq %rbx, -144(%rbp)		# movq %r(4343), -144(%rbp)
	movq -144(%rbp), %rbx		# movq -144(%rbp), %r(4344)
	addq %r13, %rbx		# addq %r(4254), %r(4344)
	movq %rbx, -144(%rbp)		# movq %r(4344), -144(%rbp)
	movq $1, %rbx		# movq $1, %r(4256)
	movq -144(%rbp), %r12		# movq -144(%rbp), %r(4345)
	movq %rbx, (%r12)		# movq %r(4256), (%r(4345))
	movq $0, %r13		# movq $0, %r(4257)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(4346)
	movq %r14, %rbx		# movq %r(4346), %r(4347)
	movq %rbx, -272(%rbp)		# movq %r(4347), -272(%rbp)
	movq -272(%rbp), %rbx		# movq -272(%rbp), %r(4348)
	addq %r13, %rbx		# addq %r(4257), %r(4348)
	movq %rbx, -272(%rbp)		# movq %r(4348), -272(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(4349)
	movq -272(%rbp), %r12		# movq -272(%rbp), %r(4350)
	movq %rbx, (%r12)		# movq %r(4349), (%r(4350))
	movq $16, %rbx		# movq $16, %r(4259)
	movq %rbx, %rdi		# movq %r(4259), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4351)
	movq %rbx, -40(%rbp)		# movq %r(4351), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(4260)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4352)
	movq %rbx, (%r12)		# movq %r(4260), (%r(4352))
	movq $8, %r13		# movq $8, %r(4261)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(4353)
	movq %r14, %rbx		# movq %r(4353), %r(4354)
	movq %rbx, -256(%rbp)		# movq %r(4354), -256(%rbp)
	movq -256(%rbp), %rbx		# movq -256(%rbp), %r(4355)
	addq %r13, %rbx		# addq %r(4261), %r(4355)
	movq %rbx, -256(%rbp)		# movq %r(4355), -256(%rbp)
	movq -256(%rbp), %r13		# movq -256(%rbp), %r(4356)
	movq %r13, %rbx		# movq %r(4356), %r(4357)
	movq %rbx, -200(%rbp)		# movq %r(4357), -200(%rbp)
	movq $0, %r13		# movq $0, %r(4263)
	movq -200(%rbp), %r14		# movq -200(%rbp), %r(4358)
	movq %r14, %rbx		# movq %r(4358), %r(4359)
	movq %rbx, -280(%rbp)		# movq %r(4359), -280(%rbp)
	movq -280(%rbp), %rbx		# movq -280(%rbp), %r(4360)
	addq %r13, %rbx		# addq %r(4263), %r(4360)
	movq %rbx, -280(%rbp)		# movq %r(4360), -280(%rbp)
	movq $1, %rbx		# movq $1, %r(4265)
	movq -280(%rbp), %r12		# movq -280(%rbp), %r(4361)
	movq %rbx, (%r12)		# movq %r(4265), (%r(4361))
	movq $8, %r13		# movq $8, %r(4266)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(4362)
	movq %r14, %rbx		# movq %r(4362), %r(4363)
	movq %rbx, -88(%rbp)		# movq %r(4363), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4364)
	addq %r13, %rbx		# addq %r(4266), %r(4364)
	movq %rbx, -88(%rbp)		# movq %r(4364), -88(%rbp)
	movq -200(%rbp), %rbx		# movq -200(%rbp), %r(4365)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4366)
	movq %rbx, (%r12)		# movq %r(4365), (%r(4366))
	movq $16, %rbx		# movq $16, %r(4268)
	movq %rbx, %rdi		# movq %r(4268), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4367)
	movq %rbx, -176(%rbp)		# movq %r(4367), -176(%rbp)
	movq $1, %rbx		# movq $1, %r(4269)
	movq -176(%rbp), %r12		# movq -176(%rbp), %r(4368)
	movq %rbx, (%r12)		# movq %r(4269), (%r(4368))
	movq $8, %r13		# movq $8, %r(4270)
	movq -176(%rbp), %r14		# movq -176(%rbp), %r(4369)
	movq %r14, %rbx		# movq %r(4369), %r(4370)
	movq %rbx, -208(%rbp)		# movq %r(4370), -208(%rbp)
	movq -208(%rbp), %rbx		# movq -208(%rbp), %r(4371)
	addq %r13, %rbx		# addq %r(4270), %r(4371)
	movq %rbx, -208(%rbp)		# movq %r(4371), -208(%rbp)
	movq -208(%rbp), %r13		# movq -208(%rbp), %r(4372)
	movq %r13, %rbx		# movq %r(4372), %r(4373)
	movq %rbx, -96(%rbp)		# movq %r(4373), -96(%rbp)
	movq $0, %r13		# movq $0, %r(4272)
	movq -96(%rbp), %r14		# movq -96(%rbp), %r(4374)
	movq %r14, %rbx		# movq %r(4374), %r(4375)
	movq %rbx, -56(%rbp)		# movq %r(4375), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4376)
	addq %r13, %rbx		# addq %r(4272), %r(4376)
	movq %rbx, -56(%rbp)		# movq %r(4376), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(4274)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(4377)
	movq %rbx, (%r12)		# movq %r(4274), (%r(4377))
	movq $16, %r13		# movq $16, %r(4275)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(4378)
	movq %r14, %rbx		# movq %r(4378), %r(4379)
	movq %rbx, -216(%rbp)		# movq %r(4379), -216(%rbp)
	movq -216(%rbp), %rbx		# movq -216(%rbp), %r(4380)
	addq %r13, %rbx		# addq %r(4275), %r(4380)
	movq %rbx, -216(%rbp)		# movq %r(4380), -216(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(4381)
	movq -216(%rbp), %r12		# movq -216(%rbp), %r(4382)
	movq %rbx, (%r12)		# movq %r(4381), (%r(4382))
	movq $0, %r13		# movq $0, %r(4277)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(4383)
	movq %r14, %rbx		# movq %r(4383), %r(4384)
	movq %rbx, -120(%rbp)		# movq %r(4384), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(4385)
	addq %r13, %rbx		# addq %r(4277), %r(4385)
	movq %rbx, -120(%rbp)		# movq %r(4385), -120(%rbp)
	movq -120(%rbp), %rbx		# movq -120(%rbp), %r(4386)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4387)
	movq %r12, (%rbx)		# movq %r(4387), (%r(4386))
	movq $32, %rbx		# movq $32, %r(4279)
	movq %rbx, %rdi		# movq %r(4279), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(4150)
	movq %r13, %rbx		# movq %r(4150), %r(4388)
	movq %rbx, -24(%rbp)		# movq %r(4388), -24(%rbp)
	movq $0, %r12		# movq $0, %r(4280)
	movq $195, %rbx		# movq $195, %r(4389)
	movq %rbx, -224(%rbp)		# movq %r(4389), -224(%rbp)
	movq $1, %rbx		# movq $1, %r(4390)
	movq %rbx, -136(%rbp)		# movq %r(4390), -136(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4391)
	movq %rbx, %rdi		# movq %r(4391), %rdi
	movq %r12, %rsi		# movq %r(4280), %rsi
	movq -264(%rbp), %rbx		# movq -264(%rbp), %r(4392)
	movq %rbx, %rdx		# movq %r(4392), %rdx
	movq -152(%rbp), %rbx		# movq -152(%rbp), %r(4393)
	movq %rbx, %rcx		# movq %r(4393), %rcx
	movq -232(%rbp), %rbx		# movq -232(%rbp), %r(4394)
	movq %rbx, %r8		# movq %r(4394), %r8
	movq -224(%rbp), %rbx		# movq -224(%rbp), %r(4395)
	movq %rbx, %r9		# movq %r(4395), %r9
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4396)
	pushq %rbx		# pushq %r(4396)
	movq -240(%rbp), %rbx		# movq -240(%rbp), %r(4397)
	pushq %rbx		# pushq %r(4397)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4398)
	pushq %rbx		# pushq %r(4398)
	movq -136(%rbp), %rbx		# movq -136(%rbp), %r(4399)
	pushq %rbx		# pushq %r(4399)
	call _If_t4iaiaabaibaiabaaiibaiaiaaai		# call _If_t4iaiaabaibaiabaaiibaiaiaaai
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	popq %rsi		# popq %rsi
	jmp .L724		# jmp .L724
	.L724:		# .L724:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $304, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_t4iaiaabaibaiabaaiibaiaiaaai
_If_t4iaiaabaibaiabaaiibaiaiaaai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4451)
	movq %rbx, -8(%rbp)		# movq %r(4451), -8(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4116)
	movq %rdx, %rbx		# movq %rdx, %r(4117)
	movq %rcx, %rbx		# movq %rcx, %r(4118)
	movq %r8, %rbx		# movq %r8, %r(4119)
	movq %r9, %rbx		# movq %r9, %r(4120)
	movq 16(%rbp), %rbx		# movq 16(%rbp), %r(4121)
	movq 24(%rbp), %rbx		# movq 24(%rbp), %r(4122)
	movq 32(%rbp), %rbx		# movq 32(%rbp), %r(4123)
	movq 40(%rbp), %rbx		# movq 40(%rbp), %r(4124)
	movq $0, %rbx		# movq $0, %r(4400)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4452)
	movq %r14, %r12		# movq %r(4452), %r(4401)
	addq %rbx, %r12		# addq %r(4400), %r(4401)
	movq $1, %rbx		# movq $1, %r(4402)
	movq %rbx, (%r12)		# movq %r(4402), (%r(4401))
	movq $32, %rbx		# movq $32, %r(4403)
	movq %rbx, %rdi		# movq %r(4403), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4152)
	movq $3, %rbx		# movq $3, %r(4404)
	movq %rbx, (%r14)		# movq %r(4404), (%r(4152))
	movq $8, %rbx		# movq $8, %r(4405)
	movq %r14, %r13		# movq %r(4152), %r(4406)
	addq %rbx, %r13		# addq %r(4405), %r(4406)
	movq %r13, %r12		# movq %r(4406), %r(4468)
	movq %r12, -40(%rbp)		# movq %r(4468), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(4407)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(4469)
	movq %r14, %r12		# movq %r(4469), %r(4408)
	addq %rbx, %r12		# addq %r(4407), %r(4408)
	movq $100, %rbx		# movq $100, %r(4409)
	movq %rbx, (%r12)		# movq %r(4409), (%r(4408))
	movq $8, %rbx		# movq $8, %r(4410)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(4470)
	movq %r14, %r12		# movq %r(4470), %r(4411)
	addq %rbx, %r12		# addq %r(4410), %r(4411)
	movq $3, %rbx		# movq $3, %r(4412)
	movq %rbx, (%r12)		# movq %r(4412), (%r(4411))
	movq $16, %rbx		# movq $16, %r(4413)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(4471)
	movq %r14, %r12		# movq %r(4471), %r(4414)
	addq %rbx, %r12		# addq %r(4413), %r(4414)
	movq $2, %rbx		# movq $2, %r(4415)
	movq %rbx, (%r12)		# movq %r(4415), (%r(4414))
	movq $8, %rbx		# movq $8, %r(4416)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4453)
	movq %r14, %r12		# movq %r(4453), %r(4417)
	addq %rbx, %r12		# addq %r(4416), %r(4417)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4472)
	movq %rbx, (%r12)		# movq %r(4472), (%r(4417))
	movq $24, %rbx		# movq $24, %r(4418)
	movq %rbx, %rdi		# movq %r(4418), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4153)
	movq $2, %rbx		# movq $2, %r(4419)
	movq %rbx, (%r14)		# movq %r(4419), (%r(4153))
	movq $8, %rbx		# movq $8, %r(4420)
	movq %r14, %r13		# movq %r(4153), %r(4421)
	addq %rbx, %r13		# addq %r(4420), %r(4421)
	movq %r13, %r12		# movq %r(4421), %r(4454)
	movq %r12, -32(%rbp)		# movq %r(4454), -32(%rbp)
	movq $24, %rbx		# movq $24, %r(4422)
	movq %rbx, %rdi		# movq %r(4422), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4154)
	movq $2, %rbx		# movq $2, %r(4423)
	movq %rbx, (%r14)		# movq %r(4423), (%r(4154))
	movq $8, %rbx		# movq $8, %r(4424)
	movq %r14, %r13		# movq %r(4154), %r(4425)
	addq %rbx, %r13		# addq %r(4424), %r(4425)
	movq %r13, %r12		# movq %r(4425), %r(4455)
	movq %r12, -24(%rbp)		# movq %r(4455), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(4426)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4456)
	movq %r14, %r12		# movq %r(4456), %r(4427)
	addq %rbx, %r12		# addq %r(4426), %r(4427)
	movq $1, %rbx		# movq $1, %r(4428)
	movq %rbx, (%r12)		# movq %r(4428), (%r(4427))
	movq $8, %rbx		# movq $8, %r(4429)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4457)
	movq %r14, %r12		# movq %r(4457), %r(4430)
	addq %rbx, %r12		# addq %r(4429), %r(4430)
	movq $0, %rbx		# movq $0, %r(4431)
	movq %rbx, (%r12)		# movq %r(4431), (%r(4430))
	movq $0, %rbx		# movq $0, %r(4432)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4458)
	movq %r14, %r12		# movq %r(4458), %r(4433)
	addq %rbx, %r12		# addq %r(4432), %r(4433)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4459)
	movq %rbx, (%r12)		# movq %r(4459), (%r(4433))
	movq $24, %rbx		# movq $24, %r(4434)
	movq %rbx, %rdi		# movq %r(4434), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4155)
	movq $2, %rbx		# movq $2, %r(4435)
	movq %rbx, (%r14)		# movq %r(4435), (%r(4155))
	movq $8, %rbx		# movq $8, %r(4436)
	movq %r14, %r13		# movq %r(4155), %r(4437)
	addq %rbx, %r13		# addq %r(4436), %r(4437)
	movq %r13, %r12		# movq %r(4437), %r(4460)
	movq %r12, -16(%rbp)		# movq %r(4460), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(4438)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4461)
	movq %r14, %r12		# movq %r(4461), %r(4439)
	addq %rbx, %r12		# addq %r(4438), %r(4439)
	movq $0, %rbx		# movq $0, %r(4440)
	movq %rbx, (%r12)		# movq %r(4440), (%r(4439))
	movq $8, %rbx		# movq $8, %r(4441)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4462)
	movq %r14, %r12		# movq %r(4462), %r(4442)
	addq %rbx, %r12		# addq %r(4441), %r(4442)
	movq $1, %rbx		# movq $1, %r(4443)
	movq %rbx, (%r12)		# movq %r(4443), (%r(4442))
	movq $8, %rbx		# movq $8, %r(4444)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4463)
	movq %r14, %r12		# movq %r(4463), %r(4445)
	addq %rbx, %r12		# addq %r(4444), %r(4445)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4464)
	movq %rbx, (%r12)		# movq %r(4464), (%r(4445))
	movq $16, %rbx		# movq $16, %r(4446)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4465)
	movq %r14, %r12		# movq %r(4465), %r(4447)
	addq %rbx, %r12		# addq %r(4446), %r(4447)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(4466)
	movq %rbx, (%r12)		# movq %r(4466), (%r(4447))
	leaq .L730(%rip), %rdi		# leaq .L730(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(4156)
	movq $24, %rbx		# movq $24, %r(4449)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4467)
	movq %r13, %r14		# movq %r(4467), %r(4450)
	addq %rbx, %r14		# addq %r(4449), %r(4450)
	movq %r12, (%r14)		# movq %r(4156), (%r(4450))
	jmp .L729		# jmp .L729
	.L729:		# .L729:
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
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4516)
	movq %rbx, -72(%rbp)		# movq %r(4516), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(4473)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4517)
	movq %r14, %r12		# movq %r(4517), %r(4474)
	subq %rbx, %r12		# subq %r(4473), %r(4474)
	movq (%r12), %r13		# movq (%r(4474)), %r(4475)
	movq %r13, %rbx		# movq %r(4475), %r(4518)
	movq %rbx, -16(%rbp)		# movq %r(4518), -16(%rbp)
	movq $1, %r13		# movq $1, %r(4476)
	movq %r13, %rbx		# movq %r(4476), %r(4519)
	movq %rbx, -64(%rbp)		# movq %r(4519), -64(%rbp)
	movq $0, %rbx		# movq $0, %r(4477)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4520)
	cmpq %rbx, %r12		# cmpq %r(4477), %r(4520)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(4478)
	movq %rbx, %rax		# movq %r(4478), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L318:		# .L318:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4521)
	movq %r13, %rbx		# movq %r(4521), %r(4479)
	salq $3, %rbx		# salq $3, %r(4479)
	movq %rbx, %rdi		# movq %r(4479), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(4522)
	movq %rbx, -56(%rbp)		# movq %r(4522), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(4480)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(4523)
	movq %r14, %r12		# movq %r(4523), %r(4481)
	subq %rbx, %r12		# subq %r(4480), %r(4481)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4524)
	movq %r12, (%rbx)		# movq %r(4481), (%r(4524))
	movq $8, %rbx		# movq $8, %r(4482)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(4525)
	movq %r14, %r13		# movq %r(4525), %r(4483)
	addq %rbx, %r13		# addq %r(4482), %r(4483)
	movq %r13, %r12		# movq %r(4483), %r(4526)
	movq %r12, -24(%rbp)		# movq %r(4526), -24(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4527)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4528)
	cmpq %rbx, %r12		# cmpq %r(4527), %r(4528)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(4484)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(4529)
	movq %r14, %r12		# movq %r(4529), %r(4485)
	subq %rbx, %r12		# subq %r(4484), %r(4485)
	movq (%r12), %rbx		# movq (%r(4485)), %r(4486)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4530)
	cmpq %rbx, %r12		# cmpq %r(4486), %r(4530)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(4487)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(4531)
	movq %r14, %r13		# movq %r(4531), %r(4488)
	subq %rbx, %r13		# subq %r(4487), %r(4488)
	movq %r13, %r12		# movq %r(4488), %r(4532)
	movq %r12, -32(%rbp)		# movq %r(4532), -32(%rbp)
	movq $8, %rbx		# movq $8, %r(4489)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4533)
	movq %r14, %r12		# movq %r(4533), %r(4490)
	subq %rbx, %r12		# subq %r(4489), %r(4490)
	movq (%r12), %rbx		# movq (%r(4490)), %r(4491)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(4534)
	cmpq %rbx, %r12		# cmpq %r(4491), %r(4534)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4535)
	movq %r13, %r14		# movq %r(4535), %r(4492)
	salq $3, %r14		# salq $3, %r(4492)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4536)
	movq %r12, %r15		# movq %r(4536), %r(4493)
	addq %r14, %r15		# addq %r(4492), %r(4493)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(4537)
	movq %r13, %rbx		# movq %r(4537), %r(4568)
	movq %rbx, -104(%rbp)		# movq %r(4568), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(4569)
	salq $3, %rbx		# salq $3, %r(4569)
	movq %rbx, -104(%rbp)		# movq %r(4569), -104(%rbp)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(4538)
	movq %r13, %rbx		# movq %r(4538), %r(4539)
	movq %rbx, -48(%rbp)		# movq %r(4539), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4540)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(4570)
	addq %r12, %rbx		# addq %r(4570), %r(4540)
	movq %rbx, -48(%rbp)		# movq %r(4540), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4541)
	movq (%rbx), %r12		# movq (%r(4541)), %r(4496)
	movq %r12, (%r15)		# movq %r(4496), (%r(4493))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4542)
	incq %rbx		# incq %r(4542)
	movq %rbx, -64(%rbp)		# movq %r(4542), -64(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(4497)
	movq $8, %rbx		# movq $8, %r(4498)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4543)
	movq %r12, %r14		# movq %r(4543), %r(4499)
	subq %rbx, %r14		# subq %r(4498), %r(4499)
	movq (%r14), %rbx		# movq (%r(4499)), %r(4500)
	cmpq %rbx, %r13		# cmpq %r(4500), %r(4497)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4501)
	movq %r13, %r14		# movq %r(4501), %r(4502)
	salq $3, %r14		# salq $3, %r(4502)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4544)
	movq %r12, %r15		# movq %r(4544), %r(4503)
	addq %r14, %r15		# addq %r(4502), %r(4503)
	movq (%r15), %r13		# movq (%r(4503)), %r(4504)
	movq %r13, %rbx		# movq %r(4504), %r(4545)
	movq %rbx, -64(%rbp)		# movq %r(4545), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(4505)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(4546)
	movq %r14, %r13		# movq %r(4546), %r(4506)
	addq %rbx, %r13		# addq %r(4505), %r(4506)
	movq %r13, %r12		# movq %r(4506), %r(4507)
	salq $3, %r12		# salq $3, %r(4507)
	movq %r12, %rdi		# movq %r(4507), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4158)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4547)
	movq %rbx, (%r14)		# movq %r(4547), (%r(4158))
	movq $8, %r13		# movq $8, %r(4508)
	movq %r14, %r12		# movq %r(4158), %r(4548)
	movq %r12, -96(%rbp)		# movq %r(4548), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(4549)
	addq %r13, %rbx		# addq %r(4508), %r(4549)
	movq %rbx, -96(%rbp)		# movq %r(4549), -96(%rbp)
	movq -96(%rbp), %r13		# movq -96(%rbp), %r(4550)
	movq %r13, %rbx		# movq %r(4550), %r(4551)
	movq %rbx, -40(%rbp)		# movq %r(4551), -40(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(4510)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4552)
	cmpq %rbx, %r12		# cmpq %r(4510), %r(4552)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4553)
	decq %rbx		# decq %r(4553)
	movq %rbx, -64(%rbp)		# movq %r(4553), -64(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4554)
	movq %rbx, %rdi		# movq %r(4554), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(4555)
	movq %rbx, -8(%rbp)		# movq %r(4555), -8(%rbp)
	movq $8, %r13		# movq $8, %r(4511)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(4556)
	movq %r14, %rbx		# movq %r(4556), %r(4557)
	movq %rbx, -80(%rbp)		# movq %r(4557), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4558)
	subq %r13, %rbx		# subq %r(4511), %r(4558)
	movq %rbx, -80(%rbp)		# movq %r(4558), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4559)
	movq (%rbx), %r12		# movq (%r(4559)), %r(4513)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4560)
	cmpq %r12, %rbx		# cmpq %r(4513), %r(4560)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(4561)
	movq %r12, %r14		# movq %r(4561), %r(4514)
	salq $3, %r14		# salq $3, %r(4514)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4562)
	movq %r13, %rbx		# movq %r(4562), %r(4563)
	movq %rbx, -88(%rbp)		# movq %r(4563), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4564)
	addq %r14, %rbx		# addq %r(4514), %r(4564)
	movq %rbx, -88(%rbp)		# movq %r(4564), -88(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4565)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(4566)
	movq %rbx, (%r12)		# movq %r(4565), (%r(4566))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4567)
	movq %rbx, %rax		# movq %r(4567), %rax
	jmp .L320		# jmp .L320
	
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
	movq %rdi, %rbx		# movq %rdi, %r(4583)
	movq %rbx, -16(%rbp)		# movq %r(4583), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4584)
	movq (%rbx), %r13		# movq (%r(4584)), %r(4571)
	movq %r13, %r12		# movq %r(4571), %r(4585)
	movq %r12, -24(%rbp)		# movq %r(4585), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4586)
	movq %r12, %r13		# movq %r(4586), %r(4572)
	salq $3, %r13		# salq $3, %r(4572)
	movq $8, %rbx		# movq $8, %r(4573)
	movq %r13, %r14		# movq %r(4572), %r(4574)
	addq %rbx, %r14		# addq %r(4573), %r(4574)
	movq %r14, %rdi		# movq %r(4574), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(4160)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4587)
	movq %r13, %rbx		# movq %r(4587), %r(4575)
	salq $3, %rbx		# salq $3, %r(4575)
	movq %r15, %r13		# movq %r(4160), %r(4576)
	addq %rbx, %r13		# addq %r(4575), %r(4576)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4588)
	movq %rbx, %r12		# movq %r(4588), %r(4577)
	salq $3, %r12		# salq $3, %r(4577)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4589)
	movq %rbx, %r14		# movq %r(4589), %r(4590)
	movq %r14, -8(%rbp)		# movq %r(4590), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4591)
	addq %r12, %rbx		# addq %r(4577), %r(4591)
	movq %rbx, -8(%rbp)		# movq %r(4591), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4592)
	movq (%rbx), %r12		# movq (%r(4592)), %r(4579)
	movq %r12, (%r13)		# movq %r(4579), (%r(4576))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4593)
	decq %rbx		# decq %r(4593)
	movq %rbx, -24(%rbp)		# movq %r(4593), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(4580)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4594)
	cmpq %rbx, %r12		# cmpq %r(4580), %r(4594)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(4581)
	movq %r15, %r13		# movq %r(4160), %r(4582)
	addq %rbx, %r13		# addq %r(4581), %r(4582)
	movq %r13, %rax		# movq %r(4582), %rax
	jmp .L16		# jmp .L16
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
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4618)
	movq %rbx, -24(%rbp)		# movq %r(4618), -24(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(4619)
	movq %rbx, -32(%rbp)		# movq %r(4619), -32(%rbp)
	movq $0, %r13		# movq $0, %r(4595)
	movq %r13, %rbx		# movq %r(4595), %r(4620)
	movq %rbx, -40(%rbp)		# movq %r(4620), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(4596)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4621)
	movq %r14, %r12		# movq %r(4621), %r(4597)
	subq %rbx, %r12		# subq %r(4596), %r(4597)
	movq (%r12), %r13		# movq (%r(4597)), %r(4598)
	movq %r13, %rbx		# movq %r(4598), %r(4622)
	movq %rbx, -8(%rbp)		# movq %r(4622), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(4599)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(4623)
	movq %r14, %r15		# movq %r(4623), %r(4600)
	subq %rbx, %r15		# subq %r(4599), %r(4600)
	movq (%r15), %r12		# movq (%r(4600)), %r(4601)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(4624)
	movq %r14, %r13		# movq %r(4624), %r(4602)
	addq %r12, %r13		# addq %r(4601), %r(4602)
	movq %r13, %r12		# movq %r(4602), %r(4625)
	movq %r12, -48(%rbp)		# movq %r(4625), -48(%rbp)
	movq $1, %rbx		# movq $1, %r(4603)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(4626)
	movq %r14, %r12		# movq %r(4626), %r(4604)
	addq %rbx, %r12		# addq %r(4603), %r(4604)
	movq %r12, %rdi		# movq %r(4604), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4161)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4627)
	movq %rbx, (%r14)		# movq %r(4627), (%r(4161))
	movq $8, %r13		# movq $8, %r(4605)
	movq %r14, %r12		# movq %r(4161), %r(4628)
	movq %r12, -88(%rbp)		# movq %r(4628), -88(%rbp)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(4629)
	addq %r13, %rbx		# addq %r(4605), %r(4629)
	movq %rbx, -88(%rbp)		# movq %r(4629), -88(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(4630)
	movq %r13, %rbx		# movq %r(4630), %r(4631)
	movq %rbx, -56(%rbp)		# movq %r(4631), -56(%rbp)
	jmp .L17		# jmp .L17
	.L17:		# .L17:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4632)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4633)
	cmpq %rbx, %r12		# cmpq %r(4632), %r(4633)
	jge .L19		# jge .L19
	.L18:		# .L18:
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4634)
	movq %r12, %r14		# movq %r(4634), %r(4607)
	salq $3, %r14		# salq $3, %r(4607)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4635)
	movq %r13, %rbx		# movq %r(4635), %r(4636)
	movq %rbx, -80(%rbp)		# movq %r(4636), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4637)
	addq %r14, %rbx		# addq %r(4607), %r(4637)
	movq %rbx, -80(%rbp)		# movq %r(4637), -80(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4638)
	movq %r12, %r14		# movq %r(4638), %r(4609)
	salq $3, %r14		# salq $3, %r(4609)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4639)
	movq %r13, %rbx		# movq %r(4639), %r(4640)
	movq %rbx, -72(%rbp)		# movq %r(4640), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4641)
	addq %r14, %rbx		# addq %r(4609), %r(4641)
	movq %rbx, -72(%rbp)		# movq %r(4641), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(4642)
	movq (%rbx), %r12		# movq (%r(4642)), %r(4611)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4643)
	movq %r12, (%rbx)		# movq %r(4611), (%r(4643))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4644)
	incq %rbx		# incq %r(4644)
	movq %rbx, -40(%rbp)		# movq %r(4644), -40(%rbp)
	jmp .L17		# jmp .L17
	.L19:		# .L19:
	jmp .L20		# jmp .L20
	.L20:		# .L20:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4645)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(4646)
	cmpq %r12, %rbx		# cmpq %r(4646), %r(4645)
	jge .L22		# jge .L22
	.L21:		# .L21:
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4647)
	movq %r12, %r14		# movq %r(4647), %r(4612)
	salq $3, %r14		# salq $3, %r(4612)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(4648)
	movq %r13, %rbx		# movq %r(4648), %r(4649)
	movq %rbx, -64(%rbp)		# movq %r(4649), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4650)
	addq %r14, %rbx		# addq %r(4612), %r(4650)
	movq %rbx, -64(%rbp)		# movq %r(4650), -64(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4651)
	movq %r13, %r12		# movq %r(4651), %r(4614)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4652)
	subq %rbx, %r12		# subq %r(4652), %r(4614)
	movq %r12, %r14		# movq %r(4614), %r(4615)
	salq $3, %r14		# salq $3, %r(4615)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4653)
	movq %r13, %rbx		# movq %r(4653), %r(4654)
	movq %rbx, -16(%rbp)		# movq %r(4654), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4655)
	addq %r14, %rbx		# addq %r(4615), %r(4655)
	movq %rbx, -16(%rbp)		# movq %r(4655), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4656)
	movq (%rbx), %r12		# movq (%r(4656)), %r(4617)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(4657)
	movq %r12, (%rbx)		# movq %r(4617), (%r(4657))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(4658)
	incq %rbx		# incq %r(4658)
	movq %rbx, -40(%rbp)		# movq %r(4658), -40(%rbp)
	jmp .L20		# jmp .L20
	.L22:		# .L22:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(4659)
	movq %rbx, %rax		# movq %r(4659), %rax
	jmp .L23		# jmp .L23
	.L23:		# .L23:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L727:
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

#.section .rodata
.align 8
.L726:
	.quad 5
	.quad 87
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

#.section .rodata
.align 8
.L730:
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
.L725:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

error_outofbounds:
call _I_outOfBounds_p
