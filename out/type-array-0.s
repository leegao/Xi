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
	movq %rdi, %rbx		# movq %rdi, %r(5449)
	movq %rsi, %r12		# movq %rsi, %r(5450)
	leaq .L854(%rip), %rdi		# leaq .L854(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5475)
	movq %r13, %rdi		# movq %r(5475), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(5449), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(5450), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L853		# jmp .L853
	.L853:		# .L853:
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
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5451)
	movq $16, %rbx		# movq $16, %r(5499)
	movq %rbx, %rdi		# movq %r(5499), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5479)
	movq $1, %rbx		# movq $1, %r(5500)
	movq %rbx, (%r14)		# movq %r(5500), (%r(5479))
	movq $8, %rbx		# movq $8, %r(5501)
	movq %r14, %r13		# movq %r(5479), %r(5502)
	addq %rbx, %r13		# addq %r(5501), %r(5502)
	movq %r13, %r14		# movq %r(5502), %r(5454)
	movq $0, %rbx		# movq $0, %r(5503)
	movq %r14, %r13		# movq %r(5454), %r(5504)
	addq %rbx, %r13		# addq %r(5503), %r(5504)
	movq $10, %rbx		# movq $10, %r(5505)
	movq %rbx, (%r13)		# movq %r(5505), (%r(5504))
	movq %r14, %rdi		# movq %r(5454), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5583)
	movq %rbx, -48(%rbp)		# movq %r(5583), -48(%rbp)
	leaq .L857(%rip), %rdi		# leaq .L857(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5481)
	movq $1, %r12		# movq $1, %r(5507)
	movq %r12, %rbx		# movq %r(5507), %r(5456)
	movq $8, %r12		# movq $8, %r(5508)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(5584)
	movq %r13, %r15		# movq %r(5584), %r(5509)
	subq %r12, %r15		# subq %r(5508), %r(5509)
	movq (%r15), %r12		# movq (%r(5509)), %r(5585)
	movq %r12, -72(%rbp)		# movq %r(5585), -72(%rbp)
	movq $10, %r12		# movq $10, %r(5511)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5586)
	cmpq %r12, %r13		# cmpq %r(5511), %r(5586)
	je .L858		# je .L858
	.L859:		# .L859:
	movq $0, %r12		# movq $0, %r(5512)
	movq %r12, %rbx		# movq %r(5512), %r(5456)
	jmp .L858		# jmp .L858
	.L858:		# .L858:
	movq %r14, %rdi		# movq %r(5481), %rdi
	movq %rbx, %rsi		# movq %r(5456), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r13		# movq $0, %r(5513)
	movq $8, %rbx		# movq $8, %r(5514)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5587)
	movq %r12, %r14		# movq %r(5587), %r(5515)
	subq %rbx, %r14		# subq %r(5514), %r(5515)
	movq (%r14), %rbx		# movq (%r(5515)), %r(5516)
	cmpq %rbx, %r13		# cmpq %r(5516), %r(5513)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5517)
	movq %r13, %r14		# movq %r(5517), %r(5518)
	salq $3, %r14		# salq $3, %r(5518)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5588)
	movq %r12, %r15		# movq %r(5588), %r(5519)
	addq %r14, %r15		# addq %r(5518), %r(5519)
	movq $42, %rbx		# movq $42, %r(5520)
	movq %rbx, (%r15)		# movq %r(5520), (%r(5519))
	movq $1, %r13		# movq $1, %r(5521)
	movq $8, %rbx		# movq $8, %r(5522)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5589)
	movq %r12, %r14		# movq %r(5589), %r(5523)
	subq %rbx, %r14		# subq %r(5522), %r(5523)
	movq (%r14), %rbx		# movq (%r(5523)), %r(5524)
	cmpq %rbx, %r13		# cmpq %r(5524), %r(5521)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5525)
	movq %r13, %r14		# movq %r(5525), %r(5526)
	salq $3, %r14		# salq $3, %r(5526)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5590)
	movq %r12, %r15		# movq %r(5590), %r(5527)
	addq %r14, %r15		# addq %r(5526), %r(5527)
	movq $52, %rbx		# movq $52, %r(5528)
	movq %rbx, (%r15)		# movq %r(5528), (%r(5527))
	movq $2, %r13		# movq $2, %r(5529)
	movq $8, %rbx		# movq $8, %r(5530)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5591)
	movq %r12, %r14		# movq %r(5591), %r(5531)
	subq %rbx, %r14		# subq %r(5530), %r(5531)
	movq (%r14), %rbx		# movq (%r(5531)), %r(5532)
	cmpq %rbx, %r13		# cmpq %r(5532), %r(5529)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5533)
	movq %r13, %r14		# movq %r(5533), %r(5534)
	salq $3, %r14		# salq $3, %r(5534)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5592)
	movq %r12, %r15		# movq %r(5592), %r(5535)
	addq %r14, %r15		# addq %r(5534), %r(5535)
	movq $62, %rbx		# movq $62, %r(5536)
	movq %rbx, (%r15)		# movq %r(5536), (%r(5535))
	leaq .L866(%rip), %rdi		# leaq .L866(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5593)
	movq %rbx, -64(%rbp)		# movq %r(5593), -64(%rbp)
	movq $1, %r13		# movq $1, %r(5538)
	movq %r13, %rbx		# movq %r(5538), %r(5594)
	movq %rbx, -40(%rbp)		# movq %r(5594), -40(%rbp)
	movq $0, %r14		# movq $0, %r(5539)
	movq $8, %r12		# movq $8, %r(5540)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5595)
	movq %rbx, %r13		# movq %r(5595), %r(5596)
	movq %r13, -32(%rbp)		# movq %r(5596), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5597)
	subq %r12, %rbx		# subq %r(5540), %r(5597)
	movq %rbx, -32(%rbp)		# movq %r(5597), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5598)
	movq (%rbx), %r12		# movq (%r(5598)), %r(5542)
	cmpq %r12, %r14		# cmpq %r(5542), %r(5539)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5543)
	movq %r13, %r14		# movq %r(5543), %r(5544)
	salq $3, %r14		# salq $3, %r(5544)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5599)
	movq %r12, %r15		# movq %r(5599), %r(5545)
	addq %r14, %r15		# addq %r(5544), %r(5545)
	movq (%r15), %rbx		# movq (%r(5545)), %r(5546)
	movq $42, %r12		# movq $42, %r(5547)
	cmpq %r12, %rbx		# cmpq %r(5547), %r(5546)
	je .L869		# je .L869
	.L870:		# .L870:
	movq $0, %r13		# movq $0, %r(5548)
	movq %r13, %rbx		# movq %r(5548), %r(5600)
	movq %rbx, -40(%rbp)		# movq %r(5600), -40(%rbp)
	jmp .L869		# jmp .L869
	.L869:		# .L869:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5601)
	movq %rbx, %rdi		# movq %r(5601), %rdi
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5602)
	movq %rbx, %rsi		# movq %r(5602), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L871(%rip), %rdi		# leaq .L871(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5603)
	movq %rbx, -16(%rbp)		# movq %r(5603), -16(%rbp)
	movq $1, %r13		# movq $1, %r(5550)
	movq %r13, %rbx		# movq %r(5550), %r(5604)
	movq %rbx, -24(%rbp)		# movq %r(5604), -24(%rbp)
	movq $1, %r14		# movq $1, %r(5551)
	movq $8, %r12		# movq $8, %r(5552)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5605)
	movq %rbx, %r13		# movq %r(5605), %r(5606)
	movq %r13, -80(%rbp)		# movq %r(5606), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5607)
	subq %r12, %rbx		# subq %r(5552), %r(5607)
	movq %rbx, -80(%rbp)		# movq %r(5607), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5608)
	movq (%rbx), %r12		# movq (%r(5608)), %r(5554)
	cmpq %r12, %r14		# cmpq %r(5554), %r(5551)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5555)
	movq %r13, %r14		# movq %r(5555), %r(5556)
	salq $3, %r14		# salq $3, %r(5556)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5609)
	movq %r12, %r15		# movq %r(5609), %r(5557)
	addq %r14, %r15		# addq %r(5556), %r(5557)
	movq (%r15), %rbx		# movq (%r(5557)), %r(5558)
	movq $52, %r12		# movq $52, %r(5559)
	cmpq %r12, %rbx		# cmpq %r(5559), %r(5558)
	je .L874		# je .L874
	.L875:		# .L875:
	movq $0, %r13		# movq $0, %r(5560)
	movq %r13, %rbx		# movq %r(5560), %r(5610)
	movq %rbx, -24(%rbp)		# movq %r(5610), -24(%rbp)
	jmp .L874		# jmp .L874
	.L874:		# .L874:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5611)
	movq %rbx, %rdi		# movq %r(5611), %rdi
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5612)
	movq %rbx, %rsi		# movq %r(5612), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L876(%rip), %rdi		# leaq .L876(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5613)
	movq %rbx, -8(%rbp)		# movq %r(5613), -8(%rbp)
	movq $1, %r12		# movq $1, %r(5562)
	movq %r12, %r13		# movq %r(5562), %r(5471)
	movq $2, %r15		# movq $2, %r(5563)
	movq $8, %r12		# movq $8, %r(5564)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5614)
	movq %rbx, %r14		# movq %r(5614), %r(5615)
	movq %r14, -56(%rbp)		# movq %r(5615), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5616)
	subq %r12, %rbx		# subq %r(5564), %r(5616)
	movq %rbx, -56(%rbp)		# movq %r(5616), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5617)
	movq (%rbx), %r12		# movq (%r(5617)), %r(5566)
	cmpq %r12, %r15		# cmpq %r(5566), %r(5563)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r12		# movq $2, %r(5567)
	movq %r12, %rbx		# movq %r(5567), %r(5568)
	salq $3, %rbx		# salq $3, %r(5568)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(5618)
	movq %r14, %r15		# movq %r(5618), %r(5569)
	addq %rbx, %r15		# addq %r(5568), %r(5569)
	movq (%r15), %r12		# movq (%r(5569)), %r(5570)
	movq $62, %rbx		# movq $62, %r(5571)
	cmpq %rbx, %r12		# cmpq %r(5571), %r(5570)
	je .L879		# je .L879
	.L880:		# .L880:
	movq $0, %r12		# movq $0, %r(5572)
	movq %r12, %r13		# movq %r(5572), %r(5471)
	jmp .L879		# jmp .L879
	.L879:		# .L879:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5619)
	movq %rbx, %rdi		# movq %r(5619), %rdi
	movq %r13, %rsi		# movq %r(5471), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L881(%rip), %rdi		# leaq .L881(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5489)
	movq $1, %r14		# movq $1, %r(5574)
	movq %r14, %rbx		# movq %r(5574), %r(5622)
	movq %rbx, -96(%rbp)		# movq %r(5622), -96(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5620)
	cmpq %rbx, %rbx		# cmpq %r(5620), %r(5620)
	je .L882		# je .L882
	.L883:		# .L883:
	movq $0, %r14		# movq $0, %r(5575)
	movq %r14, %rbx		# movq %r(5575), %r(5623)
	movq %rbx, -96(%rbp)		# movq %r(5623), -96(%rbp)
	jmp .L882		# jmp .L882
	.L882:		# .L882:
	movq %r13, %rdi		# movq %r(5489), %rdi
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(5624)
	movq %rbx, %rsi		# movq %r(5624), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L884(%rip), %rdi		# leaq .L884(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r15		# movq %rax, %r(5491)
	movq $1, %r12		# movq $1, %r(5577)
	movq %r12, %r14		# movq %r(5577), %r(5474)
	movq $8, %rbx		# movq $8, %r(5578)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5621)
	movq %r12, %r13		# movq %r(5621), %r(5625)
	movq %r13, -88(%rbp)		# movq %r(5625), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(5626)
	subq %rbx, %r12		# subq %r(5578), %r(5626)
	movq %r12, -88(%rbp)		# movq %r(5626), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(5627)
	movq (%r12), %r13		# movq (%r(5627)), %r(5580)
	movq $10, %r12		# movq $10, %r(5581)
	cmpq %r12, %r13		# cmpq %r(5581), %r(5580)
	je .L885		# je .L885
	.L886:		# .L886:
	movq $0, %r12		# movq $0, %r(5582)
	movq %r12, %r14		# movq %r(5582), %r(5474)
	jmp .L885		# jmp .L885
	.L885:		# .L885:
	movq %r15, %rdi		# movq %r(5491), %rdi
	movq %r14, %rsi		# movq %r(5474), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L855		# jmp .L855
	.L855:		# .L855:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5671)
	movq %rbx, -88(%rbp)		# movq %r(5671), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(5628)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(5672)
	movq %r14, %r12		# movq %r(5672), %r(5629)
	subq %rbx, %r12		# subq %r(5628), %r(5629)
	movq (%r12), %r13		# movq (%r(5629)), %r(5630)
	movq %r13, %rbx		# movq %r(5630), %r(5673)
	movq %rbx, -8(%rbp)		# movq %r(5673), -8(%rbp)
	movq $1, %r13		# movq $1, %r(5631)
	movq %r13, %rbx		# movq %r(5631), %r(5674)
	movq %rbx, -80(%rbp)		# movq %r(5674), -80(%rbp)
	movq $0, %rbx		# movq $0, %r(5632)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5675)
	cmpq %rbx, %r12		# cmpq %r(5632), %r(5675)
	jne .L318		# jne .L318
	.L319:		# .L319:
	movq $0, %rbx		# movq $0, %r(5633)
	movq %rbx, %rax		# movq %r(5633), %rax
	jmp .L320		# jmp .L320
	.L320:		# .L320:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L318:		# .L318:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5676)
	movq %r13, %rbx		# movq %r(5676), %r(5634)
	salq $3, %rbx		# salq $3, %r(5634)
	movq %rbx, %rdi		# movq %r(5634), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5677)
	movq %rbx, -24(%rbp)		# movq %r(5677), -24(%rbp)
	movq $1, %rbx		# movq $1, %r(5635)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5678)
	movq %r14, %r12		# movq %r(5678), %r(5636)
	subq %rbx, %r12		# subq %r(5635), %r(5636)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5679)
	movq %r12, (%rbx)		# movq %r(5636), (%r(5679))
	movq $8, %rbx		# movq $8, %r(5637)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5680)
	movq %r14, %r13		# movq %r(5680), %r(5638)
	addq %rbx, %r13		# addq %r(5637), %r(5638)
	movq %r13, %r12		# movq %r(5638), %r(5681)
	movq %r12, -48(%rbp)		# movq %r(5681), -48(%rbp)
	jmp .L321		# jmp .L321
	.L321:		# .L321:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5682)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5683)
	cmpq %rbx, %r12		# cmpq %r(5682), %r(5683)
	jge .L322		# jge .L322
	.L323:		# .L323:
	movq $8, %rbx		# movq $8, %r(5639)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(5684)
	movq %r14, %r12		# movq %r(5684), %r(5640)
	subq %rbx, %r12		# subq %r(5639), %r(5640)
	movq (%r12), %rbx		# movq (%r(5640)), %r(5641)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5685)
	cmpq %rbx, %r12		# cmpq %r(5641), %r(5685)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(5642)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5686)
	movq %r14, %r13		# movq %r(5686), %r(5643)
	subq %rbx, %r13		# subq %r(5642), %r(5643)
	movq %r13, %r12		# movq %r(5643), %r(5687)
	movq %r12, -56(%rbp)		# movq %r(5687), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(5644)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(5688)
	movq %r14, %r12		# movq %r(5688), %r(5645)
	subq %rbx, %r12		# subq %r(5644), %r(5645)
	movq (%r12), %rbx		# movq (%r(5645)), %r(5646)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5689)
	cmpq %rbx, %r12		# cmpq %r(5646), %r(5689)
	jae error_outofbounds		# jae error_outofbounds
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5690)
	movq %r13, %r14		# movq %r(5690), %r(5647)
	salq $3, %r14		# salq $3, %r(5647)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5691)
	movq %r12, %r15		# movq %r(5691), %r(5648)
	addq %r14, %r15		# addq %r(5647), %r(5648)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(5692)
	movq %r13, %rbx		# movq %r(5692), %r(5723)
	movq %rbx, -104(%rbp)		# movq %r(5723), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(5724)
	salq $3, %rbx		# salq $3, %r(5724)
	movq %rbx, -104(%rbp)		# movq %r(5724), -104(%rbp)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(5693)
	movq %r13, %rbx		# movq %r(5693), %r(5694)
	movq %rbx, -40(%rbp)		# movq %r(5694), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5695)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(5725)
	addq %r12, %rbx		# addq %r(5725), %r(5695)
	movq %rbx, -40(%rbp)		# movq %r(5695), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5696)
	movq (%rbx), %r12		# movq (%r(5696)), %r(5651)
	movq %r12, (%r15)		# movq %r(5651), (%r(5648))
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5697)
	incq %rbx		# incq %r(5697)
	movq %rbx, -80(%rbp)		# movq %r(5697), -80(%rbp)
	jmp .L321		# jmp .L321
	.L322:		# .L322:
	movq $0, %r13		# movq $0, %r(5652)
	movq $8, %rbx		# movq $8, %r(5653)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(5698)
	movq %r12, %r14		# movq %r(5698), %r(5654)
	subq %rbx, %r14		# subq %r(5653), %r(5654)
	movq (%r14), %rbx		# movq (%r(5654)), %r(5655)
	cmpq %rbx, %r13		# cmpq %r(5655), %r(5652)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5656)
	movq %r13, %r14		# movq %r(5656), %r(5657)
	salq $3, %r14		# salq $3, %r(5657)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(5699)
	movq %r12, %r15		# movq %r(5699), %r(5658)
	addq %r14, %r15		# addq %r(5657), %r(5658)
	movq (%r15), %r13		# movq (%r(5658)), %r(5659)
	movq %r13, %rbx		# movq %r(5659), %r(5700)
	movq %rbx, -80(%rbp)		# movq %r(5700), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(5660)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5701)
	movq %r14, %r13		# movq %r(5701), %r(5661)
	addq %rbx, %r13		# addq %r(5660), %r(5661)
	movq %r13, %r12		# movq %r(5661), %r(5662)
	salq $3, %r12		# salq $3, %r(5662)
	movq %r12, %rdi		# movq %r(5662), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5494)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5702)
	movq %rbx, (%r14)		# movq %r(5702), (%r(5494))
	movq $8, %r13		# movq $8, %r(5663)
	movq %r14, %r12		# movq %r(5494), %r(5703)
	movq %r12, -64(%rbp)		# movq %r(5703), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5704)
	addq %r13, %rbx		# addq %r(5663), %r(5704)
	movq %rbx, -64(%rbp)		# movq %r(5704), -64(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5705)
	movq %r13, %rbx		# movq %r(5705), %r(5706)
	movq %rbx, -72(%rbp)		# movq %r(5706), -72(%rbp)
	jmp .L327		# jmp .L327
	.L327:		# .L327:
	movq $0, %rbx		# movq $0, %r(5665)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5707)
	cmpq %rbx, %r12		# cmpq %r(5665), %r(5707)
	jle .L328		# jle .L328
	.L329:		# .L329:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5708)
	decq %rbx		# decq %r(5708)
	movq %rbx, -80(%rbp)		# movq %r(5708), -80(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5709)
	movq %rbx, %rdi		# movq %r(5709), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5710)
	movq %rbx, -96(%rbp)		# movq %r(5710), -96(%rbp)
	movq $8, %r13		# movq $8, %r(5666)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5711)
	movq %r14, %rbx		# movq %r(5711), %r(5712)
	movq %rbx, -32(%rbp)		# movq %r(5712), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5713)
	subq %r13, %rbx		# subq %r(5666), %r(5713)
	movq %rbx, -32(%rbp)		# movq %r(5713), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5714)
	movq (%rbx), %r12		# movq (%r(5714)), %r(5668)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5715)
	cmpq %r12, %rbx		# cmpq %r(5668), %r(5715)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5716)
	movq %r12, %r14		# movq %r(5716), %r(5669)
	salq $3, %r14		# salq $3, %r(5669)
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5717)
	movq %r13, %rbx		# movq %r(5717), %r(5718)
	movq %rbx, -16(%rbp)		# movq %r(5718), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5719)
	addq %r14, %rbx		# addq %r(5669), %r(5719)
	movq %rbx, -16(%rbp)		# movq %r(5719), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5720)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(5721)
	movq %r12, (%rbx)		# movq %r(5721), (%r(5720))
	jmp .L327		# jmp .L327
	.L328:		# .L328:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5722)
	movq %rbx, %rax		# movq %r(5722), %rax
	jmp .L320		# jmp .L320
	
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
	movq %rdi, %rbx		# movq %rdi, %r(5738)
	movq %rbx, -16(%rbp)		# movq %r(5738), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5739)
	movq (%rbx), %r13		# movq (%r(5739)), %r(5726)
	movq %r13, %r12		# movq %r(5726), %r(5740)
	movq %r12, -24(%rbp)		# movq %r(5740), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5741)
	movq %r12, %r13		# movq %r(5741), %r(5727)
	salq $3, %r13		# salq $3, %r(5727)
	movq $8, %rbx		# movq $8, %r(5728)
	movq %r13, %r14		# movq %r(5727), %r(5729)
	addq %rbx, %r14		# addq %r(5728), %r(5729)
	movq %r14, %rdi		# movq %r(5729), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5496)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5742)
	movq %r13, %rbx		# movq %r(5742), %r(5730)
	salq $3, %rbx		# salq $3, %r(5730)
	movq %r15, %r13		# movq %r(5496), %r(5731)
	addq %rbx, %r13		# addq %r(5730), %r(5731)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5743)
	movq %rbx, %r12		# movq %r(5743), %r(5732)
	salq $3, %r12		# salq $3, %r(5732)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5744)
	movq %rbx, %r14		# movq %r(5744), %r(5745)
	movq %r14, -8(%rbp)		# movq %r(5745), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5746)
	addq %r12, %rbx		# addq %r(5732), %r(5746)
	movq %rbx, -8(%rbp)		# movq %r(5746), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5747)
	movq (%rbx), %r12		# movq (%r(5747)), %r(5734)
	movq %r12, (%r13)		# movq %r(5734), (%r(5731))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5748)
	decq %rbx		# decq %r(5748)
	movq %rbx, -24(%rbp)		# movq %r(5748), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(5735)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5749)
	cmpq %rbx, %r12		# cmpq %r(5735), %r(5749)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5736)
	movq %r15, %r13		# movq %r(5496), %r(5737)
	addq %rbx, %r13		# addq %r(5736), %r(5737)
	movq %r13, %rax		# movq %r(5737), %rax
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
.L871:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L876:
	.quad 2
	.quad 35
	.quad 52
	.text

#.section .rodata
.align 8
.L884:
	.quad 2
	.quad 35
	.quad 54
	.text

#.section .rodata
.align 8
.L881:
	.quad 2
	.quad 35
	.quad 53
	.text

#.section .rodata
.align 8
.L857:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L854:
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
.L866:
	.quad 2
	.quad 35
	.quad 50
	.text

error_outofbounds:
call _I_outOfBounds_p
