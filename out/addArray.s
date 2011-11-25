.att_syntax prefix
.text
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
	movq $32, %rbx		# movq $32, %r(2954)
	movq %rbx, %rdi		# movq %r(2954), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2944)
	movq $3, %rbx		# movq $3, %r(2955)
	movq %rbx, (%r14)		# movq %r(2955), (%r(2944))
	movq $8, %rbx		# movq $8, %r(2956)
	movq %r14, %r13		# movq %r(2944), %r(2957)
	addq %rbx, %r13		# addq %r(2956), %r(2957)
	movq %r13, %r14		# movq %r(2957), %r(2937)
	movq $0, %rbx		# movq $0, %r(2958)
	movq %r14, %r13		# movq %r(2937), %r(2959)
	addq %rbx, %r13		# addq %r(2958), %r(2959)
	movq $65, %rbx		# movq $65, %r(2960)
	movq %rbx, (%r13)		# movq %r(2960), (%r(2959))
	movq $8, %rbx		# movq $8, %r(2961)
	movq %r14, %r13		# movq %r(2937), %r(2962)
	addq %rbx, %r13		# addq %r(2961), %r(2962)
	movq $66, %rbx		# movq $66, %r(2963)
	movq %rbx, (%r13)		# movq %r(2963), (%r(2962))
	movq $16, %rbx		# movq $16, %r(2964)
	movq %r14, %r13		# movq %r(2937), %r(2965)
	addq %rbx, %r13		# addq %r(2964), %r(2965)
	movq $67, %rbx		# movq $67, %r(2966)
	movq %rbx, (%r13)		# movq %r(2966), (%r(2965))
	leaq .L590(%rip), %rdi		# leaq .L590(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(2945)
	movq %rbx, %rdi		# movq %r(2945), %rdi
	movq %r14, %rsi		# movq %r(2937), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(2994)
	movq %rbx, -8(%rbp)		# movq %r(2994), -8(%rbp)
	movq $32, %rbx		# movq $32, %r(2968)
	movq %rbx, %rdi		# movq %r(2968), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2947)
	movq $3, %rbx		# movq $3, %r(2969)
	movq %rbx, (%r14)		# movq %r(2969), (%r(2947))
	movq $8, %rbx		# movq $8, %r(2970)
	movq %r14, %r13		# movq %r(2947), %r(2971)
	addq %rbx, %r13		# addq %r(2970), %r(2971)
	movq %r13, %r14		# movq %r(2971), %r(2940)
	movq $0, %rbx		# movq $0, %r(2972)
	movq %r14, %r13		# movq %r(2940), %r(2973)
	addq %rbx, %r13		# addq %r(2972), %r(2973)
	movq $70, %rbx		# movq $70, %r(2974)
	movq %rbx, (%r13)		# movq %r(2974), (%r(2973))
	movq $8, %rbx		# movq $8, %r(2975)
	movq %r14, %r13		# movq %r(2940), %r(2976)
	addq %rbx, %r13		# addq %r(2975), %r(2976)
	movq $71, %rbx		# movq $71, %r(2977)
	movq %rbx, (%r13)		# movq %r(2977), (%r(2976))
	movq $16, %rbx		# movq $16, %r(2978)
	movq %r14, %r13		# movq %r(2940), %r(2979)
	addq %rbx, %r13		# addq %r(2978), %r(2979)
	movq $72, %rbx		# movq $72, %r(2980)
	movq %rbx, (%r13)		# movq %r(2980), (%r(2979))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(2995)
	movq %rbx, %rdi		# movq %r(2995), %rdi
	movq %r14, %rsi		# movq %r(2940), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(2996)
	movq %rbx, -16(%rbp)		# movq %r(2996), -16(%rbp)
	movq $32, %rbx		# movq $32, %r(2981)
	movq %rbx, %rdi		# movq %r(2981), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2949)
	movq $3, %rbx		# movq $3, %r(2982)
	movq %rbx, (%r14)		# movq %r(2982), (%r(2949))
	movq $8, %rbx		# movq $8, %r(2983)
	movq %r14, %r13		# movq %r(2949), %r(2984)
	addq %rbx, %r13		# addq %r(2983), %r(2984)
	movq %r13, %r14		# movq %r(2984), %r(2942)
	movq $0, %rbx		# movq $0, %r(2985)
	movq %r14, %r13		# movq %r(2942), %r(2986)
	addq %rbx, %r13		# addq %r(2985), %r(2986)
	movq $73, %rbx		# movq $73, %r(2987)
	movq %rbx, (%r13)		# movq %r(2987), (%r(2986))
	movq $8, %rbx		# movq $8, %r(2988)
	movq %r14, %r13		# movq %r(2942), %r(2989)
	addq %rbx, %r13		# addq %r(2988), %r(2989)
	movq $74, %rbx		# movq $74, %r(2990)
	movq %rbx, (%r13)		# movq %r(2990), (%r(2989))
	movq $16, %rbx		# movq $16, %r(2991)
	movq %r14, %r13		# movq %r(2942), %r(2992)
	addq %rbx, %r13		# addq %r(2991), %r(2992)
	movq $75, %rbx		# movq $75, %r(2993)
	movq %rbx, (%r13)		# movq %r(2993), (%r(2992))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(2997)
	movq %rbx, %rdi		# movq %r(2997), %rdi
	movq %r14, %rsi		# movq %r(2942), %rsi
	call _I_c_internal_strcat_aiaiai		# call _I_c_internal_strcat_aiaiai
	movq %rax, %rbx		# movq %rax, %r(2950)
	movq %rbx, %rdi		# movq %r(2950), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	jmp .L589		# jmp .L589
	.L589:		# .L589:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
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
	movq %rdi, %rbx		# movq %rdi, %r(3010)
	movq %rbx, -24(%rbp)		# movq %r(3010), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3011)
	movq (%rbx), %r13		# movq (%r(3011)), %r(2998)
	movq %r13, %r12		# movq %r(2998), %r(3012)
	movq %r12, -8(%rbp)		# movq %r(3012), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3013)
	movq %r12, %r13		# movq %r(3013), %r(2999)
	salq $3, %r13		# salq $3, %r(2999)
	movq $8, %rbx		# movq $8, %r(3000)
	movq %r13, %r14		# movq %r(2999), %r(3001)
	addq %rbx, %r14		# addq %r(3000), %r(3001)
	movq %r14, %rdi		# movq %r(3001), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(2952)
	jmp .L111		# jmp .L111
	.L111:		# .L111:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(3014)
	movq %r13, %rbx		# movq %r(3014), %r(3002)
	salq $3, %rbx		# salq $3, %r(3002)
	movq %r15, %r13		# movq %r(2952), %r(3003)
	addq %rbx, %r13		# addq %r(3002), %r(3003)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3015)
	movq %rbx, %r12		# movq %r(3015), %r(3004)
	salq $3, %r12		# salq $3, %r(3004)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3016)
	movq %rbx, %r14		# movq %r(3016), %r(3017)
	movq %r14, -16(%rbp)		# movq %r(3017), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3018)
	addq %r12, %rbx		# addq %r(3004), %r(3018)
	movq %rbx, -16(%rbp)		# movq %r(3018), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3019)
	movq (%rbx), %r12		# movq (%r(3019)), %r(3006)
	movq %r12, (%r13)		# movq %r(3006), (%r(3003))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3020)
	decq %rbx		# decq %r(3020)
	movq %rbx, -8(%rbp)		# movq %r(3020), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(3007)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(3021)
	cmpq %rbx, %r12		# cmpq %r(3007), %r(3021)
	jge .L111		# jge .L111
	.L112:		# .L112:
	movq $8, %rbx		# movq $8, %r(3008)
	movq %r15, %r13		# movq %r(2952), %r(3009)
	addq %rbx, %r13		# addq %r(3008), %r(3009)
	movq %r13, %rax		# movq %r(3009), %rax
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
	
