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
	leaq .L899(%rip), %rdi		# leaq .L899(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5302)
	movq %r13, %rdi		# movq %r(5302), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L898		# jmp .L898
	.L898:		# .L898:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imodify_pai
_Imodify_pai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(arr)
	movq $0, %r13		# movq $0, %r(5317)
	movq $8, %rbx		# movq $8, %r(5318)
	movq %r15, %r14		# movq %r(arr), %r(5319)
	subq %rbx, %r14		# subq %r(5318), %r(5319)
	movq (%r14), %rbx		# movq (%r(5319)), %r(5320)
	cmpq %rbx, %r13		# cmpq %r(5320), %r(5317)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5321)
	salq $3, %r13		# salq $3, %r(5322)
	addq %r13, %r15		# addq %r(5322), %r(5323)
	movq $-42, %rbx		# movq $-42, %r(5324)
	movq %rbx, (%r15)		# movq %r(5324), (%r(5323))
	jmp .L900		# jmp .L900
	.L900:		# .L900:
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
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $88, %rbx		# movq $88, %r(5325)
	movq %rbx, %rdi		# movq %r(5325), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5306)
	movq $10, %r12		# movq $10, %r(5326)
	movq %r12, (%rbx)		# movq %r(5326), (%r(5306))
	movq $8, %r12		# movq $8, %r(5327)
	addq %r12, %rbx		# addq %r(5327), %r(5328)
	movq %rbx, -56(%rbp)		# movq %r(5430), -56(%rbp)
	movq $0, %rbx		# movq $0, %r(5329)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5431)
	addq %rbx, %r13		# addq %r(5329), %r(5330)
	movq $0, %rbx		# movq $0, %r(5331)
	movq %rbx, (%r13)		# movq %r(5331), (%r(5330))
	movq $8, %rbx		# movq $8, %r(5332)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5432)
	addq %rbx, %r13		# addq %r(5332), %r(5333)
	movq $0, %rbx		# movq $0, %r(5334)
	movq %rbx, (%r13)		# movq %r(5334), (%r(5333))
	movq $16, %rbx		# movq $16, %r(5335)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5433)
	addq %rbx, %r13		# addq %r(5335), %r(5336)
	movq $0, %rbx		# movq $0, %r(5337)
	movq %rbx, (%r13)		# movq %r(5337), (%r(5336))
	movq $24, %rbx		# movq $24, %r(5338)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5434)
	addq %rbx, %r13		# addq %r(5338), %r(5339)
	movq $0, %rbx		# movq $0, %r(5340)
	movq %rbx, (%r13)		# movq %r(5340), (%r(5339))
	movq $32, %rbx		# movq $32, %r(5341)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5435)
	addq %rbx, %r13		# addq %r(5341), %r(5342)
	movq $0, %rbx		# movq $0, %r(5343)
	movq %rbx, (%r13)		# movq %r(5343), (%r(5342))
	movq $40, %rbx		# movq $40, %r(5344)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5436)
	addq %rbx, %r13		# addq %r(5344), %r(5345)
	movq $0, %rbx		# movq $0, %r(5346)
	movq %rbx, (%r13)		# movq %r(5346), (%r(5345))
	movq $48, %rbx		# movq $48, %r(5347)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5437)
	addq %rbx, %r13		# addq %r(5347), %r(5348)
	movq $0, %rbx		# movq $0, %r(5349)
	movq %rbx, (%r13)		# movq %r(5349), (%r(5348))
	movq $56, %rbx		# movq $56, %r(5350)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5438)
	addq %rbx, %r13		# addq %r(5350), %r(5351)
	movq $0, %rbx		# movq $0, %r(5352)
	movq %rbx, (%r13)		# movq %r(5352), (%r(5351))
	movq $64, %rbx		# movq $64, %r(5353)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5439)
	addq %rbx, %r13		# addq %r(5353), %r(5354)
	movq $0, %rbx		# movq $0, %r(5355)
	movq %rbx, (%r13)		# movq %r(5355), (%r(5354))
	movq $72, %rbx		# movq $72, %r(5356)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5440)
	addq %rbx, %r13		# addq %r(5356), %r(5357)
	movq $0, %rbx		# movq $0, %r(5358)
	movq %rbx, (%r13)		# movq %r(5358), (%r(5357))
	movq $0, %r13		# movq $0, %r(5359)
	movq $8, %r12		# movq $8, %r(5360)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5441)
	subq %r12, %r14		# subq %r(5360), %r(5361)
	movq (%r14), %rbx		# movq (%r(5361)), %r(5362)
	cmpq %rbx, %r13		# cmpq %r(5362), %r(5359)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5363)
	salq $3, %r13		# salq $3, %r(5364)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5442)
	addq %r13, %r14		# addq %r(5364), %r(5365)
	movq $42, %rbx		# movq $42, %r(5366)
	movq %rbx, (%r14)		# movq %r(5366), (%r(5365))
	movq $1, %r13		# movq $1, %r(5367)
	movq $8, %r12		# movq $8, %r(5368)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5443)
	subq %r12, %r14		# subq %r(5368), %r(5369)
	movq (%r14), %rbx		# movq (%r(5369)), %r(5370)
	cmpq %rbx, %r13		# cmpq %r(5370), %r(5367)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5371)
	salq $3, %r13		# salq $3, %r(5372)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5444)
	addq %r13, %r14		# addq %r(5372), %r(5373)
	movq $52, %rbx		# movq $52, %r(5374)
	movq %rbx, (%r14)		# movq %r(5374), (%r(5373))
	movq $2, %r13		# movq $2, %r(5375)
	movq $8, %r12		# movq $8, %r(5376)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5445)
	subq %r12, %r14		# subq %r(5376), %r(5377)
	movq (%r14), %rbx		# movq (%r(5377)), %r(5378)
	cmpq %rbx, %r13		# cmpq %r(5378), %r(5375)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5379)
	salq $3, %r13		# salq $3, %r(5380)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5446)
	addq %r13, %r14		# addq %r(5380), %r(5381)
	movq $62, %rbx		# movq $62, %r(5382)
	movq %rbx, (%r14)		# movq %r(5382), (%r(5381))
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5447)
	movq %rbx, %rdi		# movq %r(5447), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L910(%rip), %rdi		# leaq .L910(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5448)
	movq %rbx, -40(%rbp)		# movq %r(5448), -40(%rbp)
	movq $1, %r13		# movq $1, %r(5384)
	movq $0, %rbx		# movq $0, %r(5449)
	movq %rbx, -72(%rbp)		# movq %r(5449), -72(%rbp)
	movq $8, %r12		# movq $8, %r(5386)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5450)
	movq %r14, -8(%rbp)		# movq %r(5419), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5420)
	subq %r12, %rbx		# subq %r(5386), %r(5420)
	movq %rbx, -8(%rbp)		# movq %r(5420), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5421)
	movq (%rbx), %rbx		# movq (%r(5421)), %r(5388)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5451)
	cmpq %rbx, %r12		# cmpq %r(5388), %r(5451)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r14		# movq $0, %r(5389)
	salq $3, %r14		# salq $3, %r(5390)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5452)
	addq %r14, %rbx		# addq %r(5390), %r(5391)
	movq (%rbx), %rbx		# movq (%r(5391)), %r(5392)
	movq $-42, %r12		# movq $-42, %r(5393)
	cmpq %r12, %rbx		# cmpq %r(5393), %r(5392)
	je .L913		# je .L913
	.L914:		# .L914:
	movq $0, %r13		# movq $0, %r(5394)
	jmp .L913		# jmp .L913
	.L913:		# .L913:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5453)
	movq %rbx, %rdi		# movq %r(5453), %rdi
	movq %r13, %rsi		# movq %r(5295), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L915(%rip), %rdi		# leaq .L915(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5454)
	movq %rbx, -48(%rbp)		# movq %r(5454), -48(%rbp)
	movq $1, %r13		# movq $1, %r(5396)
	movq $1, %rbx		# movq $1, %r(5455)
	movq %rbx, -64(%rbp)		# movq %r(5455), -64(%rbp)
	movq $8, %r12		# movq $8, %r(5398)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5456)
	movq %r14, -24(%rbp)		# movq %r(5422), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5423)
	subq %r12, %rbx		# subq %r(5398), %r(5423)
	movq %rbx, -24(%rbp)		# movq %r(5423), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5424)
	movq (%rbx), %rbx		# movq (%r(5424)), %r(5400)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5457)
	cmpq %rbx, %r12		# cmpq %r(5400), %r(5457)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r14		# movq $1, %r(5401)
	salq $3, %r14		# salq $3, %r(5402)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5458)
	addq %r14, %rbx		# addq %r(5402), %r(5403)
	movq (%rbx), %rbx		# movq (%r(5403)), %r(5404)
	movq $52, %r12		# movq $52, %r(5405)
	cmpq %r12, %rbx		# cmpq %r(5405), %r(5404)
	je .L918		# je .L918
	.L919:		# .L919:
	movq $0, %r13		# movq $0, %r(5406)
	jmp .L918		# jmp .L918
	.L918:		# .L918:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5459)
	movq %rbx, %rdi		# movq %r(5459), %rdi
	movq %r13, %rsi		# movq %r(5298), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L920(%rip), %rdi		# leaq .L920(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5425)
	movq %rbx, -16(%rbp)		# movq %r(5425), -16(%rbp)
	movq $1, %r12		# movq $1, %r(5408)
	movq %r12, -32(%rbp)		# movq %r(5426), -32(%rbp)
	movq $2, %r13		# movq $2, %r(5409)
	movq $8, %r12		# movq $8, %r(5410)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(5460)
	subq %r12, %r14		# subq %r(5410), %r(5411)
	movq (%r14), %rbx		# movq (%r(5411)), %r(5412)
	cmpq %rbx, %r13		# cmpq %r(5412), %r(5409)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5413)
	salq $3, %r13		# salq $3, %r(5414)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5461)
	addq %r13, %rbx		# addq %r(5414), %r(5415)
	movq (%rbx), %rbx		# movq (%r(5415)), %r(5416)
	movq $62, %r12		# movq $62, %r(5417)
	cmpq %r12, %rbx		# cmpq %r(5417), %r(5416)
	je .L923		# je .L923
	.L924:		# .L924:
	movq $0, %r12		# movq $0, %r(5418)
	movq %r12, -32(%rbp)		# movq %r(5427), -32(%rbp)
	jmp .L923		# jmp .L923
	.L923:		# .L923:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5428)
	movq %rbx, %rdi		# movq %r(5428), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5429)
	movq %rbx, %rsi		# movq %r(5429), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L903		# jmp .L903
	.L903:		# .L903:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(5474)
	movq %rbx, -16(%rbp)		# movq %r(5474), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5475)
	movq (%rbx), %r12		# movq (%r(5475)), %r(5462)
	movq %r12, -24(%rbp)		# movq %r(5476), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5477)
	salq $3, %rbx		# salq $3, %r(5463)
	movq $8, %r12		# movq $8, %r(5464)
	addq %r12, %rbx		# addq %r(5464), %r(5465)
	movq %rbx, %rdi		# movq %r(5465), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5314)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5478)
	salq $3, %r12		# salq $3, %r(5466)
	movq %r14, %r13		# movq %r(5314), %r(5467)
	addq %r12, %r13		# addq %r(5466), %r(5467)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5479)
	movq %rbx, %r12		# movq %r(5479), %r(5468)
	salq $3, %r12		# salq $3, %r(5468)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5480)
	movq %rbx, -8(%rbp)		# movq %r(5481), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5482)
	addq %r12, %rbx		# addq %r(5468), %r(5482)
	movq %rbx, -8(%rbp)		# movq %r(5482), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5483)
	movq (%rbx), %rbx		# movq (%r(5483)), %r(5470)
	movq %rbx, (%r13)		# movq %r(5470), (%r(5467))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5484)
	decq %rbx		# decq %r(5484)
	movq %rbx, -24(%rbp)		# movq %r(5484), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(5471)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5485)
	cmpq %rbx, %r12		# cmpq %r(5471), %r(5485)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5472)
	movq %r14, %r12		# movq %r(5314), %r(5473)
	addq %rbx, %r12		# addq %r(5472), %r(5473)
	movq %r12, %rax		# movq %r(5473), %rax
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
.L920:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L910:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L899:
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
.L915:
	.quad 2
	.quad 35
	.quad 50
	.text

error_outofbounds:
call _I_outOfBounds_p
