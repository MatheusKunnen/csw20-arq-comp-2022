		addi $s0,$zero,0		# Numero de iterações i
		addi $s1,$zero,0		# Ponteiro de memoria
loopveci:	lw  $s2,0x10010000($s1)		# Carrega valor atual v[i]
		addi $s3,$s1,0			# Inicia ponteiro j = i 
		add $s6,$zero,$s0		# Inicia iterações j = i
loopvecj:	add $s3,$s3,0x00000020		# Aumenta ponteiro (j++) 
		addi $s6,$s6,1			# Aumenta iterações (j++)
		slti $s7,$s6,20			# Verifica j < LENGTH
		beqz $s7,endloopj		# Salta caso j > LENGTH
		lw $s4,0x10010000($s3)		# Carrega seguinte valor v[j]
		slt $s7,$s2,$s4			# Verifica v[i] < v[j]
		bnez $s7, loopvecj		# Salta caso v[i] > v[j]
		sw  $s4,0x10010000($s1)		# v[i] (memoria) = v[j] (registrador)
		sw  $s2,0x10010000($s3)		# v[j] (memoria) = v[i] (registrador)
		addi $s2,$s4,0			# v[i] = v[j]
		beqz $0,loopvecj		# Volta ao inicio do loop (j)
endloopj:	addi $s1,$s1,0x00000020		# Aumenta ponteiro (i++)
		addi $s0,$s0,1			# Aumenta iterações (i++)
		slti $s7,$s0,20			# Verifica i < LENGTH
		bnez $s7,loopveci		# Salta caso i < LENGTH