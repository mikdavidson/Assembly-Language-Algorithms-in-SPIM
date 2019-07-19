.data
	first: .space 20
	second: .space 20
	third: .space 20
	fourth: .space 20
	fifth: .space 20
	prompt: .asciiz "Enter a series of 5 formulae: \n"
	output: .asciiz "The values are: \n"
	newLine: .asciiz "\n"
	
.globl main
.text
	main:
		
		addi $t5, $t5, 61

		addi $t4, $t4, 0
		addi $t5, $t5, 61
		
		li $v0, 4
		la $a0, prompt
		syscall
		
		li $v0, 8
		la $a0, first 
		li $a1, 4
		syscall 

		
		li $v0, 8
		la $a0, second
		li $a1, 4
		syscall

		li $v0, 8
		la $a0, third
		li $a1, 4
		syscall

		li $v0, 8
		la $a0, fourth 
		li $a1, 4
		syscall

		li $v0, 8
		la $a0, fifth
		li $a1, 4
		syscall		
		
		li $v0, 4
		la $a0, output	
		syscall
		
		la $t0, first
		lbu $t1, ($t0)
		addi $t1, $t1, -48
		beq $t1, 5, printfs
		
		li $v0, 4
		la $a0, first
		syscall 
		
		
		
		la $t0, second
		lbu $a0, ($t0)		
		beq $a0, 61, equalsTwo
		
		li $v0, 4
		la $a0, second
		syscall
		
	continue:
		
		la $t0, third
		lbu $a0, ($t0)
		beq $a0, 61, equalsThree
		
		li $v0, 4
		la $a0, third
		syscall
	
	continuee:
		
		la $t0, fourth
		lbu $a0, ($t0)
		beq $a0, 61, equalsFour
		
		li $v0, 4
		la $a0, fourth
		syscall
	
	continueee:
	
		la $t0, fifth
		lbu $a0, ($t0)
		beq $a0, 61, equalsFive
		
		li $v0, 4
		la $a0, fifth
		syscall
		
		li $v0, 10
		syscall
		
	equalsTwo:
		
		la $t0, second
		lbu $t1, 1($t0)
		addi $t1, $t1, -48
		
		beq $t1, 0, printTwoOne
		beq $t1, 1, printTwoTwo
		beq $t1, 2, printThreeThree
	
	equalsThree:
		
		la $t0, third
		lbu $t1, 1($t0)
		addi $t1, $t1, -48
		
		beq $t1, 0, printThreeOne
		beq $t1, 1, printThreeTwo
		beq $t1, 2, printThreeThree
	
	equalsFour:
		
		la $t0, fourth
		lbu $t1, 1($t0)
		addi $t1, $t1, -48
		
		beq $t1, 0, printFourOne
		beq $t1, 1, printFourTwo
		beq $t1, 2, printFourThree
	
	equalsFive:
		
		la $t0, fifth
		lbu $t1, 1($t0)
		addi $t1, $t1, -48
		
		beq $t1, 0, printFiveOne
		beq $t1, 1, printFiveTwo
		beq $t1, 2, printFiveThree
		
	printTwoOne:
	
		li $v0, 4
		la $a0, first
		syscall
		j continue
		
	printTwoTwo:
	
		li $v0, 4
		la $a0, second
		syscall
		j continue
		
	printTwoThree:
	
		li $v0, 4
		la $a0, third
		syscall
		j continue
		
	printThreeOne:
	
		li $v0, 4
		la $a0, first
		syscall
		j continuee
	
	printThreeTwo:

		li $v0, 4
		la $a0, second
		syscall
		j continuee
	
	printThreeThree:

		li $v0, 4
		la $a0, third
		syscall
		j continuee
	
	printFourOne:
		
		li $v0, 4
		la $a0, first
		syscall
		j continueee

	printFourTwo:
		
		li $v0, 4
		la $a0, second
		syscall
		j continueee
		
	printFourThree:
		
		li $v0, 4
		la $a0, third
		syscall
		j continueee
		
	printFiveOne:
	
		li $v0, 4
		la $a0, first
		syscall
		j exit
		
	printFiveTwo:
		li $v0, 4
		la $a0, second
		syscall
		j exit
	
	printFiveThree:
		li $v0, 4
		la $a0, third
		syscall
		j exit
	
	printfs:
		
		li $v0, 1
		li $a0, 56
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 1
		li $a0, 56
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 1
		li $a0, 56
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 1
		li $a0, 56
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 1
		li $a0, 56
		syscall
		
		j exit
	exit:
	
		li $v0, 10
		syscall

	