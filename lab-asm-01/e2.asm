		addi $s0,$zero,8		# Max i
		addi $s1,$zero,1		# Min i
		addi $s3,$zero,1		# Inicia acumulador
lsum:		add  $s2,$0,$s1			# Carga i
		add  $s4,$0,0			# Inicia contador em 0
		add  $s5,$0,$s3			# Guarda valor atual
msum:		add  $s3,$s3,$s5		# Soma		
		addi $s4,$s4,1			# Incrementa contador quadsum
		bne  $s4,$s2,msum		# Verifica se acabou a multiplacação por i
		addi $s1,$s1,1			# Incrementa o i
		bne  $s1,$s0,lsum		# Verifica se o somatorio acabou