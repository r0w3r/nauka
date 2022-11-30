#!/usr/bin/perl

use utf8;
use strict;
use warnings;
use feature "switch";
use experimental "smartmatch";

#test
my $card = <STDIN>;
chomp($card);
$card = lc($card);
given($card){
  when('visa'){print("we will chek for visa card in our logs");}
  when('master'){print("we will chek for master masterin our logs");}
  when('amex'){print("we will chek for amex card in our logs");}
  when('discover'){print("we will chek for discover card in our logs");}
  default{print("This card will not be checked by our utility");}
}
   
