.att_syntax prefix
.text
.globl _Isort_pai
_Isort_pai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(4974)
	movq %rbx, -48(%rbp)		# movq %r(4974), -48(%rbp)
	movq $0, %r12		# movq $0, %r(4929)
	movq %r12, -72(%rbp)		# movq %r(4975), -72(%rbp)
	movq $8, %rbx		# movq $8, %r(4930)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4976)
	subq %rbx, %r13		# subq %r(4930), %r(4931)
	movq (%r13), %r12		# movq (%r(4931)), %r(4932)
	movq %r12, -24(%rbp)		# movq %r(4977), -24(%rbp)
	jmp .L922		# jmp .L922
	.L922:		# .L922:
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(4978)
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4979)
	cmpq %rbx, %r12		# cmpq %r(4978), %r(4979)
	jge .L924		# jge .L924
	.L923:		# .L923:
	movq -72(%rbp), %r12		# movq -72(%rbp), %r(4980)
	movq %r12, -40(%rbp)		# movq %r(4981), -40(%rbp)
	jmp .L925		# jmp .L925
	.L925:		# .L925:
	movq $0, %rbx		# movq $0, %r(4933)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4982)
	cmpq %rbx, %r12		# cmpq %r(4933), %r(4982)
	jle .L927		# jle .L927
	.L926:		# .L926:
	movq $1, %rbx		# movq $1, %r(4934)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4983)
	subq %rbx, %r12		# subq %r(4934), %r(4935)
	movq %r12, -8(%rbp)		# movq %r(4984), -8(%rbp)
	movq $8, %rbx		# movq $8, %r(4936)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4985)
	subq %rbx, %r13		# subq %r(4936), %r(4937)
	movq (%r13), %rbx		# movq (%r(4937)), %r(4938)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(4986)
	cmpq %rbx, %r12		# cmpq %r(4938), %r(4986)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(4939)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4987)
	subq %rbx, %r13		# subq %r(4939), %r(4940)
	movq (%r13), %rbx		# movq (%r(4940)), %r(4941)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4988)
	cmpq %rbx, %r12		# cmpq %r(4941), %r(4988)
	jae error_outofbounds		# jae error_outofbounds
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(4989)
	salq $3, %r13		# salq $3, %r(4942)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4990)
	addq %r13, %rbx		# addq %r(4942), %r(4943)
	movq (%rbx), %r13		# movq (%r(4943)), %r(4944)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(4991)
	salq $3, %r14		# salq $3, %r(4945)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4992)
	movq %rbx, -80(%rbp)		# movq %r(4993), -80(%rbp)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(4994)
	addq %r14, %r12		# addq %r(4945), %r(4994)
	movq %r12, -80(%rbp)		# movq %r(4994), -80(%rbp)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(4995)
	movq (%rbx), %rbx		# movq (%r(4995)), %r(4947)
	cmpq %rbx, %r13		# cmpq %r(4947), %r(4944)
	jle .L933		# jle .L933
	.L932:		# .L932:
	movq $8, %rbx		# movq $8, %r(4948)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(4996)
	subq %rbx, %r13		# subq %r(4948), %r(4949)
	movq (%r13), %rbx		# movq (%r(4949)), %r(4950)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(4997)
	cmpq %rbx, %r12		# cmpq %r(4950), %r(4997)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(4998)
	salq $3, %r13		# salq $3, %r(4951)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(4999)
	addq %r13, %rbx		# addq %r(4951), %r(4952)
	movq (%rbx), %r12		# movq (%r(4952)), %r(4953)
	movq %r12, -64(%rbp)		# movq %r(5000), -64(%rbp)
	movq $1, %rbx		# movq $1, %r(4954)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5001)
	subq %rbx, %r12		# subq %r(4954), %r(4955)
	movq %r12, -56(%rbp)		# movq %r(5002), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(4956)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(5003)
	subq %rbx, %r13		# subq %r(4956), %r(4957)
	movq (%r13), %rbx		# movq (%r(4957)), %r(4958)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(5004)
	cmpq %rbx, %r12		# cmpq %r(4958), %r(5004)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(4959)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(5005)
	subq %rbx, %r13		# subq %r(4959), %r(4960)
	movq (%r13), %rbx		# movq (%r(4960)), %r(4961)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(5006)
	cmpq %rbx, %r12		# cmpq %r(4961), %r(5006)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(5007)
	salq $3, %r13		# salq $3, %r(4962)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5008)
	movq %rbx, -32(%rbp)		# movq %r(5009), -32(%rbp)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5010)
	addq %r13, %r12		# addq %r(4962), %r(5010)
	movq %r12, -32(%rbp)		# movq %r(5010), -32(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5011)
	salq $3, %r13		# salq $3, %r(4964)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5012)
	addq %r13, %rbx		# addq %r(4964), %r(4965)
	movq (%rbx), %rbx		# movq (%r(4965)), %r(4966)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5013)
	movq %rbx, (%r12)		# movq %r(4966), (%r(5013))
	movq $1, %rbx		# movq $1, %r(4967)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(5014)
	subq %rbx, %r14		# subq %r(4967), %r(4968)
	movq $8, %r13		# movq $8, %r(4969)
	movq -48(%rbp), %r12		# movq -48(%rbp), %r(5015)
	movq %r12, -16(%rbp)		# movq %r(5016), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5017)
	subq %r13, %rbx		# subq %r(4969), %r(5017)
	movq %rbx, -16(%rbp)		# movq %r(5017), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5018)
	movq (%rbx), %rbx		# movq (%r(5018)), %r(4971)
	cmpq %rbx, %r14		# cmpq %r(4971), %r(4899)
	jae error_outofbounds		# jae error_outofbounds
	salq $3, %r14		# salq $3, %r(4972)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(5019)
	addq %r14, %r13		# addq %r(4972), %r(4973)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5020)
	movq %r12, (%r13)		# movq %r(5020), (%r(4973))
	jmp .L933		# jmp .L933
	.L933:		# .L933:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5021)
	decq %rbx		# decq %r(5021)
	movq %rbx, -40(%rbp)		# movq %r(5021), -40(%rbp)
	jmp .L925		# jmp .L925
	.L927:		# .L927:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5022)
	incq %rbx		# incq %r(5022)
	movq %rbx, -72(%rbp)		# movq %r(5022), -72(%rbp)
	jmp .L922		# jmp .L922
	.L924:		# .L924:
	jmp .L921		# jmp .L921
	.L921:		# .L921:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(msg)
	movq %rsi, %r12		# movq %rsi, %r(result)
	leaq .L943(%rip), %rdi		# leaq .L943(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(4914)
	movq %r13, %rdi		# movq %r(4914), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(msg), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(result), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L942		# jmp .L942
	.L942:		# .L942:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IassertSameArray_paiai
