.att_syntax prefix
.text
.globl _IisLess1_bii
_IisLess1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jge .L828		# jge .L828
	.L827:		# .L827:
	movq $1, %rbx		# movq $1, %r(4193)
	movq %rbx, %rax		# movq %r(4193), %rax
	jmp .L826		# jmp .L826
	.L826:		# .L826:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L828:		# .L828:
	movq $0, %rbx		# movq $0, %r(4194)
	movq %rbx, %rax		# movq %r(4194), %rax
	jmp .L826		# jmp .L826
	
.globl _IisLess2_bii
_IisLess2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(4195)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jl .L830		# jl .L830
	.L831:		# .L831:
	movq $0, %rbx		# movq $0, %r(4196)
	jmp .L830		# jmp .L830
	.L830:		# .L830:
	movq %rbx, %rax		# movq %r(4097), %rax
	jmp .L829		# jmp .L829
	.L829:		# .L829:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IisLEQ1_bii
_IisLEQ1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jg .L834		# jg .L834
	.L833:		# .L833:
	movq $1, %rbx		# movq $1, %r(4197)
	movq %rbx, %rax		# movq %r(4197), %rax
	jmp .L832		# jmp .L832
	.L832:		# .L832:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L834:		# .L834:
	movq $0, %rbx		# movq $0, %r(4198)
	movq %rbx, %rax		# movq %r(4198), %rax
	jmp .L832		# jmp .L832
	
.globl _IisLEQ2_bii
_IisLEQ2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(4199)
	cmpq %r12, %r13		# cmpq %r(b), %r(a)
	jle .L836		# jle .L836
	.L837:		# .L837:
	movq $0, %rbx		# movq $0, %r(4200)
	jmp .L836		# jmp .L836
	.L836:		# .L836:
	movq %rbx, %rax		# movq %r(4102), %rax
	jmp .L835		# jmp .L835
	.L835:		# .L835:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IisMore1_bii
_IisMore1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jle .L840		# jle .L840
	.L839:		# .L839:
	movq $1, %rbx		# movq $1, %r(4201)
	movq %rbx, %rax		# movq %r(4201), %rax
	jmp .L838		# jmp .L838
	.L838:		# .L838:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L840:		# .L840:
	movq $0, %rbx		# movq $0, %r(4202)
	movq %rbx, %rax		# movq %r(4202), %rax
	jmp .L838		# jmp .L838
	
.globl _IisMore2_bii
_IisMore2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(4203)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jg .L842		# jg .L842
	.L843:		# .L843:
	movq $0, %rbx		# movq $0, %r(4204)
	jmp .L842		# jmp .L842
	.L842:		# .L842:
	movq %rbx, %rax		# movq %r(4107), %rax
	jmp .L841		# jmp .L841
	.L841:		# .L841:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IisGEQ1_bii
_IisGEQ1_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq %rsi, %r12		# movq %rsi, %r(b)
	cmpq %r12, %rbx		# cmpq %r(b), %r(a)
	jl .L846		# jl .L846
	.L845:		# .L845:
	movq $1, %rbx		# movq $1, %r(4205)
	movq %rbx, %rax		# movq %r(4205), %rax
	jmp .L844		# jmp .L844
	.L844:		# .L844:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L846:		# .L846:
	movq $0, %rbx		# movq $0, %r(4206)
	movq %rbx, %rax		# movq %r(4206), %rax
	jmp .L844		# jmp .L844
	
