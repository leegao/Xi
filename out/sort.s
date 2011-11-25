.att_syntax prefix
.text
.globl _Isort_pai
_Isort_pai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5432)
	movq %rbx, -40(%rbp)		# movq %r(5432), -40(%rbp)
	movq $0, %r13		# movq $0, %r(5387)
	movq %r13, %rbx		# movq %r(5387), %r(5433)
	movq %rbx, -72(%rbp)		# movq %r(5433), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(5388)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5434)
	movq %r14, %r12		# movq %r(5434), %r(5389)
	subq %rbx, %r12		# subq %r(5388), %r(5389)
	movq (%r12), %r13		# movq (%r(5389)), %r(5390)
	movq %r13, %rbx		# movq %r(5390), %r(5435)
	movq %rbx, -16(%rbp)		# movq %r(5435), -16(%rbp)
	jmp .L922		# jmp .L922
	.L922:		# .L922:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5436)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5437)
	cmpq %rbx, %r12		# cmpq %r(5436), %r(5437)
	jge .L924		# jge .L924
	.L923:		# .L923:
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5438)
	movq %r13, %rbx		# movq %r(5438), %r(5439)
	movq %rbx, -64(%rbp)		# movq %r(5439), -64(%rbp)
	jmp .L925		# jmp .L925
	.L925:		# .L925:
	movq $0, %rbx		# movq $0, %r(5391)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5440)
	cmpq %rbx, %r12		# cmpq %r(5391), %r(5440)
	jle .L927		# jle .L927
	.L926:		# .L926:
	movq $1, %rbx		# movq $1, %r(5392)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5441)
	movq %r14, %r13		# movq %r(5441), %r(5393)
	subq %rbx, %r13		# subq %r(5392), %r(5393)
	movq %r13, %r12		# movq %r(5393), %r(5442)
	movq %r12, -24(%rbp)		# movq %r(5442), -24(%rbp)
	movq $8, %rbx		# movq $8, %r(5394)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5443)
	movq %r14, %r12		# movq %r(5443), %r(5395)
	subq %rbx, %r12		# subq %r(5394), %r(5395)
	movq (%r12), %rbx		# movq (%r(5395)), %r(5396)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5444)
	cmpq %rbx, %r12		# cmpq %r(5396), %r(5444)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(5397)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5445)
	movq %r14, %r12		# movq %r(5445), %r(5398)
	subq %rbx, %r12		# subq %r(5397), %r(5398)
	movq (%r12), %rbx		# movq (%r(5398)), %r(5399)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5446)
	cmpq %rbx, %r12		# cmpq %r(5399), %r(5446)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(5447)
	movq %r13, %r14		# movq %r(5447), %r(5400)
	salq $3, %r14		# salq $3, %r(5400)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5448)
	movq %r12, %r15		# movq %r(5448), %r(5401)
	addq %r14, %r15		# addq %r(5400), %r(5401)
	movq (%r15), %rbx		# movq (%r(5401)), %r(5449)
	movq %rbx, -56(%rbp)		# movq %r(5449), -56(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5450)
	movq %r13, %r14		# movq %r(5450), %r(5403)
	salq $3, %r14		# salq $3, %r(5403)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5451)
	movq %r12, %r15		# movq %r(5451), %r(5404)
	addq %r14, %r15		# addq %r(5403), %r(5404)
	movq (%r15), %rbx		# movq (%r(5404)), %r(5405)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5452)
	cmpq %rbx, %r12		# cmpq %r(5405), %r(5452)
	jle .L933		# jle .L933
	.L932:		# .L932:
	movq $8, %rbx		# movq $8, %r(5406)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5453)
	movq %r14, %r12		# movq %r(5453), %r(5407)
	subq %rbx, %r12		# subq %r(5406), %r(5407)
	movq (%r12), %rbx		# movq (%r(5407)), %r(5408)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5454)
	cmpq %rbx, %r12		# cmpq %r(5408), %r(5454)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5455)
	movq %r13, %r14		# movq %r(5455), %r(5409)
	salq $3, %r14		# salq $3, %r(5409)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5456)
	movq %r12, %r15		# movq %r(5456), %r(5410)
	addq %r14, %r15		# addq %r(5409), %r(5410)
	movq (%r15), %r13		# movq (%r(5410)), %r(5411)
	movq %r13, %rbx		# movq %r(5411), %r(5457)
	movq %rbx, -8(%rbp)		# movq %r(5457), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(5412)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5458)
	movq %r14, %r13		# movq %r(5458), %r(5413)
	subq %rbx, %r13		# subq %r(5412), %r(5413)
	movq %r13, %r12		# movq %r(5413), %r(5459)
	movq %r12, -80(%rbp)		# movq %r(5459), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(5414)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5460)
	movq %r14, %r12		# movq %r(5460), %r(5415)
	subq %rbx, %r12		# subq %r(5414), %r(5415)
	movq (%r12), %rbx		# movq (%r(5415)), %r(5416)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(5461)
	cmpq %rbx, %r12		# cmpq %r(5416), %r(5461)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(5417)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5462)
	movq %r14, %r12		# movq %r(5462), %r(5418)
	subq %rbx, %r12		# subq %r(5417), %r(5418)
	movq (%r12), %rbx		# movq (%r(5418)), %r(5419)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5463)
	cmpq %rbx, %r12		# cmpq %r(5419), %r(5463)
	jae error_outofbounds		# jae error_outofbounds
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5464)
	movq %r12, %r14		# movq %r(5464), %r(5420)
	salq $3, %r14		# salq $3, %r(5420)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5465)
	movq %r13, %rbx		# movq %r(5465), %r(5466)
	movq %rbx, -32(%rbp)		# movq %r(5466), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5467)
	addq %r14, %rbx		# addq %r(5420), %r(5467)
	movq %rbx, -32(%rbp)		# movq %r(5467), -32(%rbp)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(5468)
	movq %r13, %r14		# movq %r(5468), %r(5422)
	salq $3, %r14		# salq $3, %r(5422)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5469)
	movq %r12, %r15		# movq %r(5469), %r(5423)
	addq %r14, %r15		# addq %r(5422), %r(5423)
	movq (%r15), %rbx		# movq (%r(5423)), %r(5424)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5470)
	movq %rbx, (%r12)		# movq %r(5424), (%r(5470))
	movq $1, %rbx		# movq $1, %r(5425)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5471)
	movq %r14, %r13		# movq %r(5471), %r(5426)
	subq %rbx, %r13		# subq %r(5425), %r(5426)
	movq %r13, %r12		# movq %r(5426), %r(5472)
	movq %r12, -48(%rbp)		# movq %r(5472), -48(%rbp)
	movq $8, %rbx		# movq $8, %r(5427)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5473)
	movq %r14, %r12		# movq %r(5473), %r(5428)
	subq %rbx, %r12		# subq %r(5427), %r(5428)
	movq (%r12), %rbx		# movq (%r(5428)), %r(5429)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5474)
	cmpq %rbx, %r12		# cmpq %r(5429), %r(5474)
	jae error_outofbounds		# jae error_outofbounds
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(5475)
	movq %r13, %r14		# movq %r(5475), %r(5430)
	salq $3, %r14		# salq $3, %r(5430)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5476)
	movq %r12, %r15		# movq %r(5476), %r(5431)
	addq %r14, %r15		# addq %r(5430), %r(5431)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5477)
	movq %rbx, (%r15)		# movq %r(5477), (%r(5431))
	jmp .L933		# jmp .L933
	.L933:		# .L933:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5478)
	decq %rbx		# decq %r(5478)
	movq %rbx, -64(%rbp)		# movq %r(5478), -64(%rbp)
	jmp .L925		# jmp .L925
	.L927:		# .L927:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5479)
	incq %rbx		# incq %r(5479)
	movq %rbx, -72(%rbp)		# movq %r(5479), -72(%rbp)
	jmp .L922		# jmp .L922
	.L924:		# .L924:
	jmp .L921		# jmp .L921
	.L921:		# .L921:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	leaq .L943(%rip), %rdi		# leaq .L943(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5372)
	movq %r13, %rdi		# movq %r(5372), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L942		# jmp .L942
	.L942:		# .L942:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IassertSameArray_paiai
