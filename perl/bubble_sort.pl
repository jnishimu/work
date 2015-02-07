#!/usr/bin/perl -w
use strict;

sub bubble_sort {
	my @a = @_;
	my $a_length = @a;
	for (my $i = 0; $i < $a_length; $i++){
		for (my $j = 0; $j < $a_length - 1; $j++){
			print join(',', @a) . "\n"; #途中の状態を表示
			if($a[$j] < $a[$j+1]){
				my $t = $a[$j];
				$a[$j] = $a[$j+1];
				$a[$j+1] = $t;
			}
		}
	}
	return @a;
}

my @a = (4,6,1,2,8,3,9,7);
print "最終結果：" . join(',',bubble_sort(@a)) . "\n";
