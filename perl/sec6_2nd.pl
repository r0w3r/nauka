#!/usr/bin/perl

use utf8;
use strict;
use warnings;


open(FH, "<", "notatki.txt") || die("Error: $!");
while (<FH>)
{
  print("$_");
}
close(FH)
