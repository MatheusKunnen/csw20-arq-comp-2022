		addi $s0,$0,0		# Acumulador de iteracoes	
		addi $s7,$0,0x10010000  # Ponteiro de memoria	
loop:		li $v0,5		# Solicita inteiro
		syscall			# Solicita inteiro
		move $s1,$v0		# Move inteiro para registrador
		sw $s1,0($s7)		# Guarda em memoria
		addi $s0,$s0,1		# Aumenta iterador
		slti $s6,$s0,21		# i < LENGTH
		bnez $s6,loop		# Salta se i < LENGTH