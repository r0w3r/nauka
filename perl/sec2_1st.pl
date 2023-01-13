#!/usr/bin/perl

use utf8;
use strict;
use warnings;

print("Hello, Perl\n\n");

print("What is your name: ");
chomp(my $name = <STDIN>);

print("Hello, ",$name, "\n\n");

