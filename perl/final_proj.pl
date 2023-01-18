#!/usr/bin/perl

use utf8;
use strict;
use warnings;

sub list_of_names
{
  my @my_list = ();
  my $filename = 'names.txt';
  open(FILE, "<", $filename) || die("Error:\n$!");
 while( chomp(my $name = <FILE>))
  {
    push(@my_list, $name);
  }
  close(FILE);
} #End of list_of_names subroutine.

sub get_user_option
{
  print("\n1. Search fot customer\n");
  print("2. Add new customer\n");
  print("3. Get all customer\n");
  print("4. Quit\n");

  print("\nSelect an option: ");
  chomp(my $option_selected = <STDIN>);

  return $option_selected;
  }

sub get_customer
{
  print("\nCustomers:\n\n");
  my $count = 0;
  foreach my $name_of_customer (@my_list){
    $count +=1;
    print("$count. $name_of_customer\n");
  }
}

sub add_new_customer{
  print("\nenter name of new customer: ");
  chomp(my $the_new_customer = <STDIN>);
  my $exit_status = push(@my_list, $the_new_customer);
  if ($exit_status){
    print("\nNew Customer added.\n");
  } else {
    print("\nSomething went wrong while trying to add a new customer.\n")
  }
}


