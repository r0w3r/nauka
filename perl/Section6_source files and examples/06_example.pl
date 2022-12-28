# Display the title.
print("\nContents of file:\n\n");

# Read the contents in a file.
while ( $line = <> )
{
	# read the contents.
	chomp($line); # Remove newline character.
	print("$line\n"); # Display line of content.
}

# creates new space.
print("\nEmployees: \n\n");

# file name to read from.
$file = 'employees.txt';

# opens the file for reading.
open(FILEHANDLE, "<", $file);

# Read the contents in a file.
while ( $line = <FILEHANDLE> )
{
	# read the contents.
	chomp($line); # Remove newline character.
	print("$line\n"); # Display line of content.
}

# closes the file when finished.
close(FILEHANDLE);