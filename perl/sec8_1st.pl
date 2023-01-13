#!/usr/bin/perl

use utf8;
use strict;
use warnings;

$_ = "Hello Bartosz, how are you today?";
if(/(\S+.*[u])/)
{
  print("$1 \n");
}
