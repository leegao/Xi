.att_syntax prefix
.text
.globl _IretTuple_t4iiiii
_IretTuple_t4iiiii:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5419)
	movq %rbx, -16(%rbp)		# movq %r(5419), -16(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(5420)
	movq %rbx, -8(%rbp)		# movq %r(5420), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(5403)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5421)
	movq %r13, %r12		# movq %r(5421), %r(5404)
	addq %rbx, %r12		# addq %r(5403), %r(5404)
	movq $1, %rbx		# movq $1, %r(5405)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(5422)
	movq %r15, %r13		# movq %r(5422), %r(5406)
	addq %rbx, %r13		# addq %r(5405), %r(5406)
	movq %r13, (%r12)		# movq %r(5406), (%r(5404))
	movq $8, %rbx		# movq $8, %r(5407)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5423)
	movq %r13, %r12		# movq %r(5423), %r(5408)
	addq %rbx, %r12		# addq %r(5407), %r(5408)
	movq $2, %rbx		# movq $2, %r(5409)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(5424)
	movq %r15, %r13		# movq %r(5424), %r(5410)
	addq %rbx, %r13		# addq %r(5409), %r(5410)
	movq %r13, (%r12)		# movq %r(5410), (%r(5408))
	movq $16, %rbx		# movq $16, %r(5411)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5425)
	movq %r13, %r12		# movq %r(5425), %r(5412)
	addq %rbx, %r12		# addq %r(5411), %r(5412)
	movq $3, %rbx		# movq $3, %r(5413)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(5426)
	movq %r15, %r13		# movq %r(5426), %r(5414)
	addq %rbx, %r13		# addq %r(5413), %r(5414)
	movq %r13, (%r12)		# movq %r(5414), (%r(5412))
	movq $24, %rbx		# movq $24, %r(5415)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5427)
	movq %r13, %r12		# movq %r(5427), %r(5416)
	addq %rbx, %r12		# addq %r(5415), %r(5416)
	movq $4, %rbx		# movq $4, %r(5417)
	movq -8(%rbp), %r15		# movq -8(%rbp), %r(5428)
	movq %r15, %r13		# movq %r(5428), %r(5418)
	addq %rbx, %r13		# addq %r(5417), %r(5418)
	movq %r13, (%r12)		# movq %r(5418), (%r(5416))
	jmp .L833		# jmp .L833
	.L833:		# .L833:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	movq %rdi, %rbx		# movq %rdi, %r(5386)
	movq $32, %rbx		# movq $32, %r(5429)
	movq %rbx, %rdi		# movq %r(5429), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(5397)
	movq %r14, %r13		# movq %r(5397), %r(5388)
	movq $1, %r12		# movq $1, %r(5430)
	movq %r13, %rdi		# movq %r(5388), %rdi
	movq %r12, %rsi		# movq %r(5430), %rsi
	call _IretTuple_t4iiiii		# call _IretTuple_t4iiiii
	movq 0(%r14), %r12		# movq 0(%r(5397)), %r(5389)
	movq 8(%r14), %rbx		# movq 8(%r(5397)), %r(5443)
	movq %rbx, -8(%rbp)		# movq %r(5443), -8(%rbp)
	movq 16(%r14), %rbx		# movq 16(%r(5397)), %r(5444)
	movq %rbx, -16(%rbp)		# movq %r(5444), -16(%rbp)
	movq 24(%r14), %rbx		# movq 24(%r(5397)), %r(5445)
	movq %rbx, -24(%rbp)		# movq %r(5445), -24(%rbp)
	movq $1, %r14		# movq $1, %r(5431)
	movq %r14, %r13		# movq %r(5431), %r(5393)
	movq $2, %rbx		# movq $2, %r(5432)
	cmpq %rbx, %r12		# cmpq %r(5432), %r(5389)
	je .L835		# je .L835
	.L836:		# .L836:
	movq $0, %r12		# movq $0, %r(5433)
	movq %r12, %r13		# movq %r(5433), %r(5393)
	jmp .L835		# jmp .L835
	.L835:		# .L835:
	movq %r13, %rdi		# movq %r(5393), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(5434)
	movq %r12, %r13		# movq %r(5434), %r(5394)
	movq $3, %rbx		# movq $3, %r(5435)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(5446)
	cmpq %rbx, %r12		# cmpq %r(5435), %r(5446)
	je .L837		# je .L837
	.L838:		# .L838:
	movq $0, %r12		# movq $0, %r(5436)
	movq %r12, %r13		# movq %r(5436), %r(5394)
	jmp .L837		# jmp .L837
	.L837:		# .L837:
	movq %r13, %rdi		# movq %r(5394), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(5437)
	movq %r12, %r13		# movq %r(5437), %r(5395)
	movq $4, %rbx		# movq $4, %r(5438)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5447)
	cmpq %rbx, %r12		# cmpq %r(5438), %r(5447)
	je .L839		# je .L839
	.L840:		# .L840:
	movq $0, %r12		# movq $0, %r(5439)
	movq %r12, %r13		# movq %r(5439), %r(5395)
	jmp .L839		# jmp .L839
	.L839:		# .L839:
	movq %r13, %rdi		# movq %r(5395), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(5440)
	movq %r12, %r13		# movq %r(5440), %r(5396)
	movq $5, %rbx		# movq $5, %r(5441)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(5448)
	cmpq %rbx, %r12		# cmpq %r(5441), %r(5448)
	je .L841		# je .L841
	.L842:		# .L842:
	movq $0, %r12		# movq $0, %r(5442)
	movq %r12, %r13		# movq %r(5442), %r(5396)
	jmp .L841		# jmp .L841
	.L841:		# .L841:
	movq %r13, %rdi		# movq %r(5396), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L834		# jmp .L834
	.L834:		# .L834:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
