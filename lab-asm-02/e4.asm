		addi $s0,$zero,0x10000000	# Ponteiro
		addi $s1,$zero,0x1001FFFC	# Ponteiro final
		addi $s2,$zero,0		# Zera acumulador
loop:		lw  $s3,0($s0)			# Carrega valor apontado pelo ponteiro
		add $s2,$s2,$s3			# Soma o valor carregado
		addi $s0,$s0,0x00000020		# Atualiza ponteiro
		slt $s7,$s0,$s1			# i < LENGTH
		bnez $s7,loop			# Salta se i < LENGTH
		beq $s0,$s1,loop		# Salta se i == LENGTH
