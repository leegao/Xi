.att_syntax prefix
.text
.globl _Ia_ai
_Ia_ai:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %r12		# movq $0, %r(5628)
	movq %r12, -24(%rbp)		# movq %r(5672), -24(%rbp)
	leaq .L1059(%rip), %rdi		# leaq .L1059(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5673)
	movq %rbx, -8(%rbp)		# movq %r(5673), -8(%rbp)
	movq $16, %rbx		# movq $16, %r(5630)
	movq %rbx, %rdi		# movq %r(5630), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5617)
	movq $1, %r12		# movq $1, %r(5631)
	movq %r12, (%r13)		# movq %r(5631), (%r(5617))
	movq $8, %r12		# movq $8, %r(5632)
	addq %r12, %r13		# addq %r(5632), %r(5633)
	movq $0, %rbx		# movq $0, %r(5634)
	movq %r13, %r12		# movq %r(5600), %r(5635)
	addq %rbx, %r12		# addq %r(5634), %r(5635)
	movq $8, %r14		# movq $8, %r(5636)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5674)
	movq %rbx, -32(%rbp)		# movq %r(5675), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5676)
	subq %r14, %rbx		# subq %r(5636), %r(5676)
	movq %rbx, -32(%rbp)		# movq %r(5676), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5677)
	movq (%rbx), %rbx		# movq (%r(5677)), %r(5638)
	movq %rbx, (%r12)		# movq %r(5638), (%r(5635))
	movq %r13, %rdi		# movq %r(5600), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5678)
	movq %rbx, -16(%rbp)		# movq %r(5678), -16(%rbp)
	jmp .L1061		# jmp .L1061
	.L1061:		# .L1061:
	movq $8, %rbx		# movq $8, %r(5639)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5679)
	subq %rbx, %r13		# subq %r(5639), %r(5640)
	movq (%r13), %rbx		# movq (%r(5640)), %r(5641)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5680)
	cmpq %rbx, %r12		# cmpq %r(5641), %r(5680)
	jge .L1063		# jge .L1063
	.L1062:		# .L1062:
	movq $8, %rbx		# movq $8, %r(5642)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5681)
	subq %rbx, %r13		# subq %r(5642), %r(5643)
	movq (%r13), %rbx		# movq (%r(5643)), %r(5644)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5682)
	cmpq %rbx, %r12		# cmpq %r(5644), %r(5682)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(5645)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5683)
	subq %rbx, %r13		# subq %r(5645), %r(5646)
	movq (%r13), %rbx		# movq (%r(5646)), %r(5647)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5684)
	cmpq %rbx, %r12		# cmpq %r(5647), %r(5684)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5685)
	salq $3, %r13		# salq $3, %r(5648)
	movq -16(%rbp), %r15		# movq -16(%rbp), %r(5686)
	addq %r13, %r15		# addq %r(5648), %r(5649)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5687)
	salq $3, %r14		# salq $3, %r(5650)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5688)
	addq %r14, %rbx		# addq %r(5650), %r(5651)
	movq (%rbx), %rbx		# movq (%r(5651)), %r(5652)
	movq %rbx, (%r15)		# movq %r(5652), (%r(5649))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5689)
	incq %rbx		# incq %r(5689)
	movq %rbx, -24(%rbp)		# movq %r(5689), -24(%rbp)
	jmp .L1061		# jmp .L1061
	.L1063:		# .L1063:
	movq $0, %r13		# movq $0, %r(5653)
	movq $8, %r12		# movq $8, %r(5654)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5690)
	subq %r12, %r14		# subq %r(5654), %r(5655)
	movq (%r14), %rbx		# movq (%r(5655)), %r(5656)
	cmpq %rbx, %r13		# cmpq %r(5656), %r(5653)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5657)
	salq $3, %r13		# salq $3, %r(5658)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5691)
	addq %r13, %r14		# addq %r(5658), %r(5659)
	movq $66, %rbx		# movq $66, %r(5660)
	movq %rbx, (%r14)		# movq %r(5660), (%r(5659))
	movq $1, %rbx		# movq $1, %r(5661)
	movq %rbx, %r13		# movq %r(5661), %r(5610)
	movq $0, %r12		# movq $0, %r(5662)
	movq $8, %r14		# movq $8, %r(5663)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5692)
	subq %r14, %rbx		# subq %r(5663), %r(5664)
	movq (%rbx), %rbx		# movq (%r(5664)), %r(5665)
	cmpq %rbx, %r12		# cmpq %r(5665), %r(5662)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(5666)
	salq $3, %r14		# salq $3, %r(5667)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5693)
	addq %r14, %rbx		# addq %r(5667), %r(5668)
	movq (%rbx), %rbx		# movq (%r(5668)), %r(5669)
	movq $66, %r12		# movq $66, %r(5670)
	cmpq %r12, %rbx		# cmpq %r(5670), %r(5669)
	je .L1072		# je .L1072
	.L1073:		# .L1073:
	movq $0, %r13		# movq $0, %r(5671)
	jmp .L1072		# jmp .L1072
	.L1072:		# .L1072:
	movq %r13, %rdi		# movq %r(5610), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5694)
	movq %rbx, %rax		# movq %r(5694), %rax
	jmp .L1058		# jmp .L1058
	.L1058:		# .L1058:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
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
	call _Ia_ai		# call _Ia_ai
	call _Ia_ai		# call _Ia_ai
	movq %rax, %r14		# movq %rax, %r(5621)
	movq $1, %rbx		# movq $1, %r(5695)
	movq %rbx, %r15		# movq %r(5695), %r(5615)
	movq $0, %r12		# movq $0, %r(5696)
	movq $8, %rbx		# movq $8, %r(5697)
	movq %r14, %r13		# movq %r(5621), %r(5698)
	subq %rbx, %r13		# subq %r(5697), %r(5698)
	movq (%r13), %rbx		# movq (%r(5698)), %r(5699)
	cmpq %rbx, %r12		# cmpq %r(5699), %r(5696)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5700)
	salq $3, %r13		# salq $3, %r(5701)
	movq %r14, %r12		# movq %r(5621), %r(5702)
	addq %r13, %r12		# addq %r(5701), %r(5702)
	movq (%r12), %rbx		# movq (%r(5702)), %r(5703)
	movq $72, %r12		# movq $72, %r(5704)
	cmpq %r12, %rbx		# cmpq %r(5704), %r(5703)
	je .L1077		# je .L1077
	.L1078:		# .L1078:
	movq $0, %rbx		# movq $0, %r(5705)
	movq %rbx, %r15		# movq %r(5705), %r(5615)
	jmp .L1077		# jmp .L1077
	.L1077:		# .L1077:
	movq %r15, %rdi		# movq %r(5615), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1074		# jmp .L1074
	.L1074:		# .L1074:
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
	movq %rdi, %rbx		# movq %rdi, %r(5749)
	movq %rbx, -88(%rbp)		# movq %r(5749), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(5706)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(5750)
	subq %rbx, %r13		# subq %r(5706), %r(5707)
	movq (%r13), %r12		# movq (%r(5707)), %r(5708)
	movq %r12, -64(%rbp)		# movq %r(5751), -64(%rbp)
	movq $1, %r12		# movq $1, %r(5709)
	movq %r12, -72(%rbp)		# movq %r(5752), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(5710)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5753)
	cmpq %rbx, %r12		# cmpq %r(5710), %r(5753)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(5711)
	movq %rbx, %rax		# movq %r(5711), %rax
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
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5754)
	salq $3, %r12		# salq $3, %r(5712)
	movq %r12, %rdi		# movq %r(5712), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5623)
	movq $1, %r12		# movq $1, %r(5713)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5755)
	movq %r14, -56(%rbp)		# movq %r(5756), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5757)
	subq %r12, %rbx		# subq %r(5713), %r(5757)
	movq %rbx, -56(%rbp)		# movq %r(5757), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5758)
	movq %rbx, (%r13)		# movq %r(5758), (%r(5623))
	movq $8, %rbx		# movq $8, %r(5715)
	addq %rbx, %r13		# addq %r(5715), %r(5716)
	movq %r13, -48(%rbp)		# movq %r(5759), -48(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5760)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5761)
	cmpq %rbx, %r12		# cmpq %r(5760), %r(5761)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(5717)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(5762)
	subq %rbx, %r13		# subq %r(5717), %r(5718)
	movq (%r13), %rbx		# movq (%r(5718)), %r(5719)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5763)
	cmpq %rbx, %r12		# cmpq %r(5719), %r(5763)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(5720)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5764)
	subq %rbx, %r14		# subq %r(5720), %r(5721)
	movq $8, %r13		# movq $8, %r(5722)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5765)
	movq %r12, -8(%rbp)		# movq %r(5766), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5767)
	subq %r13, %rbx		# subq %r(5722), %r(5767)
	movq %rbx, -8(%rbp)		# movq %r(5767), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5768)
	movq (%rbx), %rbx		# movq (%r(5768)), %r(5724)
	cmpq %rbx, %r14		# cmpq %r(5724), %r(70)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(5725)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5769)
	addq %r14, %rbx		# addq %r(5725), %r(5726)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5770)
	salq $3, %r14		# salq $3, %r(5727)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(5771)
	movq %r12, -24(%rbp)		# movq %r(5772), -24(%rbp)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5773)
	addq %r14, %r13		# addq %r(5727), %r(5773)
	movq %r13, -24(%rbp)		# movq %r(5773), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5774)
	movq (%r12), %r12		# movq (%r(5774)), %r(5729)
	movq %r12, (%rbx)		# movq %r(5729), (%r(5726))
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5775)
	incq %rbx		# incq %r(5775)
	movq %rbx, -72(%rbp)		# movq %r(5775), -72(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(5730)
	movq $8, %r12		# movq $8, %r(5731)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(5776)
	subq %r12, %r14		# subq %r(5731), %r(5732)
	movq (%r14), %rbx		# movq (%r(5732)), %r(5733)
	cmpq %rbx, %r13		# cmpq %r(5733), %r(5730)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5734)
	salq $3, %r13		# salq $3, %r(5735)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5777)
	addq %r13, %rbx		# addq %r(5735), %r(5736)
	movq (%rbx), %r12		# movq (%r(5736)), %r(5737)
	movq %r12, -72(%rbp)		# movq %r(5778), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(5738)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5779)
	addq %rbx, %r12		# addq %r(5738), %r(5739)
	salq $3, %r12		# salq $3, %r(5740)
	movq %r12, %rdi		# movq %r(5740), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5624)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5780)
	movq %r12, (%rbx)		# movq %r(5780), (%r(5624))
	movq $8, %r12		# movq $8, %r(5741)
	addq %r12, %rbx		# addq %r(5741), %r(5742)
	movq %rbx, -80(%rbp)		# movq %r(5781), -80(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(5743)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5782)
	cmpq %rbx, %r12		# cmpq %r(5743), %r(5782)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5783)
	decq %rbx		# decq %r(5783)
	movq %rbx, -72(%rbp)		# movq %r(5783), -72(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5784)
	movq %rbx, %rdi		# movq %r(5784), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5785)
	movq %rbx, -16(%rbp)		# movq %r(5785), -16(%rbp)
	movq $8, %r12		# movq $8, %r(5744)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(5786)
	movq %r13, -40(%rbp)		# movq %r(5787), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5788)
	subq %r12, %rbx		# subq %r(5744), %r(5788)
	movq %rbx, -40(%rbp)		# movq %r(5788), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5789)
	movq (%rbx), %rbx		# movq (%r(5789)), %r(5746)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5790)
	cmpq %rbx, %r12		# cmpq %r(5746), %r(5790)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5791)
	salq $3, %r13		# salq $3, %r(5747)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5792)
	movq %rbx, -32(%rbp)		# movq %r(5793), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5794)
	addq %r13, %r12		# addq %r(5747), %r(5794)
	movq %r12, -32(%rbp)		# movq %r(5794), -32(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5795)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5796)
	movq %rbx, (%r12)		# movq %r(5795), (%r(5796))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5797)
	movq %rbx, %rax		# movq %r(5797), %rax
	jmp .L71		# jmp .L71
	
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
	movq %rdi, %rbx		# movq %rdi, %r(5810)
	movq %rbx, -16(%rbp)		# movq %r(5810), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5811)
	movq (%rbx), %rbx		# movq (%r(5811)), %r(5798)
	movq %rbx, %r14		# movq %r(5798), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(5799)
	salq $3, %rbx		# salq $3, %r(5799)
	movq $8, %r12		# movq $8, %r(5800)
	addq %r12, %rbx		# addq %r(5800), %r(5801)
	movq %rbx, %rdi		# movq %r(5801), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5626)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %r14, %rbx		# movq %r(t10), %r(5802)
	salq $3, %rbx		# salq $3, %r(5802)
	movq %r15, %r12		# movq %r(5626), %r(5803)
	addq %rbx, %r12		# addq %r(5802), %r(5803)
	movq %r14, %r13		# movq %r(t10), %r(5804)
	salq $3, %r13		# salq $3, %r(5804)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5812)
	movq %rbx, -8(%rbp)		# movq %r(5813), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5814)
	addq %r13, %rbx		# addq %r(5804), %r(5814)
	movq %rbx, -8(%rbp)		# movq %r(5814), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5815)
	movq (%rbx), %rbx		# movq (%r(5815)), %r(5806)
	movq %rbx, (%r12)		# movq %r(5806), (%r(5803))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(5807)
	cmpq %rbx, %r14		# cmpq %r(5807), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(5808)
	movq %r15, %r12		# movq %r(5626), %r(5809)
	addq %rbx, %r12		# addq %r(5808), %r(5809)
	movq %r12, %rax		# movq %r(5809), %rax
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
.L1059:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

error_outofbounds:
call _I_outOfBounds_p
