#!/usr/bin/perl

use utf8;
use strict;
use warnings;

#test
my @cards = ("visa", "master", "amex", "discover");
my $cnt = 0;

until($cnt > $#cards) {
  print($cards[$cnt], "\n");
  $cnt++;
}

do {
  print($cards[$cnt], "\n");
  $cnt++;
}until($cnt > $#cards);