_IassertSameArray_paiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5508)
	movq %rbx, -80(%rbp)		# movq %r(5508), -80(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(5509)
	movq %rbx, -88(%rbp)		# movq %r(5509), -88(%rbp)
	leaq .L945(%rip), %rdi		# leaq .L945(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5510)
	movq %rbx, -96(%rbp)		# movq %r(5510), -96(%rbp)
	movq $1, %r13		# movq $1, %r(5482)
	movq %r13, %rbx		# movq %r(5482), %r(5511)
	movq %rbx, -72(%rbp)		# movq %r(5511), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(5483)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5512)
	movq %r14, %r12		# movq %r(5512), %r(5484)
	subq %rbx, %r12		# subq %r(5483), %r(5484)
	movq (%r12), %rbx		# movq (%r(5484)), %r(5513)
	movq %rbx, -56(%rbp)		# movq %r(5513), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(5486)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(5514)
	movq %r14, %r12		# movq %r(5514), %r(5487)
	subq %rbx, %r12		# subq %r(5486), %r(5487)
	movq (%r12), %rbx		# movq (%r(5487)), %r(5488)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5515)
	cmpq %rbx, %r12		# cmpq %r(5488), %r(5515)
	je .L946		# je .L946
	.L947:		# .L947:
	movq $0, %r13		# movq $0, %r(5489)
	movq %r13, %rbx		# movq %r(5489), %r(5516)
	movq %rbx, -72(%rbp)		# movq %r(5516), -72(%rbp)
	jmp .L946		# jmp .L946
	.L946:		# .L946:
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(5517)
	movq %rbx, %rdi		# movq %r(5517), %rdi
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5518)
	movq %rbx, %rsi		# movq %r(5518), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r13		# movq $0, %r(5490)
	movq %r13, %rbx		# movq %r(5490), %r(5519)
	movq %rbx, -16(%rbp)		# movq %r(5519), -16(%rbp)
	jmp .L948		# jmp .L948
	.L948:		# .L948:
	movq $8, %rbx		# movq $8, %r(5491)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5520)
	movq %r14, %r12		# movq %r(5520), %r(5492)
	subq %rbx, %r12		# subq %r(5491), %r(5492)
	movq (%r12), %rbx		# movq (%r(5492)), %r(5493)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5521)
	cmpq %rbx, %r12		# cmpq %r(5493), %r(5521)
	jge .L950		# jge .L950
	.L949:		# .L949:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5522)
	movq %rbx, %rdi		# movq %r(5522), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(5523)
	movq %rbx, -48(%rbp)		# movq %r(5523), -48(%rbp)
	movq $1, %r13		# movq $1, %r(5494)
	movq %r13, %rbx		# movq %r(5494), %r(5524)
	movq %rbx, -32(%rbp)		# movq %r(5524), -32(%rbp)
	movq $8, %r13		# movq $8, %r(5495)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(5525)
	movq %r14, %rbx		# movq %r(5525), %r(5526)
	movq %rbx, -40(%rbp)		# movq %r(5526), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5527)
	subq %r13, %rbx		# subq %r(5495), %r(5527)
	movq %rbx, -40(%rbp)		# movq %r(5527), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5528)
	movq (%rbx), %r12		# movq (%r(5528)), %r(5497)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5529)
	cmpq %r12, %rbx		# cmpq %r(5497), %r(5529)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r13		# movq $8, %r(5498)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(5530)
	movq %r14, %rbx		# movq %r(5530), %r(5531)
	movq %rbx, -64(%rbp)		# movq %r(5531), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5532)
	subq %r13, %rbx		# subq %r(5498), %r(5532)
	movq %rbx, -64(%rbp)		# movq %r(5532), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5533)
	movq (%rbx), %r12		# movq (%r(5533)), %r(5500)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5534)
	cmpq %r12, %rbx		# cmpq %r(5500), %r(5534)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5535)
	movq %r12, %r14		# movq %r(5535), %r(5501)
	salq $3, %r14		# salq $3, %r(5501)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(5536)
	movq %r13, %rbx		# movq %r(5536), %r(5537)
	movq %rbx, -104(%rbp)		# movq %r(5537), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(5538)
	addq %r14, %rbx		# addq %r(5501), %r(5538)
	movq %rbx, -104(%rbp)		# movq %r(5538), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(5539)
	movq (%rbx), %r12		# movq (%r(5539)), %r(5540)
	movq %r12, -8(%rbp)		# movq %r(5540), -8(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5541)
	movq %r12, %r14		# movq %r(5541), %r(5504)
	salq $3, %r14		# salq $3, %r(5504)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(5542)
	movq %r13, %rbx		# movq %r(5542), %r(5543)
	movq %rbx, -24(%rbp)		# movq %r(5543), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5544)
	addq %r14, %rbx		# addq %r(5504), %r(5544)
	movq %rbx, -24(%rbp)		# movq %r(5544), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5545)
	movq (%rbx), %r12		# movq (%r(5545)), %r(5506)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5546)
	cmpq %r12, %rbx		# cmpq %r(5506), %r(5546)
	je .L955		# je .L955
	.L956:		# .L956:
	movq $0, %r13		# movq $0, %r(5507)
	movq %r13, %rbx		# movq %r(5507), %r(5547)
	movq %rbx, -32(%rbp)		# movq %r(5547), -32(%rbp)
	jmp .L955		# jmp .L955
	.L955:		# .L955:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5548)
	movq %rbx, %rdi		# movq %r(5548), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5549)
	movq %rbx, %rsi		# movq %r(5549), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5550)
	incq %rbx		# incq %r(5550)
	movq %rbx, -16(%rbp)		# movq %r(5550), -16(%rbp)
	jmp .L948		# jmp .L948
	.L950:		# .L950:
	jmp .L944		# jmp .L944
	.L944:		# .L944:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
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
	leaq .L958(%rip), %rdi		# leaq .L958(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5380)
	leaq .L959(%rip), %rdi		# leaq .L959(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(5381)
	movq %rbx, %rdi		# movq %r(5380), %rdi
	call _Isort_pai		# call _Isort_pai
	movq %rbx, %rdi		# movq %r(5380), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(5380), %rdi
	movq %r12, %rsi		# movq %r(5381), %rsi
	call _IassertSameArray_paiai		# call _IassertSameArray_paiai
	jmp .L957		# jmp .L957
	.L957:		# .L957:
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
	movq %rdi, %rbx		# movq %rdi, %r(5565)
	movq %rbx, -24(%rbp)		# movq %r(5565), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5566)
	movq (%rbx), %r13		# movq (%r(5566)), %r(5553)
	movq %r13, %r12		# movq %r(5553), %r(5567)
	movq %r12, -8(%rbp)		# movq %r(5567), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5568)
	movq %r12, %r13		# movq %r(5568), %r(5554)
	salq $3, %r13		# salq $3, %r(5554)
	movq $8, %rbx		# movq $8, %r(5555)
	movq %r13, %r14		# movq %r(5554), %r(5556)
	addq %rbx, %r14		# addq %r(5555), %r(5556)
	movq %r14, %rdi		# movq %r(5556), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5385)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5569)
	movq %r13, %rbx		# movq %r(5569), %r(5557)
	salq $3, %rbx		# salq $3, %r(5557)
	movq %r15, %r13		# movq %r(5385), %r(5558)
	addq %rbx, %r13		# addq %r(5557), %r(5558)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5570)
	movq %rbx, %r12		# movq %r(5570), %r(5559)
	salq $3, %r12		# salq $3, %r(5559)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5571)
	movq %rbx, %r14		# movq %r(5571), %r(5572)
	movq %r14, -16(%rbp)		# movq %r(5572), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5573)
	addq %r12, %rbx		# addq %r(5559), %r(5573)
	movq %rbx, -16(%rbp)		# movq %r(5573), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5574)
	movq (%rbx), %r12		# movq (%r(5574)), %r(5561)
	movq %r12, (%r13)		# movq %r(5561), (%r(5558))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5575)
	decq %rbx		# decq %r(5575)
	movq %rbx, -8(%rbp)		# movq %r(5575), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(5562)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5576)
	cmpq %rbx, %r12		# cmpq %r(5562), %r(5576)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(5563)
	movq %r15, %r13		# movq %r(5385), %r(5564)
	addq %rbx, %r13		# addq %r(5563), %r(5564)
	movq %r13, %rax		# movq %r(5564), %rax
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
.L943:
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
.L958:
	.quad 111
	.quad 65
	.quad 110
	.quad 32
	.quad 97
	.quad 114
	.quad 114
	.quad 97
	.quad 121
	.quad 32
	.quad 84
	.quad 91
	.quad 93
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 32
	.quad 102
	.quad 105
	.quad 120
	.quad 101
	.quad 100
	.quad 45
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
	.quad 32
	.quad 115
	.quad 101
	.quad 113
	.quad 117
	.quad 101
	.quad 110
	.quad 99
	.quad 101
	.quad 32
	.quad 111
	.quad 102
	.quad 32
	.quad 109
	.quad 117
	.quad 116
	.quad 97
	.quad 98
	.quad 108
	.quad 101
	.quad 32
	.quad 99
	.quad 101
	.quad 108
	.quad 108
	.quad 115
	.quad 32
	.quad 111
	.quad 102
	.quad 32
	.quad 116
	.quad 121
	.quad 112
	.quad 101
	.quad 32
	.quad 84
	.quad 32
	.quad 46
	.quad 32
	.quad 73
	.quad 102
	.quad 32
	.quad 97
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 110
	.quad 32
	.quad 97
	.quad 114
	.quad 114
	.quad 97
	.quad 121
	.quad 32
	.quad 97
	.quad 110
	.quad 100
	.quad 32
	.quad 105
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 110
	.quad 32
	.quad 105
	.quad 110
	.quad 116
	.quad 101
	.quad 103
	.quad 101
	.quad 114
	.quad 44
	.quad 32
	.quad 116
	.quad 104
	.quad 101
	.quad 110
	.text

#.section .rodata
.align 8
.L959:
	.quad 111
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 44
	.quad 45
	.quad 46
	.quad 65
	.quad 73
	.quad 84
	.quad 84
	.quad 91
	.quad 93
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 98
	.quad 99
	.quad 99
	.quad 100
	.quad 100
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 102
	.quad 102
	.quad 102
	.quad 102
	.quad 103
	.quad 103
	.quad 104
	.quad 104
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 108
	.quad 108
	.quad 108
	.quad 108
	.quad 109
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 111
	.quad 111
	.quad 112
	.quad 113
	.quad 114
	.quad 114
	.quad 114
	.quad 114
	.quad 114
	.quad 115
	.quad 115
	.quad 115
	.quad 115
	.quad 115
	.quad 116
	.quad 116
	.quad 116
	.quad 116
	.quad 116
	.quad 117
	.quad 117
	.quad 120
	.quad 121
	.quad 121
	.quad 121
	.text

#.section .rodata
.align 8
.L945:
	.quad 6
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
	.text

error_outofbounds:
call _I_outOfBounds_p
