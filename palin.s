	.file	"palin.c"
	.section	.rodata
.LC0:
	.string	"yes"
.LC1:
	.string	"no"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1634689389, -16(%rbp)
	movb	$109, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	is_palindrome
	testl	%eax, %eax
	je	.L2
	movl	$.LC0, %edi
	call	puts
	jmp	.L5
.L2:
	movl	$.LC1, %edi
	call	puts
.L5:
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L4
	call	__stack_chk_fail
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	is_palindrome
	.type	is_palindrome, @function
is_palindrome:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$4, -4(%rbp)
	jmp	.L7
.L10:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L8
	jmp	.L9
.L8:
	addl	$1, -8(%rbp)
	subl	$1, -4(%rbp)
.L7:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L10
.L9:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setge	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	is_palindrome, .-is_palindrome
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
