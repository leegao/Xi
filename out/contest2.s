.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	movq $64, %rbx		# movq $64, %r(5299)
	movq %rbx, %rdi		# movq %r(5299), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5290)
	movq $7, %r12		# movq $7, %r(5300)
	movq %r12, (%r14)		# movq %r(5300), (%r(5290))
	movq $8, %r12		# movq $8, %r(5301)
	addq %r12, %r14		# addq %r(5301), %r(5302)
	movq $0, %r12		# movq $0, %r(5303)
	movq %r14, %rbx		# movq %r(5245), %r(5304)
	addq %r12, %rbx		# addq %r(5303), %r(5304)
	movq $7, %r12		# movq $7, %r(5305)
	movq %r12, (%rbx)		# movq %r(5305), (%r(5304))
	movq $8, %r12		# movq $8, %r(5306)
	movq %r14, %rbx		# movq %r(5245), %r(5307)
	addq %r12, %rbx		# addq %r(5306), %r(5307)
	movq $7, %r12		# movq $7, %r(5308)
	movq %r12, (%rbx)		# movq %r(5308), (%r(5307))
	movq $16, %r12		# movq $16, %r(5309)
	movq %r14, %rbx		# movq %r(5245), %r(5310)
	addq %r12, %rbx		# addq %r(5309), %r(5310)
	movq $7, %r12		# movq $7, %r(5311)
	movq %r12, (%rbx)		# movq %r(5311), (%r(5310))
	movq $24, %r12		# movq $24, %r(5312)
	movq %r14, %rbx		# movq %r(5245), %r(5313)
	addq %r12, %rbx		# addq %r(5312), %r(5313)
	movq $7, %r12		# movq $7, %r(5314)
	movq %r12, (%rbx)		# movq %r(5314), (%r(5313))
	movq $32, %r12		# movq $32, %r(5315)
	movq %r14, %rbx		# movq %r(5245), %r(5316)
	addq %r12, %rbx		# addq %r(5315), %r(5316)
	movq $7, %r12		# movq $7, %r(5317)
	movq %r12, (%rbx)		# movq %r(5317), (%r(5316))
	movq $40, %r12		# movq $40, %r(5318)
	movq %r14, %rbx		# movq %r(5245), %r(5319)
	addq %r12, %rbx		# addq %r(5318), %r(5319)
	movq $7, %r12		# movq $7, %r(5320)
	movq %r12, (%rbx)		# movq %r(5320), (%r(5319))
	movq $48, %r12		# movq $48, %r(5321)
	movq %r14, %rbx		# movq %r(5245), %r(5322)
	addq %r12, %rbx		# addq %r(5321), %r(5322)
	movq $7, %r12		# movq $7, %r(5323)
	movq %r12, (%rbx)		# movq %r(5323), (%r(5322))
	movq %r14, %rdi		# movq %r(5245), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5495)
	movq %rbx, -8(%rbp)		# movq %r(5495), -8(%rbp)
	movq $0, %r13		# movq $0, %r(5324)
	movq $8, %r12		# movq $8, %r(5325)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5496)
	subq %r12, %r14		# subq %r(5325), %r(5326)
	movq (%r14), %rbx		# movq (%r(5326)), %r(5327)
	cmpq %rbx, %r13		# cmpq %r(5327), %r(5324)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5328)
	salq $3, %r13		# salq $3, %r(5329)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5497)
	addq %r13, %rbx		# addq %r(5329), %r(5330)
	movq (%rbx), %rbx		# movq (%r(5330)), %r(5331)
	movq $1, %r13		# movq $1, %r(5332)
	movq $8, %r12		# movq $8, %r(5333)
	movq %rbx, %r14		# movq %r(5249), %r(5334)
	subq %r12, %r14		# subq %r(5333), %r(5334)
	movq (%r14), %r12		# movq (%r(5334)), %r(5335)
	cmpq %r12, %r13		# cmpq %r(5335), %r(5332)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5336)
	salq $3, %r13		# salq $3, %r(5337)
	addq %r13, %rbx		# addq %r(5337), %r(5338)
	movq (%rbx), %rbx		# movq (%r(5338)), %r(5339)
	movq $2, %r13		# movq $2, %r(5340)
	movq $8, %r12		# movq $8, %r(5341)
	movq %rbx, %r14		# movq %r(5251), %r(5342)
	subq %r12, %r14		# subq %r(5341), %r(5342)
	movq (%r14), %r12		# movq (%r(5342)), %r(5343)
	cmpq %r12, %r13		# cmpq %r(5343), %r(5340)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5344)
	salq $3, %r13		# salq $3, %r(5345)
	addq %r13, %rbx		# addq %r(5345), %r(5346)
	movq (%rbx), %rbx		# movq (%r(5346)), %r(5347)
	movq $3, %r13		# movq $3, %r(5348)
	movq $8, %r12		# movq $8, %r(5349)
	movq %rbx, %r14		# movq %r(5253), %r(5350)
	subq %r12, %r14		# subq %r(5349), %r(5350)
	movq (%r14), %r12		# movq (%r(5350)), %r(5351)
	cmpq %r12, %r13		# cmpq %r(5351), %r(5348)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(5352)
	salq $3, %r13		# salq $3, %r(5353)
	addq %r13, %rbx		# addq %r(5353), %r(5354)
	movq (%rbx), %rbx		# movq (%r(5354)), %r(5355)
	movq $4, %r13		# movq $4, %r(5356)
	movq $8, %r12		# movq $8, %r(5357)
	movq %rbx, %r14		# movq %r(5255), %r(5358)
	subq %r12, %r14		# subq %r(5357), %r(5358)
	movq (%r14), %r12		# movq (%r(5358)), %r(5359)
	cmpq %r12, %r13		# cmpq %r(5359), %r(5356)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(5360)
	salq $3, %r13		# salq $3, %r(5361)
	addq %r13, %rbx		# addq %r(5361), %r(5362)
	movq (%rbx), %rbx		# movq (%r(5362)), %r(5363)
	movq $5, %r13		# movq $5, %r(5364)
	movq $8, %r12		# movq $8, %r(5365)
	movq %rbx, %r14		# movq %r(5257), %r(5366)
	subq %r12, %r14		# subq %r(5365), %r(5366)
	movq (%r14), %r12		# movq (%r(5366)), %r(5367)
	cmpq %r12, %r13		# cmpq %r(5367), %r(5364)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(5368)
	salq $3, %r13		# salq $3, %r(5369)
	addq %r13, %rbx		# addq %r(5369), %r(5370)
	movq (%rbx), %rbx		# movq (%r(5370)), %r(5371)
	movq $6, %r13		# movq $6, %r(5372)
	movq $8, %r12		# movq $8, %r(5373)
	movq %rbx, %r14		# movq %r(5259), %r(5374)
	subq %r12, %r14		# subq %r(5373), %r(5374)
	movq (%r14), %r12		# movq (%r(5374)), %r(5375)
	cmpq %r12, %r13		# cmpq %r(5375), %r(5372)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(5376)
	salq $3, %r13		# salq $3, %r(5377)
	addq %r13, %rbx		# addq %r(5377), %r(5378)
	movq $7, %r12		# movq $7, %r(5379)
	movq %r12, (%rbx)		# movq %r(5379), (%r(5378))
	movq $0, %r13		# movq $0, %r(5380)
	movq $8, %r12		# movq $8, %r(5381)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5498)
	subq %r12, %r14		# subq %r(5381), %r(5382)
	movq (%r14), %rbx		# movq (%r(5382)), %r(5383)
	cmpq %rbx, %r13		# cmpq %r(5383), %r(5380)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5384)
	salq $3, %r13		# salq $3, %r(5385)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5499)
	addq %r13, %rbx		# addq %r(5385), %r(5386)
	movq (%rbx), %rbx		# movq (%r(5386)), %r(5387)
	movq $1, %r13		# movq $1, %r(5388)
	movq $8, %r12		# movq $8, %r(5389)
	movq %rbx, %r14		# movq %r(5263), %r(5390)
	subq %r12, %r14		# subq %r(5389), %r(5390)
	movq (%r14), %r12		# movq (%r(5390)), %r(5391)
	cmpq %r12, %r13		# cmpq %r(5391), %r(5388)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5392)
	salq $3, %r13		# salq $3, %r(5393)
	addq %r13, %rbx		# addq %r(5393), %r(5394)
	movq (%rbx), %rbx		# movq (%r(5394)), %r(5395)
	movq $2, %r13		# movq $2, %r(5396)
	movq $8, %r12		# movq $8, %r(5397)
	movq %rbx, %r14		# movq %r(5265), %r(5398)
	subq %r12, %r14		# subq %r(5397), %r(5398)
	movq (%r14), %r12		# movq (%r(5398)), %r(5399)
	cmpq %r12, %r13		# cmpq %r(5399), %r(5396)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5400)
	salq $3, %r13		# salq $3, %r(5401)
	addq %r13, %rbx		# addq %r(5401), %r(5402)
	movq (%rbx), %rbx		# movq (%r(5402)), %r(5403)
	movq $3, %r13		# movq $3, %r(5404)
	movq $8, %r12		# movq $8, %r(5405)
	movq %rbx, %r14		# movq %r(5267), %r(5406)
	subq %r12, %r14		# subq %r(5405), %r(5406)
	movq (%r14), %r12		# movq (%r(5406)), %r(5407)
	cmpq %r12, %r13		# cmpq %r(5407), %r(5404)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(5408)
	salq $3, %r13		# salq $3, %r(5409)
	addq %r13, %rbx		# addq %r(5409), %r(5410)
	movq (%rbx), %rbx		# movq (%r(5410)), %r(5411)
	movq $4, %r13		# movq $4, %r(5412)
	movq $8, %r12		# movq $8, %r(5413)
	movq %rbx, %r14		# movq %r(5269), %r(5414)
	subq %r12, %r14		# subq %r(5413), %r(5414)
	movq (%r14), %r12		# movq (%r(5414)), %r(5415)
	cmpq %r12, %r13		# cmpq %r(5415), %r(5412)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(5416)
	salq $3, %r13		# salq $3, %r(5417)
	addq %r13, %rbx		# addq %r(5417), %r(5418)
	movq (%rbx), %rbx		# movq (%r(5418)), %r(5419)
	movq $5, %r13		# movq $5, %r(5420)
	movq $8, %r12		# movq $8, %r(5421)
	movq %rbx, %r14		# movq %r(5271), %r(5422)
	subq %r12, %r14		# subq %r(5421), %r(5422)
	movq (%r14), %r12		# movq (%r(5422)), %r(5423)
	cmpq %r12, %r13		# cmpq %r(5423), %r(5420)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(5424)
	salq $3, %r13		# salq $3, %r(5425)
	addq %r13, %rbx		# addq %r(5425), %r(5426)
	movq (%rbx), %rbx		# movq (%r(5426)), %r(5427)
	movq $6, %r13		# movq $6, %r(5428)
	movq $8, %r12		# movq $8, %r(5429)
	movq %rbx, %r14		# movq %r(5273), %r(5430)
	subq %r12, %r14		# subq %r(5429), %r(5430)
	movq (%r14), %r12		# movq (%r(5430)), %r(5431)
	cmpq %r12, %r13		# cmpq %r(5431), %r(5428)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(5432)
	salq $3, %r13		# salq $3, %r(5433)
	addq %r13, %rbx		# addq %r(5433), %r(5434)
	movq (%rbx), %rbx		# movq (%r(5434)), %r(5435)
	movq %rbx, %rdi		# movq %r(5435), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(5292)
	movq %rbx, %rdi		# movq %r(5292), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $1, %r12		# movq $1, %r(5436)
	movq %r12, -16(%rbp)		# movq %r(5500), -16(%rbp)
	movq $0, %r13		# movq $0, %r(5437)
	movq $8, %r12		# movq $8, %r(5438)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5501)
	subq %r12, %r14		# subq %r(5438), %r(5439)
	movq (%r14), %rbx		# movq (%r(5439)), %r(5440)
	cmpq %rbx, %r13		# cmpq %r(5440), %r(5437)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5441)
	salq $3, %r13		# salq $3, %r(5442)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5502)
	addq %r13, %rbx		# addq %r(5442), %r(5443)
	movq (%rbx), %rbx		# movq (%r(5443)), %r(5444)
	movq $1, %r13		# movq $1, %r(5445)
	movq $8, %r12		# movq $8, %r(5446)
	movq %rbx, %r14		# movq %r(5277), %r(5447)
	subq %r12, %r14		# subq %r(5446), %r(5447)
	movq (%r14), %r12		# movq (%r(5447)), %r(5448)
	cmpq %r12, %r13		# cmpq %r(5448), %r(5445)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(5449)
	salq $3, %r13		# salq $3, %r(5450)
	addq %r13, %rbx		# addq %r(5450), %r(5451)
	movq (%rbx), %rbx		# movq (%r(5451)), %r(5452)
	movq $2, %r13		# movq $2, %r(5453)
	movq $8, %r12		# movq $8, %r(5454)
	movq %rbx, %r14		# movq %r(5279), %r(5455)
	subq %r12, %r14		# subq %r(5454), %r(5455)
	movq (%r14), %r12		# movq (%r(5455)), %r(5456)
	cmpq %r12, %r13		# cmpq %r(5456), %r(5453)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(5457)
	salq $3, %r13		# salq $3, %r(5458)
	addq %r13, %rbx		# addq %r(5458), %r(5459)
	movq (%rbx), %rbx		# movq (%r(5459)), %r(5460)
	movq $3, %r13		# movq $3, %r(5461)
	movq $8, %r12		# movq $8, %r(5462)
	movq %rbx, %r14		# movq %r(5281), %r(5463)
	subq %r12, %r14		# subq %r(5462), %r(5463)
	movq (%r14), %r12		# movq (%r(5463)), %r(5464)
	cmpq %r12, %r13		# cmpq %r(5464), %r(5461)
	jae error_outofbounds		# jae error_outofbounds
	movq $3, %r13		# movq $3, %r(5465)
	salq $3, %r13		# salq $3, %r(5466)
	addq %r13, %rbx		# addq %r(5466), %r(5467)
	movq (%rbx), %rbx		# movq (%r(5467)), %r(5468)
	movq $4, %r13		# movq $4, %r(5469)
	movq $8, %r12		# movq $8, %r(5470)
	movq %rbx, %r14		# movq %r(5283), %r(5471)
	subq %r12, %r14		# subq %r(5470), %r(5471)
	movq (%r14), %r12		# movq (%r(5471)), %r(5472)
	cmpq %r12, %r13		# cmpq %r(5472), %r(5469)
	jae error_outofbounds		# jae error_outofbounds
	movq $4, %r13		# movq $4, %r(5473)
	salq $3, %r13		# salq $3, %r(5474)
	addq %r13, %rbx		# addq %r(5474), %r(5475)
	movq (%rbx), %rbx		# movq (%r(5475)), %r(5476)
	movq $5, %r13		# movq $5, %r(5477)
	movq $8, %r12		# movq $8, %r(5478)
	movq %rbx, %r14		# movq %r(5285), %r(5479)
	subq %r12, %r14		# subq %r(5478), %r(5479)
	movq (%r14), %r12		# movq (%r(5479)), %r(5480)
	cmpq %r12, %r13		# cmpq %r(5480), %r(5477)
	jae error_outofbounds		# jae error_outofbounds
	movq $5, %r13		# movq $5, %r(5481)
	salq $3, %r13		# salq $3, %r(5482)
	addq %r13, %rbx		# addq %r(5482), %r(5483)
	movq (%rbx), %rbx		# movq (%r(5483)), %r(5484)
	movq $6, %r13		# movq $6, %r(5485)
	movq $8, %r12		# movq $8, %r(5486)
	movq %rbx, %r14		# movq %r(5287), %r(5487)
	subq %r12, %r14		# subq %r(5486), %r(5487)
	movq (%r14), %r12		# movq (%r(5487)), %r(5488)
	cmpq %r12, %r13		# cmpq %r(5488), %r(5485)
	jae error_outofbounds		# jae error_outofbounds
	movq $6, %r13		# movq $6, %r(5489)
	salq $3, %r13		# salq $3, %r(5490)
	addq %r13, %rbx		# addq %r(5490), %r(5491)
	movq (%rbx), %rbx		# movq (%r(5491)), %r(5492)
	movq $7, %r12		# movq $7, %r(5493)
	cmpq %r12, %rbx		# cmpq %r(5493), %r(5492)
	je .L1053		# je .L1053
	.L1054:		# .L1054:
	movq $0, %r12		# movq $0, %r(5494)
	movq %r12, -16(%rbp)		# movq %r(5503), -16(%rbp)
	jmp .L1053		# jmp .L1053
	.L1053:		# .L1053:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5504)
	movq %rbx, %rdi		# movq %r(5504), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1009		# jmp .L1009
	.L1009:		# .L1009:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(5548)
	movq %rbx, -88(%rbp)		# movq %r(5548), -88(%rbp)
	movq $8, %rbx		# movq $8, %r(5505)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(5549)
	subq %rbx, %r13		# subq %r(5505), %r(5506)
	movq (%r13), %r12		# movq (%r(5506)), %r(5507)
	movq %r12, -64(%rbp)		# movq %r(5550), -64(%rbp)
	movq $1, %r12		# movq $1, %r(5508)
	movq %r12, -72(%rbp)		# movq %r(5551), -72(%rbp)
	movq $0, %rbx		# movq $0, %r(5509)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5552)
	cmpq %rbx, %r12		# cmpq %r(5509), %r(5552)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(5510)
	movq %rbx, %rax		# movq %r(5510), %rax
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
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5553)
	salq $3, %r12		# salq $3, %r(5511)
	movq %r12, %rdi		# movq %r(5511), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(5295)
	movq $1, %r12		# movq $1, %r(5512)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(5554)
	movq %r14, -16(%rbp)		# movq %r(5555), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5556)
	subq %r12, %rbx		# subq %r(5512), %r(5556)
	movq %rbx, -16(%rbp)		# movq %r(5556), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5557)
	movq %rbx, (%r13)		# movq %r(5557), (%r(5295))
	movq $8, %rbx		# movq $8, %r(5514)
	addq %rbx, %r13		# addq %r(5514), %r(5515)
	movq %r13, -56(%rbp)		# movq %r(5558), -56(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5559)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5560)
	cmpq %rbx, %r12		# cmpq %r(5559), %r(5560)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(5516)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(5561)
	subq %rbx, %r13		# subq %r(5516), %r(5517)
	movq (%r13), %rbx		# movq (%r(5517)), %r(5518)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5562)
	cmpq %rbx, %r12		# cmpq %r(5518), %r(5562)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(5519)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5563)
	subq %rbx, %r14		# subq %r(5519), %r(5520)
	movq $8, %r13		# movq $8, %r(5521)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5564)
	movq %r12, -48(%rbp)		# movq %r(5565), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5566)
	subq %r13, %rbx		# subq %r(5521), %r(5566)
	movq %rbx, -48(%rbp)		# movq %r(5566), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5567)
	movq (%rbx), %rbx		# movq (%r(5567)), %r(5523)
	cmpq %rbx, %r14		# cmpq %r(5523), %r(70)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(5524)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5568)
	addq %r14, %rbx		# addq %r(5524), %r(5525)
	movq -72(%rbp), %r14		# movq -72(%rbp), %r(5569)
	salq $3, %r14		# salq $3, %r(5526)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(5570)
	movq %r12, -40(%rbp)		# movq %r(5571), -40(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5572)
	addq %r14, %r13		# addq %r(5526), %r(5572)
	movq %r13, -40(%rbp)		# movq %r(5572), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5573)
	movq (%r12), %r12		# movq (%r(5573)), %r(5528)
	movq %r12, (%rbx)		# movq %r(5528), (%r(5525))
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5574)
	incq %rbx		# incq %r(5574)
	movq %rbx, -72(%rbp)		# movq %r(5574), -72(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(5529)
	movq $8, %r12		# movq $8, %r(5530)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(5575)
	subq %r12, %r14		# subq %r(5530), %r(5531)
	movq (%r14), %rbx		# movq (%r(5531)), %r(5532)
	cmpq %rbx, %r13		# cmpq %r(5532), %r(5529)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(5533)
	salq $3, %r13		# salq $3, %r(5534)
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5576)
	addq %r13, %rbx		# addq %r(5534), %r(5535)
	movq (%rbx), %r12		# movq (%r(5535)), %r(5536)
	movq %r12, -72(%rbp)		# movq %r(5577), -72(%rbp)
	movq $1, %rbx		# movq $1, %r(5537)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5578)
	addq %rbx, %r12		# addq %r(5537), %r(5538)
	salq $3, %r12		# salq $3, %r(5539)
	movq %r12, %rdi		# movq %r(5539), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(5296)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5579)
	movq %r12, (%rbx)		# movq %r(5579), (%r(5296))
	movq $8, %r12		# movq $8, %r(5540)
	addq %r12, %rbx		# addq %r(5540), %r(5541)
	movq %rbx, -80(%rbp)		# movq %r(5580), -80(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(5542)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5581)
	cmpq %rbx, %r12		# cmpq %r(5542), %r(5581)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5582)
	decq %rbx		# decq %r(5582)
	movq %rbx, -72(%rbp)		# movq %r(5582), -72(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5583)
	movq %rbx, %rdi		# movq %r(5583), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(5584)
	movq %rbx, -8(%rbp)		# movq %r(5584), -8(%rbp)
	movq $8, %r12		# movq $8, %r(5543)
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(5585)
	movq %r13, -32(%rbp)		# movq %r(5586), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5587)
	subq %r12, %rbx		# subq %r(5543), %r(5587)
	movq %rbx, -32(%rbp)		# movq %r(5587), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(5588)
	movq (%rbx), %rbx		# movq (%r(5588)), %r(5545)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(5589)
	cmpq %rbx, %r12		# cmpq %r(5545), %r(5589)
	jae error_outofbounds		# jae error_outofbounds
	movq -72(%rbp), %r13		# movq -72(%rbp), %r(5590)
	salq $3, %r13		# salq $3, %r(5546)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5591)
	movq %rbx, -24(%rbp)		# movq %r(5592), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5593)
	addq %r13, %r12		# addq %r(5546), %r(5593)
	movq %r12, -24(%rbp)		# movq %r(5593), -24(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5594)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5595)
	movq %rbx, (%r12)		# movq %r(5594), (%r(5595))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5596)
	movq %rbx, %rax		# movq %r(5596), %rax
	jmp .L71		# jmp .L71
	
error_outofbounds:
call _I_outOfBounds_p
