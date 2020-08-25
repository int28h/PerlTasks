/*
Функция для вычисления простых чисел в диапазоне [$x, $y].

Печатает все положительные простые числа в формате "$value\n"
Если простых чисел в указанном диапазоне нет - ничего не печатает.
*/
sub primes_from_interval {
    my ($x, $y) = @_;
    
    if($x < 0) {$x = 2}
    
    if($x <= 2) {print "2\n" if $y>=2}
    
    for(my $i=3; $i<=$y; $i+=2){
        my $flag=1;
        
        for(my $j=3; $j**2<=$i; $j+=2){
            if($i % $j==0){
                $flag=0;
                last;
            }
        }
        print "$i\n" if $flag;
    }
}