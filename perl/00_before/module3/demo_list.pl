#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my $newcard = "Diners";

print(4,8,12);
print"\n";


print("Visa", "Master", "Amex", "Disvovery","\n");
print("Visa", "Master", "Amex", "Disvovery",(12,3),"\n");
print("Visa", "Master", "Amex", "Disvovery",$newcard,(12,3),"\n");
print qw(Visa Master Amex Disvovery);
print(("Visa", "Master", "Amex", "Disvovery")[2]);

