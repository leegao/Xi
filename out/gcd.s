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
	movq $1, %r13		# movq $1, %r(1874)
	movq $27, %rbx		# movq $27, %r(1875)
	movq $13, %r12		# movq $13, %r(1876)
	movq %rbx, %rdi		# movq %r(1875), %rdi
	movq %r12, %rsi		# movq %r(1876), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1865)
	movq $1, %r12		# movq $1, %r(1877)
	cmpq %rbx, %r12		# cmpq %r(1865), %r(1877)
	je .L346		# je .L346
	.L347:		# .L347:
	movq $0, %r13		# movq $0, %r(1878)
	jmp .L346		# jmp .L346
	.L346:		# .L346:
	movq %r13, %rdi		# movq %r(1858), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1879)
	movq $27, %rbx		# movq $27, %r(1880)
	movq $9, %r12		# movq $9, %r(1881)
	movq %rbx, %rdi		# movq %r(1880), %rdi
	movq %r12, %rsi		# movq %r(1881), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1867)
	movq $9, %r12		# movq $9, %r(1882)
	cmpq %rbx, %r12		# cmpq %r(1867), %r(1882)
	je .L348		# je .L348
	.L349:		# .L349:
	movq $0, %r13		# movq $0, %r(1883)
	jmp .L348		# jmp .L348
	.L348:		# .L348:
	movq %r13, %rdi		# movq %r(1859), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1884)
	movq $25, %rbx		# movq $25, %r(1885)
	movq $55, %r12		# movq $55, %r(1886)
	movq %rbx, %rdi		# movq %r(1885), %rdi
	movq %r12, %rsi		# movq %r(1886), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1869)
	movq $5, %r12		# movq $5, %r(1887)
	cmpq %rbx, %r12		# cmpq %r(1869), %r(1887)
	je .L350		# je .L350
	.L351:		# .L351:
	movq $0, %r13		# movq $0, %r(1888)
	jmp .L350		# jmp .L350
	.L350:		# .L350:
	movq %r13, %rdi		# movq %r(1860), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $1, %r13		# movq $1, %r(1889)
	movq $4008, %rbx		# movq $4008, %r(1890)
	movq $6012, %r12		# movq $6012, %r(1891)
	movq %rbx, %rdi		# movq %r(1890), %rdi
	movq %r12, %rsi		# movq %r(1891), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1871)
	movq $2004, %r12		# movq $2004, %r(1892)
	cmpq %rbx, %r12		# cmpq %r(1871), %r(1892)
	je .L352		# je .L352
	.L353:		# .L353:
	movq $0, %r13		# movq $0, %r(1893)
	jmp .L352		# jmp .L352
	.L352:		# .L352:
	movq %r13, %rdi		# movq %r(1861), %rdi
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
	movq %rdi, %r13		# movq %rdi, %r(x)
	movq %rsi, %r12		# movq %rsi, %r(y)
	cmpq %r13, %r12		# cmpq %r(x), %r(y)
	jle .L356		# jle .L356
	.L355:		# .L355:
	movq %r12, %rbx		# movq %r(y), %r(t)
	movq %r13, %r12		# movq %r(x), %r(y)
	movq %rbx, %r13		# movq %r(t), %r(x)
	jmp .L356		# jmp .L356
	.L356:		# .L356:
	movq $0, %rbx		# movq $0, %r(1894)
	cmpq %rbx, %r12		# cmpq %r(1894), %r(y)
	jne .L358		# jne .L358
	.L357:		# .L357:
	movq %r13, %rax		# movq %r(x), %rax
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
	movq %r13, %rax		# movq %r(x), %rax
	cqto		# cqto
	idivq %r12		# idivq %r(y)
	movq %rdx, %rbx		# movq %rdx, %r(1895)
	movq %r12, %rdi		# movq %r(y), %rdi
	movq %rbx, %rsi		# movq %r(1895), %rsi
	call _Igcd_iii		# call _Igcd_iii
	movq %rax, %rbx		# movq %rax, %r(1873)
	movq %rbx, %rax		# movq %r(1873), %rax
	jmp .L354		# jmp .L354
	
