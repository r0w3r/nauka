# create an array
@my_array = ("Victor", "Jaddian", 24, 32, "Forte");
# Display the array to the system console
print("Array values: @my_array");

# Access and change the first element value to "Forte".
@my_array[0] = "Forte";

# Display new value for @my_array[0].
print("\n\nChanged the first element value to @my_array[0]");
#create a list with variables
($first_name, $second_name) = ("Victor", "Jaddian");
# Display the list to the system console.
print("\n\nList values: $first_name, $second_name\n\n");

# Display the array using a foreach loop.
print("List of array values: \n\n");
foreach $value (@my_array)
{
	print("- $value\n");}