_IassertSameArray_paiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $112, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5051)
	movq %rbx, -56(%rbp)		# movq %r(5051), -56(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(5052)
	movq %rbx, -8(%rbp)		# movq %r(5052), -8(%rbp)
	leaq .L945(%rip), %rdi		# leaq .L945(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5053)
	movq %rbx, -88(%rbp)		# movq %r(5053), -88(%rbp)
	movq $1, %r12		# movq $1, %r(5025)
	movq %r12, -40(%rbp)		# movq %r(5054), -40(%rbp)
	movq $8, %rbx		# movq $8, %r(5026)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5055)
	subq %rbx, %r13		# subq %r(5026), %r(5027)
	movq (%r13), %r13		# movq (%r(5027)), %r(5028)
	movq $8, %r12		# movq $8, %r(5029)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(5056)
	movq %r14, -96(%rbp)		# movq %r(5057), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(5058)
	subq %r12, %rbx		# subq %r(5029), %r(5058)
	movq %rbx, -96(%rbp)		# movq %r(5058), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(5059)
	movq (%rbx), %rbx		# movq (%r(5059)), %r(5031)
	cmpq %rbx, %r13		# cmpq %r(5031), %r(5028)
	je .L946		# je .L946
	.L947:		# .L947:
	movq $0, %r12		# movq $0, %r(5032)
	movq %r12, -40(%rbp)		# movq %r(5060), -40(%rbp)
	jmp .L946		# jmp .L946
	.L946:		# .L946:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(5061)
	movq %rbx, %rdi		# movq %r(5061), %rdi
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(5062)
	movq %rbx, %rsi		# movq %r(5062), %rsi
	call _Itest_paib		# call _Itest_paib
	movq $0, %r12		# movq $0, %r(5033)
	movq %r12, -16(%rbp)		# movq %r(5063), -16(%rbp)
	jmp .L948		# jmp .L948
	.L948:		# .L948:
	movq $8, %rbx		# movq $8, %r(5034)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5064)
	subq %rbx, %r13		# subq %r(5034), %r(5035)
	movq (%r13), %rbx		# movq (%r(5035)), %r(5036)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5065)
	cmpq %rbx, %r12		# cmpq %r(5036), %r(5065)
	jge .L950		# jge .L950
	.L949:		# .L949:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5066)
	movq %rbx, %rdi		# movq %r(5066), %rdi
	call _IunparseInt_aii		# call _IunparseInt_aii
	movq %rax, %rbx		# movq %rax, %r(5067)
	movq %rbx, -72(%rbp)		# movq %r(5067), -72(%rbp)
	movq $1, %r12		# movq $1, %r(5037)
	movq %r12, -80(%rbp)		# movq %r(5068), -80(%rbp)
	movq $8, %r12		# movq $8, %r(5038)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(5069)
	movq %r13, -24(%rbp)		# movq %r(5070), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5071)
	subq %r12, %rbx		# subq %r(5038), %r(5071)
	movq %rbx, -24(%rbp)		# movq %r(5071), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5072)
	movq (%rbx), %rbx		# movq (%r(5072)), %r(5040)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5073)
	cmpq %rbx, %r12		# cmpq %r(5040), %r(5073)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %r12		# movq $8, %r(5041)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5074)
	movq %r13, -48(%rbp)		# movq %r(5075), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5076)
	subq %r12, %rbx		# subq %r(5041), %r(5076)
	movq %rbx, -48(%rbp)		# movq %r(5076), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(5077)
	movq (%rbx), %rbx		# movq (%r(5077)), %r(5043)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(5078)
	cmpq %rbx, %r12		# cmpq %r(5043), %r(5078)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5079)
	salq $3, %r13		# salq $3, %r(5044)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(5080)
	movq %rbx, -104(%rbp)		# movq %r(5081), -104(%rbp)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(5082)
	addq %r13, %r12		# addq %r(5044), %r(5082)
	movq %r12, -104(%rbp)		# movq %r(5082), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(5083)
	movq (%rbx), %rbx		# movq (%r(5083)), %r(5084)
	movq %rbx, -32(%rbp)		# movq %r(5084), -32(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5085)
	salq $3, %r13		# salq $3, %r(5047)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(5086)
	movq %rbx, -64(%rbp)		# movq %r(5087), -64(%rbp)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(5088)
	addq %r13, %r12		# addq %r(5047), %r(5088)
	movq %r12, -64(%rbp)		# movq %r(5088), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(5089)
	movq (%rbx), %rbx		# movq (%r(5089)), %r(5049)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5090)
	cmpq %rbx, %r12		# cmpq %r(5049), %r(5090)
	je .L955		# je .L955
	.L956:		# .L956:
	movq $0, %r12		# movq $0, %r(5050)
	movq %r12, -80(%rbp)		# movq %r(5091), -80(%rbp)
	jmp .L955		# jmp .L955
	.L955:		# .L955:
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(5092)
	movq %rbx, %rdi		# movq %r(5092), %rdi
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(5093)
	movq %rbx, %rsi		# movq %r(5093), %rsi
	call _Itest_paib		# call _Itest_paib
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(5094)
	incq %rbx		# incq %r(5094)
	movq %rbx, -16(%rbp)		# movq %r(5094), -16(%rbp)
	jmp .L948		# jmp .L948
	.L950:		# .L950:
	jmp .L944		# jmp .L944
	.L944:		# .L944:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
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
	leaq .L958(%rip), %rdi		# leaq .L958(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(4922)
	leaq .L959(%rip), %rdi		# leaq .L959(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r12		# movq %rax, %r(4923)
	movq %rbx, %rdi		# movq %r(4922), %rdi
	call _Isort_pai		# call _Isort_pai
	movq %rbx, %rdi		# movq %r(4922), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %rbx, %rdi		# movq %r(4922), %rdi
	movq %r12, %rsi		# movq %r(4923), %rsi
	call _IassertSameArray_paiai		# call _IassertSameArray_paiai
	jmp .L957		# jmp .L957
	.L957:		# .L957:
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
	subq $48, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5112)
	movq %rbx, -24(%rbp)		# movq %r(5112), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(5113)
	movq (%rbx), %rbx		# movq (%r(5113)), %r(5097)
	movq %rbx, %r12		# movq %r(t10), %r(5098)
	salq $3, %r12		# salq $3, %r(5098)
	movq $8, %r13		# movq $8, %r(5099)
	addq %r13, %r12		# addq %r(5099), %r(5100)
	movq %r12, %rdi		# movq %r(5100), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r12		# movq %rax, %r(5114)
	movq %r12, -32(%rbp)		# movq %r(5114), -32(%rbp)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq %rbx, %r14		# movq %r(t10), %r(5101)
	salq $3, %r14		# salq $3, %r(5101)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(5115)
	addq %r14, %r12		# addq %r(5101), %r(5102)
	movq %rbx, %r14		# movq %r(t10), %r(5116)
	movq %r14, -16(%rbp)		# movq %r(5116), -16(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(5117)
	salq $3, %r13		# salq $3, %r(5117)
	movq %r13, -16(%rbp)		# movq %r(5117), -16(%rbp)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(5118)
	movq %r14, -8(%rbp)		# movq %r(5109), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5110)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(5119)
	addq %r14, %r13		# addq %r(5119), %r(5110)
	movq %r13, -8(%rbp)		# movq %r(5110), -8(%rbp)
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(5111)
	movq (%r13), %r13		# movq (%r(5111)), %r(5105)
	movq %r13, (%r12)		# movq %r(5105), (%r(5102))
	decq %rbx		# decq %r(t10)
	movq $0, %r12		# movq $0, %r(5106)
	cmpq %r12, %rbx		# cmpq %r(5106), %r(t10)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(5107)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(5120)
	addq %rbx, %r13		# addq %r(5107), %r(5108)
	movq %r13, %rax		# movq %r(5108), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $48, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L943:
	.quad 8
	.quad 84
	.quad 101
	.quad 115
	.quad 116
	.quad 105
	.quad 110
	.quad 103
	.quad 58
	.text

