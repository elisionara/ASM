.text

main:
	
#SOLICITA O TIPO DE PAGAMENTO(INTEIRO CÓDIGO 4)

	la $a0, tp        #coloca a mensagem solicitando o tipo de pagamento para ser impresso
	li $v0, 4         #é utilizado o código 4 para printar uma string(no caso, de caracteres) na tela
	syscall           #realiza a chamada do sistema
	#primeiro \n
	
	la $a0, n1        #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)
	li $v0, 4         #comando de impressão da string 
	syscall 	  #realiza a chamada do sistema
	
#OPÇAÕ DE DÉBITO
	
	la $a0, debito    #coloca a mensagem informando o código de débito para ser impresso 
	li $v0, 4         #comando de impressão da string 
	syscall 	  #realiza a chamada do sistema
	
#OPÇAÕ DE CRÉDITO
	
	la $a0, credito   #coloca a mensagem informando o código de crédito para ser impresso
	li $v0, 4         #comando de impressão da string 
	syscall           #realiza a chamada do sistema
	
	#segundo \n
	la $a0, n2        #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)
	li $v0, 4         #comando de impressão da string 
	syscall		  #realiza a chamada do sistema
	  	
#LÊ O CÓDIGO DO TIPO DE PAGAMENTO DO BUFFER DE ENTRADA 
	
	li $v0, 5         #comando de leitura de inteiro 	
	syscall   	  #realiza a chamada do sistema
	move $t0, $v0     #move o que foi lido em $v0 para $t0 
	
#SOLICITA A BANDEIRA
	
	la $a0, bandeira  #coloca a mensagem soliciando o código da bandeira para ser impresso	
	li $v0, 4         #comando de impressão da string 
	syscall           #realiza a chamada do sistema
	
	#terceiro \n      
	la $a0, n3        #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)
	li $v0, 4         #comando de impressão da string 
	syscall           #realiza a chamada do sistema
	
	la $a0, bandeira1 #coloca a mensagem informando o código da bandeira 1-VISA para ser impresso
	li $v0, 4         #comando de impressão da string 
	syscall           #realiza a chamada do sistema
	
	la $a0, bandeira2 #coloca a mensagem informando o código da bandeira 2-MASTER para ser impresso	
	li $v0, 4 	  #comando de impressão da string 
	syscall           #realiza a chamada do sistema
	 
	la $a0, bandeira3 #coloca a mensagem informando o código da bandeira 3-ELO para ser impresso
	li $v0, 4         #comando de impressão da string 
	syscall           #realiza a chamada do sistema
	
	#quarto \n        
	la $a0, n4        #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)
	li $v0, 4         #comando de impressão da string 
	syscall           #realiza a chamada do sistema
	
#LÊ A BANDEIRA SOLICITADA DO BUFFER DE ENTRADA(VALOR INTEIRO CÓDIGO 5)
	li $v0, 5         #comando de leitura de inteiro 
	syscall           #realiza a chamada do sistema
	move $t1, $v0     #move o que foi lido em $v0 para $t1 

#SOLICITA O VALOR A SER PAGO

	la $a0, valor    #coloca a mensagem soliciando o valor da compra para ser impresso
	li $v0, 4        #comando de impressão da string 
	syscall          #realiza a chamada do sistema
	
	#quinto \n      
	la $a0, n5      #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)
	li $v0, 4       #comando de impressão da string 
	syscall         #realiza a chamada do sistema
	
#LÊ O VALOR DO BUFFER DE ENTRADA(CÓDIGO PARA VALOR REAL 6)

	li $v0, 6       #comando de leitura de real
	syscall         #realiza a chamada do sistema
	move $t2,$v0    #move o que foi lido em $v0 para $t2 

#SOLICITA LEITURA DO CARTÃO 

	la $a0, leitura  #coloca a mensagem soliciando a leitura do cartão para ser impresso
	li $v0, 4        #comando de impressão da string 
	syscall          #realiza a chamada do sistema

	#sexto \n      
	la $a0, n6       #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)
	li $v0, 4        #comando de impressão da string 
	syscall          #realiza a chamada do sistema
	
#LÊ O NÚMERO DO CARTÃO DO BUFFER DE ENTRADA
	
	li $v0, 8        #comando de leitura de string
	la $a0, numbcart #coloca no buffer(espaço reservado em numbcart)
	li $a1, 18       #tamanho do buffer(18 bits)
	syscall          #realiza a chamada do sistema
	move $t3, $a0    #move o que foi colocado em numbcart para $t3
	
