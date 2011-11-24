.att_syntax prefix
.text
.globl _IA_aiai
_IA_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(x)
	movq $8, %rbx		# movq $8, %r(4293)
	movq %r15, %r13		# movq %r(x), %r(4294)
	subq %rbx, %r13		# subq %r(4293), %r(4294)
	movq (%r13), %r13		# movq (%r(4294)), %r(4295)
	movq $1, %r12		# movq $1, %r(4296)
	subq %r12, %r13		# subq %r(4296), %r(4297)
	movq %r13, %r14		# movq %r(4297), %r(4275)
	movq $8, %rbx		# movq $8, %r(4298)
	movq %r15, %r12		# movq %r(x), %r(4299)
	subq %rbx, %r12		# subq %r(4298), %r(4299)
	movq (%r12), %rbx		# movq (%r(4299)), %r(4300)
	cmpq %rbx, %r14		# cmpq %r(4300), %r(4275)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(4301)
	movq %r15, %r12		# movq %r(x), %r(4302)
	subq %rbx, %r12		# subq %r(4301), %r(4302)
	movq (%r12), %rbx		# movq (%r(4302)), %r(4303)
	movq $1, %r12		# movq $1, %r(4304)
	subq %r12, %rbx		# subq %r(4304), %r(4305)
	movq %rbx, %r12		# movq %r(4305), %r(4273)
	movq $8, %rbx		# movq $8, %r(4306)
	movq %r15, %r13		# movq %r(x), %r(4307)
	subq %rbx, %r13		# subq %r(4306), %r(4307)
	movq (%r13), %rbx		# movq (%r(4307)), %r(4308)
	cmpq %rbx, %r12		# cmpq %r(4308), %r(4273)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(4273), %r(4309)
	salq $3, %rbx		# salq $3, %r(4309)
	movq %r15, %r13		# movq %r(x), %r(4310)
	addq %rbx, %r13		# addq %r(4309), %r(4310)
	movq %r14, %rbx		# movq %r(4275), %r(4311)
	salq $3, %rbx		# salq $3, %r(4311)
	movq %r15, %r12		# movq %r(x), %r(4312)
	addq %rbx, %r12		# addq %r(4311), %r(4312)
	movq (%r12), %rbx		# movq (%r(4312)), %r(4313)
	movq $1, %r12		# movq $1, %r(4314)
	subq %r12, %rbx		# subq %r(4314), %r(4315)
	movq %rbx, (%r13)		# movq %r(4315), (%r(4310))
	movq %r15, %rax		# movq %r(x), %rax
	jmp .L740		# jmp .L740
	.L740:		# .L740:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IB_aiai
_IB_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(x)
	movq $0, %r12		# movq $0, %r(4316)
	movq $8, %rbx		# movq $8, %r(4317)
	movq %r15, %r14		# movq %r(x), %r(4318)
	subq %rbx, %r14		# subq %r(4317), %r(4318)
	movq (%r14), %rbx		# movq (%r(4318)), %r(4319)
	cmpq %rbx, %r12		# cmpq %r(4319), %r(4316)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(4320)
	movq $8, %rbx		# movq $8, %r(4321)
	movq %r15, %r14		# movq %r(x), %r(4322)
	subq %rbx, %r14		# subq %r(4321), %r(4322)
	movq (%r14), %rbx		# movq (%r(4322)), %r(4323)
	cmpq %rbx, %r12		# cmpq %r(4323), %r(4320)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(4324)
	salq $3, %r12		# salq $3, %r(4325)
	movq %r15, %r13		# movq %r(x), %r(4326)
	addq %r12, %r13		# addq %r(4325), %r(4326)
	movq $0, %r12		# movq $0, %r(4327)
	salq $3, %r12		# salq $3, %r(4328)
	movq %r15, %rbx		# movq %r(x), %r(4329)
	addq %r12, %rbx		# addq %r(4328), %r(4329)
	movq (%rbx), %rbx		# movq (%r(4329)), %r(4330)
	movq $1, %r12		# movq $1, %r(4331)
	addq %r12, %rbx		# addq %r(4331), %r(4332)
	movq %rbx, (%r13)		# movq %r(4332), (%r(4326))
	movq %r15, %rax		# movq %r(x), %rax
	jmp .L745		# jmp .L745
	.L745:		# .L745:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L751(%rip), %rdi		# leaq .L751(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4285)
	movq %r13, %r12		# movq %r(4285), %r(4336)
	movq %r12, -8(%rbp)		# movq %r(4336), -8(%rbp)
	movq $10, %r15		# movq $10, %r(4334)
	movq %r13, %rdi		# movq %r(4285), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L752		# jmp .L752
	.L752:		# .L752:
	movq $0, %r12		# movq $0, %r(4335)
	cmpq %r12, %r15		# cmpq %r(4335), %r(count)
	jle .L754		# jle .L754
	.L753:		# .L753:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4337)
	movq %r12, %rdi		# movq %r(4337), %rdi
	call _IA_aiai		# call _IA_aiai
	movq %rax, %r12		# movq %rax, %r(4287)
	movq %r12, %rdi		# movq %r(4287), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(4287), %rdi
	call _IB_aiai		# call _IB_aiai
	movq %rax, %r14		# movq %rax, %r(4289)
	movq %r14, %r12		# movq %r(4289), %r(4338)
	movq %r12, -8(%rbp)		# movq %r(4338), -8(%rbp)
	movq %r14, %rdi		# movq %r(4289), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r15		# decq %r(count)
	jmp .L752		# jmp .L752
	.L754:		# .L754:
	jmp .L750		# jmp .L750
	.L750:		# .L750:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(4351)
	movq %rbx, -16(%rbp)		# movq %r(4351), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4352)
	movq (%rbx), %r12		# movq (%r(4352)), %r(4339)
	movq %r12, -24(%rbp)		# movq %r(4353), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4354)
	salq $3, %rbx		# salq $3, %r(4340)
	movq $8, %r12		# movq $8, %r(4341)
	addq %r12, %rbx		# addq %r(4341), %r(4342)
	movq %rbx, %rdi		# movq %r(4342), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(4291)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4355)
	salq $3, %r12		# salq $3, %r(4343)
	movq %r14, %r13		# movq %r(4291), %r(4344)
	addq %r12, %r13		# addq %r(4343), %r(4344)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4356)
	movq %rbx, %r12		# movq %r(4356), %r(4345)
	salq $3, %r12		# salq $3, %r(4345)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4357)
	movq %rbx, -8(%rbp)		# movq %r(4358), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4359)
	addq %r12, %rbx		# addq %r(4345), %r(4359)
	movq %rbx, -8(%rbp)		# movq %r(4359), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4360)
	movq (%rbx), %rbx		# movq (%r(4360)), %r(4347)
	movq %rbx, (%r13)		# movq %r(4347), (%r(4344))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4361)
	decq %rbx		# decq %r(4361)
	movq %rbx, -24(%rbp)		# movq %r(4361), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(4348)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4362)
	cmpq %rbx, %r12		# cmpq %r(4348), %r(4362)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(4349)
	movq %r14, %r12		# movq %r(4291), %r(4350)
	addq %rbx, %r12		# addq %r(4349), %r(4350)
	movq %r12, %rax		# movq %r(4350), %rax
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
	
#.section .rodata
.align 8
.L751:
	.quad 11
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.quad 119
	.quad 111
	.quad 114
	.quad 108
	.quad 100
	.text

error_outofbounds:
call _I_outOfBounds_p
