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
	movq $1, %r13		# movq $1, %r(1064)
	movq $27, %rbx		# movq $27, %r(1065)
	movq $13, %r12		# movq $13, %r(1066)
	movq %rbx, %rdi		# movq %r(1065), %rdi
	movq %r12, %rsi		# movq %r(1066), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1055)
	movq $1, %r12		# movq $1, %r(1067)
	cmpq %rbx, %r12		# cmpq %r(1055), %r(1067)
	je .L172		# je .L172
	.L173:		# .L173:
	movq $0, %r13		# movq $0, %r(1068)
	.L172:		# .L172:
	movq %r13, %rdi		# movq %r(1048), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1069)
	movq $27, %rbx		# movq $27, %r(1070)
	movq $9, %r12		# movq $9, %r(1071)
	movq %rbx, %rdi		# movq %r(1070), %rdi
	movq %r12, %rsi		# movq %r(1071), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1057)
	movq $9, %r12		# movq $9, %r(1072)
	cmpq %rbx, %r12		# cmpq %r(1057), %r(1072)
	je .L174		# je .L174
	.L175:		# .L175:
	movq $0, %r13		# movq $0, %r(1073)
	.L174:		# .L174:
	movq %r13, %rdi		# movq %r(1049), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1074)
	movq $25, %rbx		# movq $25, %r(1075)
	movq $55, %r12		# movq $55, %r(1076)
	movq %rbx, %rdi		# movq %r(1075), %rdi
	movq %r12, %rsi		# movq %r(1076), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1059)
	movq $5, %r12		# movq $5, %r(1077)
	cmpq %rbx, %r12		# cmpq %r(1059), %r(1077)
	je .L176		# je .L176
	.L177:		# .L177:
	movq $0, %r13		# movq $0, %r(1078)
	.L176:		# .L176:
	movq %r13, %rdi		# movq %r(1050), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1079)
	movq $4008, %rbx		# movq $4008, %r(1080)
	movq $6012, %r12		# movq $6012, %r(1081)
	movq %rbx, %rdi		# movq %r(1080), %rdi
	movq %r12, %rsi		# movq %r(1081), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1061)
	movq $2004, %r12		# movq $2004, %r(1082)
	cmpq %rbx, %r12		# cmpq %r(1061), %r(1082)
	je .L178		# je .L178
	.L179:		# .L179:
	movq $0, %r13		# movq $0, %r(1083)
	.L178:		# .L178:
	movq %r13, %rdi		# movq %r(1051), %rdi
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
	movq $0, %rbx		# movq $0, %r(1084)
	cmpq %rbx, %r12		# cmpq %r(1084), %r(y)
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
	movq %rdx, %rbx		# movq %rdx, %r(1085)
	movq %r12, %rdi		# movq %r(y), %rdi
	movq %rbx, %rsi		# movq %r(1085), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1063)
	movq %rbx, %rax		# movq %r(1063), %rax
	jmp .L180		# jmp .L180
	
