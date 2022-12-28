# create a subroutine
sub my_subroutine
{
	print("This is my 1st subroutine call.\n\n");	}
# create subroutine that takes one
# parameter called name.
sub get_name
{
	my($name) = @_;
	print("Hello, ", $name, "\n\n");	
}

sub add_numbers
{
	my($x, $y) = @_;
	return ($x + $y);
}
# call the my_subroutine.
&my_subroutine();

# call get_name subroutine with a
# name you would like to use.
&get_name("Victor Davis");

# call the add_numbers subroutine
# and pass in 2 numbers to add
# as parameters and save the result
# in a variable called sum.
$sum = &add_numbers(27, 45);

# Display the sum in the system
# console.
print("The sum is ", $sum, ".\n\n");