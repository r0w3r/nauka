#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discovery");
$cards[0] = "Diners";
$cards[4] = "Visa";
my $var = @cards;

print(@cards, "\n");
print($cards[0], "\n");
print($cards[-1], "\n");
print("Number is $var and highest index is $#cards", "\n");
my @sortedcards = sort @cards;
print("Sorted Cards: ", @sortedcards, "\n");
print("Reversed Cards: ", reverse(@cards), "\n");
print("Reversed Cards: ", reverse(@sortedcards), "\n");
