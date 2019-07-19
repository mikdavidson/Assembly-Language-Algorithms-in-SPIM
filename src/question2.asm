.data
   string: .space 20 
   inmsg: .asciiz "Enter a string: \n"
   outmsg: .asciiz "The value +5 is: \n"

.text
.globl main

main:
   li $v0, 4
   la $a0, inmsg
   syscall
   
   li $v0, 8        
   la $a0, string       
   move $t0, $a0
   syscall
   li $v0, 4
   la $a0, outmsg
   syscall
   li $t3,0
   li $t4,9
   la $t0, string
   lbu $t1, 1($t0)      
   li $a1, 10          
   li $a0, 0            
   addi $t1,$t1,-48      
   move $a2, $t1        
   jal check
   add $a0, $a0, $t1      
   addi $t0, $t0, 1      
   lbu $t1, 1($t0)  
   
loop:   
   beq $t1, $a1, print 
   addi $t1,$t1,-48  
   move $a2, $t1        
   jal check
   mul $t2, $a0, 10  
   add $a0, $t2, $t1      
   addi $t0, $t0, 1     
   lbu $t1, 1($t0)   
   b loop
print:  
   
   addi $a0, $a0, 5
   li $v0, 1  
   syscall
   li $v0, 10         
   syscall
check:
   blt $a2, $t3, a  
   bgt $a2, $t4, a
   jr $ra
a:
