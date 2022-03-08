		addi $s0,$zero,20		# Max i
		addi $s1,$zero,1		# Min i
lsum:		add  $s2,$0,$s1			# Carga i
		add  $s4,$0,0			# Inicia contador em 0
quadsum:	add  $s3,$s3,$s2		# Soma		
		addi $s4,$s4,1			# Incrementa contador quadsum
		bne  $s4,$s2,quadsum		# Verifica se acabou o i^2
		addi $s1,$s1,1			# Incrementa o i
		bne  $s1,$s0,lsum		# Verifica se o somatorio acabou