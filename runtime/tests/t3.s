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
	movq $45, %rbx		# movq $45, %r(46885)
	movq %rbx, %r13		# movq %r(46885), %r(x)
	.L157:		# .L157:
	movq $1, %r14		# movq $1, %r(46886)
	movq $0, %rbx		# movq $0, %r(46887)
	cmpq %rbx, %r13		# cmpq %r(46887), %r(x)
	jg .L160		# jg .L160
	.L161:		# .L161:
	movq $0, %r14		# movq $0, %r(46888)
	.L160:		# .L160:
	movq $0, %rbx		# movq $0, %r(46889)
	cmpq %rbx, %r14		# cmpq %r(46889), %r(46876)
	je .L159		# je .L159
	.L158:		# .L158:
	movq $16, %rbx		# movq $16, %r(46890)
	movq %rbx, %rdi		# movq %r(46890), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46879)
	movq $1, %r12		# movq $1, %r(46891)
	movq %r12, (%rbx)		# movq %r(46891), (%r(46878))
	movq $8, %r12		# movq $8, %r(46892)
	addq %r12, %rbx		# addq %r(46892), %r(46893)
	movq $0, %r12		# movq $0, %r(46894)
	movq %rbx, %r15		# movq %r(46877), %r(46895)
	addq %r12, %r15		# addq %r(46894), %r(46895)
	movq $55, %r12		# movq $55, %r(46896)
	movq %r12, (%r15)		# movq %r(46896), (%r(46895))
	leaq .L162(%rip), %rdi		# leaq .L162(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(46880)
	movq %rbx, %rdi		# movq %r(46877), %rdi
	movq %r12, %rsi		# movq %r(46880), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(46881)
	movq %rbx, %rdi		# movq %r(46881), %rdi
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
	movq %rdi, %rbx		# movq %rdi, %r(46910)
	movq %rbx, -8(%rbp)		# movq %r(46910), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46911)
	movq (%rbx), %r12		# movq (%r(46911)), %r(46898)
	movq %r12, -24(%rbp)		# movq %r(46912), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46913)
	salq $3, %rbx		# salq $3, %r(46899)
	movq $8, %r12		# movq $8, %r(46900)
	addq %r12, %rbx		# addq %r(46900), %r(46901)
	movq %rbx, %rdi		# movq %r(46901), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(46883)
	movq %rbx, %r14		# movq %r(46883), %r(t27)
	.L24:		# .L24:
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46914)
	salq $3, %r12		# salq $3, %r(46902)
	movq %r14, %r13		# movq %r(t27), %r(46903)
	addq %r12, %r13		# addq %r(46902), %r(46903)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46915)
	movq %rbx, %r12		# movq %r(46915), %r(46904)
	salq $3, %r12		# salq $3, %r(46904)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46916)
	movq %rbx, -16(%rbp)		# movq %r(46917), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46918)
	addq %r12, %rbx		# addq %r(46904), %r(46918)
	movq %rbx, -16(%rbp)		# movq %r(46918), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(46919)
	movq (%rbx), %rbx		# movq (%r(46919)), %r(46906)
	movq %rbx, (%r13)		# movq %r(46906), (%r(46903))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(46920)
	decq %rbx		# decq %r(46920)
	movq %rbx, -24(%rbp)		# movq %r(46920), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(46907)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46921)
	cmpq %rbx, %r12		# cmpq %r(46907), %r(46921)
	jge .L24		# jge .L24
	.L25:		# .L25:
	movq $8, %rbx		# movq $8, %r(46908)
	movq %r14, %r12		# movq %r(t27), %r(46909)
	addq %rbx, %r12		# addq %r(46908), %r(46909)
	movq %r12, %rax		# movq %r(46909), %rax
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
	movq %rdi, %rbx		# movq %rdi, %r(46945)
	movq %rbx, -32(%rbp)		# movq %r(46945), -32(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(46946)
	movq %rbx, -24(%rbp)		# movq %r(46946), -24(%rbp)
	movq $0, %r12		# movq $0, %r(46922)
	movq %r12, -8(%rbp)		# movq %r(46947), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(46923)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(46948)
	subq %rbx, %r13		# subq %r(46923), %r(46924)
	movq (%r13), %r12		# movq (%r(46924)), %r(46925)
	movq %r12, -16(%rbp)		# movq %r(46949), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(46926)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(46950)
	subq %rbx, %r13		# subq %r(46926), %r(46927)
	movq (%r13), %rbx		# movq (%r(46927)), %r(46928)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46951)
	addq %rbx, %r12		# addq %r(46928), %r(46929)
	movq %r12, -64(%rbp)		# movq %r(46952), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(46930)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(46953)
	addq %rbx, %r13		# addq %r(46930), %r(46931)
	movq %r13, %rdi		# movq %r(46931), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r13		# movq %rax, %r(46884)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(46954)
	movq %r12, (%r13)		# movq %r(46954), (%r(111))
	movq $8, %r12		# movq $8, %r(46932)
	addq %r12, %r13		# addq %r(46932), %r(46933)
	movq %r13, -56(%rbp)		# movq %r(46955), -56(%rbp)
	.L46:		# .L46:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46956)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(46957)
	cmpq %r12, %rbx		# cmpq %r(46957), %r(46956)
	jge .L48		# jge .L48
	.L47:		# .L47:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(46958)
	salq $3, %r13		# salq $3, %r(46934)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(46959)
	movq %rbx, -40(%rbp)		# movq %r(46960), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(46961)
	addq %r13, %r12		# addq %r(46934), %r(46961)
	movq %r12, -40(%rbp)		# movq %r(46961), -40(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(46962)
	salq $3, %r13		# salq $3, %r(46936)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(46963)
	movq %rbx, -48(%rbp)		# movq %r(46964), -48(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(46965)
	addq %r13, %r12		# addq %r(46936), %r(46965)
	movq %r12, -48(%rbp)		# movq %r(46965), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(46966)
	movq (%rbx), %rbx		# movq (%r(46966)), %r(46938)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(46967)
	movq %rbx, (%r12)		# movq %r(46938), (%r(46967))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46968)
	incq %rbx		# incq %r(46968)
	movq %rbx, -8(%rbp)		# movq %r(46968), -8(%rbp)
	jmp .L46		# jmp .L46
	.L48:		# .L48:
	.L49:		# .L49:
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46969)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(46970)
	cmpq %r12, %rbx		# cmpq %r(46970), %r(46969)
	jge .L51		# jge .L51
	.L50:		# .L50:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(46971)
	salq $3, %r13		# salq $3, %r(46939)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(46972)
	addq %r13, %r14		# addq %r(46939), %r(46940)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46973)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(46974)
	subq %r13, %rbx		# subq %r(46974), %r(46941)
	salq $3, %rbx		# salq $3, %r(46942)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(46975)
	addq %rbx, %r12		# addq %r(46942), %r(46943)
	movq (%r12), %rbx		# movq (%r(46943)), %r(46944)
	movq %rbx, (%r14)		# movq %r(46944), (%r(46940))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(46976)
	incq %rbx		# incq %r(46976)
	movq %rbx, -8(%rbp)		# movq %r(46976), -8(%rbp)
	jmp .L49		# jmp .L49
	.L51:		# .L51:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(46977)
	movq %rbx, %rax		# movq %r(46977), %rax
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

