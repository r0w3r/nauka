#!/usr/bin/perl

use utf8;
use strict;
use warnings;

print "Podaj pierwsza liczbe: ";
chomp(my $num_1 = <STDIN>);
print "\nPodaj druga liczbe: ";
chomp(my $num_2 = <STDIN>);
print "\n". $num_1 * $num_2 ."\n";
