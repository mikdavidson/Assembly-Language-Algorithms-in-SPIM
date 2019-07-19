# Get two numbers and add them together
# Brian DeRenzi
# 20 October 2017

.data
	inmsg: .asciiz "Enter a series of 5 formulae: \n"
	outmsg: .asciiz "The values are: \n"
	int0: .space  20
	int1: .space 20
	int2: .space 20
	int3: .space 20
	int4: .space 20
.text
	main:
		# Print out the input msg
		li $v0, 4
		la $a0, inmsg
		syscall

		# get the first number from user
		li $v0, 8
		la $a0, int0
		li $a1, 20
		syscall
		
		# get the first number from user
		li $v0, 8
		la $a0, int1
		li $a1, 20
		syscall	
	
		# get the first number from user
		li $v0, 8
		la $a0, int2
		li $a1, 20
		syscall

		# get the first number from user
		li $v0, 8
		la $a0, int3
		li $a1, 20
		syscall
		
		# get the first number from user
		li $v0, 8
		la $a0, int4
		li $a1, 20
		syscall
		
		
		# Print out the output msg)
		li $v0,4
		la $a0, outmsg			# print the integer
		syscall

		# Print out the input msg)
		li $v0,4
		la $a0, int0			# print the integer
		syscall

		# Print out the input msg)
		li $v0,4
		la $a0, int1			# print the integer
		syscall

		# Print out the input msg)
		li $v0,4
		la $a0, int2			# print the integer
		syscall

		# Print out the input msg)
		li $v0,4
		la $a0, int3			# print the integer
		syscall

		# Print out the input msg)
		li $v0,4
		la $a0, int4			# print the integer
		syscall


		
		# exit program
		jr $ra

