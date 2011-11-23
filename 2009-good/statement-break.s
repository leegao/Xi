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
	leaq .L210(%rip), %rdi		# leaq .L210(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(729)
	movq %r13, %rdi		# movq %r(729), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L209:		# .L209:
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
	movq $0, %rbx		# movq $0, %r(741)
	movq %rbx, %r14		# movq %r(741), %r(c)
	.L212:		# .L212:
	movq $10, %rbx		# movq $10, %r(742)
	cmpq %rbx, %r14		# cmpq %r(742), %r(c)
	jge .L214		# jge .L214
	.L213:		# .L213:
	movq $5, %rbx		# movq $5, %r(743)
	cmpq %rbx, %r14		# cmpq %r(743), %r(c)
	jne .L216		# jne .L216
	.L215:		# .L215:
	jmp .L214		# jmp .L214
	.L216:		# .L216:
	incq %r14		# incq %r(c)
	jmp .L212		# jmp .L212
	.L214:		# .L214:
	leaq .L217(%rip), %rdi		# leaq .L217(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(733)
	movq $1, %r15		# movq $1, %r(745)
	movq %r15, %r15		# movq %r(745), %r(725)
	movq $5, %r13		# movq $5, %r(746)
	cmpq %r13, %r14		# cmpq %r(746), %r(c)
	je .L218		# je .L218
	.L219:		# .L219:
	movq $0, %r15		# movq $0, %r(747)
	movq %r15, %r15		# movq %r(747), %r(725)
	.L218:		# .L218:
	movq %r12, %rdi		# movq %r(733), %rdi
	movq %r15, %rsi		# movq %r(725), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %rbx		# movq $0, %r(748)
	movq %rbx, %r13		# movq %r(748), %r(d)
	movq $0, %rbx		# movq $0, %r(749)
	movq %rbx, %r14		# movq %r(749), %r(c)
	.L220:		# .L220:
	movq $10, %rbx		# movq $10, %r(750)
	cmpq %rbx, %r14		# cmpq %r(750), %r(c)
	jge .L222		# jge .L222
	.L221:		# .L221:
	.L223:		# .L223:
	movq $10, %rbx		# movq $10, %r(751)
	cmpq %rbx, %r13		# cmpq %r(751), %r(d)
	jge .L225		# jge .L225
	.L224:		# .L224:
	movq $5, %rbx		# movq $5, %r(752)
	cmpq %rbx, %r13		# cmpq %r(752), %r(d)
	jne .L227		# jne .L227
	.L226:		# .L226:
	jmp .L225		# jmp .L225
	.L227:		# .L227:
	incq %r13		# incq %r(d)
	jmp .L223		# jmp .L223
	.L225:		# .L225:
	incq %r14		# incq %r(c)
	jmp .L220		# jmp .L220
	.L222:		# .L222:
	leaq .L228(%rip), %rdi		# leaq .L228(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(735)
	movq $1, %rbx		# movq $1, %r(754)
	movq %rbx, %rbx		# movq %r(754), %r(727)
	movq $5, %r15		# movq $5, %r(755)
	cmpq %r15, %r13		# cmpq %r(755), %r(d)
	je .L229		# je .L229
	.L230:		# .L230:
	movq $0, %rbx		# movq $0, %r(756)
	movq %rbx, %rbx		# movq %r(756), %r(727)
	.L229:		# .L229:
	movq %r12, %rdi		# movq %r(735), %rdi
	movq %rbx, %rsi		# movq %r(727), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L231(%rip), %rdi		# leaq .L231(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(737)
	movq $1, %rbx		# movq $1, %r(758)
	movq %rbx, %rbx		# movq %r(758), %r(728)
	movq $10, %r13		# movq $10, %r(759)
	cmpq %r13, %r14		# cmpq %r(759), %r(c)
	je .L232		# je .L232
	.L233:		# .L233:
	movq $0, %rbx		# movq $0, %r(760)
	movq %rbx, %rbx		# movq %r(760), %r(728)
	.L232:		# .L232:
	movq %r12, %rdi		# movq %r(737), %rdi
	movq %rbx, %rsi		# movq %r(728), %rsi
	call _Itest_paib		# call _Itest_paib
	.L211:		# .L211:
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
	movq %rdi, %rbx		# movq %rdi, %r(776)
	movq %rbx, -24(%rbp)		# movq %r(776), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(777)
	movq (%rbx), %r12		# movq (%r(777)), %r(761)
	movq %r12, %r12		# movq %r(761), %r(778)
	movq %r12, -16(%rbp)		# movq %r(778), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(779)
	movq %rbx, %rbx		# movq %r(779), %r(762)
	salq $3, %rbx		# salq $3, %r(762)
	movq $8, %r12		# movq $8, %r(763)
	movq %rbx, %rbx		# movq %r(762), %r(764)
	addq %r12, %rbx		# addq %r(763), %r(764)
	movq %rbx, %rdi		# movq %r(764), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(739)
	movq %r12, %r12		# movq %r(739), %r(780)
	movq %r12, -40(%rbp)		# movq %r(780), -40(%rbp)
	.L16:		# .L16:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(781)
	movq %r13, %r13		# movq %r(781), %r(765)
	salq $3, %r13		# salq $3, %r(765)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(782)
	movq %r12, %r12		# movq %r(782), %r(766)
	addq %r13, %r12		# addq %r(765), %r(766)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(783)
	movq %r13, %r13		# movq %r(783), %r(784)
	movq %r13, -32(%rbp)		# movq %r(784), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(785)
	salq $3, %rbx		# salq $3, %r(785)
	movq %rbx, -32(%rbp)		# movq %r(785), -32(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(786)
	movq %r13, %r13		# movq %r(786), %r(773)
	movq %r13, -8(%rbp)		# movq %r(773), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(774)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(787)
	addq %r13, %rbx		# addq %r(787), %r(774)
	movq %rbx, -8(%rbp)		# movq %r(774), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(775)
	movq (%rbx), %rbx		# movq (%r(775)), %r(769)
	movq %rbx, (%r12)		# movq %r(769), (%r(766))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(788)
	decq %rbx		# decq %r(788)
	movq %rbx, -16(%rbp)		# movq %r(788), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(770)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(789)
	cmpq %rbx, %r12		# cmpq %r(770), %r(789)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(771)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(790)
	movq %r13, %r13		# movq %r(790), %r(772)
	addq %rbx, %r13		# addq %r(771), %r(772)
	movq %r13, %rax		# movq %r(772), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L228:
	.quad 2
	.quad 35
	.quad 50
	.text

.section .rodata
.align 8
.L217:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L210:
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

.section .rodata
.align 8
.L231:
	.quad 2
	.quad 35
	.quad 51
	.text

