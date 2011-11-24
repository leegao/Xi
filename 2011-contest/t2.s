.att_syntax prefix
.text
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
	leaq .L223(%rip), %rdi		# leaq .L223(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(731)
	movq %rbx, %rdi		# movq %r(731), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(732)
	movq %rbx, %rdi		# movq %r(732), %rdi
	call _If_aabb		# call _If_aabb
	.L222:		# .L222:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _If_aabb
_If_aabb:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(b)
	movq $40, %rbx		# movq $40, %r(742)
	movq %rbx, %rdi		# movq %r(742), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(734)
	movq $4, %r12		# movq $4, %r(743)
	movq %r12, (%r13)		# movq %r(743), (%r(734))
	movq $8, %r12		# movq $8, %r(744)
	addq %r12, %r13		# addq %r(744), %r(745)
	movq %r13, %r15		# movq %r(745), %r(719)
	movq $24, %rbx		# movq $24, %r(746)
	movq %rbx, %rdi		# movq %r(746), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(735)
	movq $2, %rbx		# movq $2, %r(747)
	movq %rbx, (%r13)		# movq %r(747), (%r(735))
	movq $8, %rbx		# movq $8, %r(748)
	addq %rbx, %r13		# addq %r(748), %r(749)
	movq %r13, %r14		# movq %r(749), %r(721)
	movq $0, %rbx		# movq $0, %r(750)
	movq %r14, %r13		# movq %r(721), %r(751)
	addq %rbx, %r13		# addq %r(750), %r(751)
	movq $1, %rbx		# movq $1, %r(752)
	movq %rbx, (%r13)		# movq %r(752), (%r(751))
	movq $8, %rbx		# movq $8, %r(753)
	movq %r14, %r13		# movq %r(721), %r(754)
	addq %rbx, %r13		# addq %r(753), %r(754)
	movq $1, %rbx		# movq $1, %r(755)
	movq %rbx, (%r13)		# movq %r(755), (%r(754))
	movq $0, %rbx		# movq $0, %r(756)
	movq %r15, %r13		# movq %r(719), %r(757)
	addq %rbx, %r13		# addq %r(756), %r(757)
	movq %r14, (%r13)		# movq %r(721), (%r(757))
	movq $24, %rbx		# movq $24, %r(758)
	movq %rbx, %rdi		# movq %r(758), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(736)
	movq $2, %rbx		# movq $2, %r(759)
	movq %rbx, (%r13)		# movq %r(759), (%r(736))
	movq $8, %rbx		# movq $8, %r(760)
	addq %rbx, %r13		# addq %r(760), %r(761)
	movq %r13, %r14		# movq %r(761), %r(723)
	movq $0, %rbx		# movq $0, %r(762)
	movq %r14, %r13		# movq %r(723), %r(763)
	addq %rbx, %r13		# addq %r(762), %r(763)
	movq $1, %rbx		# movq $1, %r(764)
	movq %rbx, (%r13)		# movq %r(764), (%r(763))
	movq $8, %rbx		# movq $8, %r(765)
	movq %r14, %r13		# movq %r(723), %r(766)
	addq %rbx, %r13		# addq %r(765), %r(766)
	movq $0, %rbx		# movq $0, %r(767)
	movq %rbx, (%r13)		# movq %r(767), (%r(766))
	movq $8, %rbx		# movq $8, %r(768)
	movq %r15, %r13		# movq %r(719), %r(769)
	addq %rbx, %r13		# addq %r(768), %r(769)
	movq %r14, (%r13)		# movq %r(723), (%r(769))
	movq $24, %rbx		# movq $24, %r(770)
	movq %rbx, %rdi		# movq %r(770), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(737)
	movq $2, %rbx		# movq $2, %r(771)
	movq %rbx, (%r13)		# movq %r(771), (%r(737))
	movq $8, %rbx		# movq $8, %r(772)
	addq %rbx, %r13		# addq %r(772), %r(773)
	movq %r13, %r14		# movq %r(773), %r(725)
	movq $0, %rbx		# movq $0, %r(774)
	movq %r14, %r13		# movq %r(725), %r(775)
	addq %rbx, %r13		# addq %r(774), %r(775)
	movq $0, %rbx		# movq $0, %r(776)
	movq %rbx, (%r13)		# movq %r(776), (%r(775))
	movq $8, %rbx		# movq $8, %r(777)
	movq %r14, %r13		# movq %r(725), %r(778)
	addq %rbx, %r13		# addq %r(777), %r(778)
	movq $1, %rbx		# movq $1, %r(779)
	movq %rbx, (%r13)		# movq %r(779), (%r(778))
	movq $16, %rbx		# movq $16, %r(780)
	movq %r15, %r13		# movq %r(719), %r(781)
	addq %rbx, %r13		# addq %r(780), %r(781)
	movq %r14, (%r13)		# movq %r(725), (%r(781))
	movq $24, %rbx		# movq $24, %r(782)
	movq %rbx, %rdi		# movq %r(782), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(738)
	movq $2, %rbx		# movq $2, %r(783)
	movq %rbx, (%r13)		# movq %r(783), (%r(738))
	movq $8, %rbx		# movq $8, %r(784)
	addq %rbx, %r13		# addq %r(784), %r(785)
	movq %r13, %r14		# movq %r(785), %r(727)
	movq $0, %rbx		# movq $0, %r(786)
	movq %r14, %r13		# movq %r(727), %r(787)
	addq %rbx, %r13		# addq %r(786), %r(787)
	movq $0, %rbx		# movq $0, %r(788)
	movq %rbx, (%r13)		# movq %r(788), (%r(787))
	movq $8, %rbx		# movq $8, %r(789)
	movq %r14, %r13		# movq %r(727), %r(790)
	addq %rbx, %r13		# addq %r(789), %r(790)
	movq $0, %rbx		# movq $0, %r(791)
	movq %rbx, (%r13)		# movq %r(791), (%r(790))
	movq $24, %rbx		# movq $24, %r(792)
	movq %r15, %r13		# movq %r(719), %r(793)
	addq %rbx, %r13		# addq %r(792), %r(793)
	movq %r14, (%r13)		# movq %r(727), (%r(793))
	movq %r15, %rax		# movq %r(719), %rax
	jmp .L228		# jmp .L228
	.L228:		# .L228:
	.L224:		# .L224:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_b
