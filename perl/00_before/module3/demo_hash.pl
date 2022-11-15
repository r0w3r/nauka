#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my %cards = (
  card1 => "Visa",
  card2 => "Master"
);
print("Value of first element $cards{card1}", "\n");

my @card_keys = keys %cards;
print("List of keys: ", @card_keys, "\n");
$cards{card3} = "Amex";
print("New element: ", $cards{card3}, "\n");

