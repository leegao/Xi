.att_syntax prefix
.text
.globl _Iunreachable_b
_Iunreachable_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq .L939(%rip), %rdi		# leaq .L939(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5462)
	movq %rbx, %rdi		# movq %r(5462), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(5488)
	movq %rbx, %rdi		# movq %r(5488), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(5489)
	movq %rbx, %rax		# movq %r(5489), %rax
	jmp .L938		# jmp .L938
	.L938:		# .L938:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstFalse_b
_IconstFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %rbx		# movq $0, %r(5490)
	movq %rbx, %rax		# movq %r(5490), %rax
	jmp .L940		# jmp .L940
	.L940:		# .L940:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstTrue_b
_IconstTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(5491)
	movq %rbx, %rax		# movq %r(5491), %rax
	jmp .L941		# jmp .L941
	.L941:		# .L941:
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
	leaq .L943(%rip), %rdi		# leaq .L943(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5465)
	movq %r13, %rdi		# movq %r(5465), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L942		# jmp .L942
	.L942:		# .L942:
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %rbx		# movq %rax, %r(5469)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r12		# movq %rax, %r(5519)
	movq %r12, -8(%rbp)		# movq %r(5519), -8(%rbp)
	testq $1, %rbx		# testq $1, %r(5469)
	jne .L945		# jne .L945
	.L947:		# .L947:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(5471)
	movq $1, %r12		# movq $1, %r(5493)
	xorq %r12, %r13		# xorq %r(5493), %r(5494)
	testq $1, %r13		# testq $1, %r(5494)
	jne .L946		# jne .L946
	.L945:		# .L945:
	leaq .L948(%rip), %rdi		# leaq .L948(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5472)
	movq $1, %r12		# movq $1, %r(5496)
	movq %rbx, %rdi		# movq %r(5472), %rdi
	movq %r12, %rsi		# movq %r(5496), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L949		# jmp .L949
	.L949:		# .L949:
	movq $1, %rbx		# movq $1, %r(5497)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5520)
	xorq %rbx, %r13		# xorq %r(5497), %r(5498)
	testq $1, %r13		# testq $1, %r(5498)
	jne .L952		# jne .L952
	.L953:		# .L953:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %r13		# movq %rax, %r(5476)
	movq $1, %r12		# movq $1, %r(5499)
	xorq %r12, %r13		# xorq %r(5499), %r(5500)
	testq $1, %r13		# testq $1, %r(5500)
	jne .L952		# jne .L952
	.L951:		# .L951:
	leaq .L954(%rip), %rdi		# leaq .L954(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5477)
	movq $0, %r12		# movq $0, %r(5502)
	movq %rbx, %rdi		# movq %r(5477), %rdi
	movq %r12, %rsi		# movq %r(5502), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L955		# jmp .L955
	.L955:		# .L955:
	movq $1, %r12		# movq $1, %r(5503)
	movq $1, %r13		# movq $1, %r(5504)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5521)
	movq %r14, -16(%rbp)		# movq %r(5522), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5523)
	xorq %r13, %rbx		# xorq %r(5504), %r(5523)
	movq %rbx, -16(%rbp)		# movq %r(5523), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5524)
	testq $1, %rbx		# testq $1, %r(5524)
	jne .L958		# jne .L958
	.L959:		# .L959:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(5481)
	testq $1, %rbx		# testq $1, %r(5481)
	jne .L957		# jne .L957
	.L958:		# .L958:
	movq $0, %r12		# movq $0, %r(5506)
	jmp .L957		# jmp .L957
	.L957:		# .L957:
	movq $1, %rbx		# movq $1, %r(5507)
	xorq %rbx, %r12		# xorq %r(5507), %r(5508)
	movq $1, %rbx		# movq $1, %r(5509)
	xorq %rbx, %r12		# xorq %r(5509), %r(5510)
	testq $1, %r12		# testq $1, %r(5510)
	jne .L961		# jne .L961
	.L960:		# .L960:
	leaq .L962(%rip), %rdi		# leaq .L962(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5482)
	movq $1, %r12		# movq $1, %r(5512)
	movq %rbx, %rdi		# movq %r(5482), %rdi
	movq %r12, %rsi		# movq %r(5512), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L963		# jmp .L963
	.L963:		# .L963:
	.L944:		# .L944:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L961:		# .L961:
	leaq .L964(%rip), %rdi		# leaq .L964(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5484)
	movq $0, %r12		# movq $0, %r(5514)
	movq %rbx, %rdi		# movq %r(5484), %rdi
	movq %r12, %rsi		# movq %r(5514), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L963		# jmp .L963
	.L952:		# .L952:
	leaq .L956(%rip), %rdi		# leaq .L956(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5479)
	movq $1, %r12		# movq $1, %r(5516)
	movq %rbx, %rdi		# movq %r(5479), %rdi
	movq %r12, %rsi		# movq %r(5516), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L955		# jmp .L955
	.L946:		# .L946:
	leaq .L950(%rip), %rdi		# leaq .L950(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5474)
	movq $0, %r12		# movq $0, %r(5518)
	movq %rbx, %rdi		# movq %r(5474), %rdi
	movq %r12, %rsi		# movq %r(5518), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L949		# jmp .L949
	
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
	movq %rdi, %rbx		# movq %rdi, %r(5540)
	movq %rbx, -32(%rbp)		# movq %r(5540), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5541)
	movq (%rbx), %r12		# movq (%r(5541)), %r(5525)
	movq %r12, -24(%rbp)		# movq %r(5542), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5543)
	salq $3, %rbx		# salq $3, %r(5526)
	movq $8, %r12		# movq $8, %r(5527)
	addq %r12, %rbx		# addq %r(5527), %r(5528)
	movq %rbx, %rdi		# movq %r(5528), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5544)
	movq %rbx, -40(%rbp)		# movq %r(5544), -40(%rbp)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5545)
	salq $3, %r13		# salq $3, %r(5529)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5546)
	addq %r13, %r12		# addq %r(5529), %r(5530)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5547)
	movq %r13, -16(%rbp)		# movq %r(5548), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5549)
	salq $3, %rbx		# salq $3, %r(5549)
	movq %rbx, -16(%rbp)		# movq %r(5549), -16(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5550)
	movq %r13, -8(%rbp)		# movq %r(5537), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5538)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5551)
	addq %r13, %rbx		# addq %r(5551), %r(5538)
	movq %rbx, -8(%rbp)		# movq %r(5538), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5539)
	movq (%rbx), %rbx		# movq (%r(5539)), %r(5533)
	movq %rbx, (%r12)		# movq %r(5533), (%r(5530))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5552)
	decq %rbx		# decq %r(5552)
	movq %rbx, -24(%rbp)		# movq %r(5552), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(5534)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5553)
	cmpq %rbx, %r12		# cmpq %r(5534), %r(5553)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5535)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5554)
	addq %rbx, %r13		# addq %r(5535), %r(5536)
	movq %r13, %rax		# movq %r(5536), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
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
.L939:
	.quad 28
	.quad 85
	.quad 110
	.quad 114
	.quad 101
	.quad 97
	.quad 99
	.quad 104
	.quad 97
	.quad 98
	.quad 108
	.quad 101
	.quad 32
	.quad 102
	.quad 117
	.quad 110
	.quad 99
	.quad 116
	.quad 105
	.quad 111
	.quad 110
	.quad 32
	.quad 99
	.quad 97
	.quad 108
	.quad 108
	.quad 101
	.quad 100
	.quad 33
	.text

#.section .rodata
.align 8
.L962:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L956:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L943:
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
.L954:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L964:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L950:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L948:
	.quad 2
	.quad 35
	.quad 49
	.text

