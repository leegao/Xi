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
	movq $1, %r13		# movq $1, %r(997)
	movq $27, %rbx		# movq $27, %r(998)
	movq $13, %r12		# movq $13, %r(999)
	movq %rbx, %rdi		# movq %r(998), %rdi
	movq %r12, %rsi		# movq %r(999), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(988)
	movq $1, %r12		# movq $1, %r(1000)
	cmpq %rbx, %r12		# cmpq %r(988), %r(1000)
	je .L172		# je .L172
	.L173:		# .L173:
	movq $0, %r13		# movq $0, %r(1001)
	.L172:		# .L172:
	movq %r13, %rdi		# movq %r(981), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1002)
	movq $27, %rbx		# movq $27, %r(1003)
	movq $9, %r12		# movq $9, %r(1004)
	movq %rbx, %rdi		# movq %r(1003), %rdi
	movq %r12, %rsi		# movq %r(1004), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(990)
	movq $9, %r12		# movq $9, %r(1005)
	cmpq %rbx, %r12		# cmpq %r(990), %r(1005)
	je .L174		# je .L174
	.L175:		# .L175:
	movq $0, %r13		# movq $0, %r(1006)
	.L174:		# .L174:
	movq %r13, %rdi		# movq %r(982), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1007)
	movq $25, %rbx		# movq $25, %r(1008)
	movq $55, %r12		# movq $55, %r(1009)
	movq %rbx, %rdi		# movq %r(1008), %rdi
	movq %r12, %rsi		# movq %r(1009), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(992)
	movq $5, %r12		# movq $5, %r(1010)
	cmpq %rbx, %r12		# cmpq %r(992), %r(1010)
	je .L176		# je .L176
	.L177:		# .L177:
	movq $0, %r13		# movq $0, %r(1011)
	.L176:		# .L176:
	movq %r13, %rdi		# movq %r(983), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1012)
	movq $4008, %rbx		# movq $4008, %r(1013)
	movq $6012, %r12		# movq $6012, %r(1014)
	movq %rbx, %rdi		# movq %r(1013), %rdi
	movq %r12, %rsi		# movq %r(1014), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(994)
	movq $2004, %r12		# movq $2004, %r(1015)
	cmpq %rbx, %r12		# cmpq %r(994), %r(1015)
	je .L178		# je .L178
	.L179:		# .L179:
	movq $0, %r13		# movq $0, %r(1016)
	.L178:		# .L178:
	movq %r13, %rdi		# movq %r(984), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L171:		# .L171:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Igcd_iii
_Igcd_iii:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq %rsi, %r12		# movq %rsi, %r(y)
	cmpq %r13, %r12		# cmpq %r(x), %r(y)
	jle .L182		# jle .L182
	.L181:		# .L181:
	movq %r12, %rbx		# movq %r(y), %r(t)
	movq %r13, %r12		# movq %r(x), %r(y)
	movq %rbx, %r13		# movq %r(t), %r(x)
	.L182:		# .L182:
	movq $0, %rbx		# movq $0, %r(1017)
	cmpq %rbx, %r12		# cmpq %r(1017), %r(y)
	jne .L184		# jne .L184
	.L183:		# .L183:
	movq %r13, %rax		# movq %r(x), %rax
	jmp .L180		# jmp .L180
	.L180:		# .L180:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L184:		# .L184:
	movq %r13, %rax		# movq %r(x), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(y)
	movq %rdx, %rbx		# movq %rdx, %r(1018)
	movq %r12, %rdi		# movq %r(y), %rdi
	movq %rbx, %rsi		# movq %r(1018), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(996)
	movq %rbx, %rax		# movq %r(996), %rax
	jmp .L180		# jmp .L180
	