.globl _IisGEQ2_bii
_IisGEQ2_bii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r12		# movq %rdi, %r(a)
	movq %rsi, %r13		# movq %rsi, %r(b)
	movq $1, %rbx		# movq $1, %r(4207)
	cmpq %r13, %r12		# cmpq %r(b), %r(a)
	jge .L848		# jge .L848
	.L849:		# .L849:
	movq $0, %rbx		# movq $0, %r(4208)
	jmp .L848		# jmp .L848
	.L848:		# .L848:
	movq %rbx, %rax		# movq %r(4112), %rax
	jmp .L847		# jmp .L847
	.L847:		# .L847:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L851(%rip), %rdi		# leaq .L851(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4116)
	movq %r13, %rdi		# movq %r(4116), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L850		# jmp .L850
	.L850:		# .L850:
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
	movq %rdi, %rbx		# movq %rdi, %r(a)
	leaq .L853(%rip), %rdi		# leaq .L853(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4120)
	movq $2, %rbx		# movq $2, %r(4211)
	movq $40, %r12		# movq $40, %r(4212)
	movq %rbx, %rdi		# movq %r(4211), %rdi
	movq %r12, %rsi		# movq %r(4212), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(4121)
	movq %r13, %rdi		# movq %r(4120), %rdi
	movq %rbx, %rsi		# movq %r(4121), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L854(%rip), %rdi		# leaq .L854(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4123)
	movq $2, %rbx		# movq $2, %r(4214)
	movq $40, %r12		# movq $40, %r(4215)
	movq %rbx, %rdi		# movq %r(4214), %rdi
	movq %r12, %rsi		# movq %r(4215), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(4124)
	movq %r13, %rdi		# movq %r(4123), %rdi
	movq %rbx, %rsi		# movq %r(4124), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L855(%rip), %rdi		# leaq .L855(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4126)
	movq $-1, %rbx		# movq $-1, %r(4217)
	movq $0, %r12		# movq $0, %r(4218)
	movq %rbx, %rdi		# movq %r(4217), %rdi
	movq %r12, %rsi		# movq %r(4218), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(4127)
	movq %r13, %rdi		# movq %r(4126), %rdi
	movq %rbx, %rsi		# movq %r(4127), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L856(%rip), %rdi		# leaq .L856(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4129)
	movq $-1, %rbx		# movq $-1, %r(4220)
	movq $0, %r12		# movq $0, %r(4221)
	movq %rbx, %rdi		# movq %r(4220), %rdi
	movq %r12, %rsi		# movq %r(4221), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(4130)
	movq %r13, %rdi		# movq %r(4129), %rdi
	movq %rbx, %rsi		# movq %r(4130), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L857(%rip), %rdi		# leaq .L857(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4132)
	movq $-5, %rbx		# movq $-5, %r(4223)
	movq $-3, %r12		# movq $-3, %r(4224)
	movq %rbx, %rdi		# movq %r(4223), %rdi
	movq %r12, %rsi		# movq %r(4224), %rsi
	call _IisLess1_bii		# call _IisLess1_bii
	movq %rax, %rbx		# movq %rax, %r(4133)
	movq %r13, %rdi		# movq %r(4132), %rdi
	movq %rbx, %rsi		# movq %r(4133), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L858(%rip), %rdi		# leaq .L858(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4135)
	movq $-5, %rbx		# movq $-5, %r(4226)
	movq $-3, %r12		# movq $-3, %r(4227)
	movq %rbx, %rdi		# movq %r(4226), %rdi
	movq %r12, %rsi		# movq %r(4227), %rsi
	call _IisLess2_bii		# call _IisLess2_bii
	movq %rax, %rbx		# movq %rax, %r(4136)
	movq %r13, %rdi		# movq %r(4135), %rdi
	movq %rbx, %rsi		# movq %r(4136), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L859(%rip), %rdi		# leaq .L859(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4138)
	movq $2, %rbx		# movq $2, %r(4229)
	movq $40, %r12		# movq $40, %r(4230)
	movq %rbx, %rdi		# movq %r(4229), %rdi
	movq %r12, %rsi		# movq %r(4230), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(4139)
	movq %r13, %rdi		# movq %r(4138), %rdi
	movq %rbx, %rsi		# movq %r(4139), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L860(%rip), %rdi		# leaq .L860(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4141)
	movq $2, %rbx		# movq $2, %r(4232)
	movq $40, %r12		# movq $40, %r(4233)
	movq %rbx, %rdi		# movq %r(4232), %rdi
	movq %r12, %rsi		# movq %r(4233), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(4142)
	movq %r13, %rdi		# movq %r(4141), %rdi
	movq %rbx, %rsi		# movq %r(4142), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L861(%rip), %rdi		# leaq .L861(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4144)
	movq $-1, %rbx		# movq $-1, %r(4235)
	movq $0, %r12		# movq $0, %r(4236)
	movq %rbx, %rdi		# movq %r(4235), %rdi
	movq %r12, %rsi		# movq %r(4236), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(4145)
	movq %r13, %rdi		# movq %r(4144), %rdi
	movq %rbx, %rsi		# movq %r(4145), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L862(%rip), %rdi		# leaq .L862(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4147)
	movq $-1, %rbx		# movq $-1, %r(4238)
	movq $0, %r12		# movq $0, %r(4239)
	movq %rbx, %rdi		# movq %r(4238), %rdi
	movq %r12, %rsi		# movq %r(4239), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(4148)
	movq %r13, %rdi		# movq %r(4147), %rdi
	movq %rbx, %rsi		# movq %r(4148), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L863(%rip), %rdi		# leaq .L863(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4150)
	movq $-5, %rbx		# movq $-5, %r(4241)
	movq $-3, %r12		# movq $-3, %r(4242)
	movq %rbx, %rdi		# movq %r(4241), %rdi
	movq %r12, %rsi		# movq %r(4242), %rsi
	call _IisLEQ1_bii		# call _IisLEQ1_bii
	movq %rax, %rbx		# movq %rax, %r(4151)
	movq %r13, %rdi		# movq %r(4150), %rdi
	movq %rbx, %rsi		# movq %r(4151), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L864(%rip), %rdi		# leaq .L864(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4153)
	movq $-5, %rbx		# movq $-5, %r(4244)
	movq $-3, %r12		# movq $-3, %r(4245)
	movq %rbx, %rdi		# movq %r(4244), %rdi
	movq %r12, %rsi		# movq %r(4245), %rsi
	call _IisLEQ2_bii		# call _IisLEQ2_bii
	movq %rax, %rbx		# movq %rax, %r(4154)
	movq %r13, %rdi		# movq %r(4153), %rdi
	movq %rbx, %rsi		# movq %r(4154), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L865(%rip), %rdi		# leaq .L865(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4156)
	movq $2, %rbx		# movq $2, %r(4247)
	movq $40, %r12		# movq $40, %r(4248)
	movq %rbx, %rdi		# movq %r(4247), %rdi
	movq %r12, %rsi		# movq %r(4248), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(4157)
	movq $1, %r12		# movq $1, %r(4249)
	xorq %r12, %r14		# xorq %r(4249), %r(4250)
	movq %r13, %rdi		# movq %r(4156), %rdi
	movq %r14, %rsi		# movq %r(4250), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L866(%rip), %rdi		# leaq .L866(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4159)
	movq $2, %rbx		# movq $2, %r(4252)
	movq $40, %r12		# movq $40, %r(4253)
	movq %rbx, %rdi		# movq %r(4252), %rdi
	movq %r12, %rsi		# movq %r(4253), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(4160)
	movq $1, %r12		# movq $1, %r(4254)
	xorq %r12, %r14		# xorq %r(4254), %r(4255)
	movq %r13, %rdi		# movq %r(4159), %rdi
	movq %r14, %rsi		# movq %r(4255), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L867(%rip), %rdi		# leaq .L867(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4162)
	movq $-1, %rbx		# movq $-1, %r(4257)
	movq $0, %r12		# movq $0, %r(4258)
	movq %rbx, %rdi		# movq %r(4257), %rdi
	movq %r12, %rsi		# movq %r(4258), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(4163)
	movq $1, %r12		# movq $1, %r(4259)
	xorq %r12, %r14		# xorq %r(4259), %r(4260)
	movq %r13, %rdi		# movq %r(4162), %rdi
	movq %r14, %rsi		# movq %r(4260), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L868(%rip), %rdi		# leaq .L868(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4165)
	movq $-1, %rbx		# movq $-1, %r(4262)
	movq $0, %r12		# movq $0, %r(4263)
	movq %rbx, %rdi		# movq %r(4262), %rdi
	movq %r12, %rsi		# movq %r(4263), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(4166)
	movq $1, %r12		# movq $1, %r(4264)
	xorq %r12, %r14		# xorq %r(4264), %r(4265)
	movq %r13, %rdi		# movq %r(4165), %rdi
	movq %r14, %rsi		# movq %r(4265), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L869(%rip), %rdi		# leaq .L869(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4168)
	movq $-5, %rbx		# movq $-5, %r(4267)
	movq $-3, %r12		# movq $-3, %r(4268)
	movq %rbx, %rdi		# movq %r(4267), %rdi
	movq %r12, %rsi		# movq %r(4268), %rsi
	call _IisMore1_bii		# call _IisMore1_bii
	movq %rax, %r14		# movq %rax, %r(4169)
	movq $1, %r12		# movq $1, %r(4269)
	xorq %r12, %r14		# xorq %r(4269), %r(4270)
	movq %r13, %rdi		# movq %r(4168), %rdi
	movq %r14, %rsi		# movq %r(4270), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L870(%rip), %rdi		# leaq .L870(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4171)
	movq $-5, %rbx		# movq $-5, %r(4272)
	movq $-3, %r12		# movq $-3, %r(4273)
	movq %rbx, %rdi		# movq %r(4272), %rdi
	movq %r12, %rsi		# movq %r(4273), %rsi
	call _IisMore2_bii		# call _IisMore2_bii
	movq %rax, %r14		# movq %rax, %r(4172)
	movq $1, %r12		# movq $1, %r(4274)
	xorq %r12, %r14		# xorq %r(4274), %r(4275)
	movq %r13, %rdi		# movq %r(4171), %rdi
	movq %r14, %rsi		# movq %r(4275), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L871(%rip), %rdi		# leaq .L871(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4174)
	movq $2, %rbx		# movq $2, %r(4277)
	movq $40, %r12		# movq $40, %r(4278)
	movq %rbx, %rdi		# movq %r(4277), %rdi
	movq %r12, %rsi		# movq %r(4278), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(4175)
	movq $1, %r12		# movq $1, %r(4279)
	xorq %r12, %r14		# xorq %r(4279), %r(4280)
	movq %r13, %rdi		# movq %r(4174), %rdi
	movq %r14, %rsi		# movq %r(4280), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L872(%rip), %rdi		# leaq .L872(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4177)
	movq $2, %rbx		# movq $2, %r(4282)
	movq $40, %r12		# movq $40, %r(4283)
	movq %rbx, %rdi		# movq %r(4282), %rdi
	movq %r12, %rsi		# movq %r(4283), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(4178)
	movq $1, %r12		# movq $1, %r(4284)
	xorq %r12, %r14		# xorq %r(4284), %r(4285)
	movq %r13, %rdi		# movq %r(4177), %rdi
	movq %r14, %rsi		# movq %r(4285), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L873(%rip), %rdi		# leaq .L873(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4180)
	movq $-1, %rbx		# movq $-1, %r(4287)
	movq $0, %r12		# movq $0, %r(4288)
	movq %rbx, %rdi		# movq %r(4287), %rdi
	movq %r12, %rsi		# movq %r(4288), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(4181)
	movq $1, %r12		# movq $1, %r(4289)
	xorq %r12, %r14		# xorq %r(4289), %r(4290)
	movq %r13, %rdi		# movq %r(4180), %rdi
	movq %r14, %rsi		# movq %r(4290), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L874(%rip), %rdi		# leaq .L874(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4183)
	movq $-1, %rbx		# movq $-1, %r(4292)
	movq $0, %r12		# movq $0, %r(4293)
	movq %rbx, %rdi		# movq %r(4292), %rdi
	movq %r12, %rsi		# movq %r(4293), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(4184)
	movq $1, %r12		# movq $1, %r(4294)
	xorq %r12, %r14		# xorq %r(4294), %r(4295)
	movq %r13, %rdi		# movq %r(4183), %rdi
	movq %r14, %rsi		# movq %r(4295), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L875(%rip), %rdi		# leaq .L875(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4186)
	movq $-5, %rbx		# movq $-5, %r(4297)
	movq $-3, %r12		# movq $-3, %r(4298)
	movq %rbx, %rdi		# movq %r(4297), %rdi
	movq %r12, %rsi		# movq %r(4298), %rsi
	call _IisGEQ1_bii		# call _IisGEQ1_bii
	movq %rax, %r14		# movq %rax, %r(4187)
	movq $1, %r12		# movq $1, %r(4299)
	xorq %r12, %r14		# xorq %r(4299), %r(4300)
	movq %r13, %rdi		# movq %r(4186), %rdi
	movq %r14, %rsi		# movq %r(4300), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L876(%rip), %rdi		# leaq .L876(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4189)
	movq $-5, %rbx		# movq $-5, %r(4302)
	movq $-3, %r12		# movq $-3, %r(4303)
	movq %rbx, %rdi		# movq %r(4302), %rdi
	movq %r12, %rsi		# movq %r(4303), %rsi
	call _IisGEQ2_bii		# call _IisGEQ2_bii
	movq %rax, %r14		# movq %rax, %r(4190)
	movq $1, %r12		# movq $1, %r(4304)
	xorq %r12, %r14		# xorq %r(4304), %r(4305)
	movq %r13, %rdi		# movq %r(4189), %rdi
	movq %r14, %rsi		# movq %r(4305), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L852		# jmp .L852
	.L852:		# .L852:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4321)
	movq %rbx, -24(%rbp)		# movq %r(4321), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4322)
	movq (%rbx), %rbx		# movq (%r(4322)), %r(4306)
	movq %rbx, %r12		# movq %r(t10), %r(4307)
	salq $3, %r12		# salq $3, %r(4307)
	movq $8, %r13		# movq $8, %r(4308)
	addq %r13, %r12		# addq %r(4308), %r(4309)
	movq %r12, %rdi		# movq %r(4309), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(4323)
	movq %r12, -32(%rbp)		# movq %r(4323), -32(%rbp)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %rbx, %r14		# movq %r(t10), %r(4310)
	salq $3, %r14		# salq $3, %r(4310)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4324)
	movq %r13, -16(%rbp)		# movq %r(4325), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(4326)
	addq %r14, %r12		# addq %r(4310), %r(4326)
	movq %r12, -16(%rbp)		# movq %r(4326), -16(%rbp)
	movq %rbx, %r14		# movq %r(t10), %r(4312)
	salq $3, %r14		# salq $3, %r(4312)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(4327)
	movq %r13, -8(%rbp)		# movq %r(4318), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4319)
	addq %r14, %r12		# addq %r(4312), %r(4319)
	movq %r12, -8(%rbp)		# movq %r(4319), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4320)
	movq (%r12), %r12		# movq (%r(4320)), %r(4314)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(4328)
	movq %r12, (%r13)		# movq %r(4314), (%r(4328))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(4315)
	cmpq %r12, %rbx		# cmpq %r(4315), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(4316)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(4329)
	addq %rbx, %r13		# addq %r(4316), %r(4317)
	movq %r13, %rax		# movq %r(4317), %rax
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
	
