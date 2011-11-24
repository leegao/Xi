.att_syntax prefix
.text
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
	leaq .L211(%rip), %rdi		# leaq .L211(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(735)
	movq %r13, %rdi		# movq %r(735), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L210:		# .L210:
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
	movq $0, %rbx		# movq $0, %r(747)
	movq %rbx, %r14		# movq %r(747), %r(c)
	.L213:		# .L213:
	movq $10, %rbx		# movq $10, %r(748)
	cmpq %rbx, %r14		# cmpq %r(748), %r(c)
	jge .L215		# jge .L215
	.L214:		# .L214:
	movq $5, %rbx		# movq $5, %r(749)
	cmpq %rbx, %r14		# cmpq %r(749), %r(c)
	jne .L217		# jne .L217
	.L216:		# .L216:
	jmp .L215		# jmp .L215
	.L215:		# .L215:
	leaq .L218(%rip), %rdi		# leaq .L218(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(739)
	movq $1, %r15		# movq $1, %r(751)
	movq $5, %r13		# movq $5, %r(752)
	cmpq %r13, %r14		# cmpq %r(752), %r(c)
	je .L219		# je .L219
	.L220:		# .L220:
	movq $0, %r15		# movq $0, %r(753)
	.L219:		# .L219:
	movq %r12, %rdi		# movq %r(739), %rdi
	movq %r15, %rsi		# movq %r(731), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %rbx		# movq $0, %r(754)
	movq %rbx, %r13		# movq %r(754), %r(d)
	movq $0, %rbx		# movq $0, %r(755)
	movq %rbx, %r14		# movq %r(755), %r(c)
	.L221:		# .L221:
	movq $10, %rbx		# movq $10, %r(756)
	cmpq %rbx, %r14		# cmpq %r(756), %r(c)
	jge .L223		# jge .L223
	.L222:		# .L222:
	.L224:		# .L224:
	movq $10, %rbx		# movq $10, %r(757)
	cmpq %rbx, %r13		# cmpq %r(757), %r(d)
	jge .L226		# jge .L226
	.L225:		# .L225:
	movq $5, %rbx		# movq $5, %r(758)
	cmpq %rbx, %r13		# cmpq %r(758), %r(d)
	jne .L228		# jne .L228
	.L227:		# .L227:
	jmp .L226		# jmp .L226
	.L226:		# .L226:
	incq %r14		# incq %r(c)
	jmp .L221		# jmp .L221
	.L228:		# .L228:
	incq %r13		# incq %r(d)
	jmp .L224		# jmp .L224
	.L223:		# .L223:
	leaq .L229(%rip), %rdi		# leaq .L229(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(741)
	movq $1, %rbx		# movq $1, %r(760)
	movq $5, %r15		# movq $5, %r(761)
	cmpq %r15, %r13		# cmpq %r(761), %r(d)
	je .L230		# je .L230
	.L231:		# .L231:
	movq $0, %rbx		# movq $0, %r(762)
	.L230:		# .L230:
	movq %r12, %rdi		# movq %r(741), %rdi
	movq %rbx, %rsi		# movq %r(733), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L232(%rip), %rdi		# leaq .L232(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(743)
	movq $1, %r15		# movq $1, %r(764)
	movq $10, %r13		# movq $10, %r(765)
	cmpq %r13, %r14		# cmpq %r(765), %r(c)
	je .L233		# je .L233
	.L234:		# .L234:
	movq $0, %r15		# movq $0, %r(766)
	.L233:		# .L233:
	movq %r12, %rdi		# movq %r(743), %rdi
	movq %r15, %rsi		# movq %r(734), %rsi
	call _Itest_paib		# call _Itest_paib
	.L212:		# .L212:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L217:		# .L217:
	incq %r14		# incq %r(c)
	jmp .L213		# jmp .L213
	
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
	movq %rdi, %rbx		# movq %rdi, %r(782)
	movq %rbx, -32(%rbp)		# movq %r(782), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(783)
	movq (%rbx), %r12		# movq (%r(783)), %r(767)
	movq %r12, -24(%rbp)		# movq %r(784), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(785)
	salq $3, %rbx		# salq $3, %r(768)
	movq $8, %r12		# movq $8, %r(769)
	addq %r12, %rbx		# addq %r(769), %r(770)
	movq %rbx, %rdi		# movq %r(770), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(745)
	movq %r12, -40(%rbp)		# movq %r(786), -40(%rbp)
	.L16:		# .L16:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(787)
	salq $3, %r13		# salq $3, %r(771)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(788)
	addq %r13, %r12		# addq %r(771), %r(772)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(789)
	movq %r13, -16(%rbp)		# movq %r(790), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(791)
	salq $3, %rbx		# salq $3, %r(791)
	movq %rbx, -16(%rbp)		# movq %r(791), -16(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(792)
	movq %r13, -8(%rbp)		# movq %r(779), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(780)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(793)
	addq %r13, %rbx		# addq %r(793), %r(780)
	movq %rbx, -8(%rbp)		# movq %r(780), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(781)
	movq (%rbx), %rbx		# movq (%r(781)), %r(775)
	movq %rbx, (%r12)		# movq %r(775), (%r(772))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(794)
	decq %rbx		# decq %r(794)
	movq %rbx, -24(%rbp)		# movq %r(794), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(776)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(795)
	cmpq %rbx, %r12		# cmpq %r(776), %r(795)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(777)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(796)
	addq %rbx, %r13		# addq %r(777), %r(778)
	movq %r13, %rax		# movq %r(778), %rax
	.L18:		# .L18:
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
.L229:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L218:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L211:
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
.L232:
	.quad 2
	.quad 35
	.quad 51
	.text

