.att_syntax prefix
.text
.globl _IA_aiai
_IA_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(x)
	movq $8, %rbx		# movq $8, %r(673)
	movq %r15, %r13		# movq %r(x), %r(674)
	subq %rbx, %r13		# subq %r(673), %r(674)
	movq (%r13), %r13		# movq (%r(674)), %r(675)
	movq $1, %r12		# movq $1, %r(676)
	subq %r12, %r13		# subq %r(676), %r(677)
	movq %r13, %r14		# movq %r(677), %r(652)
	movq $8, %rbx		# movq $8, %r(678)
	movq %r15, %r12		# movq %r(x), %r(679)
	subq %rbx, %r12		# subq %r(678), %r(679)
	movq (%r12), %rbx		# movq (%r(679)), %r(680)
	cmpq %rbx, %r14		# cmpq %r(680), %r(652)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(681)
	movq %r15, %r12		# movq %r(x), %r(682)
	subq %rbx, %r12		# subq %r(681), %r(682)
	movq (%r12), %rbx		# movq (%r(682)), %r(683)
	movq $1, %r12		# movq $1, %r(684)
	subq %r12, %rbx		# subq %r(684), %r(685)
	movq %rbx, %r12		# movq %r(685), %r(650)
	movq $8, %rbx		# movq $8, %r(686)
	movq %r15, %r13		# movq %r(x), %r(687)
	subq %rbx, %r13		# subq %r(686), %r(687)
	movq (%r13), %rbx		# movq (%r(687)), %r(688)
	cmpq %rbx, %r12		# cmpq %r(688), %r(650)
	jae error_outofbounds		# jae error_outofbounds
	movq %r12, %rbx		# movq %r(650), %r(689)
	salq $3, %rbx		# salq $3, %r(689)
	movq %r15, %r13		# movq %r(x), %r(690)
	addq %rbx, %r13		# addq %r(689), %r(690)
	movq %r14, %rbx		# movq %r(652), %r(691)
	salq $3, %rbx		# salq $3, %r(691)
	movq %r15, %r12		# movq %r(x), %r(692)
	addq %rbx, %r12		# addq %r(691), %r(692)
	movq (%r12), %rbx		# movq (%r(692)), %r(693)
	movq $1, %r12		# movq $1, %r(694)
	subq %r12, %rbx		# subq %r(694), %r(695)
	movq %rbx, (%r13)		# movq %r(695), (%r(690))
	movq %r15, %rax		# movq %r(x), %rax
	jmp .L96		# jmp .L96
	.L96:		# .L96:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq $0, %r12		# movq $0, %r(696)
	movq $8, %rbx		# movq $8, %r(697)
	movq %r15, %r14		# movq %r(x), %r(698)
	subq %rbx, %r14		# subq %r(697), %r(698)
	movq (%r14), %rbx		# movq (%r(698)), %r(699)
	cmpq %rbx, %r12		# cmpq %r(699), %r(696)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(700)
	movq $8, %rbx		# movq $8, %r(701)
	movq %r15, %r14		# movq %r(x), %r(702)
	subq %rbx, %r14		# subq %r(701), %r(702)
	movq (%r14), %rbx		# movq (%r(702)), %r(703)
	cmpq %rbx, %r12		# cmpq %r(703), %r(700)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r12		# movq $0, %r(704)
	salq $3, %r12		# salq $3, %r(705)
	movq %r15, %r13		# movq %r(x), %r(706)
	addq %r12, %r13		# addq %r(705), %r(706)
	movq $0, %r12		# movq $0, %r(707)
	salq $3, %r12		# salq $3, %r(708)
	movq %r15, %rbx		# movq %r(x), %r(709)
	addq %r12, %rbx		# addq %r(708), %r(709)
	movq (%rbx), %rbx		# movq (%r(709)), %r(710)
	movq $1, %r12		# movq $1, %r(711)
	addq %r12, %rbx		# addq %r(711), %r(712)
	movq %rbx, (%r13)		# movq %r(712), (%r(706))
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
	movq %rax, %r13		# movq %rax, %r(665)
	movq %r13, %r12		# movq %r(665), %r(716)
	movq %r12, -8(%rbp)		# movq %r(716), -8(%rbp)
	movq $10, %r15		# movq $10, %r(714)
	movq %r13, %rdi		# movq %r(665), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L108		# jmp .L108
	.L108:		# .L108:
	movq $0, %r12		# movq $0, %r(715)
	cmpq %r12, %r15		# cmpq %r(715), %r(count)
	jle .L110		# jle .L110
	.L109:		# .L109:
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(717)
	movq %r12, %rdi		# movq %r(717), %rdi
	call _IA_aiai		# call _IA_aiai
	movq %rax, %r12		# movq %rax, %r(667)
	movq %r12, %rdi		# movq %r(667), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(667), %rdi
	call _IB_aiai		# call _IB_aiai
	movq %rax, %r14		# movq %rax, %r(669)
	movq %r14, %r12		# movq %r(669), %r(718)
	movq %r12, -8(%rbp)		# movq %r(718), -8(%rbp)
	movq %r14, %rdi		# movq %r(669), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r15		# decq %r(count)
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
	movq %rdi, %rbx		# movq %rdi, %r(731)
	movq %rbx, -16(%rbp)		# movq %r(731), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(732)
	movq (%rbx), %rbx		# movq (%r(732)), %r(719)
	movq %rbx, %r14		# movq %r(719), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(720)
	salq $3, %rbx		# salq $3, %r(720)
	movq $8, %r12		# movq $8, %r(721)
	addq %r12, %rbx		# addq %r(721), %r(722)
	movq %rbx, %rdi		# movq %r(722), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(671)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(723)
	salq $3, %rbx		# salq $3, %r(723)
	movq %r13, %r12		# movq %r(671), %r(724)
	addq %rbx, %r12		# addq %r(723), %r(724)
	movq %r14, %r15		# movq %r(t10), %r(725)
	salq $3, %r15		# salq $3, %r(725)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(733)
	movq %rbx, -8(%rbp)		# movq %r(734), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(735)
	addq %r15, %rbx		# addq %r(725), %r(735)
	movq %rbx, -8(%rbp)		# movq %r(735), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(736)
	movq (%rbx), %rbx		# movq (%r(736)), %r(727)
	movq %rbx, (%r12)		# movq %r(727), (%r(724))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(728)
	cmpq %rbx, %r14		# cmpq %r(728), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(729)
	movq %r13, %r12		# movq %r(671), %r(730)
	addq %rbx, %r12		# addq %r(729), %r(730)
	movq %r12, %rax		# movq %r(730), %rax
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
