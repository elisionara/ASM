.data
 
 list:	.word 3, 0, 1, 2, 6, -2, 4, 7, 3, 7

.text

     la $t3, list         # armazena em $t3 o endere�o do primeiro elemento de list
#    li $t2, 5            # coloca o �ndice em $t2
#    add $t2, $t2, $t2    # �ndice x2
#    add $t2, $t2, $t2    # �ndice x4
#    add $t1, $t2, $t3    # armazena em $t1 o endere�o do �ndice 5 de $t3
       
    lw $t4, 36($t3)       # seleciona o �ndice do vetor
    
    move $a0, $t4
    li $v0 1
    syscall
