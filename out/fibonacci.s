.att_syntax prefix
.text
.globl _Ifib_ii
_Ifib_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r14		# movq %rdi, %r(i)
	movq $2, %rbx		# movq $2, %r(5299)
	cmpq %rbx, %r14		# cmpq %r(5299), %r(i)
	jge .L902		# jge .L902
	.L901:		# .L901:
	movq %r14, %rax		# movq %r(i), %rax
	jmp .L900		# jmp .L900
	.L900:		# .L900:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L902:		# .L902:
	movq $1, %rbx		# movq $1, %r(5300)
	movq %r14, %r13		# movq %r(i), %r(5301)
	subq %rbx, %r13		# subq %r(5300), %r(5301)
	movq %r13, %rdi		# movq %r(5301), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r12		# movq %rax, %r(5286)
	movq $2, %rbx		# movq $2, %r(5302)
	movq %r14, %r13		# movq %r(i), %r(5303)
	subq %rbx, %r13		# subq %r(5302), %r(5303)
	movq %r13, %rdi		# movq %r(5303), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(5287)
	movq %r12, %r13		# movq %r(5286), %r(5304)
	addq %rbx, %r13		# addq %r(5287), %r(5304)
	movq %r13, %rax		# movq %r(5304), %rax
	jmp .L900		# jmp .L900
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	leaq .L905(%rip), %rdi		# leaq .L905(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5288)
	movq %rbx, %rdi		# movq %r(5288), %rdi
	call _Iprint_pai		# call _Iprint_pai
	call _Ireadln_ai		# call _Ireadln_ai
	movq %rax, %r12		# movq %rax, %r(5290)
	movq $16, %rbx		# movq $16, %r(5306)
	movq %rbx, %rdi		# movq %r(5306), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5291)
	movq %r14, %r13		# movq %r(5291), %r(5283)
	movq %r13, %rdi		# movq %r(5283), %rdi
	movq %r12, %rsi		# movq %r(5290), %rsi
	call _IparseInt_t2ibai		# call _IparseInt_t2ibai
	movq 0(%r14), %r15		# movq 0(%r(5291)), %r(value)
	movq 8(%r14), %rbx		# movq 8(%r(5291)), %r(5315)
	movq %rbx, -16(%rbp)		# movq %r(5315), -16(%rbp)
	movq $1, %r13		# movq $1, %r(5307)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5316)
	movq %rbx, %r14		# movq %r(5316), %r(5312)
	movq %r14, -8(%rbp)		# movq %r(5312), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5313)
	xorq %r13, %rbx		# xorq %r(5307), %r(5313)
	movq %rbx, -8(%rbp)		# movq %r(5313), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(5309)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5314)
	movq %r13, %r14		# movq %r(5314), %r(5310)
	xorq %rbx, %r14		# xorq %r(5309), %r(5310)
	testq $1, %r14		# testq $1, %r(5310)
	jne .L907		# jne .L907
	.L906:		# .L906:
	leaq .L908(%rip), %rdi		# leaq .L908(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5293)
	movq %rbx, %rdi		# movq %r(5293), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L904		# jmp .L904
	.L904:		# .L904:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L907:		# .L907:
	movq %r15, %rdi		# movq %r(value), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(5295)
	movq %rbx, %rdi		# movq %r(5295), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(5296)
	movq %rbx, %rdi		# movq %r(5296), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L904		# jmp .L904
	
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
	movq %rdi, %rbx		# movq %rdi, %r(5329)
	movq %rbx, -24(%rbp)		# movq %r(5329), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5330)
	movq (%rbx), %r13		# movq (%r(5330)), %r(5317)
	movq %r13, %r12		# movq %r(5317), %r(5331)
	movq %r12, -16(%rbp)		# movq %r(5331), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5332)
	movq %r12, %r13		# movq %r(5332), %r(5318)
	salq $3, %r13		# salq $3, %r(5318)
	movq $8, %rbx		# movq $8, %r(5319)
	movq %r13, %r14		# movq %r(5318), %r(5320)
	addq %rbx, %r14		# addq %r(5319), %r(5320)
	movq %r14, %rdi		# movq %r(5320), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5298)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5333)
	movq %r13, %rbx		# movq %r(5333), %r(5321)
	salq $3, %rbx		# salq $3, %r(5321)
	movq %r15, %r13		# movq %r(5298), %r(5322)
	addq %rbx, %r13		# addq %r(5321), %r(5322)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5334)
	movq %rbx, %r12		# movq %r(5334), %r(5323)
	salq $3, %r12		# salq $3, %r(5323)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5335)
	movq %rbx, %r14		# movq %r(5335), %r(5336)
	movq %r14, -8(%rbp)		# movq %r(5336), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5337)
	addq %r12, %rbx		# addq %r(5323), %r(5337)
	movq %rbx, -8(%rbp)		# movq %r(5337), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5338)
	movq (%rbx), %r12		# movq (%r(5338)), %r(5325)
	movq %r12, (%r13)		# movq %r(5325), (%r(5322))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5339)
	decq %rbx		# decq %r(5339)
	movq %rbx, -16(%rbp)		# movq %r(5339), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(5326)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5340)
	cmpq %rbx, %r12		# cmpq %r(5326), %r(5340)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(5327)
	movq %r15, %r13		# movq %r(5298), %r(5328)
	addq %rbx, %r13		# addq %r(5327), %r(5328)
	movq %r13, %rax		# movq %r(5328), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
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
.L905:
	.quad 33
	.quad 80
	.quad 108
	.quad 101
	.quad 97
	.quad 115
	.quad 101
	.quad 32
	.quad 101
	.quad 110
	.quad 116
	.quad 101
	.quad 114
	.quad 32
	.quad 97
	.quad 32
	.quad 112
	.quad 111
	.quad 115
	.quad 105
	.quad 116
	.quad 105
	.quad 118
	.quad 101
	.quad 32
	.quad 110
	.quad 117
	.quad 109
	.quad 98
	.quad 101
	.quad 114
	.quad 32
	.quad 58
	.quad 32
	.text

#.section .rodata
.align 8
.L908:
	.quad 14
	.quad 73
	.quad 110
	.quad 118
	.quad 97
	.quad 108
	.quad 105
	.quad 100
	.quad 32
	.quad 105
	.quad 110
	.quad 112
	.quad 117
	.quad 116
	.quad 33
	.text

