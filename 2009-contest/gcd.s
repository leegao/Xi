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
	movq $1, %r13		# movq $1, %r(1058)
	movq $27, %rbx		# movq $27, %r(1059)
	movq $13, %r12		# movq $13, %r(1060)
	movq %rbx, %rdi		# movq %r(1059), %rdi
	movq %r12, %rsi		# movq %r(1060), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1049)
	movq $1, %r12		# movq $1, %r(1061)
	cmpq %rbx, %r12		# cmpq %r(1049), %r(1061)
	je .L171		# je .L171
	.L172:		# .L172:
	movq $0, %r13		# movq $0, %r(1062)
	.L171:		# .L171:
	movq %r13, %rdi		# movq %r(1042), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1063)
	movq $27, %rbx		# movq $27, %r(1064)
	movq $9, %r12		# movq $9, %r(1065)
	movq %rbx, %rdi		# movq %r(1064), %rdi
	movq %r12, %rsi		# movq %r(1065), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1051)
	movq $9, %r12		# movq $9, %r(1066)
	cmpq %rbx, %r12		# cmpq %r(1051), %r(1066)
	je .L173		# je .L173
	.L174:		# .L174:
	movq $0, %r13		# movq $0, %r(1067)
	.L173:		# .L173:
	movq %r13, %rdi		# movq %r(1043), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1068)
	movq $25, %rbx		# movq $25, %r(1069)
	movq $55, %r12		# movq $55, %r(1070)
	movq %rbx, %rdi		# movq %r(1069), %rdi
	movq %r12, %rsi		# movq %r(1070), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1053)
	movq $5, %r12		# movq $5, %r(1071)
	cmpq %rbx, %r12		# cmpq %r(1053), %r(1071)
	je .L175		# je .L175
	.L176:		# .L176:
	movq $0, %r13		# movq $0, %r(1072)
	.L175:		# .L175:
	movq %r13, %rdi		# movq %r(1044), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1073)
	movq $4008, %rbx		# movq $4008, %r(1074)
	movq $6012, %r12		# movq $6012, %r(1075)
	movq %rbx, %rdi		# movq %r(1074), %rdi
	movq %r12, %rsi		# movq %r(1075), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1055)
	movq $2004, %r12		# movq $2004, %r(1076)
	cmpq %rbx, %r12		# cmpq %r(1055), %r(1076)
	je .L177		# je .L177
	.L178:		# .L178:
	movq $0, %r13		# movq $0, %r(1077)
	.L177:		# .L177:
	movq %r13, %rdi		# movq %r(1045), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L170:		# .L170:
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
	jle .L181		# jle .L181
	.L180:		# .L180:
	movq %r12, %rbx		# movq %r(y), %r(t)
	movq %r13, %r12		# movq %r(x), %r(y)
	movq %rbx, %r13		# movq %r(t), %r(x)
	.L181:		# .L181:
	movq $0, %rbx		# movq $0, %r(1078)
	cmpq %rbx, %r12		# cmpq %r(1078), %r(y)
	jne .L183		# jne .L183
	.L182:		# .L182:
	movq %r13, %rax		# movq %r(x), %rax
	jmp .L179		# jmp .L179
	.L183:		# .L183:
	movq %r13, %rax		# movq %r(x), %rax
	cltq		# cltq
	idivq %r12		# idivq %r(y)
	movq %rdx, %rbx		# movq %rdx, %r(1079)
	movq %r12, %rdi		# movq %r(y), %rdi
	movq %rbx, %rsi		# movq %r(1079), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1057)
	movq %rbx, %rax		# movq %r(1057), %rax
	jmp .L179		# jmp .L179
	.L179:		# .L179:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
