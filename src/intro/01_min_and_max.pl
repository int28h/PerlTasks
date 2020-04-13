/*
Функция поиска минимального и максимального из 3-х чисел $x, $y, $z.
Печатает минимальное и максимальное числа, в виде "$value1, $value2\n" 
(обратите внимание, минимальное число идет первым).
*/

use strict;
use warnings;
sub min_and_max {
    my ($x, $y, $z) = @_;
    my $min = $x;
    my $max = $x;
    
    for my $val (@_) {
      if ($min > $val) { $min = $val; }
      if ($max < $val) { $max = $val; }
    }
    print "$min, $max";
}