_Ig_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(794)
	movq %rbx, %rax		# movq %r(794), %rax
	jmp .L229		# jmp .L229
	.L229:		# .L229:
	.L225:		# .L225:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ih_bi
_Ih_bi:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $0, %rbx		# movq $0, %r(795)
	movq %rbx, %rax		# movq %r(795), %rax
	jmp .L230		# jmp .L230
	.L230:		# .L230:
	.L226:		# .L226:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ii_bai
_Ii_bai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(a)
	movq $1, %rbx		# movq $1, %r(796)
	movq %rbx, %rax		# movq %r(796), %rax
	jmp .L231		# jmp .L231
	.L231:		# .L231:
	.L227:		# .L227:
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
	movq %rdi, %r14		# movq %rdi, %r(p0)
	movq (%r14), %r12		# movq (%r(p0)), %r(797)
	movq %r12, -16(%rbp)		# movq %r(810), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(811)
	salq $3, %r13		# salq $3, %r(798)
	movq $8, %r12		# movq $8, %r(799)
	movq %r13, %rbx		# movq %r(740), %r(800)
	addq %r12, %rbx		# addq %r(799), %r(800)
	movq %rbx, %rdi		# movq %r(800), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(812)
	movq %r12, -24(%rbp)		# movq %r(812), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(813)
	movq %rbx, -8(%rbp)		# movq %r(807), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(808)
	addq %r13, %r12		# addq %r(740), %r(808)
	movq %r12, -8(%rbp)		# movq %r(808), -8(%rbp)
	addq %r13, %r14		# addq %r(740), %r(802)
	movq (%r14), %rbx		# movq (%r(802)), %r(803)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(809)
	movq %rbx, (%r12)		# movq %r(803), (%r(809))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(814)
	decq %rbx		# decq %r(814)
	movq %rbx, -16(%rbp)		# movq %r(814), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(804)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(815)
	cmpq %rbx, %r12		# cmpq %r(804), %r(815)
	jge .L70		# jge .L70
	movq $8, %rbx		# movq $8, %r(805)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(816)
	addq %rbx, %r13		# addq %r(805), %r(806)
	movq %r13, %rax		# movq %r(806), %rax
	.L72:		# .L72:
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
.L223:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

