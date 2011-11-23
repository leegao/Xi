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
	movq $1, %r13		# movq $1, %r(1001)
	movq %r13, %r13		# movq %r(1001), %r(985)
	movq $27, %rbx		# movq $27, %r(1002)
	movq $13, %r12		# movq $13, %r(1003)
	movq %rbx, %rdi		# movq %r(1002), %rdi
	movq %r12, %rsi		# movq %r(1003), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(992)
	movq $1, %r12		# movq $1, %r(1004)
	cmpq %rbx, %r12		# cmpq %r(992), %r(1004)
	je .L151		# je .L151
	.L152:		# .L152:
	movq $0, %r13		# movq $0, %r(1005)
	movq %r13, %r13		# movq %r(1005), %r(985)
	.L151:		# .L151:
	movq %r13, %rdi		# movq %r(985), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1006)
	movq %r13, %r13		# movq %r(1006), %r(986)
	movq $27, %rbx		# movq $27, %r(1007)
	movq $9, %r12		# movq $9, %r(1008)
	movq %rbx, %rdi		# movq %r(1007), %rdi
	movq %r12, %rsi		# movq %r(1008), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(994)
	movq $9, %r12		# movq $9, %r(1009)
	cmpq %rbx, %r12		# cmpq %r(994), %r(1009)
	je .L153		# je .L153
	.L154:		# .L154:
	movq $0, %r13		# movq $0, %r(1010)
	movq %r13, %r13		# movq %r(1010), %r(986)
	.L153:		# .L153:
	movq %r13, %rdi		# movq %r(986), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1011)
	movq %r13, %r13		# movq %r(1011), %r(987)
	movq $25, %rbx		# movq $25, %r(1012)
	movq $55, %r12		# movq $55, %r(1013)
	movq %rbx, %rdi		# movq %r(1012), %rdi
	movq %r12, %rsi		# movq %r(1013), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(996)
	movq $5, %r12		# movq $5, %r(1014)
	cmpq %rbx, %r12		# cmpq %r(996), %r(1014)
	je .L155		# je .L155
	.L156:		# .L156:
	movq $0, %r13		# movq $0, %r(1015)
	movq %r13, %r13		# movq %r(1015), %r(987)
	.L155:		# .L155:
	movq %r13, %rdi		# movq %r(987), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1016)
	movq %r13, %r13		# movq %r(1016), %r(988)
	movq $4008, %rbx		# movq $4008, %r(1017)
	movq $6012, %r12		# movq $6012, %r(1018)
	movq %rbx, %rdi		# movq %r(1017), %rdi
	movq %r12, %rsi		# movq %r(1018), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(998)
	movq $2004, %r12		# movq $2004, %r(1019)
	cmpq %rbx, %r12		# cmpq %r(998), %r(1019)
	je .L157		# je .L157
	.L158:		# .L158:
	movq $0, %r13		# movq $0, %r(1020)
	movq %r13, %r13		# movq %r(1020), %r(988)
	.L157:		# .L157:
	movq %r13, %rdi		# movq %r(988), %rdi
	call _Iassert_pb		# call _Iassert_pb
	.L150:		# .L150:
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
	jle .L161		# jle .L161
	.L160:		# .L160:
	movq %r12, %rbx		# movq %r(y), %r(t)
	movq %r13, %r12		# movq %r(x), %r(y)
	movq %rbx, %r13		# movq %r(t), %r(x)
	.L161:		# .L161:
	movq $0, %rbx		# movq $0, %r(1021)
	cmpq %rbx, %r12		# cmpq %r(1021), %r(y)
	jne .L163		# jne .L163
	.L162:		# .L162:
	movq %r13, %rax		# movq %r(x), %rax
	jmp .L159		# jmp .L159
	.L163:		# .L163:
	movq %r13, %rax		# movq %r(x), %rax
	movq $0, %rdx		# movq $0, %rdx
	idivq %r12		# idivq %r(y)
	movq %rdx, %rbx		# movq %rdx, %r(1022)
	movq %r12, %rdi		# movq %r(y), %rdi
	movq %rbx, %rsi		# movq %r(1022), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1000)
	movq %rbx, %rax		# movq %r(1000), %rax
	jmp .L159		# jmp .L159
	.L159:		# .L159:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
