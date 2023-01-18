#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my @my_arr = qw/ Apple Orange Strawberry/;
my $my_list_fr = join(" ", @my_arr);
print($my_list_fr,"\n");
foreach(@my_arr){
  print("$_\n")
}
