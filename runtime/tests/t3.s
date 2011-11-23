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
	movq $45, %rbx		# movq $45, %r(46908)
	movq %rbx, %r13		# movq %r(46908), %r(x)
	.L157:		# .L157:
	movq $1, %r14		# movq $1, %r(46909)
	movq $0, %rbx		# movq $0, %r(46910)
	cmpq %rbx, %r13		# cmpq %r(46910), %r(x)
	jg .L160		# jg .L160
	.L161:		# .L161:
	movq $0, %r14		# movq $0, %r(46911)
	.L160:		# .L160:
	movq $0, %rbx		# movq $0, %r(46912)
	cmpq %rbx, %r14		# cmpq %r(46912), %r(46899)
	je .L159		# je .L159
	.L158:		# .L158:
	movq $16, %rbx		# movq $16, %r(46913)
	movq %rbx, %rdi		# movq %r(46913), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46902)
	movq $1, %r12		# movq $1, %r(46914)
	movq %r12, (%rbx)		# movq %r(46914), (%r(46901))
	movq $8, %r12		# movq $8, %r(46915)
	addq %r12, %rbx		# addq %r(46915), %r(46916)
	movq $0, %r12		# movq $0, %r(46917)
	movq %rbx, %r15		# movq %r(46900), %r(46918)
	addq %r12, %r15		# addq %r(46917), %r(46918)
	movq $55, %r12		# movq $55, %r(46919)
	movq %r12, (%r15)		# movq %r(46919), (%r(46918))
	leaq .L162(%rip), %rdi		# leaq .L162(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(46903)
	movq %rbx, %rdi		# movq %r(46900), %rdi
	movq %r12, %rsi		# movq %r(46903), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(46904)
	movq %rbx, %rdi		# movq %r(46904), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	decq %r13		# decq %r(x)
	jmp .L157		# jmp .L157
	.L159:		# .L159:
	.L156:		# .L156:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(46933)
	movq %rbx, -24(%rbp)		# movq %r(46933), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46934)
	movq (%rbx), %r12		# movq (%r(46934)), %r(46921)
	movq %r12, -16(%rbp)		# movq %r(46935), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46936)
	salq $3, %rbx		# salq $3, %r(46922)
	movq $8, %r12		# movq $8, %r(46923)
	addq %r12, %rbx		# addq %r(46923), %r(46924)
	movq %rbx, %rdi		# movq %r(46924), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46906)
	movq %rbx, %r14		# movq %r(46906), %r(t27)
	.L24:		# .L24:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46937)
	salq $3, %r12		# salq $3, %r(46925)
	movq %r14, %r13		# movq %r(t27), %r(46926)
	addq %r12, %r13		# addq %r(46925), %r(46926)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46938)
	movq %rbx, %r12		# movq %r(46938), %r(46927)
	salq $3, %r12		# salq $3, %r(46927)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46939)
	movq %rbx, -8(%rbp)		# movq %r(46940), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46941)
	addq %r12, %rbx		# addq %r(46927), %r(46941)
	movq %rbx, -8(%rbp)		# movq %r(46941), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46942)
	movq (%rbx), %rbx		# movq (%r(46942)), %r(46929)
	movq %rbx, (%r13)		# movq %r(46929), (%r(46926))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46943)
	decq %rbx		# decq %r(46943)
	movq %rbx, -16(%rbp)		# movq %r(46943), -16(%rbp)
	movq $0, %rbx		# movq $0, %r(46930)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46944)
	cmpq %rbx, %r12		# cmpq %r(46930), %r(46944)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(46931)
	movq %r14, %r12		# movq %r(t27), %r(46932)
	addq %rbx, %r12		# addq %r(46931), %r(46932)
	movq %r12, %rax		# movq %r(46932), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(46968)
	movq %rbx, -40(%rbp)		# movq %r(46968), -40(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(46969)
	movq %rbx, -32(%rbp)		# movq %r(46969), -32(%rbp)
	movq $0, %r12		# movq $0, %r(46945)
	movq %r12, -8(%rbp)		# movq %r(46970), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(46946)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(46971)
	subq %rbx, %r13		# subq %r(46946), %r(46947)
	movq (%r13), %r12		# movq (%r(46947)), %r(46948)
	movq %r12, -16(%rbp)		# movq %r(46972), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(46949)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(46973)
	subq %rbx, %r13		# subq %r(46949), %r(46950)
	movq (%r13), %rbx		# movq (%r(46950)), %r(46951)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46974)
	addq %rbx, %r12		# addq %r(46951), %r(46952)
	movq %r12, -64(%rbp)		# movq %r(46975), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(46953)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(46976)
	addq %rbx, %r13		# addq %r(46953), %r(46954)
	movq %r13, %rdi		# movq %r(46954), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(46907)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(46977)
	movq %r12, (%r13)		# movq %r(46977), (%r(111))
	movq $8, %r12		# movq $8, %r(46955)
	addq %r12, %r13		# addq %r(46955), %r(46956)
	movq %r13, -56(%rbp)		# movq %r(46978), -56(%rbp)
	.L46:		# .L46:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46979)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46980)
	cmpq %r12, %rbx		# cmpq %r(46980), %r(46979)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(46981)
	salq $3, %r13		# salq $3, %r(46957)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(46982)
	movq %rbx, -48(%rbp)		# movq %r(46983), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(46984)
	addq %r13, %r12		# addq %r(46957), %r(46984)
	movq %r12, -48(%rbp)		# movq %r(46984), -48(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(46985)
	salq $3, %r13		# salq $3, %r(46959)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(46986)
	movq %rbx, -24(%rbp)		# movq %r(46987), -24(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46988)
	addq %r13, %r12		# addq %r(46959), %r(46988)
	movq %r12, -24(%rbp)		# movq %r(46988), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46989)
	movq (%rbx), %rbx		# movq (%r(46989)), %r(46961)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(46990)
	movq %rbx, (%r12)		# movq %r(46961), (%r(46990))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46991)
	incq %rbx		# incq %r(46991)
	movq %rbx, -8(%rbp)		# movq %r(46991), -8(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46992)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(46993)
	cmpq %r12, %rbx		# cmpq %r(46993), %r(46992)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(46994)
	salq $3, %r13		# salq $3, %r(46962)
	movq -56(%rbp), %r15		# movq -56(%rbp), %r(46995)
	addq %r13, %r15		# addq %r(46962), %r(46963)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46996)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(46997)
	subq %r13, %rbx		# subq %r(46997), %r(46964)
	salq $3, %rbx		# salq $3, %r(46965)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(46998)
	addq %rbx, %r12		# addq %r(46965), %r(46966)
	movq (%r12), %rbx		# movq (%r(46966)), %r(46967)
	movq %rbx, (%r15)		# movq %r(46967), (%r(46963))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46999)
	incq %rbx		# incq %r(46999)
	movq %rbx, -8(%rbp)		# movq %r(46999), -8(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(47000)
	movq %rbx, %rax		# movq %r(47000), %rax
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L162:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

