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
	movq $1, %r13		# movq $1, %r(2120)
	movq $1, %rbx		# movq $1, %r(2121)
	movq %rbx, %rdi		# movq %r(2121), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2110)
	movq $1, %r12		# movq $1, %r(2122)
	cmpq %rbx, %r12		# cmpq %r(2110), %r(2122)
	je .L379		# je .L379
	.L380:		# .L380:
	movq $0, %r13		# movq $0, %r(2123)
	jmp .L379		# jmp .L379
	.L379:		# .L379:
	movq %r13, %rdi		# movq %r(2105), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2124)
	movq $11, %rbx		# movq $11, %r(2125)
	movq %rbx, %rdi		# movq %r(2125), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2112)
	movq $89, %r12		# movq $89, %r(2126)
	cmpq %rbx, %r12		# cmpq %r(2112), %r(2126)
	je .L381		# je .L381
	.L382:		# .L382:
	movq $0, %r13		# movq $0, %r(2127)
	jmp .L381		# jmp .L381
	.L381:		# .L381:
	movq %r13, %rdi		# movq %r(2106), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2128)
	movq $14, %rbx		# movq $14, %r(2129)
	movq %rbx, %rdi		# movq %r(2129), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2114)
	movq $377, %r12		# movq $377, %r(2130)
	cmpq %rbx, %r12		# cmpq %r(2114), %r(2130)
	je .L383		# je .L383
	.L384:		# .L384:
	movq $0, %r13		# movq $0, %r(2131)
	jmp .L383		# jmp .L383
	.L383:		# .L383:
	movq %r13, %rdi		# movq %r(2107), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(2132)
	movq $15, %rbx		# movq $15, %r(2133)
	movq %rbx, %rdi		# movq %r(2133), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2116)
	movq $610, %r12		# movq $610, %r(2134)
	cmpq %rbx, %r12		# cmpq %r(2116), %r(2134)
	je .L385		# je .L385
	.L386:		# .L386:
	movq $0, %r13		# movq $0, %r(2135)
	jmp .L385		# jmp .L385
	.L385:		# .L385:
	movq %r13, %rdi		# movq %r(2108), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L378		# jmp .L378
	.L378:		# .L378:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ifib_ii
_Ifib_ii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r15		# movq %rdi, %r(i)
	movq $1, %rbx		# movq $1, %r(2136)
	cmpq %rbx, %r15		# cmpq %r(2136), %r(i)
	jg .L389		# jg .L389
	.L388:		# .L388:
	movq %r15, %rax		# movq %r(i), %rax
	jmp .L387		# jmp .L387
	.L387:		# .L387:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L389:		# .L389:
	movq $1, %rbx		# movq $1, %r(2137)
	movq %r15, %r13		# movq %r(i), %r(2138)
	subq %rbx, %r13		# subq %r(2137), %r(2138)
	movq %r13, %rdi		# movq %r(2138), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %r14		# movq %rax, %r(2118)
	movq $2, %rbx		# movq $2, %r(2139)
	movq %r15, %r12		# movq %r(i), %r(2140)
	subq %rbx, %r12		# subq %r(2139), %r(2140)
	movq %r12, %rdi		# movq %r(2140), %rdi
	call _Ifib_ii		# call _Ifib_ii
	movq %rax, %rbx		# movq %rax, %r(2119)
	addq %rbx, %r14		# addq %r(2119), %r(2141)
	movq %r14, %rax		# movq %r(2141), %rax
	jmp .L387		# jmp .L387
	
