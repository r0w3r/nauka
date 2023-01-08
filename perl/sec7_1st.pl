#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my %my_hash = (
  "name_01" => "bartosz",
  "name_02" => "tomasz",
  "name_03" => "bogdan",
);
foreach(keys(%my_hash)){
  print("$_, ");
}
print("\n");

foreach(values(%my_hash)){
  print("$_, ");
}
print("\n");
while((my $key, my $value) = each(%my_hash)){
  print("$key: $value\n");
}
