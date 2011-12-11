.att_syntax prefix
.text
.globl _IA_aiai
_IA_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4706)
	movq %rbx, -24(%rbp)		# movq %r(4706), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(4683)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4707)
	movq %r14, %r15		# movq %r(4707), %r(4684)
	subq %rbx, %r15		# subq %r(4683), %r(4684)
	movq (%r15), %r14		# movq (%r(4684)), %r(4685)
	movq $1, %rbx		# movq $1, %r(4686)
	movq %r14, %r13		# movq %r(4685), %r(4687)
	subq %rbx, %r13		# subq %r(4686), %r(4687)
	movq %r13, %r12		# movq %r(4687), %r(4708)
	movq %r12, -8(%rbp)		# movq %r(4708), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(4688)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4709)
	movq %r14, %r12		# movq %r(4709), %r(4689)
	subq %rbx, %r12		# subq %r(4688), %r(4689)
	movq (%r12), %rbx		# movq (%r(4689)), %r(4690)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4710)
	cmpq %rbx, %r12		# cmpq %r(4690), %r(4710)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(4691)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4711)
	movq %r14, %r15		# movq %r(4711), %r(4692)
	subq %rbx, %r15		# subq %r(4691), %r(4692)
	movq (%r15), %r14		# movq (%r(4692)), %r(4693)
	movq $1, %rbx		# movq $1, %r(4694)
	movq %r14, %r13		# movq %r(4693), %r(4695)
	subq %rbx, %r13		# subq %r(4694), %r(4695)
	movq %r13, %r12		# movq %r(4695), %r(4712)
	movq %r12, -16(%rbp)		# movq %r(4712), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(4696)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(4713)
	movq %r14, %r12		# movq %r(4713), %r(4697)
	subq %rbx, %r12		# subq %r(4696), %r(4697)
	movq (%r12), %rbx		# movq (%r(4697)), %r(4698)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4714)
	cmpq %rbx, %r12		# cmpq %r(4698), %r(4714)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4715)
	movq %r13, %r14		# movq %r(4715), %r(4699)
	salq $3, %r14		# salq $3, %r(4699)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4716)
	movq %r12, %r13		# movq %r(4716), %r(4700)
	addq %r14, %r13		# addq %r(4699), %r(4700)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4717)
	movq %r12, %rbx		# movq %r(4717), %r(4701)
	salq $3, %rbx		# salq $3, %r(4701)
	movq -24(%rbp), %r15		# movq -24(%rbp), %r(4718)
	movq %r15, %r12		# movq %r(4718), %r(4702)
	addq %rbx, %r12		# addq %r(4701), %r(4702)
	movq (%r12), %r14		# movq (%r(4702)), %r(4703)
	movq $1, %rbx		# movq $1, %r(4704)
	movq %r14, %r15		# movq %r(4703), %r(4705)
	subq %rbx, %r15		# subq %r(4704), %r(4705)
	movq %r15, (%r13)		# movq %r(4705), (%r(4700))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4719)
	movq %rbx, %rax		# movq %r(4719), %rax
	jmp .L740		# jmp .L740
	.L740:		# .L740:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %r15		# movq %rdi, %r(4666)
	movq $0, %r13		# movq $0, %r(4720)
	movq $8, %rbx		# movq $8, %r(4721)
	movq %r15, %r14		# movq %r(4666), %r(4722)
	subq %rbx, %r14		# subq %r(4721), %r(4722)
	movq (%r14), %rbx		# movq (%r(4722)), %r(4723)
	cmpq %rbx, %r13		# cmpq %r(4723), %r(4720)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4724)
	movq $8, %rbx		# movq $8, %r(4725)
	movq %r15, %r14		# movq %r(4666), %r(4726)
	subq %rbx, %r14		# subq %r(4725), %r(4726)
	movq (%r14), %rbx		# movq (%r(4726)), %r(4727)
	cmpq %rbx, %r13		# cmpq %r(4727), %r(4724)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(4728)
	movq %r13, %rbx		# movq %r(4728), %r(4729)
	salq $3, %rbx		# salq $3, %r(4729)
	movq %r15, %r12		# movq %r(4666), %r(4730)
	addq %rbx, %r12		# addq %r(4729), %r(4730)
	movq $0, %rbx		# movq $0, %r(4731)
	movq %rbx, %r13		# movq %r(4731), %r(4732)
	salq $3, %r13		# salq $3, %r(4732)
	movq %r15, %rbx		# movq %r(4666), %r(4733)
	addq %r13, %rbx		# addq %r(4732), %r(4733)
	movq (%rbx), %r14		# movq (%r(4733)), %r(4734)
	movq $1, %rbx		# movq $1, %r(4735)
	movq %r14, %r13		# movq %r(4734), %r(4736)
	addq %rbx, %r13		# addq %r(4735), %r(4736)
	movq %r13, (%r12)		# movq %r(4736), (%r(4730))
	movq %r15, %rax		# movq %r(4666), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(4672)
	leaq .L751(%rip), %rdi		# leaq .L751(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4675)
	movq %rbx, %r14		# movq %r(4675), %r(4673)
	movq $10, %r12		# movq $10, %r(4738)
	movq %r12, %r13		# movq %r(4738), %r(4674)
	movq %rbx, %rdi		# movq %r(4675), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L752		# jmp .L752
	.L752:		# .L752:
	movq $0, %rbx		# movq $0, %r(4739)
	cmpq %rbx, %r13		# cmpq %r(4739), %r(4674)
	jle .L754		# jle .L754
	.L753:		# .L753:
	movq %r14, %rdi		# movq %r(4673), %rdi
	call _IA_aiai		# call _IA_aiai
	movq %rax, %rbx		# movq %rax, %r(4677)
	movq %rbx, %rdi		# movq %r(4677), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(4677), %rdi
	call _IB_aiai		# call _IB_aiai
	movq %rax, %r12		# movq %rax, %r(4679)
	movq %r12, %r14		# movq %r(4679), %r(4673)
	movq %r12, %rdi		# movq %r(4679), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(4674)
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
	movq %rdi, %rbx		# movq %rdi, %r(4752)
	movq %rbx, -16(%rbp)		# movq %r(4752), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4753)
	movq (%rbx), %r13		# movq (%r(4753)), %r(4740)
	movq %r13, %r12		# movq %r(4740), %r(4754)
	movq %r12, -24(%rbp)		# movq %r(4754), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4755)
	movq %r12, %r13		# movq %r(4755), %r(4741)
	salq $3, %r13		# salq $3, %r(4741)
	movq $8, %rbx		# movq $8, %r(4742)
	movq %r13, %r14		# movq %r(4741), %r(4743)
	addq %rbx, %r14		# addq %r(4742), %r(4743)
	movq %r14, %rdi		# movq %r(4743), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(4681)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4756)
	movq %r13, %rbx		# movq %r(4756), %r(4744)
	salq $3, %rbx		# salq $3, %r(4744)
	movq %r15, %r13		# movq %r(4681), %r(4745)
	addq %rbx, %r13		# addq %r(4744), %r(4745)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4757)
	movq %rbx, %r12		# movq %r(4757), %r(4746)
	salq $3, %r12		# salq $3, %r(4746)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(4758)
	movq %rbx, %r14		# movq %r(4758), %r(4759)
	movq %r14, -8(%rbp)		# movq %r(4759), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4760)
	addq %r12, %rbx		# addq %r(4746), %r(4760)
	movq %rbx, -8(%rbp)		# movq %r(4760), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(4761)
	movq (%rbx), %r12		# movq (%r(4761)), %r(4748)
	movq %r12, (%r13)		# movq %r(4748), (%r(4745))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4762)
	decq %rbx		# decq %r(4762)
	movq %rbx, -24(%rbp)		# movq %r(4762), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(4749)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(4763)
	cmpq %rbx, %r12		# cmpq %r(4749), %r(4763)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(4750)
	movq %r15, %r13		# movq %r(4681), %r(4751)
	addq %rbx, %r13		# addq %r(4750), %r(4751)
	movq %r13, %rax		# movq %r(4751), %rax
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
