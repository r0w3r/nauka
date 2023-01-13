#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my $some_var = "Welcome to Perl";
if($some_var =~ /perl/)
{
  print("Perl was found!!\n");
}
else
{
  print("Perl was not found!!\n");
}
