#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my $filename = 'Test';
open(my $fh, ">>", $filename);
print($fh "Tomasz Kalka\n");
print($fh "Marta Leszka\n");
close($fh);
open($fh, "<", $filename);
while(my $row = <$fh>)
{
  chomp($row);
  print($row, "\n");
}
close($fh);
