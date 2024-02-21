#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my $circum;
my $pi = 3.141592654;

chomp(my $radius = <STDIN>);
if ($radius <= 0){
  $radius = 0;
}
$circum = 2 * $pi * $radius;
print $circum . "\n";
