####### main.s ########
#system call numbers
.include "linux.s"
.include "write.s"

#options for open
.equ O_RDONLY, 0
.equ O_CREAT_WRONLY_TRUNC, 03101
.equ O_PERMISSION, 0666
#standard file descriptors
.equ STDIN, 0
.equ STDOUT, 1
.equ STDERR, 2
#system call interrupt

#Buffer - this is where the data is loaded into from the data
#file and written from into the output file.
.equ BUFFER_SIZE, 385
.lcomm BUFFER_DATA, BUFFER_SIZE
.section .text

#STACK POSITIONS
.equ ST_SIZE_RESERVE, 8
.equ ST_FD_IN, -4
.equ ST_FD_OUT, -8
.equ ST_ARGC, 0			#Number of arguments
.equ ST_ARGV_0, 4		#Name of program
.equ ST_ARGV_1, 8		#Input file name
.equ ST_ARGV_2, 12		#Output file name

#constants#
	.globl	errorMessage
	.data   
	.type	errorMessage, @object
	.size	errorMessage, 50
errorMessage:
	.string	"error:the input file is shorter than expected.\n"

	.globl	OkMessage
	.data   
	.type	OkMessage, @object
	.size	OkMessage, 25
OkMessage:
	.string	"the age has increased 1.\n"

.globl _start

_start:
###INITIALIZE PROGRAM###
//movl %esp, %ebp
//subl $ST_SIZE_RESERVE, %esp #Allocate space for our file

pushl $STDOUT 
pushl $errorMessage
pushl $47
call write


pushl $STDOUT 
pushl $OkMessage
pushl $26
call write

movl $SYS_EXIT, %eax
movl $0 , %ebx
int $LINUX_SYSCALL


//###BEGIN MAIN READ###
//	movl $SYS_READ, %eax			
//	movl STDIN, %ebx	#get the input file descriptor
//	movl $BUFFER_DATA, %ecx		#the location to read into
//	movl $RECORD_SIZE, %edx     #the size of the buffer
//	int $LINUX_SYSCALL		#Size of buffer read is returned in %eax
//	cmpl $RECORD_SIZE, %eax  #if found or on error, go to the end
//	je	.readOk
//##print errormessage ##
//	movl $SYS_WRITE, %eax
//	movl $STDERR, %ebx
//	movl $errorMessage, %ecx
//	movl $46, %edx
//	int $LINUX_SYSCALL
//	jmp .end
//
//.readOk:
//##increment age
//	movl $BUFFER_DATA, %eax
//	addl $RECORD_AGE, %eax
//	movl (%eax), %ebx
//	incl %ebx
//	movl %ebx , (%eax)
//##end modify age
//	movl $SYS_WRITE, %eax
//	movl $STDOUT, %ebx
//	movl $OkMessage, %ecx
//	movl $24, %edx
//	int $LINUX_SYSCALL
//
//
//###WRITE THE BLOCK OUT TO THE OUTPUT FILE###
//	movl $SYS_WRITE, %eax
//	movl ST_FD_OUT(%ebp), %ebx #the output file descriptor
//	movl $BUFFER_DATA, %ecx #location of the buffer
//	movl $RECORD_SIZE, %edx #size of the buffer
//	int $LINUX_SYSCALL
//
//.end:
//###CLOSE THE FILES###
//	movl $SYS_CLOSE, %eax
//	movl ST_FD_OUT(%ebp), %ebx
//	int $LINUX_SYSCALL
//	movl $SYS_CLOSE, %eax
//	movl ST_FD_IN(%ebp), %ebx
//	int $LINUX_SYSCALL
//###EXIT###
//	movl $SYS_EXIT, %eax
//	movl $0, %ebx
//	int $LINUX_SYSCALL#convert_to_upper function
