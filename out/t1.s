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
	movq $32, %rbx		# movq $32, %r(749)
	movq %rbx, %rdi		# movq %r(749), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(743)
	movq $3, %r12		# movq $3, %r(750)
	movq %r12, (%r14)		# movq %r(750), (%r(743))
	movq $8, %r12		# movq $8, %r(751)
	addq %r12, %r14		# addq %r(751), %r(752)
	movq $0, %r12		# movq $0, %r(753)
	movq %r14, %rbx		# movq %r(741), %r(754)
	addq %r12, %rbx		# addq %r(753), %r(754)
	movq $7, %r12		# movq $7, %r(755)
	movq %r12, (%rbx)		# movq %r(755), (%r(754))
	movq $8, %r12		# movq $8, %r(756)
	movq %r14, %rbx		# movq %r(741), %r(757)
	addq %r12, %rbx		# addq %r(756), %r(757)
	movq $8, %r12		# movq $8, %r(758)
	movq %r12, (%rbx)		# movq %r(758), (%r(757))
	movq $16, %r12		# movq $16, %r(759)
	movq %r14, %rbx		# movq %r(741), %r(760)
	addq %r12, %rbx		# addq %r(759), %r(760)
	movq $9, %r12		# movq $9, %r(761)
	movq %r12, (%rbx)		# movq %r(761), (%r(760))
	movq %r14, %rdi		# movq %r(741), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L121		# jmp .L121
	.L121:		# .L121:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_i
_Ig_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $60, %rbx		# movq $60, %r(762)
	movq %rbx, %rax		# movq %r(762), %rax
	jmp .L123		# jmp .L123
	.L123:		# .L123:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(806)
	movq %rbx, -80(%rbp)		# movq %r(806), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(763)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(807)
	subq %rbx, %r13		# subq %r(763), %r(764)
	movq (%r13), %r12		# movq (%r(764)), %r(765)
	movq %r12, -48(%rbp)		# movq %r(808), -48(%rbp)
	movq $1, %r12		# movq $1, %r(766)
	movq %r12, -56(%rbp)		# movq %r(809), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(767)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(810)
	cmpq %rbx, %r12		# cmpq %r(767), %r(810)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(768)
	movq %rbx, %rax		# movq %r(768), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L69:		# .L69:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(811)
	salq $3, %r12		# salq $3, %r(769)
	movq %r12, %rdi		# movq %r(769), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(745)
	movq $1, %r12		# movq $1, %r(770)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(812)
	movq %r14, -64(%rbp)		# movq %r(813), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(814)
	subq %r12, %rbx		# subq %r(770), %r(814)
	movq %rbx, -64(%rbp)		# movq %r(814), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(815)
	movq %rbx, (%r13)		# movq %r(815), (%r(745))
	movq $8, %rbx		# movq $8, %r(772)
	addq %rbx, %r13		# addq %r(772), %r(773)
	movq %r13, -40(%rbp)		# movq %r(816), -40(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(817)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(818)
	cmpq %rbx, %r12		# cmpq %r(817), %r(818)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(774)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(819)
	subq %rbx, %r13		# subq %r(774), %r(775)
	movq (%r13), %rbx		# movq (%r(775)), %r(776)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(820)
	cmpq %rbx, %r12		# cmpq %r(776), %r(820)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(777)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(821)
	subq %rbx, %r14		# subq %r(777), %r(778)
	movq $8, %r13		# movq $8, %r(779)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(822)
	movq %r12, -16(%rbp)		# movq %r(823), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(824)
	subq %r13, %rbx		# subq %r(779), %r(824)
	movq %rbx, -16(%rbp)		# movq %r(824), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(825)
	movq (%rbx), %rbx		# movq (%r(825)), %r(781)
	cmpq %rbx, %r14		# cmpq %r(781), %r(70)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(782)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(826)
	addq %r14, %rbx		# addq %r(782), %r(783)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(827)
	salq $3, %r14		# salq $3, %r(784)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(828)
	movq %r12, -32(%rbp)		# movq %r(829), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(830)
	addq %r14, %r13		# addq %r(784), %r(830)
	movq %r13, -32(%rbp)		# movq %r(830), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(831)
	movq (%r12), %r12		# movq (%r(831)), %r(786)
	movq %r12, (%rbx)		# movq %r(786), (%r(783))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(832)
	incq %rbx		# incq %r(832)
	movq %rbx, -56(%rbp)		# movq %r(832), -56(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(787)
	movq $8, %r12		# movq $8, %r(788)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(833)
	subq %r12, %r14		# subq %r(788), %r(789)
	movq (%r14), %rbx		# movq (%r(789)), %r(790)
	cmpq %rbx, %r13		# cmpq %r(790), %r(787)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(791)
	salq $3, %r13		# salq $3, %r(792)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(834)
	addq %r13, %rbx		# addq %r(792), %r(793)
	movq (%rbx), %r12		# movq (%r(793)), %r(794)
	movq %r12, -56(%rbp)		# movq %r(835), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(795)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(836)
	addq %rbx, %r12		# addq %r(795), %r(796)
	salq $3, %r12		# salq $3, %r(797)
	movq %r12, %rdi		# movq %r(797), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(746)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(837)
	movq %r12, (%rbx)		# movq %r(837), (%r(746))
	movq $8, %r12		# movq $8, %r(798)
	addq %r12, %rbx		# addq %r(798), %r(799)
	movq %rbx, -72(%rbp)		# movq %r(838), -72(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(800)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(839)
	cmpq %rbx, %r12		# cmpq %r(800), %r(839)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(840)
	decq %rbx		# decq %r(840)
	movq %rbx, -56(%rbp)		# movq %r(840), -56(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(841)
	movq %rbx, %rdi		# movq %r(841), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(842)
	movq %rbx, -24(%rbp)		# movq %r(842), -24(%rbp)
	movq $8, %r12		# movq $8, %r(801)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(843)
	movq %r13, -8(%rbp)		# movq %r(844), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(845)
	subq %r12, %rbx		# subq %r(801), %r(845)
	movq %rbx, -8(%rbp)		# movq %r(845), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(846)
	movq (%rbx), %rbx		# movq (%r(846)), %r(803)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(847)
	cmpq %rbx, %r12		# cmpq %r(803), %r(847)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(848)
	salq $3, %r13		# salq $3, %r(804)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(849)
	movq %rbx, -88(%rbp)		# movq %r(850), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(851)
	addq %r13, %r12		# addq %r(804), %r(851)
	movq %r12, -88(%rbp)		# movq %r(851), -88(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(852)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(853)
	movq %rbx, (%r12)		# movq %r(852), (%r(853))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(854)
	movq %rbx, %rax		# movq %r(854), %rax
	jmp .L71		# jmp .L71
	
error_outofbounds:
call _I_outOfBounds_p
