		addi $s1,$zero,1234
		add  $s2,$s1,$s1 # 2 * 1234
		add  $s1,$s2,$s1 # 3 * 1234
		add  $s2,$s2,$s1 # 5 * 1234
		add  $s1,$s2,$s2 # 10 * 1024
		add  $s2,$s1,$s2 # 15 * 1024
		add  $s1,$s2,$s2 # 30 * 1024