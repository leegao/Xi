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
	movq %rdi, %rbx		# movq %rdi, %r(6364)
	leaq .L1106(%rip), %rdi		# leaq .L1106(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6427)
	movq %rbx, -8(%rbp)		# movq %r(6427), -8(%rbp)
	.L1107:		# .L1107:
	movq $1, %rbx		# movq $1, %r(6387)
	movq %rbx, %rdi		# movq %r(6387), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(6388)
	movq %r13, %rbx		# movq %r(6388), %r(6435)
	movq %rbx, -24(%rbp)		# movq %r(6435), -24(%rbp)
	movq $8, %r13		# movq $8, %r(6389)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(6428)
	movq %r14, %rbx		# movq %r(6428), %r(6436)
	movq %rbx, -40(%rbp)		# movq %r(6436), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6437)
	subq %r13, %rbx		# subq %r(6389), %r(6437)
	movq %rbx, -40(%rbp)		# movq %r(6437), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6438)
	movq (%rbx), %r12		# movq (%r(6438)), %r(6391)
	movq $3, %rbx		# movq $3, %r(6392)
	cmpq %rbx, %r12		# cmpq %r(6392), %r(6391)
	je .L1109		# je .L1109
	.L1110:		# .L1110:
	movq $0, %r13		# movq $0, %r(6393)
	movq %r13, %rbx		# movq %r(6393), %r(6439)
	movq %rbx, -24(%rbp)		# movq %r(6439), -24(%rbp)
	jmp .L1109		# jmp .L1109
	.L1109:		# .L1109:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6440)
	movq %rbx, %rdi		# movq %r(6440), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(6394)
	movq %r13, %rbx		# movq %r(6394), %r(6441)
	movq %rbx, -16(%rbp)		# movq %r(6441), -16(%rbp)
	movq $0, %r13		# movq $0, %r(6395)
	movq $8, %rbx		# movq $8, %r(6396)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6429)
	movq %r12, %r14		# movq %r(6429), %r(6397)
	subq %rbx, %r14		# subq %r(6396), %r(6397)
	movq (%r14), %rbx		# movq (%r(6397)), %r(6398)
	cmpq %rbx, %r13		# cmpq %r(6398), %r(6395)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(6399)
	movq %r13, %r14		# movq %r(6399), %r(6400)
	salq $3, %r14		# salq $3, %r(6400)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6430)
	movq %r12, %r15		# movq %r(6430), %r(6401)
	addq %r14, %r15		# addq %r(6400), %r(6401)
	movq (%r15), %rbx		# movq (%r(6401)), %r(6402)
	movq $65, %r12		# movq $65, %r(6403)
	cmpq %r12, %rbx		# cmpq %r(6403), %r(6402)
	je .L1113		# je .L1113
	.L1114:		# .L1114:
	movq $0, %r13		# movq $0, %r(6404)
	movq %r13, %rbx		# movq %r(6404), %r(6442)
	movq %rbx, -16(%rbp)		# movq %r(6442), -16(%rbp)
	jmp .L1113		# jmp .L1113
	.L1113:		# .L1113:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6443)
	movq %rbx, %rdi		# movq %r(6443), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(6405)
	movq %r13, %rbx		# movq %r(6405), %r(6444)
	movq %rbx, -48(%rbp)		# movq %r(6444), -48(%rbp)
	movq $1, %r13		# movq $1, %r(6406)
	movq $8, %rbx		# movq $8, %r(6407)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6431)
	movq %r12, %r14		# movq %r(6431), %r(6408)
	subq %rbx, %r14		# subq %r(6407), %r(6408)
	movq (%r14), %rbx		# movq (%r(6408)), %r(6409)
	cmpq %rbx, %r13		# cmpq %r(6409), %r(6406)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %r13		# movq $1, %r(6410)
	movq %r13, %r14		# movq %r(6410), %r(6411)
	salq $3, %r14		# salq $3, %r(6411)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6432)
	movq %r12, %r15		# movq %r(6432), %r(6412)
	addq %r14, %r15		# addq %r(6411), %r(6412)
	movq (%r15), %rbx		# movq (%r(6412)), %r(6413)
	movq $66, %r12		# movq $66, %r(6414)
	cmpq %r12, %rbx		# cmpq %r(6414), %r(6413)
	je .L1117		# je .L1117
	.L1118:		# .L1118:
	movq $0, %r13		# movq $0, %r(6415)
	movq %r13, %rbx		# movq %r(6415), %r(6445)
	movq %rbx, -48(%rbp)		# movq %r(6445), -48(%rbp)
	jmp .L1117		# jmp .L1117
	.L1117:		# .L1117:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(6446)
	movq %rbx, %rdi		# movq %r(6446), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(6416)
	movq %r13, %rbx		# movq %r(6416), %r(6447)
	movq %rbx, -32(%rbp)		# movq %r(6447), -32(%rbp)
	movq $2, %r13		# movq $2, %r(6417)
	movq $8, %rbx		# movq $8, %r(6418)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6433)
	movq %r12, %r14		# movq %r(6433), %r(6419)
	subq %rbx, %r14		# subq %r(6418), %r(6419)
	movq (%r14), %rbx		# movq (%r(6419)), %r(6420)
	cmpq %rbx, %r13		# cmpq %r(6420), %r(6417)
	jae error_outofbounds		# jae error_outofbounds
	movq $2, %r13		# movq $2, %r(6421)
	movq %r13, %r14		# movq %r(6421), %r(6422)
	salq $3, %r14		# salq $3, %r(6422)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6434)
	movq %r12, %r15		# movq %r(6434), %r(6423)
	addq %r14, %r15		# addq %r(6422), %r(6423)
	movq (%r15), %rbx		# movq (%r(6423)), %r(6424)
	movq $67, %r12		# movq $67, %r(6425)
	cmpq %r12, %rbx		# cmpq %r(6425), %r(6424)
	je .L1121		# je .L1121
	.L1122:		# .L1122:
	movq $0, %r13		# movq $0, %r(6426)
	movq %r13, %rbx		# movq %r(6426), %r(6448)
	movq %rbx, -32(%rbp)		# movq %r(6448), -32(%rbp)
	jmp .L1121		# jmp .L1121
	.L1121:		# .L1121:
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(6449)
	movq %rbx, %rdi		# movq %r(6449), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(6462)
	movq %rbx, -16(%rbp)		# movq %r(6462), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6463)
	movq (%rbx), %r13		# movq (%r(6463)), %r(6450)
	movq %r13, %r12		# movq %r(6450), %r(6464)
	movq %r12, -24(%rbp)		# movq %r(6464), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6465)
	movq %r12, %r13		# movq %r(6465), %r(6451)
	salq $3, %r13		# salq $3, %r(6451)
	movq $8, %rbx		# movq $8, %r(6452)
	movq %r13, %r14		# movq %r(6451), %r(6453)
	addq %rbx, %r14		# addq %r(6452), %r(6453)
	movq %r14, %rdi		# movq %r(6453), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6384)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(6466)
	movq %r13, %rbx		# movq %r(6466), %r(6454)
	salq $3, %rbx		# salq $3, %r(6454)
	movq %r15, %r13		# movq %r(6384), %r(6455)
	addq %rbx, %r13		# addq %r(6454), %r(6455)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6467)
	movq %rbx, %r12		# movq %r(6467), %r(6456)
	salq $3, %r12		# salq $3, %r(6456)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6468)
	movq %rbx, %r14		# movq %r(6468), %r(6469)
	movq %r14, -8(%rbp)		# movq %r(6469), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6470)
	addq %r12, %rbx		# addq %r(6456), %r(6470)
	movq %rbx, -8(%rbp)		# movq %r(6470), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6471)
	movq (%rbx), %r12		# movq (%r(6471)), %r(6458)
	movq %r12, (%r13)		# movq %r(6458), (%r(6455))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6472)
	decq %rbx		# decq %r(6472)
	movq %rbx, -24(%rbp)		# movq %r(6472), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(6459)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(6473)
	cmpq %rbx, %r12		# cmpq %r(6459), %r(6473)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6460)
	movq %r15, %r13		# movq %r(6384), %r(6461)
	addq %rbx, %r13		# addq %r(6460), %r(6461)
	movq %r13, %rax		# movq %r(6461), %rax
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