#.section .rodata
.align 8
.L959:
	.quad 111
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 32
	.quad 44
	.quad 45
	.quad 46
	.quad 65
	.quad 73
	.quad 84
	.quad 84
	.quad 91
	.quad 93
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 97
	.quad 98
	.quad 99
	.quad 99
	.quad 100
	.quad 100
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 101
	.quad 102
	.quad 102
	.quad 102
	.quad 102
	.quad 103
	.quad 103
	.quad 104
	.quad 104
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 105
	.quad 108
	.quad 108
	.quad 108
	.quad 108
	.quad 109
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 110
	.quad 111
	.quad 111
	.quad 112
	.quad 113
	.quad 114
	.quad 114
	.quad 114
	.quad 114
	.quad 114
	.quad 115
	.quad 115
	.quad 115
	.quad 115
	.quad 115
	.quad 116
	.quad 116
	.quad 116
	.quad 116
	.quad 116
	.quad 117
	.quad 117
	.quad 120
	.quad 121
	.quad 121
	.quad 121
	.text

#.section .rodata
.align 8
.L945:
	.quad 6
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
	.text

#.section .rodata
.align 8
.L958:
	.quad 111
	.quad 65
	.quad 110
	.quad 32
	.quad 97
	.quad 114
	.quad 114
	.quad 97
	.quad 121
	.quad 32
	.quad 84
	.quad 91
	.quad 93
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 32
	.quad 102
	.quad 105
	.quad 120
	.quad 101
	.quad 100
	.quad 45
	.quad 108
	.quad 101
	.quad 110
	.quad 103
	.quad 116
	.quad 104
	.quad 32
	.quad 115
	.quad 101
	.quad 113
	.quad 117
	.quad 101
	.quad 110
	.quad 99
	.quad 101
	.quad 32
	.quad 111
	.quad 102
	.quad 32
	.quad 109
	.quad 117
	.quad 116
	.quad 97
	.quad 98
	.quad 108
	.quad 101
	.quad 32
	.quad 99
	.quad 101
	.quad 108
	.quad 108
	.quad 115
	.quad 32
	.quad 111
	.quad 102
	.quad 32
	.quad 116
	.quad 121
	.quad 112
	.quad 101
	.quad 32
	.quad 84
	.quad 32
	.quad 46
	.quad 32
	.quad 73
	.quad 102
	.quad 32
	.quad 97
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 110
	.quad 32
	.quad 97
	.quad 114
	.quad 114
	.quad 97
	.quad 121
	.quad 32
	.quad 97
	.quad 110
	.quad 100
	.quad 32
	.quad 105
	.quad 32
	.quad 105
	.quad 115
	.quad 32
	.quad 97
	.quad 110
	.quad 32
	.quad 105
	.quad 110
	.quad 116
	.quad 101
	.quad 103
	.quad 101
	.quad 114
	.quad 44
	.quad 32
	.quad 116
	.quad 104
	.quad 101
	.quad 110
	.text

error_outofbounds:
call _I_outOfBounds_p
