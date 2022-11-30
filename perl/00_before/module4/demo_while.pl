#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover");
my $cnt = 0;

print "================while loop ==============\n";
while($cnt<=$#cards){
  print($cards[$cnt], "\n");
  $cnt++;
}

print("the value of counter at the end of the while loop is $cnt \n");
print "=================do..while loop===========\n";
do {
  print("this loop is executed once", "\n");
    print($cards[$cnt], "\n");
    print($cards[$cnt], "\n");
    $cnt++;
}while($cnt<=$#cards);

$cnt = 0;

my @extracards = ("Visa","Diners", "Master", "Amex", "Discover");

while($cnt<=$#extracards){
  if($extracards[$cnt] eq 'Diners'){
    $cnt++;
    next;
  }
  print($extracards[$cnt], "\n");
  $cnt++;
}

