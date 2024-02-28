#!/usr/bin/perl

use utf8;
use strict;
use warnings;

print "Podaj sekwencje cyfr z zakresu 0-6,\nkazde cyfre podaj w nowej lini.\nZakoncz sekwencje wciskaj Ctrl-D\n";
my @imiona = qw/ fred betty barney dino wilma pebbles bamm-bamm /;
chomp(my @numbers = <STDIN>);

foreach(@numbers) {
  print "$imiona[$_]\n";
}
