.att_syntax prefix
.text
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(6371)
	leaq .L1106(%rip), %rdi		# leaq .L1106(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6434)
	movq %rbx, -8(%rbp)		# movq %r(6434), -8(%rbp)
	.L1107:		# .L1107:
	movq $1, %rbx		# movq $1, %r(6394)
	movq %rbx, %rdi		# movq %r(6394), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(6395)
	movq %r13, %rbx		# movq %r(6395), %r(6442)
	movq %rbx, -24(%rbp)		# movq %r(6442), -24(%rbp)
	movq $8, %r13		# movq $8, %r(6396)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(6435)
	movq %r14, %rbx		# movq %r(6435), %r(6443)
	movq %rbx, -16(%rbp)		# movq %r(6443), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6444)
	subq %r13, %rbx		# subq %r(6396), %r(6444)
	movq %rbx, -16(%rbp)		# movq %r(6444), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6445)
	movq (%rbx), %r12		# movq (%r(6445)), %r(6398)
	movq $3, %rbx		# movq $3, %r(6399)
	cmpq %rbx, %r12		# cmpq %r(6399), %r(6398)
	je .L1109		# je .L1109
	.L1110:		# .L1110:
	movq $0, %r13		# movq $0, %r(6400)
	movq %r13, %rbx		# movq %r(6400), %r(6446)
	movq %rbx, -24(%rbp)		# movq %r(6446), -24(%rbp)
	jmp .L1109		# jmp .L1109
	.L1109:		# .L1109:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6447)
	movq %rbx, %rdi		# movq %r(6447), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(6401)
	movq %r13, %rbx		# movq %r(6401), %r(6448)
	movq %rbx, -40(%rbp)		# movq %r(6448), -40(%rbp)
	movq $0, %r13		# movq $0, %r(6402)
	movq $8, %rbx		# movq $8, %r(6403)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6436)
	movq %r12, %r14		# movq %r(6436), %r(6404)
	subq %rbx, %r14		# subq %r(6403), %r(6404)
	movq (%r14), %rbx		# movq (%r(6404)), %r(6405)
	cmpq %rbx, %r13		# cmpq %r(6405), %r(6402)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(6406)
	movq %r13, %r14		# movq %r(6406), %r(6407)
	salq $3, %r14		# salq $3, %r(6407)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6437)
	movq %r12, %r15		# movq %r(6437), %r(6408)
	addq %r14, %r15		# addq %r(6407), %r(6408)
	movq (%r15), %rbx		# movq (%r(6408)), %r(6409)
	movq $65, %r12		# movq $65, %r(6410)
	cmpq %r12, %rbx		# cmpq %r(6410), %r(6409)
	je .L1113		# je .L1113
	.L1114:		# .L1114:
	movq $0, %r13		# movq $0, %r(6411)
	movq %r13, %rbx		# movq %r(6411), %r(6449)
	movq %rbx, -40(%rbp)		# movq %r(6449), -40(%rbp)
	jmp .L1113		# jmp .L1113
	.L1113:		# .L1113:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6450)
	movq %rbx, %rdi		# movq %r(6450), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(6412)
	movq %r13, %rbx		# movq %r(6412), %r(6451)
	movq %rbx, -48(%rbp)		# movq %r(6451), -48(%rbp)
	movq $1, %r13		# movq $1, %r(6413)
	movq $8, %rbx		# movq $8, %r(6414)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6438)
	movq %r12, %r14		# movq %r(6438), %r(6415)
	subq %rbx, %r14		# subq %r(6414), %r(6415)
	movq (%r14), %rbx		# movq (%r(6415)), %r(6416)
	cmpq %rbx, %r13		# cmpq %r(6416), %r(6413)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(6417)
	movq %r13, %r14		# movq %r(6417), %r(6418)
	salq $3, %r14		# salq $3, %r(6418)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6439)
	movq %r12, %r15		# movq %r(6439), %r(6419)
	addq %r14, %r15		# addq %r(6418), %r(6419)
	movq (%r15), %rbx		# movq (%r(6419)), %r(6420)
	movq $66, %r12		# movq $66, %r(6421)
	cmpq %r12, %rbx		# cmpq %r(6421), %r(6420)
	je .L1117		# je .L1117
	.L1118:		# .L1118:
	movq $0, %r13		# movq $0, %r(6422)
	movq %r13, %rbx		# movq %r(6422), %r(6452)
	movq %rbx, -48(%rbp)		# movq %r(6452), -48(%rbp)
	jmp .L1117		# jmp .L1117
	.L1117:		# .L1117:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(6453)
	movq %rbx, %rdi		# movq %r(6453), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(6423)
	movq %r13, %rbx		# movq %r(6423), %r(6454)
	movq %rbx, -32(%rbp)		# movq %r(6454), -32(%rbp)
	movq $2, %r13		# movq $2, %r(6424)
	movq $8, %rbx		# movq $8, %r(6425)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6440)
	movq %r12, %r14		# movq %r(6440), %r(6426)
	subq %rbx, %r14		# subq %r(6425), %r(6426)
	movq (%r14), %rbx		# movq (%r(6426)), %r(6427)
	cmpq %rbx, %r13		# cmpq %r(6427), %r(6424)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(6428)
	movq %r13, %r14		# movq %r(6428), %r(6429)
	salq $3, %r14		# salq $3, %r(6429)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6441)
	movq %r12, %r15		# movq %r(6441), %r(6430)
	addq %r14, %r15		# addq %r(6429), %r(6430)
	movq (%r15), %rbx		# movq (%r(6430)), %r(6431)
	movq $67, %r12		# movq $67, %r(6432)
	cmpq %r12, %rbx		# cmpq %r(6432), %r(6431)
	je .L1121		# je .L1121
	.L1122:		# .L1122:
	movq $0, %r13		# movq $0, %r(6433)
	movq %r13, %rbx		# movq %r(6433), %r(6455)
	movq %rbx, -32(%rbp)		# movq %r(6455), -32(%rbp)
	jmp .L1121		# jmp .L1121
	.L1121:		# .L1121:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(6456)
	movq %rbx, %rdi		# movq %r(6456), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1105		# jmp .L1105
	.L1105:		# .L1105:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $64, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(6469)
	movq %rbx, -24(%rbp)		# movq %r(6469), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6470)
	movq (%rbx), %r13		# movq (%r(6470)), %r(6457)
	movq %r13, %r12		# movq %r(6457), %r(6471)
	movq %r12, -16(%rbp)		# movq %r(6471), -16(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6472)
	movq %r12, %r13		# movq %r(6472), %r(6458)
	salq $3, %r13		# salq $3, %r(6458)
	movq $8, %rbx		# movq $8, %r(6459)
	movq %r13, %r14		# movq %r(6458), %r(6460)
	addq %rbx, %r14		# addq %r(6459), %r(6460)
	movq %r14, %rdi		# movq %r(6460), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6391)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(6473)
	movq %r13, %rbx		# movq %r(6473), %r(6461)
	salq $3, %rbx		# salq $3, %r(6461)
	movq %r15, %r13		# movq %r(6391), %r(6462)
	addq %rbx, %r13		# addq %r(6461), %r(6462)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6474)
	movq %rbx, %r12		# movq %r(6474), %r(6463)
	salq $3, %r12		# salq $3, %r(6463)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6475)
	movq %rbx, %r14		# movq %r(6475), %r(6476)
	movq %r14, -8(%rbp)		# movq %r(6476), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6477)
	addq %r12, %rbx		# addq %r(6463), %r(6477)
	movq %rbx, -8(%rbp)		# movq %r(6477), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6478)
	movq (%rbx), %r12		# movq (%r(6478)), %r(6465)
	movq %r12, (%r13)		# movq %r(6465), (%r(6462))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6479)
	decq %rbx		# decq %r(6479)
	movq %rbx, -16(%rbp)		# movq %r(6479), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(6466)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6480)
	cmpq %rbx, %r12		# cmpq %r(6466), %r(6480)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6467)
	movq %r15, %r13		# movq %r(6391), %r(6468)
	addq %rbx, %r13		# addq %r(6467), %r(6468)
	movq %r13, %rax		# movq %r(6468), %rax
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
.L1106:
	.quad 3
	.quad 65
	.quad 66
	.quad 67
	.text

error_outofbounds:
call _I_outOfBounds_p
