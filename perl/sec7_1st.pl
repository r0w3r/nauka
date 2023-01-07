#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my %my_hash = (
  "name_01" => "bartosz",
  "name_02" => "tomasz",
  "name_03" => "bogdan",
);
$my_hash{"name_04"} = "adam";

foreach(values(%my_hash))
{
  print("$_\n")
}
