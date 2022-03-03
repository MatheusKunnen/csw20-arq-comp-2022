		addi $s0,$zero,30
		addi $s1,$zero,23
		addi $s2,$zero,-1
bp1:		add  $s5,$s5,$s1  # Realiza a soma
		add  $s0,$s0,$s2 # Diminui o contador
		bne  $s0,$0,bp1  # Verifica se acabou

		
