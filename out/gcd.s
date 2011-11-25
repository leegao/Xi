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
	movq $1, %r12		# movq $1, %r(2023)
	movq %r12, %r13		# movq %r(2023), %r(2007)
	movq $27, %rbx		# movq $27, %r(2024)
	movq $13, %r12		# movq $13, %r(2025)
	movq %rbx, %rdi		# movq %r(2024), %rdi
	movq %r12, %rsi		# movq %r(2025), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2014)
	movq $1, %r12		# movq $1, %r(2026)
	cmpq %rbx, %r12		# cmpq %r(2014), %r(2026)
	je .L346		# je .L346
	.L347:		# .L347:
	movq $0, %r12		# movq $0, %r(2027)
	movq %r12, %r13		# movq %r(2027), %r(2007)
	jmp .L346		# jmp .L346
	.L346:		# .L346:
	movq %r13, %rdi		# movq %r(2007), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2028)
	movq %r12, %r13		# movq %r(2028), %r(2008)
	movq $27, %rbx		# movq $27, %r(2029)
	movq $9, %r12		# movq $9, %r(2030)
	movq %rbx, %rdi		# movq %r(2029), %rdi
	movq %r12, %rsi		# movq %r(2030), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2016)
	movq $9, %r12		# movq $9, %r(2031)
	cmpq %rbx, %r12		# cmpq %r(2016), %r(2031)
	je .L348		# je .L348
	.L349:		# .L349:
	movq $0, %r12		# movq $0, %r(2032)
	movq %r12, %r13		# movq %r(2032), %r(2008)
	jmp .L348		# jmp .L348
	.L348:		# .L348:
	movq %r13, %rdi		# movq %r(2008), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2033)
	movq %r12, %r13		# movq %r(2033), %r(2009)
	movq $25, %rbx		# movq $25, %r(2034)
	movq $55, %r12		# movq $55, %r(2035)
	movq %rbx, %rdi		# movq %r(2034), %rdi
	movq %r12, %rsi		# movq %r(2035), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2018)
	movq $5, %r12		# movq $5, %r(2036)
	cmpq %rbx, %r12		# cmpq %r(2018), %r(2036)
	je .L350		# je .L350
	.L351:		# .L351:
	movq $0, %r12		# movq $0, %r(2037)
	movq %r12, %r13		# movq %r(2037), %r(2009)
	jmp .L350		# jmp .L350
	.L350:		# .L350:
	movq %r13, %rdi		# movq %r(2009), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r12		# movq $1, %r(2038)
	movq %r12, %r13		# movq %r(2038), %r(2010)
	movq $4008, %rbx		# movq $4008, %r(2039)
	movq $6012, %r12		# movq $6012, %r(2040)
	movq %rbx, %rdi		# movq %r(2039), %rdi
	movq %r12, %rsi		# movq %r(2040), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2020)
	movq $2004, %r12		# movq $2004, %r(2041)
	cmpq %rbx, %r12		# cmpq %r(2020), %r(2041)
	je .L352		# je .L352
	.L353:		# .L353:
	movq $0, %r12		# movq $0, %r(2042)
	movq %r12, %r13		# movq %r(2042), %r(2010)
	jmp .L352		# jmp .L352
	.L352:		# .L352:
	movq %r13, %rdi		# movq %r(2010), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L345		# jmp .L345
	.L345:		# .L345:
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
	movq %rdi, %r12		# movq %rdi, %r(x)
	movq %rsi, %r13		# movq %rsi, %r(y)
	cmpq %r12, %r13		# cmpq %r(x), %r(y)
	jle .L356		# jle .L356
	.L355:		# .L355:
	movq %r13, %rbx		# movq %r(y), %r(t)
	movq %r12, %r13		# movq %r(x), %r(y)
	movq %rbx, %r12		# movq %r(t), %r(x)
	jmp .L356		# jmp .L356
	.L356:		# .L356:
	movq $0, %rbx		# movq $0, %r(2043)
	cmpq %rbx, %r13		# cmpq %r(2043), %r(y)
	jne .L358		# jne .L358
	.L357:		# .L357:
	movq %r12, %rax		# movq %r(x), %rax
	jmp .L354		# jmp .L354
	.L354:		# .L354:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L358:		# .L358:
	movq %r12, %rax		# movq %r(x), %rax
	cqto		# cqto
	idivq %r13		# idivq %r(y)
	movq %rdx, %rbx		# movq %rdx, %r(2044)
	movq %r13, %rdi		# movq %r(y), %rdi
	movq %rbx, %rsi		# movq %r(2044), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(2022)
	movq %rbx, %rax		# movq %r(2022), %rax
	jmp .L354		# jmp .L354
	
