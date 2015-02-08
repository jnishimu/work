#!/usr/bin/perl -w
use strict;

sub merge {
	my ($a1,$a2) = @_;
	my $i = 0;
	my $j = 0;
	my $a1_length = @$a1;
	my $a2_length = @$a2;
	my @new_a = ();
	while ($i < $a1_length || $j < $a2_length){
		if($j >= $a2_length || ($i < $a1_length && $a1->[$i] < $a2->[$j])){
			$new_a[$i+$j] = $a1->[$i];
			$i++;
		}else{
			$new_a[$i+$j] = $a2->[$j];
			$j++;
		}
	}
	return @new_a;
}

sub merge_sort {
	my @a = @_;
	my $a_length = @a;
	my @new_a = ();

	if($a_length > 1){
		my $m = $a_length / 2;
		my $n = $a_length - $m;

		my @a1 = ();
		my @a2 = ();

		for (my $i = 0; $i < $m; $i++){
			$a1[$i] = $a[$i]
		}

		for (my $i = 0; $i < $n; $i++){
			$a2[$i] = $a[$m+$i];
		}
		@a1 = merge_sort(@a1);
		@a2 = merge_sort(@a2);
		@new_a = merge(\@a1,\@a2);
	}else{
		@new_a = @a;
	}
	return @new_a;
}

my @a = (4,6,1,2,8,3,9,7);
print "最終結果：" . join(',',merge_sort(@a)) . "\n";
