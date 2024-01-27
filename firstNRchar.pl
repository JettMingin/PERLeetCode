#!/usr/bin/perl

use v5.28;
use strict;

chomp (my $input = <STDIN>);
my @string = split(undef, $input);
my %charCount;

foreach (@string){
    $charCount{$_} ++;
}

foreach (@string){
    if ($charCount{$_} == 1){
        say $_;
        exit();
    }
}

say "_";
