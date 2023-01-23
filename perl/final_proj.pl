#!/usr/bin/perl

use utf8;
use strict;
use warnings;

my @my_list = ();
sub list_of_names
{
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

sub search_for_customer{
  print("\nEnter name of customer: ");
  chomp(my $name_of_customer = <STDIN>);

  foreach my $name (@my_list)
  {
    if (lc($name_of_customer) eq lc($name) )
    {
      print("\n$name was found!!\n");
      return;
    }
  }
}
#Start the Perl Application Here.

print("\n\n\t\tWelcome To Joe's Bar & Grill Guest List\n\n");
print("\t\t\tDesigned By: Me\n\n");

&list_of_names();
my $opt_sel = &get_user_option();
while ($opt_sel != 4 )
{
  if ($opt_sel == 1)
  {
    &search_for_customer();
    $opt_sel = &get_user_option();
  }
  elsif ($opt_sel == 2)
  {
    &add_new_customer();
    $opt_sel = &get_user_option();
  }
  elsif ($opt_sel == 3)
  {
    &get_customer();
    $opt_sel = &get_user_option();
  }
  else
  {
    print("\nPlese select a valid option!!!\n");
    $opt_sel = &get_user_option();
  }
}

my $filename = 'names.txt';
open(FILE, ">", $filename) || die("Error:\n$!");
foreach my $name (@my_list) 
{
  chomp($name);
  print(FILE "$name\n");
}
close(FILE);
print("\nExiting...\n\n");
exit;
