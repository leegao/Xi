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
	movq %rax, %r13		# movq %rax, %r(688)
	movq %r13, %rdi		# movq %r(688), %rdi
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
	movq $0, %rbx		# movq $0, %r(700)
	movq %rbx, %r14		# movq %r(700), %r(c)
	.L212:		# .L212:
	movq $10, %rbx		# movq $10, %r(701)
	cmpq %rbx, %r14		# cmpq %r(701), %r(c)
	jge .L214		# jge .L214
	.L213:		# .L213:
	movq $5, %rbx		# movq $5, %r(702)
	cmpq %rbx, %r14		# cmpq %r(702), %r(c)
	jne .L216		# jne .L216
	.L215:		# .L215:
	jmp .L214		# jmp .L214
	.L216:		# .L216:
	incq %r14		# incq %r(c)
	jmp .L212		# jmp .L212
	.L214:		# .L214:
	leaq .L217(%rip), %rdi		# leaq .L217(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(692)
	movq $1, %r15		# movq $1, %r(704)
	movq $5, %r13		# movq $5, %r(705)
	cmpq %r13, %r14		# cmpq %r(705), %r(c)
	je .L218		# je .L218
	.L219:		# .L219:
	movq $0, %r15		# movq $0, %r(706)
	.L218:		# .L218:
	movq %r12, %rdi		# movq %r(692), %rdi
	movq %r15, %rsi		# movq %r(684), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %rbx		# movq $0, %r(707)
	movq %rbx, %r13		# movq %r(707), %r(d)
	movq $0, %rbx		# movq $0, %r(708)
	movq %rbx, %r14		# movq %r(708), %r(c)
	.L220:		# .L220:
	movq $10, %rbx		# movq $10, %r(709)
	cmpq %rbx, %r14		# cmpq %r(709), %r(c)
	jge .L222		# jge .L222
	.L221:		# .L221:
	.L223:		# .L223:
	movq $10, %rbx		# movq $10, %r(710)
	cmpq %rbx, %r13		# cmpq %r(710), %r(d)
	jge .L225		# jge .L225
	.L224:		# .L224:
	movq $5, %rbx		# movq $5, %r(711)
	cmpq %rbx, %r13		# cmpq %r(711), %r(d)
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
	movq %rax, %r12		# movq %rax, %r(694)
	movq $1, %rbx		# movq $1, %r(713)
	movq $5, %r15		# movq $5, %r(714)
	cmpq %r15, %r13		# cmpq %r(714), %r(d)
	je .L229		# je .L229
	.L230:		# .L230:
	movq $0, %rbx		# movq $0, %r(715)
	.L229:		# .L229:
	movq %r12, %rdi		# movq %r(694), %rdi
	movq %rbx, %rsi		# movq %r(686), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L231(%rip), %rdi		# leaq .L231(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(696)
	movq $1, %rbx		# movq $1, %r(717)
	movq $10, %r13		# movq $10, %r(718)
	cmpq %r13, %r14		# cmpq %r(718), %r(c)
	je .L232		# je .L232
	.L233:		# .L233:
	movq $0, %rbx		# movq $0, %r(719)
	.L232:		# .L232:
	movq %r12, %rdi		# movq %r(696), %rdi
	movq %rbx, %rsi		# movq %r(687), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(732)
	movq %rbx, -16(%rbp)		# movq %r(732), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(733)
	movq (%rbx), %rbx		# movq (%r(733)), %r(720)
	movq %rbx, %r14		# movq %r(720), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(721)
	salq $3, %rbx		# salq $3, %r(721)
	movq $8, %r12		# movq $8, %r(722)
	addq %r12, %rbx		# addq %r(722), %r(723)
	movq %rbx, %rdi		# movq %r(723), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(698)
	movq %rbx, %r13		# movq %r(698), %r(t27)
	.L16:		# .L16:
	movq %r14, %rbx		# movq %r(t10), %r(724)
	salq $3, %rbx		# salq $3, %r(724)
	movq %r13, %r15		# movq %r(t27), %r(725)
	addq %rbx, %r15		# addq %r(724), %r(725)
	movq %r14, %r12		# movq %r(t10), %r(726)
	salq $3, %r12		# salq $3, %r(726)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(734)
	movq %rbx, -8(%rbp)		# movq %r(735), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(736)
	addq %r12, %rbx		# addq %r(726), %r(736)
	movq %rbx, -8(%rbp)		# movq %r(736), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(737)
	movq (%rbx), %rbx		# movq (%r(737)), %r(728)
	movq %rbx, (%r15)		# movq %r(728), (%r(725))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(729)
	cmpq %rbx, %r14		# cmpq %r(729), %r(t10)
	jge .L16		# jge .L16
	.L17:		# .L17:
	movq $8, %rbx		# movq $8, %r(730)
	movq %r13, %r12		# movq %r(t27), %r(731)
	addq %rbx, %r12		# addq %r(730), %r(731)
	movq %r12, %rax		# movq %r(731), %rax
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
.L228:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L217:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L231:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
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

