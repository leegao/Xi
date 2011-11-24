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
	movq $8, %rbx		# movq $8, %r(4271)
	movq %r15, %r13		# movq %r(x), %r(4272)
	subq %rbx, %r13		# subq %r(4271), %r(4272)
	movq (%r13), %r13		# movq (%r(4272)), %r(4273)
	movq $1, %r12		# movq $1, %r(4274)
	subq %r12, %r13		# subq %r(4274), %r(4275)
	movq %r13, %r14		# movq %r(4275), %r(4253)
	movq $8, %rbx		# movq $8, %r(4276)
	movq %r15, %r12		# movq %r(x), %r(4277)
	subq %rbx, %r12		# subq %r(4276), %r(4277)
	movq (%r12), %rbx		# movq (%r(4277)), %r(4278)
	cmpq %rbx, %r14		# cmpq %r(4278), %r(4253)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(4279)
	movq %r15, %r12		# movq %r(x), %r(4280)
	subq %rbx, %r12		# subq %r(4279), %r(4280)
	movq (%r12), %rbx		# movq (%r(4280)), %r(4281)
	movq $1, %r12		# movq $1, %r(4282)
	subq %r12, %rbx		# subq %r(4282), %r(4283)
	movq %rbx, %r12		# movq %r(4283), %r(4251)
	movq $8, %rbx		# movq $8, %r(4284)
	movq %r15, %r13		# movq %r(x), %r(4285)
	subq %rbx, %r13		# subq %r(4284), %r(4285)
	movq (%r13), %rbx		# movq (%r(4285)), %r(4286)
	cmpq %rbx, %r12		# cmpq %r(4286), %r(4251)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(4251), %r(4287)
	salq $3, %rbx		# salq $3, %r(4287)
	movq %r15, %r13		# movq %r(x), %r(4288)
	addq %rbx, %r13		# addq %r(4287), %r(4288)
	movq %r14, %rbx		# movq %r(4253), %r(4289)
	salq $3, %rbx		# salq $3, %r(4289)
	movq %r15, %r12		# movq %r(x), %r(4290)
	addq %rbx, %r12		# addq %r(4289), %r(4290)
	movq (%r12), %rbx		# movq (%r(4290)), %r(4291)
	movq $1, %r12		# movq $1, %r(4292)
	subq %r12, %rbx		# subq %r(4292), %r(4293)
	movq %rbx, (%r13)		# movq %r(4293), (%r(4288))
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
	movq $0, %r12		# movq $0, %r(4294)
	movq $8, %rbx		# movq $8, %r(4295)
	movq %r15, %r14		# movq %r(x), %r(4296)
	subq %rbx, %r14		# subq %r(4295), %r(4296)
	movq (%r14), %rbx		# movq (%r(4296)), %r(4297)
	cmpq %rbx, %r12		# cmpq %r(4297), %r(4294)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(4298)
	movq $8, %rbx		# movq $8, %r(4299)
	movq %r15, %r14		# movq %r(x), %r(4300)
	subq %rbx, %r14		# subq %r(4299), %r(4300)
	movq (%r14), %rbx		# movq (%r(4300)), %r(4301)
	cmpq %rbx, %r12		# cmpq %r(4301), %r(4298)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(4302)
	salq $3, %r12		# salq $3, %r(4303)
	movq %r15, %r13		# movq %r(x), %r(4304)
	addq %r12, %r13		# addq %r(4303), %r(4304)
	movq $0, %r12		# movq $0, %r(4305)
	salq $3, %r12		# salq $3, %r(4306)
	movq %r15, %rbx		# movq %r(x), %r(4307)
	addq %r12, %rbx		# addq %r(4306), %r(4307)
	movq (%rbx), %rbx		# movq (%r(4307)), %r(4308)
	movq $1, %r12		# movq $1, %r(4309)
	addq %r12, %rbx		# addq %r(4309), %r(4310)
	movq %rbx, (%r13)		# movq %r(4310), (%r(4304))
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
	movq %rax, %r13		# movq %rax, %r(4263)
	movq %r13, %r12		# movq %r(4263), %r(4314)
	movq %r12, -8(%rbp)		# movq %r(4314), -8(%rbp)
	movq $10, %r15		# movq $10, %r(4312)
	movq %r13, %rdi		# movq %r(4263), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L752		# jmp .L752
	.L752:		# .L752:
	movq $0, %r12		# movq $0, %r(4313)
	cmpq %r12, %r15		# cmpq %r(4313), %r(count)
	jle .L754		# jle .L754
	.L753:		# .L753:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4315)
	movq %r12, %rdi		# movq %r(4315), %rdi
	call _IA_aiai		# call _IA_aiai
	movq %rax, %r12		# movq %rax, %r(4265)
	movq %r12, %rdi		# movq %r(4265), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(4265), %rdi
	call _IB_aiai		# call _IB_aiai
	movq %rax, %r14		# movq %rax, %r(4267)
	movq %r14, %r12		# movq %r(4267), %r(4316)
	movq %r12, -8(%rbp)		# movq %r(4316), -8(%rbp)
	movq %r14, %rdi		# movq %r(4267), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(4329)
	movq %rbx, -16(%rbp)		# movq %r(4329), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4330)
	movq (%rbx), %rbx		# movq (%r(4330)), %r(4317)
	movq %rbx, %r14		# movq %r(4317), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(4318)
	salq $3, %rbx		# salq $3, %r(4318)
	movq $8, %r12		# movq $8, %r(4319)
	addq %r12, %rbx		# addq %r(4319), %r(4320)
	movq %rbx, %rdi		# movq %r(4320), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(4269)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(4321)
	salq $3, %rbx		# salq $3, %r(4321)
	movq %r12, %r15		# movq %r(4269), %r(4322)
	addq %rbx, %r15		# addq %r(4321), %r(4322)
	movq %r14, %r13		# movq %r(t10), %r(4323)
	salq $3, %r13		# salq $3, %r(4323)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4331)
	movq %rbx, -8(%rbp)		# movq %r(4332), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4333)
	addq %r13, %rbx		# addq %r(4323), %r(4333)
	movq %rbx, -8(%rbp)		# movq %r(4333), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4334)
	movq (%rbx), %rbx		# movq (%r(4334)), %r(4325)
	movq %rbx, (%r15)		# movq %r(4325), (%r(4322))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(4326)
	cmpq %rbx, %r14		# cmpq %r(4326), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(4327)
	addq %rbx, %r12		# addq %r(4327), %r(4328)
	movq %r12, %rax		# movq %r(4328), %rax
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
