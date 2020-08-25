/*
Функция solve_equation:

- принимает на вход коэффиценты квадратного уравнения  $a_value, $b_value, $c_value.
- вычисляет корни в переменные $x1 и $x2($x1 < $x2).
- печатает результат вычисления в виде строки "$x1, $x2\n".
- если уравнение имеет единственное решение, то печатает результат в виде  "$x1\n".

Если уравнение не имеет решения или не является квадратным, должно быть напечатано "No solution!\n"  
(рассматриваем только действительные числа в корнях)
*/
sub solve_equation {
    my ($a_value, $b_value, $c_value) = @_;
    my $d = ($b_value ** 2) - 4 * $a_value * $c_value;
	
    if ($a_value == 0 || $d < 0) {
        print "No solution!\n";
    } elsif ($d > 0) {
		my $x1 = (-$b_value + ($d ** (1/2))) / (2 * $a_value);
		my $x2 = (-$b_value - ($d ** (1/2))) / (2 * $a_value);
			
		if($x1 < $x2){
			print "$x1, $x2\n";
		} else {
			print "$x2, $x1\n";
		}
	} else {
		my $x = (-$b_value) / (2 * $a_value);
		print "$x\n";
	}  
}
