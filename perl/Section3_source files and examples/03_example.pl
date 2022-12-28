# Create a Perl program that asks for 
# the user name and age and display them
# in the system console.


# Get the user name and save
# it into a variable called name.
# Using chomp operator to remove
# the newline character.
print("What is your name: ");
chomp( $name = <STDIN> );


# Get the user age and save
# it into a variable called age.
print("What is your age: ");
chomp( $age = <STDIN> );


# Write an if statement and if
# the age is => 21 then display
# "You can drink" if not, then 
# display you cannot drink with
# then name displayed and age.
if ($age >= 21)
{
	print("\nYou can drink.\n");
	print("You are ", $age, " ", $name, "\n");
}
else
{
	print("\nYou can not drink!!!");
	print("You are ", $age, " ", $name, "\n");
}