#!/usr/bin/perl

use v5.28;
use strict;

my @nums = (2, 7, 11, 15);
my $target = 22;

my $comchk = 0;

sub sum_finder{
    my $parser = $_[1] + 1;  
    foreach my $i ($parser..$#nums){  #"parser" key to less than On^2?  replace parser w 0 to see

        #$comchk ++;                    #complexity check
        #say "$comchk TEST";

        if ($_[0] == $nums[$i]){
            return $i;
        }
    }
}

foreach my $i (0..$#nums){
    my $diff = $target - $nums[$i];

    my $j = &sum_finder($diff, $i);
    if ($j){
        say "$i, $j";
        last;
    }
}

#O(n^2) :( - (not quite? array being parsed is decreasing by 1 element every visit)