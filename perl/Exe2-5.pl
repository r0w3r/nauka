#!/usr/bin/perl

use utf8;
use strict;
use warnings;

print "Podja jakis text: ";
chomp(my $text = <STDIN>);
print "\nPodaj jakas liczbe: ";
chomp(my $num = <STDIN>);
print "$text \n" x $num ;
