#!/usr/bin/perl

use utf8;
use strict;
use warnings;

use constant num_cards=>4;

my $card1="Visa";
my $cardnumlength=12;
my $sec_code_length=3;
my $total_length=29;


print("this is constant ",num_cards, "\n");
print"This variable is printed using say $card1 \n";
{
  $total_length=$cardnumlength+$sec_code_length;
  print"Total # of characters to be masked inside the block is $total_length \n";
}
print"Total # of characters to be masked outside the block is $total_length \n";
