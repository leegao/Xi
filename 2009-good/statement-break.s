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
	movq %rax, %r13		# movq %rax, %r(718)
	movq %r13, %rdi		# movq %r(718), %rdi
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
	movq $0, %rbx		# movq $0, %r(730)
	movq %rbx, %r14		# movq %r(730), %r(c)
	.L212:		# .L212:
	movq $10, %rbx		# movq $10, %r(731)
	cmpq %rbx, %r14		# cmpq %r(731), %r(c)
	jge .L214		# jge .L214
	.L213:		# .L213:
	movq $5, %rbx		# movq $5, %r(732)
	cmpq %rbx, %r14		# cmpq %r(732), %r(c)
	jne .L216		# jne .L216
	.L215:		# .L215:
	jmp .L214		# jmp .L214
	.L216:		# .L216:
	incq %r14		# incq %r(c)
	jmp .L212		# jmp .L212
	.L214:		# .L214:
	leaq .L217(%rip), %rdi		# leaq .L217(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(722)
	movq $1, %r15		# movq $1, %r(734)
	movq %r15, %r15		# movq %r(734), %r(714)
	movq $5, %r13		# movq $5, %r(735)
	cmpq %r13, %r14		# cmpq %r(735), %r(c)
	je .L218		# je .L218
	.L219:		# .L219:
	movq $0, %r15		# movq $0, %r(736)
	movq %r15, %r15		# movq %r(736), %r(714)
	.L218:		# .L218:
	movq %r12, %rdi		# movq %r(722), %rdi
	movq %r15, %rsi		# movq %r(714), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %rbx		# movq $0, %r(737)
	movq %rbx, %r13		# movq %r(737), %r(d)
	movq $0, %rbx		# movq $0, %r(738)
	movq %rbx, %r14		# movq %r(738), %r(c)
	.L220:		# .L220:
	movq $10, %rbx		# movq $10, %r(739)
	cmpq %rbx, %r14		# cmpq %r(739), %r(c)
	jge .L222		# jge .L222
	.L221:		# .L221:
	.L223:		# .L223:
	movq $10, %rbx		# movq $10, %r(740)
	cmpq %rbx, %r13		# cmpq %r(740), %r(d)
	jge .L225		# jge .L225
	.L224:		# .L224:
	movq $5, %rbx		# movq $5, %r(741)
	cmpq %rbx, %r13		# cmpq %r(741), %r(d)
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
	movq %rax, %r12		# movq %rax, %r(724)
	movq $1, %rbx		# movq $1, %r(743)
	movq %rbx, %rbx		# movq %r(743), %r(716)
	movq $5, %r15		# movq $5, %r(744)
	cmpq %r15, %r13		# cmpq %r(744), %r(d)
	je .L229		# je .L229
	.L230:		# .L230:
	movq $0, %rbx		# movq $0, %r(745)
	movq %rbx, %rbx		# movq %r(745), %r(716)
	.L229:		# .L229:
	movq %r12, %rdi		# movq %r(724), %rdi
	movq %rbx, %rsi		# movq %r(716), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L231(%rip), %rdi		# leaq .L231(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(726)
	movq $1, %rbx		# movq $1, %r(747)
	movq %rbx, %rbx		# movq %r(747), %r(717)
	movq $10, %r13		# movq $10, %r(748)
	cmpq %r13, %r14		# cmpq %r(748), %r(c)
	je .L232		# je .L232
	.L233:		# .L233:
	movq $0, %rbx		# movq $0, %r(749)
	movq %rbx, %rbx		# movq %r(749), %r(717)
	.L232:		# .L232:
	movq %r12, %rdi		# movq %r(726), %rdi
	movq %rbx, %rsi		# movq %r(717), %rsi
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
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(762)
	movq %rbx, -24(%rbp)		# movq %r(762), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(763)
	movq (%rbx), %r12		# movq (%r(763)), %r(750)
	movq %r12, %r12		# movq %r(750), %r(764)
	movq %r12, -8(%rbp)		# movq %r(764), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(765)
	movq %rbx, %rbx		# movq %r(765), %r(751)
	salq $3, %rbx		# salq $3, %r(751)
	movq $8, %r12		# movq $8, %r(752)
	movq %rbx, %rbx		# movq %r(751), %r(753)
	addq %r12, %rbx		# addq %r(752), %r(753)
	movq %rbx, %rdi		# movq %r(753), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(728)
	movq %rbx, %r14		# movq %r(728), %r(t27)
	.L16:		# .L16:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(766)
	movq %r12, %r12		# movq %r(766), %r(754)
	salq $3, %r12		# salq $3, %r(754)
	movq %r14, %r13		# movq %r(t27), %r(755)
	addq %r12, %r13		# addq %r(754), %r(755)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(767)
	movq %rbx, %r12		# movq %r(767), %r(756)
	salq $3, %r12		# salq $3, %r(756)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(768)
	movq %rbx, %rbx		# movq %r(768), %r(769)
	movq %rbx, -16(%rbp)		# movq %r(769), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(770)
	addq %r12, %rbx		# addq %r(756), %r(770)
	movq %rbx, -16(%rbp)		# movq %r(770), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(771)
	movq (%rbx), %rbx		# movq (%r(771)), %r(758)
	movq %rbx, (%r13)		# movq %r(758), (%r(755))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(772)
	decq %rbx		# decq %r(772)
	movq %rbx, -8(%rbp)		# movq %r(772), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(759)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(773)
	cmpq %rbx, %r12		# cmpq %r(759), %r(773)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(760)
	movq %r14, %r12		# movq %r(t27), %r(761)
	addq %rbx, %r12		# addq %r(760), %r(761)
	movq %r12, %rax		# movq %r(761), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.section .rodata
.align 8
.L231:
	.quad 2
	.quad 35
	.quad 51
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
.L217:
	.quad 2
	.quad 35
	.quad 49
	.text

.section .rodata
.align 8
.L228:
	.quad 2
	.quad 35
	.quad 50
	.text

