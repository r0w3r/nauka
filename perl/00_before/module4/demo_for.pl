#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover");

for(@cards){
  print($_,"\n");
}
print("==========For without using special Variabl==========\n");

for(@cards){
  print;
  print("\n");
}
print("=====================For with iterator===============\n");
for my $it (@cards){
  print($it, "\n");
}
print("===================C-style for loop================\n");
for(my $it=0; $it < 3; $it++){
  print($cards[$it],"\n");
}
