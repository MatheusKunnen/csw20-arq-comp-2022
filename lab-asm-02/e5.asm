		addi $s0,$zero,0		# Acumulador iteracoes
		addi $s1,$zero,0x10011234	# Ponteiro de memoria
loop:		sw  $s0,0($s1)			# Salva acumulador na memoria
		addi $s0,$s0,1			# Aumenta acumulador
		addi $s1,$s1,0x00000020		# Atualiza ponteiro
		slti $s7,$s0,1001		# i < LENGTH
		bnez $s7,loop			# Salta se i < LENGTH
