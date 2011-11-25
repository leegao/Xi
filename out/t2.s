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
	leaq .L980(%rip), %rdi		# leaq .L980(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5604)
	movq %rbx, %rdi		# movq %r(5604), %rdi
	call _Ii_bai		# call _Ii_bai
	movq %rax, %rbx		# movq %rax, %r(5605)
	movq %rbx, %rdi		# movq %r(5605), %rdi
	call _If_aabb		# call _If_aabb
	jmp .L979		# jmp .L979
	.L979:		# .L979:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(b)
	movq $40, %rbx		# movq $40, %r(5614)
	movq %rbx, %rdi		# movq %r(5614), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5607)
	movq $4, %rbx		# movq $4, %r(5615)
	movq %rbx, (%r14)		# movq %r(5615), (%r(5607))
	movq $8, %rbx		# movq $8, %r(5616)
	movq %r14, %r13		# movq %r(5607), %r(5617)
	addq %rbx, %r13		# addq %r(5616), %r(5617)
	movq %r13, %r12		# movq %r(5617), %r(5666)
	movq %r12, -8(%rbp)		# movq %r(5666), -8(%rbp)
	movq $24, %rbx		# movq $24, %r(5618)
	movq %rbx, %rdi		# movq %r(5618), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5608)
	movq $2, %rbx		# movq $2, %r(5619)
	movq %rbx, (%r14)		# movq %r(5619), (%r(5608))
	movq $8, %rbx		# movq $8, %r(5620)
	movq %r14, %r13		# movq %r(5608), %r(5621)
	addq %rbx, %r13		# addq %r(5620), %r(5621)
	movq %r13, %r12		# movq %r(5621), %r(5672)
	movq %r12, -24(%rbp)		# movq %r(5672), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(5622)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5673)
	movq %r14, %r12		# movq %r(5673), %r(5623)
	addq %rbx, %r12		# addq %r(5622), %r(5623)
	movq $1, %rbx		# movq $1, %r(5624)
	movq %rbx, (%r12)		# movq %r(5624), (%r(5623))
	movq $8, %rbx		# movq $8, %r(5625)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5674)
	movq %r14, %r12		# movq %r(5674), %r(5626)
	addq %rbx, %r12		# addq %r(5625), %r(5626)
	movq $1, %rbx		# movq $1, %r(5627)
	movq %rbx, (%r12)		# movq %r(5627), (%r(5626))
	movq $0, %rbx		# movq $0, %r(5628)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5667)
	movq %r14, %r12		# movq %r(5667), %r(5629)
	addq %rbx, %r12		# addq %r(5628), %r(5629)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5675)
	movq %rbx, (%r12)		# movq %r(5675), (%r(5629))
	movq $24, %rbx		# movq $24, %r(5630)
	movq %rbx, %rdi		# movq %r(5630), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5609)
	movq $2, %rbx		# movq $2, %r(5631)
	movq %rbx, (%r14)		# movq %r(5631), (%r(5609))
	movq $8, %rbx		# movq $8, %r(5632)
	movq %r14, %r13		# movq %r(5609), %r(5633)
	addq %rbx, %r13		# addq %r(5632), %r(5633)
	movq %r13, %r12		# movq %r(5633), %r(5676)
	movq %r12, -16(%rbp)		# movq %r(5676), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(5634)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5677)
	movq %r14, %r12		# movq %r(5677), %r(5635)
	addq %rbx, %r12		# addq %r(5634), %r(5635)
	movq $1, %rbx		# movq $1, %r(5636)
	movq %rbx, (%r12)		# movq %r(5636), (%r(5635))
	movq $8, %rbx		# movq $8, %r(5637)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5678)
	movq %r14, %r12		# movq %r(5678), %r(5638)
	addq %rbx, %r12		# addq %r(5637), %r(5638)
	movq $0, %rbx		# movq $0, %r(5639)
	movq %rbx, (%r12)		# movq %r(5639), (%r(5638))
	movq $8, %rbx		# movq $8, %r(5640)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5668)
	movq %r14, %r12		# movq %r(5668), %r(5641)
	addq %rbx, %r12		# addq %r(5640), %r(5641)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5679)
	movq %rbx, (%r12)		# movq %r(5679), (%r(5641))
	movq $24, %rbx		# movq $24, %r(5642)
	movq %rbx, %rdi		# movq %r(5642), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5610)
	movq $2, %rbx		# movq $2, %r(5643)
	movq %rbx, (%r14)		# movq %r(5643), (%r(5610))
	movq $8, %rbx		# movq $8, %r(5644)
	movq %r14, %r13		# movq %r(5610), %r(5645)
	addq %rbx, %r13		# addq %r(5644), %r(5645)
	movq %r13, %r12		# movq %r(5645), %r(5680)
	movq %r12, -40(%rbp)		# movq %r(5680), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(5646)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5681)
	movq %r14, %r12		# movq %r(5681), %r(5647)
	addq %rbx, %r12		# addq %r(5646), %r(5647)
	movq $0, %rbx		# movq $0, %r(5648)
	movq %rbx, (%r12)		# movq %r(5648), (%r(5647))
	movq $8, %rbx		# movq $8, %r(5649)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5682)
	movq %r14, %r12		# movq %r(5682), %r(5650)
	addq %rbx, %r12		# addq %r(5649), %r(5650)
	movq $1, %rbx		# movq $1, %r(5651)
	movq %rbx, (%r12)		# movq %r(5651), (%r(5650))
	movq $16, %rbx		# movq $16, %r(5652)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5669)
	movq %r14, %r12		# movq %r(5669), %r(5653)
	addq %rbx, %r12		# addq %r(5652), %r(5653)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5683)
	movq %rbx, (%r12)		# movq %r(5683), (%r(5653))
	movq $24, %rbx		# movq $24, %r(5654)
	movq %rbx, %rdi		# movq %r(5654), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5611)
	movq $2, %rbx		# movq $2, %r(5655)
	movq %rbx, (%r14)		# movq %r(5655), (%r(5611))
	movq $8, %rbx		# movq $8, %r(5656)
	movq %r14, %r13		# movq %r(5611), %r(5657)
	addq %rbx, %r13		# addq %r(5656), %r(5657)
	movq %r13, %r12		# movq %r(5657), %r(5684)
	movq %r12, -32(%rbp)		# movq %r(5684), -32(%rbp)
	movq $0, %rbx		# movq $0, %r(5658)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(5685)
	movq %r14, %r12		# movq %r(5685), %r(5659)
	addq %rbx, %r12		# addq %r(5658), %r(5659)
	movq $0, %rbx		# movq $0, %r(5660)
	movq %rbx, (%r12)		# movq %r(5660), (%r(5659))
	movq $8, %rbx		# movq $8, %r(5661)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(5686)
	movq %r14, %r12		# movq %r(5686), %r(5662)
	addq %rbx, %r12		# addq %r(5661), %r(5662)
	movq $0, %rbx		# movq $0, %r(5663)
	movq %rbx, (%r12)		# movq %r(5663), (%r(5662))
	movq $24, %rbx		# movq $24, %r(5664)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5670)
	movq %r14, %r12		# movq %r(5670), %r(5665)
	addq %rbx, %r12		# addq %r(5664), %r(5665)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5687)
	movq %rbx, (%r12)		# movq %r(5687), (%r(5665))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5671)
	movq %rbx, %rax		# movq %r(5671), %rax
	jmp .L981		# jmp .L981
	.L981:		# .L981:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	movq $1, %rbx		# movq $1, %r(5688)
	movq %rbx, %rax		# movq %r(5688), %rax
	jmp .L982		# jmp .L982
	.L982:		# .L982:
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
	movq $0, %rbx		# movq $0, %r(5689)
	movq %rbx, %rax		# movq %r(5689), %rax
	jmp .L983		# jmp .L983
	.L983:		# .L983:
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
	movq $1, %rbx		# movq $1, %r(5690)
	movq %rbx, %rax		# movq %r(5690), %rax
	jmp .L984		# jmp .L984
	.L984:		# .L984:
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
	movq %rdi, %rbx		# movq %rdi, %r(5703)
	movq %rbx, -24(%rbp)		# movq %r(5703), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5704)
	movq (%rbx), %r13		# movq (%r(5704)), %r(5691)
	movq %r13, %r12		# movq %r(5691), %r(5705)
	movq %r12, -8(%rbp)		# movq %r(5705), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5706)
	movq %r12, %r13		# movq %r(5706), %r(5692)
	salq $3, %r13		# salq $3, %r(5692)
	movq $8, %rbx		# movq $8, %r(5693)
	movq %r13, %r14		# movq %r(5692), %r(5694)
	addq %rbx, %r14		# addq %r(5693), %r(5694)
	movq %r14, %rdi		# movq %r(5694), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5612)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5707)
	movq %r13, %rbx		# movq %r(5707), %r(5695)
	salq $3, %rbx		# salq $3, %r(5695)
	movq %r15, %r13		# movq %r(5612), %r(5696)
	addq %rbx, %r13		# addq %r(5695), %r(5696)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5708)
	movq %rbx, %r12		# movq %r(5708), %r(5697)
	salq $3, %r12		# salq $3, %r(5697)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5709)
	movq %rbx, %r14		# movq %r(5709), %r(5710)
	movq %r14, -16(%rbp)		# movq %r(5710), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5711)
	addq %r12, %rbx		# addq %r(5697), %r(5711)
	movq %rbx, -16(%rbp)		# movq %r(5711), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5712)
	movq (%rbx), %r12		# movq (%r(5712)), %r(5699)
	movq %r12, (%r13)		# movq %r(5699), (%r(5696))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5713)
	decq %rbx		# decq %r(5713)
	movq %rbx, -8(%rbp)		# movq %r(5713), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(5700)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5714)
	cmpq %rbx, %r12		# cmpq %r(5700), %r(5714)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(5701)
	movq %r15, %r13		# movq %r(5612), %r(5702)
	addq %rbx, %r13		# addq %r(5701), %r(5702)
	movq %r13, %rax		# movq %r(5702), %rax
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
.L980:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

