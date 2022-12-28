# This example template was created
# by Jaddian Forte.

# The contents to compare the 
# regular expression to.
$_ = "Victor Davis Jaddian Forte";

# \b - Search for exact expression
# g modifer - Search for all matches
# i modifer - case non-sensitive

# Example 1
if (/\bvictor Davis\b/gi)
{
	print("\nExample 1 - Simple pattern search: Match Found!!!\n\n");
}
else
{
	print("\nExample 1 - Simple pattern search: Match Not Found!!!");
}

# Example 2
$_ = "The HAL-9000 requires authorization to continue.";
if (/HAL-[1-5]+/) 
{
	print "\nExample 2 - character class: The string mentions some model of HAL computer.\n\n";
}
else
{
		print "\nExample 2 - character class: The string does not mention some model of HAL computer.\n\n";
}

# Example 3
$some_other = "I love studying Perl programming.";
if ($some_other =~ /victor/i) 
{
	print "\nExample 3 - Bind operator: Expression Match Found!!!\n\n";
}
else
{
	print "\nExample 3 - Bind operator: Expression Match Not Found!!!\n\n";
}
