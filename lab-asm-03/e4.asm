	        addi $s1,$0,0			# Contador de iteracoes
	        addiu $s2,$0,1			# Inicia acumulador
loop:		addi $s1,$s1,1			# Aumenta  iteracoes		
		addi $s3,$s1,0			# Nro de multiplicacoes
		addu $s7,$s2,0			# Guarda acumulador antes de multiplicacao
sum:		addu $s2,$s2,$s2		# "Multiplica"
		addi $s3,$s3,-1			# Diminui contador
		bnez $s3,sum			# Vai para sum se contador nao e zero
		slt $s6,$s2,$s7			# Se o contador e menor depois de ser somado entao quebro os 31bits
		beqz $s6,loop			# Salta se nao estorou
		addi $a0,$s1,0			# Coloca o ponteiro do nro a ser impreso
		li $v0,1			# Modo de syscall (imprimir na "tela")
		syscall				# Imprime