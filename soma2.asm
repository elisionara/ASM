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
	
	# SOLICITA AO USU�RIO UM N�MERO
	la $a0, print2
	li $v0, 4
	syscall	
	
	# L� UM N�MERO DO BUFFER DE ENTRADA
	li $v0, 5
	syscall
	move $t1, $v0
	
	# SOMA OS VALORES LIDOS
	add $t2, $t0, $t1
	
	# IMPRIME O RESULTADO DA SOMA
	move $a0, $t2
	li $v0, 1
	syscall
	
	# FINALIZA A EXECU��O
	li $v0, 10
	syscall
	
.data
print1 :	.asciiz "Digite o primeiro numero: "
print2 :	.asciiz "Digite o segundo numero : "        

