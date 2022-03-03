		addi $s0,$zero,30
		addi $s1,$zero,23
bp1:		add  $s5,$s5,$s1  # Realiza a soma
		addi $s0,$s0,-1   # Diminui o contador
		bne  $s0,$0,bp1   # Verifica se acabou

		
