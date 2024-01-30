#!/usr/bin/perl

use v5.28;
#use warnings;
use strict;

chomp (my $input = <STDIN>);
my @chars = split(undef, $input);
my @nums;
my $integer = 0;
my $skip;

foreach (@chars){
    if ($_ =~ /I/){
        push(@nums, 1);
    }elsif($_ =~ /V/){
        push(@nums, 5);
    }elsif($_ =~ /X/){
        push(@nums, 10);
    }elsif($_ =~ /L/){
        push(@nums, 50);
    }elsif($_ =~ /C/){
        push(@nums, 100);
    }elsif($_ =~ /D/){
        push(@nums, 500);
    }elsif($_ =~ /M/){
        push(@nums, 1000);
    }
}

foreach my $i (0..$#nums){
    my $j = $i;
    $j ++;

    if ($skip == 1){
        $skip = 0;
        next;
    }

    if ($nums[$i] < $nums[$j]){
        my $diff += ($nums[$j] - $nums[$i]);
        $integer += $diff;
        $skip = 1;
    }elsif ($nums[$i]){
        $integer += $nums[$i];
        $skip = 0;
    }
}

say $integer;