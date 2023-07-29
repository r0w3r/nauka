# This example template was created
# by Jaddian Forte.

#Example 1
$_ = "Hello Victor!!! How are you today Victor?";
s/victor/Jaddian/gi; # Replace Barney with Fred
print("\nExample 1 - substitution operator: $_\n\n");

# Example 2
@fields = split(/,/, "What,are, you, doing");
print("\nExample 2 - split function: @fields[1]\n\n");

# Example 3
$x = join(":", 2, 4, 6, 8, 10);
print("\nExample 3 - join function: $x\n\n");

