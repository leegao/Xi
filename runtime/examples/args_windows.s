# Compiled using "xic" by Owen Arden, Catalin Dumitru, Wenzel Jakob, and Danfeng Zhang
# Command line: java -jar xic.jar runtime/x86_64/examples/args.xi -Opeel --arch x86_64 --target windows --asmformat att -I runtime/x86_64/include -o runtime/x86_64/examples/args_windows.s

.file "runtime/x86_64/examples/args.xi"
.att_syntax prefix
.text

.globl _Imain_paai
_Imain_paai:
	pushq %r14
	pushq %r15
	pushq %rbx
	subq $32, %rsp
	movq %rcx, %r14
	movq -8(%r14), %rbx
	xorq %r15, %r15
.L0:
	cmpq %rbx, %r15
	jge .L2
	cmpq %rbx, %r15
	jae __internal_call_abort
	movq (%r14,%r15,8), %rcx
	call _Iprintln_pai
	incq %r15
	jmp .L0
.L2:
	addq $32, %rsp
	popq %rbx
	popq %r15
	popq %r14
	ret

__internal_call_abort:
	call _I_outOfBounds_p
