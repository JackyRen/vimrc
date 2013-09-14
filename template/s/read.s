
	.include "linux.s"
	
#PURPOSE:   This function reads a record from the file 
#           descriptor
#
#INPUT:     The file descriptor and a buffer
#
#OUTPUT:    This function writes the data to the buffer 
#           and returns a status code.
#
#STACK LOCAL VARIABLES
	.equ ST_READ_BUFFER, 8
	.equ ST_READ_LENGTH, 12
	.equ ST_FILEDES, 16
	.section .text 
	.globl read_record
	.type read_record, @function
read_record:
	pushl %ebp
	movl  %esp, %ebp

	pushl %ebx
	movl  ST_FILEDES(%ebp), %ebx
	movl  ST_READ_BUFFER(%ebp), %ecx
	movl  ST_READ_LENGTH(%ebp), %edx
	movl  $SYS_READ, %eax
	int   $LINUX_SYSCALL

	#NOTE - %eax has the return value, which we will
	#       give back to our calling program
	popl  %ebx

	movl  %ebp, %esp
	popl  %ebp
	ret
