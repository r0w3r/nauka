#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my @list = <STDIN>;
print "\n";

@list = sort @list;
print "@list"." \n";
chomp(@list);
print "@list"." \n";
