		addi $s0,$zero,2  # Incrementador
		addi $s2,$zero,1  # Registro para numeros impares
		addi $s3,$zero,40 # Contador de numeros
		addi $s4,$zero,-1 # Constante -1
bp1:		add  $s1,$s1,$s2  # Realiza a soma
		add  $s3,$s3,$s4  # Diminui o contador
		add  $s2,$s2,$s0  # Seguinte numero impar
		bne  $s3,$0,bp1   # Verifica se acabou/

		
