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
	movq $32, %rbx		# movq $32, %r(921)
	movq %rbx, %rdi		# movq %r(921), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(915)
	movq (%r12), %rbx		# movq (%r(914)), %r(922)
	movq $3, %rbx		# movq $3, %r(922)
	addq $8, %r12		# addq $8, %r(923)
	movq %r12, %r13		# movq %r(913), %r(924)
	addq $0, %r13		# addq $0, %r(924)
	movq (%r13), %rbx		# movq (%r(924)), %r(925)
	movq $7, %rbx		# movq $7, %r(925)
	movq %r12, %r13		# movq %r(913), %r(926)
	addq $8, %r13		# addq $8, %r(926)
	movq (%r13), %rbx		# movq (%r(926)), %r(927)
	movq $8, %rbx		# movq $8, %r(927)
	movq %r12, %rbx		# movq %r(913), %r(928)
	addq $16, %rbx		# addq $16, %r(928)
	movq (%rbx), %rbx		# movq (%r(928)), %r(929)
	movq $9, %rbx		# movq $9, %r(929)
	movq %r12, %rdi		# movq %r(a), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	.L220:		# .L220:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Ig_i
_Ig_i:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $60, %rax		# movq $60, %rax
	jmp .L222		# jmp .L222
	.L222:		# .L222:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _I_c_dynamalloc_aiai
_I_c_dynamalloc_aiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(959)
	movq %rbx, -40(%rbp)		# movq %r(959), -40(%rbp)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(960)
	subq $8, %r12		# subq $8, %r(930)
	movq (%r12), %r12		# movq (%r(930)), %r(931)
	movq %r12, -56(%rbp)		# movq %r(961), -56(%rbp)
	movq $1, %rbx		# movq $1, %r(962)
	movq %rbx, -48(%rbp)		# movq %r(962), -48(%rbp)
	movq $0, %rbx		# movq $0, %r(932)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(963)
	cmpq %rbx, %r12		# cmpq %r(932), %r(963)
	jne .L161		# jne .L161
	.L162:		# .L162:
	movq $0, %rax		# movq $0, %rax
	jmp .L163		# jmp .L163
	.L161:		# .L161:
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(964)
	salq $3, %r12		# salq $3, %r(933)
	movq %r12, %rdi		# movq %r(933), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(917)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(965)
	subq $1, %r13		# subq $1, %r(934)
	movq %r13, (%rbx)		# movq %r(934), (%r(521))
	addq $8, %rbx		# addq $8, %r(935)
	movq %rbx, -24(%rbp)		# movq %r(966), -24(%rbp)
	.L164:		# .L164:
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(967)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(968)
	cmpq %r12, %rbx		# cmpq %r(968), %r(967)
	jge .L165		# jge .L165
	.L166:		# .L166:
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(969)
	movq %r12, -64(%rbp)		# movq %r(970), -64(%rbp)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(971)
	movq %r12, -80(%rbp)		# movq %r(972), -80(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(973)
	subq $8, %r12		# subq $8, %r(936)
	movq (%r12), %rbx		# movq (%r(936)), %r(937)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(974)
	cmpq %rbx, %r12		# cmpq %r(937), %r(974)
	jae error_outofbounds		# jae error_outofbounds
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(975)
	movq %r12, -16(%rbp)		# movq %r(976), -16(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(977)
	subq $1, %rbx		# subq $1, %r(938)
	movq %rbx, -32(%rbp)		# movq %r(978), -32(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(979)
	subq $8, %r12		# subq $8, %r(939)
	movq (%r12), %rbx		# movq (%r(939)), %r(940)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(980)
	cmpq %rbx, %r12		# cmpq %r(940), %r(980)
	jae error_outofbounds		# jae error_outofbounds
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(981)
	salq $3, %r13		# salq $3, %r(941)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(982)
	movq %rbx, -88(%rbp)		# movq %r(983), -88(%rbp)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(984)
	addq %r13, %r12		# addq %r(941), %r(984)
	movq %r12, -88(%rbp)		# movq %r(984), -88(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(985)
	movq %r12, -96(%rbp)		# movq %r(986), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(987)
	salq $3, %rbx		# salq $3, %r(987)
	movq %rbx, -96(%rbp)		# movq %r(987), -96(%rbp)
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(988)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(989)
	addq %r12, %r13		# addq %r(989), %r(944)
	movq (%r13), %rbx		# movq (%r(944)), %r(945)
	movq -88(%rbp), %r12		# movq -88(%rbp), %r(990)
	movq %rbx, (%r12)		# movq %r(945), (%r(990))
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(991)
	incq %rbx		# incq %r(991)
	movq %rbx, -48(%rbp)		# movq %r(991), -48(%rbp)
	jmp .L164		# jmp .L164
	.L165:		# .L165:
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(992)
	movq $0, %rbx		# movq $0, %r(528)
	movq %r13, %r14		# movq %r(527), %r(946)
	subq $8, %r14		# subq $8, %r(946)
	movq (%r14), %r12		# movq (%r(946)), %r(947)
	cmpq %r12, %rbx		# cmpq %r(947), %r(528)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %rbx		# salq $3, %r(948)
	addq %rbx, %r13		# addq %r(948), %r(949)
	movq (%r13), %r12		# movq (%r(949)), %r(950)
	movq %r12, -48(%rbp)		# movq %r(993), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(994)
	addq $1, %rbx		# addq $1, %r(951)
	salq $3, %rbx		# salq $3, %r(952)
	movq %rbx, %rdi		# movq %r(952), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(918)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(995)
	movq %r12, (%r14)		# movq %r(995), (%r(530))
	addq $8, %r14		# addq $8, %r(953)
	.L170:		# .L170:
	movq $0, %r12		# movq $0, %r(954)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(996)
	cmpq %r12, %r13		# cmpq %r(954), %r(996)
	jle .L171		# jle .L171
	.L172:		# .L172:
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(997)
	decq %r12		# decq %r(997)
	movq %r12, -48(%rbp)		# movq %r(997), -48(%rbp)
	movq -24(%rbp), %r12		# movq -24(%rbp), %r(998)
	movq %r12, %rdi		# movq %r(998), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %r12		# movq %rax, %r(919)
	movq %r12, -72(%rbp)		# movq %r(999), -72(%rbp)
	movq %r14, %rbx		# movq %r(list), %r(1000)
	movq %rbx, -8(%rbp)		# movq %r(1000), -8(%rbp)
	movq -48(%rbp), %r15		# movq -48(%rbp), %r(1001)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(1002)
	subq $8, %r12		# subq $8, %r(955)
	movq (%r12), %r13		# movq (%r(955)), %r(956)
	cmpq %r13, %r15		# cmpq %r(956), %r(535)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r15		# salq $3, %r(957)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(1003)
	addq %r15, %rbx		# addq %r(957), %r(958)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(1004)
	movq %r12, (%rbx)		# movq %r(1004), (%r(958))
	jmp .L170		# jmp .L170
	.L171:		# .L171:
	movq %r14, %rax		# movq %r(list), %rax
	jmp .L163		# jmp .L163
	.L163:		# .L163:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
error_outofbounds:
call _I_outOfBounds_p
