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
	movq %rdi, %rbx		# movq %rdi, %r(736)
	movq %rbx, -16(%rbp)		# movq %r(736), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(713)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(737)
	movq %r14, %r15		# movq %r(737), %r(714)
	subq %rbx, %r15		# subq %r(713), %r(714)
	movq (%r15), %r14		# movq (%r(714)), %r(715)
	movq $1, %rbx		# movq $1, %r(716)
	movq %r14, %r13		# movq %r(715), %r(717)
	subq %rbx, %r13		# subq %r(716), %r(717)
	movq %r13, %r12		# movq %r(717), %r(738)
	movq %r12, -24(%rbp)		# movq %r(738), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(718)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(739)
	movq %r14, %r12		# movq %r(739), %r(719)
	subq %rbx, %r12		# subq %r(718), %r(719)
	movq (%r12), %rbx		# movq (%r(719)), %r(720)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(740)
	cmpq %rbx, %r12		# cmpq %r(720), %r(740)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(721)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(741)
	movq %r14, %r15		# movq %r(741), %r(722)
	subq %rbx, %r15		# subq %r(721), %r(722)
	movq (%r15), %r14		# movq (%r(722)), %r(723)
	movq $1, %rbx		# movq $1, %r(724)
	movq %r14, %r13		# movq %r(723), %r(725)
	subq %rbx, %r13		# subq %r(724), %r(725)
	movq %r13, %r12		# movq %r(725), %r(742)
	movq %r12, -8(%rbp)		# movq %r(742), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(726)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(743)
	movq %r14, %r12		# movq %r(743), %r(727)
	subq %rbx, %r12		# subq %r(726), %r(727)
	movq (%r12), %rbx		# movq (%r(727)), %r(728)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(744)
	cmpq %rbx, %r12		# cmpq %r(728), %r(744)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(745)
	movq %r13, %r14		# movq %r(745), %r(729)
	salq $3, %r14		# salq $3, %r(729)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(746)
	movq %r12, %r13		# movq %r(746), %r(730)
	addq %r14, %r13		# addq %r(729), %r(730)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(747)
	movq %r12, %rbx		# movq %r(747), %r(731)
	salq $3, %rbx		# salq $3, %r(731)
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(748)
	movq %r15, %r12		# movq %r(748), %r(732)
	addq %rbx, %r12		# addq %r(731), %r(732)
	movq (%r12), %r14		# movq (%r(732)), %r(733)
	movq $1, %rbx		# movq $1, %r(734)
	movq %r14, %r15		# movq %r(733), %r(735)
	subq %rbx, %r15		# subq %r(734), %r(735)
	movq %r15, (%r13)		# movq %r(735), (%r(730))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(749)
	movq %rbx, %rax		# movq %r(749), %rax
	jmp .L96		# jmp .L96
	.L96:		# .L96:
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
	movq %rdi, %r15		# movq %rdi, %r(x)
	movq $0, %r13		# movq $0, %r(750)
	movq $8, %rbx		# movq $8, %r(751)
	movq %r15, %r14		# movq %r(x), %r(752)
	subq %rbx, %r14		# subq %r(751), %r(752)
	movq (%r14), %rbx		# movq (%r(752)), %r(753)
	cmpq %rbx, %r13		# cmpq %r(753), %r(750)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(754)
	movq $8, %rbx		# movq $8, %r(755)
	movq %r15, %r14		# movq %r(x), %r(756)
	subq %rbx, %r14		# subq %r(755), %r(756)
	movq (%r14), %rbx		# movq (%r(756)), %r(757)
	cmpq %rbx, %r13		# cmpq %r(757), %r(754)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(758)
	movq %r13, %rbx		# movq %r(758), %r(759)
	salq $3, %rbx		# salq $3, %r(759)
	movq %r15, %r12		# movq %r(x), %r(760)
	addq %rbx, %r12		# addq %r(759), %r(760)
	movq $0, %rbx		# movq $0, %r(761)
	movq %rbx, %r13		# movq %r(761), %r(762)
	salq $3, %r13		# salq $3, %r(762)
	movq %r15, %rbx		# movq %r(x), %r(763)
	addq %r13, %rbx		# addq %r(762), %r(763)
	movq (%rbx), %r14		# movq (%r(763)), %r(764)
	movq $1, %rbx		# movq $1, %r(765)
	movq %r14, %r13		# movq %r(764), %r(766)
	addq %rbx, %r13		# addq %r(765), %r(766)
	movq %r13, (%r12)		# movq %r(766), (%r(760))
	movq %r15, %rax		# movq %r(x), %rax
	jmp .L101		# jmp .L101
	.L101:		# .L101:
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
	leaq .L107(%rip), %rdi		# leaq .L107(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(705)
	movq %rbx, %r14		# movq %r(705), %r(input)
	movq $10, %r12		# movq $10, %r(768)
	movq %r12, %r13		# movq %r(768), %r(count)
	movq %rbx, %rdi		# movq %r(705), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L108		# jmp .L108
	.L108:		# .L108:
	movq $0, %rbx		# movq $0, %r(769)
	cmpq %rbx, %r13		# cmpq %r(769), %r(count)
	jle .L110		# jle .L110
	.L109:		# .L109:
	movq %r14, %rdi		# movq %r(input), %rdi
	call _IA_aiai		# call _IA_aiai
	movq %rax, %rbx		# movq %rax, %r(707)
	movq %rbx, %rdi		# movq %r(707), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(707), %rdi
	call _IB_aiai		# call _IB_aiai
	movq %rax, %r12		# movq %rax, %r(709)
	movq %r12, %r14		# movq %r(709), %r(input)
	movq %r12, %rdi		# movq %r(709), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(count)
	jmp .L108		# jmp .L108
	.L110:		# .L110:
	jmp .L106		# jmp .L106
	.L106:		# .L106:
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
	movq %rdi, %rbx		# movq %rdi, %r(782)
	movq %rbx, -24(%rbp)		# movq %r(782), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(783)
	movq (%rbx), %r13		# movq (%r(783)), %r(770)
	movq %r13, %r12		# movq %r(770), %r(784)
	movq %r12, -16(%rbp)		# movq %r(784), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(785)
	movq %r12, %r13		# movq %r(785), %r(771)
	salq $3, %r13		# salq $3, %r(771)
	movq $8, %rbx		# movq $8, %r(772)
	movq %r13, %r14		# movq %r(771), %r(773)
	addq %rbx, %r14		# addq %r(772), %r(773)
	movq %r14, %rdi		# movq %r(773), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(711)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(786)
	movq %r13, %rbx		# movq %r(786), %r(774)
	salq $3, %rbx		# salq $3, %r(774)
	movq %r15, %r13		# movq %r(711), %r(775)
	addq %rbx, %r13		# addq %r(774), %r(775)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(787)
	movq %rbx, %r12		# movq %r(787), %r(776)
	salq $3, %r12		# salq $3, %r(776)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(788)
	movq %rbx, %r14		# movq %r(788), %r(789)
	movq %r14, -8(%rbp)		# movq %r(789), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(790)
	addq %r12, %rbx		# addq %r(776), %r(790)
	movq %rbx, -8(%rbp)		# movq %r(790), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(791)
	movq (%rbx), %r12		# movq (%r(791)), %r(778)
	movq %r12, (%r13)		# movq %r(778), (%r(775))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(792)
	decq %rbx		# decq %r(792)
	movq %rbx, -16(%rbp)		# movq %r(792), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(779)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(793)
	cmpq %rbx, %r12		# cmpq %r(779), %r(793)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(780)
	movq %r15, %r13		# movq %r(711), %r(781)
	addq %rbx, %r13		# addq %r(780), %r(781)
	movq %r13, %rax		# movq %r(781), %rax
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
.L107:
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
