
	.include "linux.s"
#PURPOSE:   This function writes a record to 
#           the given file descriptor
#
#INPUT:     The file descriptor and a buffer
#
#OUTPUT:    This function produces a status code
#
#STACK LOCAL VARIABLES
	.equ ST_WRITE_LENGTH,8
	.equ ST_WRITE_BUFFER, 12
	.equ ST_FILEDES, 16
	.section .text 
	.globl write
	.type write, @function
write:
	pushl %ebp
	movl  %esp, %ebp

	pushl %ebx
	movl  $SYS_WRITE, %eax
	movl  ST_FILEDES(%ebp), %ebx
	movl  ST_WRITE_BUFFER(%ebp), %ecx
	movl  ST_WRITE_LENGTH(%ebp), %edx
	int   $LINUX_SYSCALL

	#NOTE - %eax has the return value, which we will
	#       give back to our calling program
	popl  %ebx

	movl  %ebp, %esp
	popl  %ebp
	ret
