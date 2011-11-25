.att_syntax prefix
.text
.globl _Ia_ai
_Ia_ai:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %r13		# movq $0, %r(6151)
	movq %r13, %rbx		# movq %r(6151), %r(6195)
	movq %rbx, -16(%rbp)		# movq %r(6195), -16(%rbp)
	leaq .L1059(%rip), %rdi		# leaq .L1059(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(6196)
	movq %rbx, -32(%rbp)		# movq %r(6196), -32(%rbp)
	movq $16, %rbx		# movq $16, %r(6153)
	movq %rbx, %rdi		# movq %r(6153), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(6140)
	movq $1, %rbx		# movq $1, %r(6154)
	movq %rbx, (%r14)		# movq %r(6154), (%r(6140))
	movq $8, %rbx		# movq $8, %r(6155)
	movq %r14, %r13		# movq %r(6140), %r(6156)
	addq %rbx, %r13		# addq %r(6155), %r(6156)
	movq %r13, %r12		# movq %r(6156), %r(6197)
	movq %r12, -24(%rbp)		# movq %r(6197), -24(%rbp)
	movq $0, %rbx		# movq $0, %r(6157)
	movq -24(%rbp), %r13		# movq -24(%rbp), %r(6198)
	movq %r13, %r14		# movq %r(6198), %r(6158)
	addq %rbx, %r14		# addq %r(6157), %r(6158)
	movq $8, %r12		# movq $8, %r(6159)
	movq -32(%rbp), %r15		# movq -32(%rbp), %r(6199)
	movq %r15, %rbx		# movq %r(6199), %r(6200)
	movq %rbx, -40(%rbp)		# movq %r(6200), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6201)
	subq %r12, %rbx		# subq %r(6159), %r(6201)
	movq %rbx, -40(%rbp)		# movq %r(6201), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6202)
	movq (%rbx), %r12		# movq (%r(6202)), %r(6161)
	movq %r12, (%r14)		# movq %r(6161), (%r(6158))
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6203)
	movq %rbx, %rdi		# movq %r(6203), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(6204)
	movq %rbx, -8(%rbp)		# movq %r(6204), -8(%rbp)
	jmp .L1061		# jmp .L1061
	.L1061:		# .L1061:
	movq $8, %rbx		# movq $8, %r(6162)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(6205)
	movq %r14, %r12		# movq %r(6205), %r(6163)
	subq %rbx, %r12		# subq %r(6162), %r(6163)
	movq (%r12), %rbx		# movq (%r(6163)), %r(6164)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6206)
	cmpq %rbx, %r12		# cmpq %r(6164), %r(6206)
	jge .L1063		# jge .L1063
	.L1062:		# .L1062:
	movq $8, %rbx		# movq $8, %r(6165)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(6207)
	movq %r14, %r12		# movq %r(6207), %r(6166)
	subq %rbx, %r12		# subq %r(6165), %r(6166)
	movq (%r12), %rbx		# movq (%r(6166)), %r(6167)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6208)
	cmpq %rbx, %r12		# cmpq %r(6167), %r(6208)
	jae error_outofbounds		# jae error_outofbounds
	movq $8, %rbx		# movq $8, %r(6168)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(6209)
	movq %r14, %r12		# movq %r(6209), %r(6169)
	subq %rbx, %r12		# subq %r(6168), %r(6169)
	movq (%r12), %rbx		# movq (%r(6169)), %r(6170)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6210)
	cmpq %rbx, %r12		# cmpq %r(6170), %r(6210)
	jae error_outofbounds		# jae error_outofbounds
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(6211)
	movq %r13, %r14		# movq %r(6211), %r(6171)
	salq $3, %r14		# salq $3, %r(6171)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6212)
	movq %r12, %r15		# movq %r(6212), %r(6172)
	addq %r14, %r15		# addq %r(6171), %r(6172)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(6213)
	movq %r13, %rbx		# movq %r(6213), %r(6221)
	movq %rbx, -48(%rbp)		# movq %r(6221), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(6222)
	salq $3, %rbx		# salq $3, %r(6222)
	movq %rbx, -48(%rbp)		# movq %r(6222), -48(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(6214)
	movq %r13, %rbx		# movq %r(6214), %r(6223)
	movq %rbx, -64(%rbp)		# movq %r(6223), -64(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(6224)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(6225)
	addq %rbx, %r12		# addq %r(6224), %r(6225)
	movq %r12, -64(%rbp)		# movq %r(6225), -64(%rbp)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(6226)
	movq (%rbx), %r12		# movq (%r(6226)), %r(6175)
	movq %r12, (%r15)		# movq %r(6175), (%r(6172))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6215)
	incq %rbx		# incq %r(6215)
	movq %rbx, -16(%rbp)		# movq %r(6215), -16(%rbp)
	jmp .L1061		# jmp .L1061
	.L1063:		# .L1063:
	movq $0, %r13		# movq $0, %r(6176)
	movq $8, %rbx		# movq $8, %r(6177)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(6216)
	movq %r12, %r14		# movq %r(6216), %r(6178)
	subq %rbx, %r14		# subq %r(6177), %r(6178)
	movq (%r14), %rbx		# movq (%r(6178)), %r(6179)
	cmpq %rbx, %r13		# cmpq %r(6179), %r(6176)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(6180)
	movq %r13, %r14		# movq %r(6180), %r(6181)
	salq $3, %r14		# salq $3, %r(6181)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(6217)
	movq %r12, %r15		# movq %r(6217), %r(6182)
	addq %r14, %r15		# addq %r(6181), %r(6182)
	movq $66, %rbx		# movq $66, %r(6183)
	movq %rbx, (%r15)		# movq %r(6183), (%r(6182))
	movq $1, %r13		# movq $1, %r(6184)
	movq %r13, %rbx		# movq %r(6184), %r(6227)
	movq %rbx, -56(%rbp)		# movq %r(6227), -56(%rbp)
	movq $0, %r13		# movq $0, %r(6185)
	movq $8, %rbx		# movq $8, %r(6186)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(6218)
	movq %r12, %r14		# movq %r(6218), %r(6187)
	subq %rbx, %r14		# subq %r(6186), %r(6187)
	movq (%r14), %rbx		# movq (%r(6187)), %r(6188)
	cmpq %rbx, %r13		# cmpq %r(6188), %r(6185)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(6189)
	movq %r13, %r14		# movq %r(6189), %r(6190)
	salq $3, %r14		# salq $3, %r(6190)
	movq -32(%rbp), %r12		# movq -32(%rbp), %r(6219)
	movq %r12, %r15		# movq %r(6219), %r(6191)
	addq %r14, %r15		# addq %r(6190), %r(6191)
	movq (%r15), %rbx		# movq (%r(6191)), %r(6192)
	movq $66, %r12		# movq $66, %r(6193)
	cmpq %r12, %rbx		# cmpq %r(6193), %r(6192)
	je .L1072		# je .L1072
	.L1073:		# .L1073:
	movq $0, %r13		# movq $0, %r(6194)
	movq %r13, %rbx		# movq %r(6194), %r(6228)
	movq %rbx, -56(%rbp)		# movq %r(6228), -56(%rbp)
	jmp .L1072		# jmp .L1072
	.L1072:		# .L1072:
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(6229)
	movq %rbx, %rdi		# movq %r(6229), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6220)
	movq %rbx, %rax		# movq %r(6220), %rax
	jmp .L1058		# jmp .L1058
	.L1058:		# .L1058:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $80, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(args)
	call _Ia_ai		# call _Ia_ai
	call _Ia_ai		# call _Ia_ai
	movq %rax, %rbx		# movq %rax, %r(6241)
	movq %rbx, -8(%rbp)		# movq %r(6241), -8(%rbp)
	movq $1, %r13		# movq $1, %r(6230)
	movq %r13, %rbx		# movq %r(6230), %r(6244)
	movq %rbx, -16(%rbp)		# movq %r(6244), -16(%rbp)
	movq $0, %r13		# movq $0, %r(6231)
	movq $8, %rbx		# movq $8, %r(6232)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6242)
	movq %r12, %r14		# movq %r(6242), %r(6233)
	subq %rbx, %r14		# subq %r(6232), %r(6233)
	movq (%r14), %rbx		# movq (%r(6233)), %r(6234)
	cmpq %rbx, %r13		# cmpq %r(6234), %r(6231)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(6235)
	movq %r13, %r14		# movq %r(6235), %r(6236)
	salq $3, %r14		# salq $3, %r(6236)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6243)
	movq %r12, %r15		# movq %r(6243), %r(6237)
	addq %r14, %r15		# addq %r(6236), %r(6237)
	movq (%r15), %rbx		# movq (%r(6237)), %r(6238)
	movq $72, %r12		# movq $72, %r(6239)
	cmpq %r12, %rbx		# cmpq %r(6239), %r(6238)
	je .L1077		# je .L1077
	.L1078:		# .L1078:
	movq $0, %r13		# movq $0, %r(6240)
	movq %r13, %rbx		# movq %r(6240), %r(6245)
	movq %rbx, -16(%rbp)		# movq %r(6245), -16(%rbp)
	jmp .L1077		# jmp .L1077
	.L1077:		# .L1077:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6246)
	movq %rbx, %rdi		# movq %r(6246), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L1074		# jmp .L1074
	.L1074:		# .L1074:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(6290)
	movq %rbx, -56(%rbp)		# movq %r(6290), -56(%rbp)
	movq $8, %rbx		# movq $8, %r(6247)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(6291)
	movq %r14, %r12		# movq %r(6291), %r(6248)
	subq %rbx, %r12		# subq %r(6247), %r(6248)
	movq (%r12), %r13		# movq (%r(6248)), %r(6249)
	movq %r13, %rbx		# movq %r(6249), %r(6292)
	movq %rbx, -64(%rbp)		# movq %r(6292), -64(%rbp)
	movq $1, %r13		# movq $1, %r(6250)
	movq %r13, %rbx		# movq %r(6250), %r(6293)
	movq %rbx, -40(%rbp)		# movq %r(6293), -40(%rbp)
	movq $0, %rbx		# movq $0, %r(6251)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(6294)
	cmpq %rbx, %r12		# cmpq %r(6251), %r(6294)
	jne .L69		# jne .L69
	.L70:		# .L70:
	movq $0, %rbx		# movq $0, %r(6252)
	movq %rbx, %rax		# movq %r(6252), %rax
	jmp .L71		# jmp .L71
	.L71:		# .L71:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $112, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L69:		# .L69:
	movq -64(%rbp), %r13		# movq -64(%rbp), %r(6295)
	movq %r13, %rbx		# movq %r(6295), %r(6253)
	salq $3, %rbx		# salq $3, %r(6253)
	movq %rbx, %rdi		# movq %r(6253), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %rbx		# movq %rax, %r(6296)
	movq %rbx, -24(%rbp)		# movq %r(6296), -24(%rbp)
	movq $1, %rbx		# movq $1, %r(6254)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(6297)
	movq %r14, %r12		# movq %r(6297), %r(6255)
	subq %rbx, %r12		# subq %r(6254), %r(6255)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6298)
	movq %r12, (%rbx)		# movq %r(6255), (%r(6298))
	movq $8, %rbx		# movq $8, %r(6256)
	movq -24(%rbp), %r14		# movq -24(%rbp), %r(6299)
	movq %r14, %r13		# movq %r(6299), %r(6257)
	addq %rbx, %r13		# addq %r(6256), %r(6257)
	movq %r13, %r12		# movq %r(6257), %r(6300)
	movq %r12, -16(%rbp)		# movq %r(6300), -16(%rbp)
	jmp .L72		# jmp .L72
	.L72:		# .L72:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6301)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(6302)
	cmpq %r12, %rbx		# cmpq %r(6302), %r(6301)
	jge .L73		# jge .L73
	.L74:		# .L74:
	movq $8, %rbx		# movq $8, %r(6258)
	movq -56(%rbp), %r14		# movq -56(%rbp), %r(6303)
	movq %r14, %r12		# movq %r(6303), %r(6259)
	subq %rbx, %r12		# subq %r(6258), %r(6259)
	movq (%r12), %rbx		# movq (%r(6259)), %r(6260)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(6304)
	cmpq %rbx, %r12		# cmpq %r(6260), %r(6304)
	jae error_outofbounds		# jae error_outofbounds
	movq $1, %rbx		# movq $1, %r(6261)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(6305)
	movq %r14, %r13		# movq %r(6305), %r(6262)
	subq %rbx, %r13		# subq %r(6261), %r(6262)
	movq %r13, %r12		# movq %r(6262), %r(6306)
	movq %r12, -80(%rbp)		# movq %r(6306), -80(%rbp)
	movq $8, %rbx		# movq $8, %r(6263)
	movq -16(%rbp), %r14		# movq -16(%rbp), %r(6307)
	movq %r14, %r12		# movq %r(6307), %r(6264)
	subq %rbx, %r12		# subq %r(6263), %r(6264)
	movq (%r12), %rbx		# movq (%r(6264)), %r(6265)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(6308)
	cmpq %rbx, %r12		# cmpq %r(6265), %r(6308)
	jae error_outofbounds		# jae error_outofbounds
	movq -80(%rbp), %r13		# movq -80(%rbp), %r(6309)
	movq %r13, %r14		# movq %r(6309), %r(6266)
	salq $3, %r14		# salq $3, %r(6266)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(6310)
	movq %r12, %r15		# movq %r(6310), %r(6267)
	addq %r14, %r15		# addq %r(6266), %r(6267)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(6311)
	movq %r13, %rbx		# movq %r(6311), %r(6342)
	movq %rbx, -104(%rbp)		# movq %r(6342), -104(%rbp)
	movq -104(%rbp), %rbx		# movq -104(%rbp), %r(6343)
	salq $3, %rbx		# salq $3, %r(6343)
	movq %rbx, -104(%rbp)		# movq %r(6343), -104(%rbp)
	movq -56(%rbp), %r13		# movq -56(%rbp), %r(6312)
	movq %r13, %rbx		# movq %r(6312), %r(6313)
	movq %rbx, -8(%rbp)		# movq %r(6313), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6314)
	movq -104(%rbp), %r12		# movq -104(%rbp), %r(6344)
	addq %r12, %rbx		# addq %r(6344), %r(6314)
	movq %rbx, -8(%rbp)		# movq %r(6314), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6315)
	movq (%rbx), %r12		# movq (%r(6315)), %r(6270)
	movq %r12, (%r15)		# movq %r(6270), (%r(6267))
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6316)
	incq %rbx		# incq %r(6316)
	movq %rbx, -40(%rbp)		# movq %r(6316), -40(%rbp)
	jmp .L72		# jmp .L72
	.L73:		# .L73:
	movq $0, %r13		# movq $0, %r(6271)
	movq $8, %rbx		# movq $8, %r(6272)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(6317)
	movq %r12, %r14		# movq %r(6317), %r(6273)
	subq %rbx, %r14		# subq %r(6272), %r(6273)
	movq (%r14), %rbx		# movq (%r(6273)), %r(6274)
	cmpq %rbx, %r13		# cmpq %r(6274), %r(6271)
	jae error_outofbounds		# jae error_outofbounds
	movq $0, %r13		# movq $0, %r(6275)
	movq %r13, %r14		# movq %r(6275), %r(6276)
	salq $3, %r14		# salq $3, %r(6276)
	movq -56(%rbp), %r12		# movq -56(%rbp), %r(6318)
	movq %r12, %r15		# movq %r(6318), %r(6277)
	addq %r14, %r15		# addq %r(6276), %r(6277)
	movq (%r15), %r13		# movq (%r(6277)), %r(6278)
	movq %r13, %rbx		# movq %r(6278), %r(6319)
	movq %rbx, -40(%rbp)		# movq %r(6319), -40(%rbp)
	movq $1, %rbx		# movq $1, %r(6279)
	movq -40(%rbp), %r14		# movq -40(%rbp), %r(6320)
	movq %r14, %r13		# movq %r(6320), %r(6280)
	addq %rbx, %r13		# addq %r(6279), %r(6280)
	movq %r13, %r12		# movq %r(6280), %r(6281)
	salq $3, %r12		# salq $3, %r(6281)
	movq %r12, %rdi		# movq %r(6281), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(6147)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6321)
	movq %rbx, (%r14)		# movq %r(6321), (%r(6147))
	movq $8, %r13		# movq $8, %r(6282)
	movq %r14, %r12		# movq %r(6147), %r(6322)
	movq %r12, -32(%rbp)		# movq %r(6322), -32(%rbp)
	movq -32(%rbp), %rbx		# movq -32(%rbp), %r(6323)
	addq %r13, %rbx		# addq %r(6282), %r(6323)
	movq %rbx, -32(%rbp)		# movq %r(6323), -32(%rbp)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(6324)
	movq %r13, %rbx		# movq %r(6324), %r(6325)
	movq %rbx, -88(%rbp)		# movq %r(6325), -88(%rbp)
	jmp .L78		# jmp .L78
	.L78:		# .L78:
	movq $0, %rbx		# movq $0, %r(6284)
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(6326)
	cmpq %rbx, %r12		# cmpq %r(6284), %r(6326)
	jle .L79		# jle .L79
	.L80:		# .L80:
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6327)
	decq %rbx		# decq %r(6327)
	movq %rbx, -40(%rbp)		# movq %r(6327), -40(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6328)
	movq %rbx, %rdi		# movq %r(6328), %rdi
	call _I_c_dynamalloc_aiai		# call _I_c_dynamalloc_aiai
	movq %rax, %rbx		# movq %rax, %r(6329)
	movq %rbx, -72(%rbp)		# movq %r(6329), -72(%rbp)
	movq $8, %r13		# movq $8, %r(6285)
	movq -88(%rbp), %r14		# movq -88(%rbp), %r(6330)
	movq %r14, %rbx		# movq %r(6330), %r(6331)
	movq %rbx, -48(%rbp)		# movq %r(6331), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(6332)
	subq %r13, %rbx		# subq %r(6285), %r(6332)
	movq %rbx, -48(%rbp)		# movq %r(6332), -48(%rbp)
	movq -48(%rbp), %rbx		# movq -48(%rbp), %r(6333)
	movq (%rbx), %r12		# movq (%r(6333)), %r(6287)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(6334)
	cmpq %r12, %rbx		# cmpq %r(6287), %r(6334)
	jae error_outofbounds		# jae error_outofbounds
	movq -40(%rbp), %r12		# movq -40(%rbp), %r(6335)
	movq %r12, %r14		# movq %r(6335), %r(6288)
	salq $3, %r14		# salq $3, %r(6288)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(6336)
	movq %r13, %rbx		# movq %r(6336), %r(6337)
	movq %rbx, -96(%rbp)		# movq %r(6337), -96(%rbp)
	movq -96(%rbp), %rbx		# movq -96(%rbp), %r(6338)
	addq %r14, %rbx		# addq %r(6288), %r(6338)
	movq %rbx, -96(%rbp)		# movq %r(6338), -96(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(6339)
	movq -96(%rbp), %r12		# movq -96(%rbp), %r(6340)
	movq %rbx, (%r12)		# movq %r(6339), (%r(6340))
	jmp .L78		# jmp .L78
	.L79:		# .L79:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(6341)
	movq %rbx, %rax		# movq %r(6341), %rax
	jmp .L71		# jmp .L71
	
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
	movq %rdi, %rbx		# movq %rdi, %r(6357)
	movq %rbx, -24(%rbp)		# movq %r(6357), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6358)
	movq (%rbx), %r13		# movq (%r(6358)), %r(6345)
	movq %r13, %r12		# movq %r(6345), %r(6359)
	movq %r12, -8(%rbp)		# movq %r(6359), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6360)
	movq %r12, %r13		# movq %r(6360), %r(6346)
	salq $3, %r13		# salq $3, %r(6346)
	movq $8, %rbx		# movq $8, %r(6347)
	movq %r13, %r14		# movq %r(6346), %r(6348)
	addq %rbx, %r14		# addq %r(6347), %r(6348)
	movq %r14, %rdi		# movq %r(6348), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(6149)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(6361)
	movq %r13, %rbx		# movq %r(6361), %r(6349)
	salq $3, %rbx		# salq $3, %r(6349)
	movq %r15, %r13		# movq %r(6149), %r(6350)
	addq %rbx, %r13		# addq %r(6349), %r(6350)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6362)
	movq %rbx, %r12		# movq %r(6362), %r(6351)
	salq $3, %r12		# salq $3, %r(6351)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6363)
	movq %rbx, %r14		# movq %r(6363), %r(6364)
	movq %r14, -16(%rbp)		# movq %r(6364), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6365)
	addq %r12, %rbx		# addq %r(6351), %r(6365)
	movq %rbx, -16(%rbp)		# movq %r(6365), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6366)
	movq (%rbx), %r12		# movq (%r(6366)), %r(6353)
	movq %r12, (%r13)		# movq %r(6353), (%r(6350))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6367)
	decq %rbx		# decq %r(6367)
	movq %rbx, -8(%rbp)		# movq %r(6367), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(6354)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6368)
	cmpq %rbx, %r12		# cmpq %r(6354), %r(6368)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(6355)
	movq %r15, %r13		# movq %r(6149), %r(6356)
	addq %rbx, %r13		# addq %r(6355), %r(6356)
	movq %r13, %rax		# movq %r(6356), %rax
	jmp .L113		# jmp .L113
	.L113:		# .L113:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L1059:
	.quad 5
	.quad 72
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.text

error_outofbounds:
call _I_outOfBounds_p
