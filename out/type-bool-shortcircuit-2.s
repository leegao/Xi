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
	movq %rax, %rbx		# movq %rax, %r(5963)
	movq %rbx, %rdi		# movq %r(5963), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(5989)
	movq %rbx, %rdi		# movq %r(5989), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(5990)
	movq %rbx, %rax		# movq %r(5990), %rax
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
	movq $0, %rbx		# movq $0, %r(5991)
	movq %rbx, %rax		# movq %r(5991), %rax
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
	movq $1, %rbx		# movq $1, %r(5992)
	movq %rbx, %rax		# movq %r(5992), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(5957)
	movq %rsi, %r12		# movq %rsi, %r(5958)
	leaq .L943(%rip), %rdi		# leaq .L943(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5966)
	movq %r13, %rdi		# movq %r(5966), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(5957), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(5958), %rdi
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
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5959)
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %rbx		# movq %rax, %r(5970)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r14		# movq %rax, %r(5971)
	testq $1, %rbx		# testq $1, %r(5970)
	jne .L945		# jne .L945
	.L947:		# .L947:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(5972)
	movq $1, %r12		# movq $1, %r(5994)
	movq %rbx, %r13		# movq %r(5972), %r(5995)
	xorq %r12, %r13		# xorq %r(5994), %r(5995)
	testq $1, %r13		# testq $1, %r(5995)
	jne .L946		# jne .L946
	.L945:		# .L945:
	leaq .L948(%rip), %rdi		# leaq .L948(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5973)
	movq $1, %r12		# movq $1, %r(5997)
	movq %rbx, %rdi		# movq %r(5973), %rdi
	movq %r12, %rsi		# movq %r(5997), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L949		# jmp .L949
	.L949:		# .L949:
	movq $1, %rbx		# movq $1, %r(5998)
	movq %r14, %r13		# movq %r(5971), %r(5999)
	xorq %rbx, %r13		# xorq %r(5998), %r(5999)
	testq $1, %r13		# testq $1, %r(5999)
	jne .L952		# jne .L952
	.L953:		# .L953:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(5977)
	movq $1, %r12		# movq $1, %r(6000)
	movq %rbx, %r13		# movq %r(5977), %r(6001)
	xorq %r12, %r13		# xorq %r(6000), %r(6001)
	testq $1, %r13		# testq $1, %r(6001)
	jne .L952		# jne .L952
	.L951:		# .L951:
	leaq .L954(%rip), %rdi		# leaq .L954(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5978)
	movq $0, %r12		# movq $0, %r(6003)
	movq %rbx, %rdi		# movq %r(5978), %rdi
	movq %r12, %rsi		# movq %r(6003), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L955		# jmp .L955
	.L955:		# .L955:
	movq $1, %r13		# movq $1, %r(6004)
	movq %r13, %rbx		# movq %r(6004), %r(6020)
	movq %rbx, -8(%rbp)		# movq %r(6020), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(6005)
	movq %r14, %r13		# movq %r(5971), %r(6006)
	xorq %rbx, %r13		# xorq %r(6005), %r(6006)
	testq $1, %r13		# testq $1, %r(6006)
	jne .L958		# jne .L958
	.L959:		# .L959:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(5982)
	testq $1, %rbx		# testq $1, %r(5982)
	jne .L957		# jne .L957
	.L958:		# .L958:
	movq $0, %r13		# movq $0, %r(6007)
	movq %r13, %rbx		# movq %r(6007), %r(6021)
	movq %rbx, -8(%rbp)		# movq %r(6021), -8(%rbp)
	jmp .L957		# jmp .L957
	.L957:		# .L957:
	movq $1, %rbx		# movq $1, %r(6008)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(6022)
	movq %r14, %r13		# movq %r(6022), %r(6009)
	xorq %rbx, %r13		# xorq %r(6008), %r(6009)
	movq $1, %rbx		# movq $1, %r(6010)
	movq %r13, %r14		# movq %r(6009), %r(6011)
	xorq %rbx, %r14		# xorq %r(6010), %r(6011)
	testq $1, %r14		# testq $1, %r(6011)
	jne .L961		# jne .L961
	.L960:		# .L960:
	leaq .L962(%rip), %rdi		# leaq .L962(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5983)
	movq $1, %r12		# movq $1, %r(6013)
	movq %rbx, %rdi		# movq %r(5983), %rdi
	movq %r12, %rsi		# movq %r(6013), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L963		# jmp .L963
	.L963:		# .L963:
	.L944:		# .L944:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L961:		# .L961:
	leaq .L964(%rip), %rdi		# leaq .L964(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5985)
	movq $0, %r12		# movq $0, %r(6015)
	movq %rbx, %rdi		# movq %r(5985), %rdi
	movq %r12, %rsi		# movq %r(6015), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L963		# jmp .L963
	.L952:		# .L952:
	leaq .L956(%rip), %rdi		# leaq .L956(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5980)
	movq $1, %r12		# movq $1, %r(6017)
	movq %rbx, %rdi		# movq %r(5980), %rdi
	movq %r12, %rsi		# movq %r(6017), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L955		# jmp .L955
	.L946:		# .L946:
	leaq .L950(%rip), %rdi		# leaq .L950(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5975)
	movq $0, %r12		# movq $0, %r(6019)
	movq %rbx, %rdi		# movq %r(5975), %rdi
	movq %r12, %rsi		# movq %r(6019), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L949		# jmp .L949
	
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
	movq %rdi, %rbx		# movq %rdi, %r(6035)
	movq %rbx, -16(%rbp)		# movq %r(6035), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6036)
	movq (%rbx), %r13		# movq (%r(6036)), %r(6023)
	movq %r13, %r12		# movq %r(6023), %r(6037)
	movq %r12, -24(%rbp)		# movq %r(6037), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6038)
	movq %r12, %r13		# movq %r(6038), %r(6024)
	salq $3, %r13		# salq $3, %r(6024)
	movq $8, %rbx		# movq $8, %r(6025)
	movq %r13, %r14		# movq %r(6024), %r(6026)
	addq %rbx, %r14		# addq %r(6025), %r(6026)
	movq %r14, %rdi		# movq %r(6026), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5987)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(6039)
	movq %r13, %rbx		# movq %r(6039), %r(6027)
	salq $3, %rbx		# salq $3, %r(6027)
	movq %r15, %r13		# movq %r(5987), %r(6028)
	addq %rbx, %r13		# addq %r(6027), %r(6028)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6040)
	movq %rbx, %r12		# movq %r(6040), %r(6029)
	salq $3, %r12		# salq $3, %r(6029)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6041)
	movq %rbx, %r14		# movq %r(6041), %r(6042)
	movq %r14, -8(%rbp)		# movq %r(6042), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6043)
	addq %r12, %rbx		# addq %r(6029), %r(6043)
	movq %rbx, -8(%rbp)		# movq %r(6043), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6044)
	movq (%rbx), %r12		# movq (%r(6044)), %r(6031)
	movq %r12, (%r13)		# movq %r(6031), (%r(6028))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6045)
	decq %rbx		# decq %r(6045)
	movq %rbx, -24(%rbp)		# movq %r(6045), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(6032)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6046)
	cmpq %rbx, %r12		# cmpq %r(6032), %r(6046)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6033)
	movq %r15, %r13		# movq %r(5987), %r(6034)
	addq %rbx, %r13		# addq %r(6033), %r(6034)
	movq %r13, %rax		# movq %r(6034), %rax
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
.L950:
	.quad 2
	.quad 35
	.quad 49
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
.L964:
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
.L948:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L962:
	.quad 2
	.quad 35
	.quad 51
	.text

