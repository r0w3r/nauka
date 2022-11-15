#!/usr/bin/perl

use utf8;
use strict;
use warnings;
use feature 'say';

my $card1 = qq/Visa/;
my $card2 = "Master";
my $cardnumlength = 12;
my $sec_code_length = 3;

print("First card is of type $card1 \n");
print ("The length of the string is ", length($card1), "\n");
print ("The first two characters are ", substr($card1, 0, 2), "\n");

print($card1 . $card2, "\n");
print($card1 x 4, "\n");

