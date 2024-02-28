#!/usr/bin/perl

use utf8;
use strict;
use warnings;

#test

chomp(my @lines = <STDIN>);

print "@lines"." \n";
print reverse(@lines)." \n";
@lines = reverse @lines;
print "@lines"." \n";

