.text

main:
	# SOLICITA AO USU�RIO UM N�MERO
	la $a0, print1
	li $v0, 4
	syscall

	# L� UM N�MERO DO BUFFER DE ENTRADA
	li $v0, 5
	syscall
	move $t0, $v0
	
	# IMPRIME O INTEIRO
	move $a0, $t0
	li $v0, 1
	syscall
	
	# FINALIZA A EXECU��O
	li $v0, 10
	syscall
	
.data
print1 :	.asciiz "Digite um numero inteiro: "        