.globl _I_c_internal_strcat_aiaiai
_I_c_internal_strcat_aiaiai:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(3045)
	movq %rbx, -48(%rbp)		# movq %r(3045), -48(%rbp)
	movq %rsi, %rbx		# movq %rsi, %r(3046)
	movq %rbx, -32(%rbp)		# movq %r(3046), -32(%rbp)
	movq $0, %r13		# movq $0, %r(3022)
	movq %r13, %rbx		# movq %r(3022), %r(3047)
	movq %rbx, -16(%rbp)		# movq %r(3047), -16(%rbp)
	movq $8, %rbx		# movq $8, %r(3023)
	movq -48(%rbp), %r14		# movq -48(%rbp), %r(3048)
	movq %r14, %r12		# movq %r(3048), %r(3024)
	subq %rbx, %r12		# subq %r(3023), %r(3024)
	movq (%r12), %r13		# movq (%r(3024)), %r(3025)
	movq %r13, %rbx		# movq %r(3025), %r(3049)
	movq %rbx, -64(%rbp)		# movq %r(3049), -64(%rbp)
	movq $8, %rbx		# movq $8, %r(3026)
	movq -32(%rbp), %r14		# movq -32(%rbp), %r(3050)
	movq %r14, %r15		# movq %r(3050), %r(3027)
	subq %rbx, %r15		# subq %r(3026), %r(3027)
	movq (%r15), %r12		# movq (%r(3027)), %r(3028)
	movq -64(%rbp), %r14		# movq -64(%rbp), %r(3051)
	movq %r14, %r13		# movq %r(3051), %r(3029)
	addq %r12, %r13		# addq %r(3028), %r(3029)
	movq %r13, %r12		# movq %r(3029), %r(3052)
	movq %r12, -80(%rbp)		# movq %r(3052), -80(%rbp)
	movq $1, %rbx		# movq $1, %r(3030)
	movq -80(%rbp), %r14		# movq -80(%rbp), %r(3053)
	movq %r14, %r12		# movq %r(3053), %r(3031)
	addq %rbx, %r12		# addq %r(3030), %r(3031)
	movq %r12, %rdi		# movq %r(3031), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r14		# movq %rax, %r(2953)
	movq -80(%rbp), %rbx		# movq -80(%rbp), %r(3054)
	movq %rbx, (%r14)		# movq %r(3054), (%r(2953))
	movq $8, %r13		# movq $8, %r(3032)
	movq %r14, %r12		# movq %r(2953), %r(3055)
	movq %r12, -40(%rbp)		# movq %r(3055), -40(%rbp)
	movq -40(%rbp), %rbx		# movq -40(%rbp), %r(3056)
	addq %r13, %rbx		# addq %r(3032), %r(3056)
	movq %rbx, -40(%rbp)		# movq %r(3056), -40(%rbp)
	movq -40(%rbp), %r13		# movq -40(%rbp), %r(3057)
	movq %r13, %rbx		# movq %r(3057), %r(3058)
	movq %rbx, -88(%rbp)		# movq %r(3058), -88(%rbp)
	jmp .L158		# jmp .L158
	.L158:		# .L158:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3059)
	movq -64(%rbp), %r12		# movq -64(%rbp), %r(3060)
	cmpq %r12, %rbx		# cmpq %r(3060), %r(3059)
	jge .L160		# jge .L160
	.L159:		# .L159:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3061)
	movq %r12, %r14		# movq %r(3061), %r(3034)
	salq $3, %r14		# salq $3, %r(3034)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(3062)
	movq %r13, %rbx		# movq %r(3062), %r(3063)
	movq %rbx, -56(%rbp)		# movq %r(3063), -56(%rbp)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3064)
	addq %r14, %rbx		# addq %r(3034), %r(3064)
	movq %rbx, -56(%rbp)		# movq %r(3064), -56(%rbp)
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3065)
	movq %r12, %r14		# movq %r(3065), %r(3036)
	salq $3, %r14		# salq $3, %r(3036)
	movq -48(%rbp), %r13		# movq -48(%rbp), %r(3066)
	movq %r13, %rbx		# movq %r(3066), %r(3067)
	movq %rbx, -72(%rbp)		# movq %r(3067), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3068)
	addq %r14, %rbx		# addq %r(3036), %r(3068)
	movq %rbx, -72(%rbp)		# movq %r(3068), -72(%rbp)
	movq -72(%rbp), %rbx		# movq -72(%rbp), %r(3069)
	movq (%rbx), %r12		# movq (%r(3069)), %r(3038)
	movq -56(%rbp), %rbx		# movq -56(%rbp), %r(3070)
	movq %r12, (%rbx)		# movq %r(3038), (%r(3070))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3071)
	incq %rbx		# incq %r(3071)
	movq %rbx, -16(%rbp)		# movq %r(3071), -16(%rbp)
	jmp .L158		# jmp .L158
	.L160:		# .L160:
	jmp .L161		# jmp .L161
	.L161:		# .L161:
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3072)
	movq -80(%rbp), %r12		# movq -80(%rbp), %r(3073)
	cmpq %r12, %rbx		# cmpq %r(3073), %r(3072)
	jge .L163		# jge .L163
	.L162:		# .L162:
	movq -16(%rbp), %r12		# movq -16(%rbp), %r(3074)
	movq %r12, %r14		# movq %r(3074), %r(3039)
	salq $3, %r14		# salq $3, %r(3039)
	movq -88(%rbp), %r13		# movq -88(%rbp), %r(3075)
	movq %r13, %rbx		# movq %r(3075), %r(3076)
	movq %rbx, -8(%rbp)		# movq %r(3076), -8(%rbp)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3077)
	addq %r14, %rbx		# addq %r(3039), %r(3077)
	movq %rbx, -8(%rbp)		# movq %r(3077), -8(%rbp)
	movq -16(%rbp), %r13		# movq -16(%rbp), %r(3078)
	movq %r13, %r12		# movq %r(3078), %r(3041)
	movq -64(%rbp), %rbx		# movq -64(%rbp), %r(3079)
	subq %rbx, %r12		# subq %r(3079), %r(3041)
	movq %r12, %r14		# movq %r(3041), %r(3042)
	salq $3, %r14		# salq $3, %r(3042)
	movq -32(%rbp), %r13		# movq -32(%rbp), %r(3080)
	movq %r13, %rbx		# movq %r(3080), %r(3081)
	movq %rbx, -24(%rbp)		# movq %r(3081), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3082)
	addq %r14, %rbx		# addq %r(3042), %r(3082)
	movq %rbx, -24(%rbp)		# movq %r(3082), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(3083)
	movq (%rbx), %r12		# movq (%r(3083)), %r(3044)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(3084)
	movq %r12, (%rbx)		# movq %r(3044), (%r(3084))
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(3085)
	incq %rbx		# incq %r(3085)
	movq %rbx, -16(%rbp)		# movq %r(3085), -16(%rbp)
	jmp .L161		# jmp .L161
	.L163:		# .L163:
	movq -88(%rbp), %rbx		# movq -88(%rbp), %r(3086)
	movq %rbx, %rax		# movq %r(3086), %rax
	jmp .L164		# jmp .L164
	.L164:		# .L164:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $96, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L590:
	.quad 6
	.quad 104
	.quad 101
	.quad 108
	.quad 108
	.quad 111
	.quad 32
	.text

