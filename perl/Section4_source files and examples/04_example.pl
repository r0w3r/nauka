# create an array
@my_array = ("Victor", "Jaddian", 24, 32, "Forte");

print("Array values: @my_array");


@my_array[0] = "Forte";


print("\n\nChanged the first element value to @my_array[0]");

($first_name, $second_name) = ("Victor", "Jaddian");

print("\n\nList values: $first_name, $second_name\n\n");


print("List of array values: \n\n");
foreach $value (@my_array)
{
	print("- $value\n");