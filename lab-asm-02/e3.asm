		addi $s0,$zero,400		# Numero de iterações i
		addi $s1,$zero,0x10010100	# Ponteiro A
		addi $s2,$zero,0x10014300	# Ponteiro B
loop:		lw  $s4,0($s1)			# Carrega valor A
		sw  $s4,0($s2)			# Salva valor em B
		sw  $0,0($s1)			# Coloca A = 0
		addi $s0,$s0,-1			# Ajusta nro de iteração
		addi $s1,$s1,0x00000020		# Aumenta ponteiro A
		addi $s2,$s2,-0x00000020	# Aumenta ponteiro B
		bnez $s0,loop			# Salta para loop se não acabou
