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
	movq %rax, %r13		# movq %rax, %r(5279)
	movq %r13, %rdi		# movq %r(5279), %rdi
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
	movq $0, %r13		# movq $0, %r(5294)
	movq $8, %rbx		# movq $8, %r(5295)
	movq %r15, %r14		# movq %r(arr), %r(5296)
	subq %rbx, %r14		# subq %r(5295), %r(5296)
	movq (%r14), %rbx		# movq (%r(5296)), %r(5297)
	cmpq %rbx, %r13		# cmpq %r(5297), %r(5294)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5298)
	salq $3, %r13		# salq $3, %r(5299)
	addq %r13, %r15		# addq %r(5299), %r(5300)
	movq $-42, %rbx		# movq $-42, %r(5301)
	movq %rbx, (%r15)		# movq %r(5301), (%r(5300))
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
	movq $88, %rbx		# movq $88, %r(5302)
	movq %rbx, %rdi		# movq %r(5302), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5283)
	movq $10, %r12		# movq $10, %r(5303)
	movq %r12, (%rbx)		# movq %r(5303), (%r(5283))
	movq $8, %r12		# movq $8, %r(5304)
	addq %r12, %rbx		# addq %r(5304), %r(5305)
	movq %rbx, -64(%rbp)		# movq %r(5407), -64(%rbp)
	movq $0, %rbx		# movq $0, %r(5306)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5408)
	addq %rbx, %r13		# addq %r(5306), %r(5307)
	movq $0, %rbx		# movq $0, %r(5308)
	movq %rbx, (%r13)		# movq %r(5308), (%r(5307))
	movq $8, %rbx		# movq $8, %r(5309)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5409)
	addq %rbx, %r13		# addq %r(5309), %r(5310)
	movq $0, %rbx		# movq $0, %r(5311)
	movq %rbx, (%r13)		# movq %r(5311), (%r(5310))
	movq $16, %rbx		# movq $16, %r(5312)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5410)
	addq %rbx, %r13		# addq %r(5312), %r(5313)
	movq $0, %rbx		# movq $0, %r(5314)
	movq %rbx, (%r13)		# movq %r(5314), (%r(5313))
	movq $24, %rbx		# movq $24, %r(5315)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5411)
	addq %rbx, %r13		# addq %r(5315), %r(5316)
	movq $0, %rbx		# movq $0, %r(5317)
	movq %rbx, (%r13)		# movq %r(5317), (%r(5316))
	movq $32, %rbx		# movq $32, %r(5318)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5412)
	addq %rbx, %r13		# addq %r(5318), %r(5319)
	movq $0, %rbx		# movq $0, %r(5320)
	movq %rbx, (%r13)		# movq %r(5320), (%r(5319))
	movq $40, %rbx		# movq $40, %r(5321)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5413)
	addq %rbx, %r13		# addq %r(5321), %r(5322)
	movq $0, %rbx		# movq $0, %r(5323)
	movq %rbx, (%r13)		# movq %r(5323), (%r(5322))
	movq $48, %rbx		# movq $48, %r(5324)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5414)
	addq %rbx, %r13		# addq %r(5324), %r(5325)
	movq $0, %rbx		# movq $0, %r(5326)
	movq %rbx, (%r13)		# movq %r(5326), (%r(5325))
	movq $56, %rbx		# movq $56, %r(5327)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5415)
	addq %rbx, %r13		# addq %r(5327), %r(5328)
	movq $0, %rbx		# movq $0, %r(5329)
	movq %rbx, (%r13)		# movq %r(5329), (%r(5328))
	movq $64, %rbx		# movq $64, %r(5330)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5416)
	addq %rbx, %r13		# addq %r(5330), %r(5331)
	movq $0, %rbx		# movq $0, %r(5332)
	movq %rbx, (%r13)		# movq %r(5332), (%r(5331))
	movq $72, %rbx		# movq $72, %r(5333)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(5417)
	addq %rbx, %r13		# addq %r(5333), %r(5334)
	movq $0, %rbx		# movq $0, %r(5335)
	movq %rbx, (%r13)		# movq %r(5335), (%r(5334))
	movq $0, %r13		# movq $0, %r(5336)
	movq $8, %r12		# movq $8, %r(5337)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5418)
	subq %r12, %r14		# subq %r(5337), %r(5338)
	movq (%r14), %rbx		# movq (%r(5338)), %r(5339)
	cmpq %rbx, %r13		# cmpq %r(5339), %r(5336)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5340)
	salq $3, %r13		# salq $3, %r(5341)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5419)
	addq %r13, %r14		# addq %r(5341), %r(5342)
	movq $42, %rbx		# movq $42, %r(5343)
	movq %rbx, (%r14)		# movq %r(5343), (%r(5342))
	movq $1, %r13		# movq $1, %r(5344)
	movq $8, %r12		# movq $8, %r(5345)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5420)
	subq %r12, %r14		# subq %r(5345), %r(5346)
	movq (%r14), %rbx		# movq (%r(5346)), %r(5347)
	cmpq %rbx, %r13		# cmpq %r(5347), %r(5344)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5348)
	salq $3, %r13		# salq $3, %r(5349)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5421)
	addq %r13, %r14		# addq %r(5349), %r(5350)
	movq $52, %rbx		# movq $52, %r(5351)
	movq %rbx, (%r14)		# movq %r(5351), (%r(5350))
	movq $2, %r13		# movq $2, %r(5352)
	movq $8, %r12		# movq $8, %r(5353)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5422)
	subq %r12, %r14		# subq %r(5353), %r(5354)
	movq (%r14), %rbx		# movq (%r(5354)), %r(5355)
	cmpq %rbx, %r13		# cmpq %r(5355), %r(5352)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5356)
	salq $3, %r13		# salq $3, %r(5357)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5423)
	addq %r13, %r14		# addq %r(5357), %r(5358)
	movq $62, %rbx		# movq $62, %r(5359)
	movq %rbx, (%r14)		# movq %r(5359), (%r(5358))
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5424)
	movq %rbx, %rdi		# movq %r(5424), %rdi
	call _Imodify_pai		# call _Imodify_pai
	leaq .L910(%rip), %rdi		# leaq .L910(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5425)
	movq %rbx, -40(%rbp)		# movq %r(5425), -40(%rbp)
	movq $1, %r12		# movq $1, %r(5361)
	movq %r12, -56(%rbp)		# movq %r(5426), -56(%rbp)
	movq $0, %r13		# movq $0, %r(5362)
	movq $8, %r12		# movq $8, %r(5363)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5427)
	movq %r14, -8(%rbp)		# movq %r(5396), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5397)
	subq %r12, %rbx		# subq %r(5363), %r(5397)
	movq %rbx, -8(%rbp)		# movq %r(5397), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5398)
	movq (%rbx), %rbx		# movq (%r(5398)), %r(5365)
	cmpq %rbx, %r13		# cmpq %r(5365), %r(5362)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5366)
	salq $3, %r13		# salq $3, %r(5367)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5428)
	addq %r13, %rbx		# addq %r(5367), %r(5368)
	movq (%rbx), %rbx		# movq (%r(5368)), %r(5369)
	movq $-42, %r12		# movq $-42, %r(5370)
	cmpq %r12, %rbx		# cmpq %r(5370), %r(5369)
	je .L913		# je .L913
	.L914:		# .L914:
	movq $0, %r12		# movq $0, %r(5371)
	movq %r12, -56(%rbp)		# movq %r(5429), -56(%rbp)
	jmp .L913		# jmp .L913
	.L913:		# .L913:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5430)
	movq %rbx, %rdi		# movq %r(5430), %rdi
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5431)
	movq %rbx, %rsi		# movq %r(5431), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L915(%rip), %rdi		# leaq .L915(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r14		# movq %rax, %r(5287)
	movq $1, %rbx		# movq $1, %r(5373)
	movq %rbx, %r12		# movq %r(5373), %r(5275)
	movq $1, %rbx		# movq $1, %r(5432)
	movq %rbx, -48(%rbp)		# movq %r(5432), -48(%rbp)
	movq $8, %r13		# movq $8, %r(5375)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5433)
	movq %rbx, -16(%rbp)		# movq %r(5399), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5400)
	subq %r13, %rbx		# subq %r(5375), %r(5400)
	movq %rbx, -16(%rbp)		# movq %r(5400), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5401)
	movq (%rbx), %rbx		# movq (%r(5401)), %r(5377)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(5434)
	cmpq %rbx, %r13		# cmpq %r(5377), %r(5434)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(5378)
	movq %rbx, %r13		# movq %r(5378), %r(5379)
	salq $3, %r13		# salq $3, %r(5379)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5435)
	addq %r13, %rbx		# addq %r(5379), %r(5380)
	movq (%rbx), %rbx		# movq (%r(5380)), %r(5381)
	movq $52, %r13		# movq $52, %r(5382)
	cmpq %r13, %rbx		# cmpq %r(5382), %r(5381)
	je .L918		# je .L918
	.L919:		# .L919:
	movq $0, %rbx		# movq $0, %r(5383)
	movq %rbx, %r12		# movq %r(5383), %r(5275)
	jmp .L918		# jmp .L918
	.L918:		# .L918:
	movq %r14, %rdi		# movq %r(5287), %rdi
	movq %r12, %rsi		# movq %r(5275), %rsi
	call _Itest_paib		# call _Itest_paib
	leaq .L920(%rip), %rdi		# leaq .L920(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5402)
	movq %rbx, -24(%rbp)		# movq %r(5402), -24(%rbp)
	movq $1, %r12		# movq $1, %r(5385)
	movq %r12, -32(%rbp)		# movq %r(5403), -32(%rbp)
	movq $2, %r13		# movq $2, %r(5386)
	movq $8, %r12		# movq $8, %r(5387)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5436)
	subq %r12, %r14		# subq %r(5387), %r(5388)
	movq (%r14), %rbx		# movq (%r(5388)), %r(5389)
	cmpq %rbx, %r13		# cmpq %r(5389), %r(5386)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5390)
	salq $3, %r13		# salq $3, %r(5391)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5437)
	addq %r13, %rbx		# addq %r(5391), %r(5392)
	movq (%rbx), %rbx		# movq (%r(5392)), %r(5393)
	movq $62, %r12		# movq $62, %r(5394)
	cmpq %r12, %rbx		# cmpq %r(5394), %r(5393)
	je .L923		# je .L923
	.L924:		# .L924:
	movq $0, %r12		# movq $0, %r(5395)
	movq %r12, -32(%rbp)		# movq %r(5404), -32(%rbp)
	jmp .L923		# jmp .L923
	.L923:		# .L923:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5405)
	movq %rbx, %rdi		# movq %r(5405), %rdi
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5406)
	movq %rbx, %rsi		# movq %r(5406), %rsi
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
	movq %rdi, %rbx		# movq %rdi, %r(5450)
	movq %rbx, -8(%rbp)		# movq %r(5450), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5451)
	movq (%rbx), %rbx		# movq (%r(5451)), %r(5438)
	movq %rbx, %r14		# movq %r(5438), %r(t10)
	movq %r14, %rbx		# movq %r(t10), %r(5439)
	salq $3, %rbx		# salq $3, %r(5439)
	movq $8, %r12		# movq $8, %r(5440)
	addq %r12, %rbx		# addq %r(5440), %r(5441)
	movq %rbx, %rdi		# movq %r(5441), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(5291)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq %r14, %rbx		# movq %r(t10), %r(5442)
	salq $3, %rbx		# salq $3, %r(5442)
	movq %r12, %r13		# movq %r(5291), %r(5443)
	addq %rbx, %r13		# addq %r(5442), %r(5443)
	movq %r14, %r15		# movq %r(t10), %r(5444)
	salq $3, %r15		# salq $3, %r(5444)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5452)
	movq %rbx, -16(%rbp)		# movq %r(5453), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5454)
	addq %r15, %rbx		# addq %r(5444), %r(5454)
	movq %rbx, -16(%rbp)		# movq %r(5454), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5455)
	movq (%rbx), %rbx		# movq (%r(5455)), %r(5446)
	movq %rbx, (%r13)		# movq %r(5446), (%r(5443))
	decq %r14		# decq %r(t10)
	movq $0, %rbx		# movq $0, %r(5447)
	cmpq %rbx, %r14		# cmpq %r(5447), %r(t10)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(5448)
	addq %rbx, %r12		# addq %r(5448), %r(5449)
	movq %r12, %rax		# movq %r(5449), %rax
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
.L915:
	.quad 2
	.quad 35
	.quad 50
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
.L920:
	.quad 2
	.quad 35
	.quad 51
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

error_outofbounds:
call _I_outOfBounds_p
