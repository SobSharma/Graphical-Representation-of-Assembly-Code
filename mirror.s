	.file	"mirror.c"
	.section	.rodata
.LC0:
	.string	"%i"
	.text
	.globl	mirror
	.type	mirror, @function
mirror:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	$0, -36(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	subq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movslq	%eax, %rsi
	movq	%rsi, %r8
	movl	$0, %r9d
	movslq	%eax, %rsi
	movq	%rsi, %rdx
	movl	$0, %ecx
	cltq
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -60(%rbp)
	jle	.L2
	movl	-60(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -36(%rbp)
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mirror
.L2:
	movq	%rbx, %rsp
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mirror, .-mirror
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$5, -32(%rbp)
	movl	$4, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	$2, -20(%rbp)
	movl	$1, -16(%rbp)
	leaq	-32(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	mirror
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