#.section .rodata
.align 8
.L873:
	.quad 4
	.quad 62
	.quad 61
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L851:
	.quad 8
	.quad 84
	.quad 101
	.quad 115
	.quad 116
	.quad 105
	.quad 110
	.quad 103
	.quad 58
	.text

#.section .rodata
.align 8
.L875:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L868:
	.quad 3
	.quad 62
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L863:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L857:
	.quad 3
	.quad 60
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L872:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L862:
	.quad 4
	.quad 60
	.quad 61
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L869:
	.quad 3
	.quad 62
	.quad 50
	.quad 97
	.text

#.section .rodata
.align 8
.L871:
	.quad 4
	.quad 62
	.quad 61
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L876:
	.quad 4
	.quad 62
	.quad 61
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L856:
	.quad 3
	.quad 60
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L858:
	.quad 3
	.quad 60
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L853:
	.quad 3
	.quad 60
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L866:
	.quad 3
	.quad 62
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L864:
	.quad 4
	.quad 60
	.quad 61
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L874:
	.quad 4
	.quad 62
	.quad 61
	.quad 49
	.quad 98
	.text

#.section .rodata
.align 8
.L865:
	.quad 3
	.quad 62
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L867:
	.quad 3
	.quad 62
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L870:
	.quad 3
	.quad 62
	.quad 50
	.quad 98
	.text

#.section .rodata
.align 8
.L860:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 98
	.text

#.section .rodata
.align 8
.L855:
	.quad 3
	.quad 60
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L859:
	.quad 4
	.quad 60
	.quad 61
	.quad 48
	.quad 97
	.text

#.section .rodata
.align 8
.L861:
	.quad 4
	.quad 60
	.quad 61
	.quad 49
	.quad 97
	.text

#.section .rodata
.align 8
.L854:
	.quad 3
	.quad 60
	.quad 48
	.quad 98
	.text

