# Example created by Jaddian Forte.

# create a new hash of names.
%my_hash = ("name01" => "Jaddian", "name02" => "Jackson");

# display all names in the hash
# using a foreach loop.
foreach $name (%my_hash)
{
	print($my_hash{$name}, "\n");
}

# access the first name in the and change
# it to Williams, then display it
# in the system console.
$my_hash{"name01"} = "Williams";
print("The first name was changed to ", $my_hash{"name01"}, ".\n\n");

# list all the key names in the hash
# using the keys function.
@my_keys = keys(%my_hash);
print("@my_keys\n\n");

# list all the value names in the hash
# using the keys function.
@my_keys = values(%my_hash);
print("@my_keys\n\n");