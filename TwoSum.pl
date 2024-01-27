#!/usr/bin/perl

use v5.28;
use strict;

my @nums = (2, 7, 11, 15);
my $target = 22;

sub sum_finder{
    my $parser = $_[1] + 1;  
    foreach my $i ($parser..$#nums){  
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
