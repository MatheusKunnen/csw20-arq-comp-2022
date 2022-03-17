		addi $s0,$0,0x10010000		# Inicializa ponteiro de memoria
		addi $s1,$0,4			# Contador de iteracoes
loop:		li $v0,5			# Set modo de syscall
		syscall				# Solicita nro
		sw $v0,0($s0)			# Guarda em memoria
		addi $s0,$s0,0x0020		# Aumenta ponteiro
		addi $s1,$s1,-1			# Aumenta nro de iteracoes
		bnez $s1,loop			# Salta se iterador > 0
		addi $s0,$s0,-0x0020		# Ajusta ponteiro de memoria
		addi $s1,$0,4			# Reinicia contador de operacoes
loop_print:	lw $a0,0($s0)			# Coloca o ponteiro do nro a ser impreso
		li $v0,1			# Modo de syscall (imprimir na "tela")
		syscall				# Imprime
		addi $s0,$s0,-0x0020		# Aumenta ponteiro
		addi $s1,$s1,-1			# Aumenta nro de iteracoes
		bnez $s1,loop_print		# Salta se iterador > 0