#SOLICITA A SENHA DO CARTÃO
	
	la $a0, senha    #coloca a mensagem soliciando a senha do cartão para ser impresso
	li $v0, 4        #comando de impressão da string 
	syscall          #realiza a chamada do sistema

	#setimo \n        
	la $a0, n7        #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)
	li $v0, 4         #comando de impressão da string 
	syscall           #realiza a chamada do sistema
	
#LÊ A SENHA DO CARTÃO DO BUFFER DE ENTRADA
	
	li $v0, 8         #comando de leitura de string
	la $a0, senhacart #coloca no buffer(espaço reservado em senhacart)
	li $a1, 11        #tamanho do buffer(11 bits)
	syscall           #realiza a chamada do sistema

	move $t4, $a0     #move o que foi colocado em $a0 para $t4
	#oitavo \n       
	la $a0, n8        #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)
	li $v0, 4         #comando de impressão da string 
	syscall    
	
#PRINTAR NA TELA:
	
#TIPO DE PAGAMENTO
	
	la $a0, mens1     #coloca a mensagem 1 com o tipo de pagamento fornecido para ser impresso

	li $v0, 4         #comando de impressão da string 

	syscall           #realiza a chamada do sistema


	li $v0, 1         #comando de impressão de inteiro na tela

	la $a0, ($t0)     #coloca o registrador $t0 para ser impresso

	syscall           #realiza a chamada do sistema

	#oitavo \n       

	la $a0, n8        #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)

	li $v0, 4         #comando de impressão da string 

	syscall           #realiza a chamada do sistema


	#BANDEIRA        

	#la $a0, mens2     #coloca a mensagem 2 com a bandeira fornecida para ser impresso

	#li $v0, 4         #comando de impressão da string 

	#syscall           #realiza a chamada do sistema


	#li $v0, 1        #comando de impressão de inteiro na tela

	#la $a0, ($t1)    #coloca o registrador $t1 para ser impresso

	#syscall          #realiza a chamada do sistema

	#nono \n         

	#la $a0, n9       
	#coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)

	#li $v0, 4        
	#comando de impressão da string 

	#syscall          
	#realiza a chamada do sistema


	#VALOR

	la $a0, mens3     #coloca a mensagem 3 com o valor fornecido para ser impresso

	li $v0, 4         #comando de impressão da string 

	syscall           #realiza a chamada do sistema


	lwc1 $f4, pontofloat # carrega o que tem em pontofloat para o registrador 
	$f4(carrega e imprime)


	la $v0, 2         #comando de impressão de ponto flutuante na tela

	add.s $f12, $f0, $f4 #adiciona a string guardada em $f4 para $f0, que vai ser impresso quando passado para 
	$f12

	syscall           #realiza a chamada do sistema


	#decimo \n      

	la $a0, n10      #coloca a mensagem para ser executada(mensagem contendo um quebra linha\n)

	li $v0, 4        #comando de impressão da string    

	syscall          #realiza a chamada do sistema


	#NÚMERO DO CARTÃO

	la $a0, mens4   #coloca a mensagem 4 com o número do cartão fornecido para ser impresso

	li $v0, 4       #comando de impressão da string 

	syscall		#realiza a chamada do sistema


	li $v0, 4       #comando de impressão da string 

	la $a0, ($t3)   #coloca o registrador $t3 para ser impresso

	syscall         #realiza a chamada do sistema



.data
tp :	          
.asciiz "Tipo de pagamento:"
debito :	  
.asciiz "1.CREDITO"
credito :	  
.asciiz "2.DÉBITO"
bandeira:         
.asciiz "Informe a bandeira do cartão:"
bandeira1:        
.asciiz "1.VISA"
bandeira2:        
.asciiz "2.MASTER"
bandeira3:        
.asciiz "3.ELO"
valor:            
.asciiz "Valor a ser pago:"
leitura :         
.asciiz "Digite o numero do cartao:"
senha:            
.asciiz "Digite sua senha:"
mens1:            
.asciiz "Tipo de pagamento:"
mens2:            
.asciiz "Bandeira: "
mens3:            
.asciiz "Valor:"
mens4:            
.asciiz "Número do cartão:"
pontofloat :	  
.float 0.0
numbcart:         
.space 18
senhacart:        
.space 11  
n1       :        
.asciiz "\n"
