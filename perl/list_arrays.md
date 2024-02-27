# List and Arrays
List is an orderd collection of scalars.

### Accessing Elements of Array
```perl
$fred[0] = "yabba";
$fred[1] = "dabba";
$fred[2] = "doo";

You can do this:
$num = 2.4344;
print $fred[$num - 1];      # Same as printting $fred[1]
```

### Special Array Indices
```perl
$rocks[0] = 'bedrock';              # One element
$rocks[1] = 'slate';                # another ...
$rocks[2] = 'lava';                 # and another ...
$rocks[3] = 'crused rock';          # and another...
$rocks[99] = 'schist';              # now there are 95 undef elements

$end = $#rocks;                 # 99, whitch is the last element's index
$number_of_rocks = $end + 1;    # OK, but you'll see a better way later
$rocks[$#rocks] = 'hard rock';  # the last rock
$rocks[-1]  = 'hard rock';      # easier way to do that last example
$dead_rock = $rocks[-100];       # gest 'bedrock'
$rocks[-200] = 'crystal';       # fatal error!
```

### List Literal
```perl
(1, 2, 3)           # list of three values 1, 2, and 3
(1, 2, 3)           # the same three values(the trailing comma is ignored)
("fred", 4.5)       # two values "fred" and 4.5
```

##### To create long list of values that are in sequence you can use range operator
```perl
(1..100)            # list of 100 integers
(1..5)              # same as (1,2,3,4,5)
(1.7..5.7)          # same thing; both values are truncated
(0, 2..6, 10, 12)   # same as (0, 2, 3, 4, 5, 6, 10, 12)
(5..1)              # empty list; .. only counts "uphill"
```
##### As elements of list you don't have to use constants
every time it's used it will be evaluated.
```perl
($m, 17)            # two values: the current value of $m and 17
($m+$o, $p+$q)      # Two values
($m..$n)            # range determined by current values of $m and $n
(0..$#rocks)        # theh indices of the rocks arrey from the previous section
```

### The qw Shortcut
```perl
("fred", "barney", "betty", "wilma", "dino")    # a typical list of strings
qw( fred barney betty wilma dino )              # same as earlier but less typing
```
##### *qw* stands for "quoted words" or "quoted by whitespace"
Perl Treats it like single-quted string

### List Assignment
```perl
($fred, $barney) = ($barney, $fred)     # Swap those values
($betty[0], $betty[1]) = ($betty[1], $betty[0])
($fred, $barney) = qw<flintstone rubble slate granite >;# two ignored items
($wilma, $dino) = qw[flintstone]                        # $dino gets undef
($rocks[0], $rocks[1], $rocks[2], $rocks[3] ) = qw/talc mica feldspar quartz/;  # you can build array with line of code like this
```
If you want to refer to entire array use @ sign before the name of the array(and no index brackets afterito)
```perl
@rocks = qw/ bedrock slate lava/;
@tiny = ();                         # the empty list
@giant = 1..1e5                     # a list with 100_000 elements
@stuff = (@giant, undef, @giant);   # a list with 200_001 elements
$dino = "granite";
@quarry = (@rocks, "crushed rock", @tiny, $dino);
@copy = @quarry;    # copy a list from one array to another
```

### The pop and push Operators
##### The pop operator takes the last element off of an array and returns it:
```perl
@array = 5..9;
$fred = pop(@array);    # $fred gets 9, @array now has (5, 6, 7, 8)
$barney = pop(@array);  # $barntey gets 8, @array now has (5, 6, 7)
@others = qw/ 9 0 2 1 0/;
push @array, @others; @array now has those five new elements (19 total)
```
### The shift and uknshift Operators
##### Similarly to pop and push, shift and unshift perform the corresponding actions on the start of the array.
```perl
@array = qw# dino fred barney #;
$m = shift(@array);         # $m gets "dino", @array now has ("fred", "barney")
$n = shift @array;          # $n gets "fred", @array now has ("barney")
shift @array;               # @array is now empty
$o = shift @array;          # $o gets undef, @array is still empty
unshift(@array, 5);         # @array now has the one-element list (5)
unshift @array, 4;          # @array now has ( 4, 5)
@others = 1..3;
unshift @array, @others;    # @array now has (1, 2, 3, 4, 5)
```
##### Analogous to *pop*, *shift* returns undef if you give it an empty array variable.

### The splice Operator
##### *splice* adds  elements to the middle of a array.
```perl
@array = qw( pebbles dino fred barney betty);
@removed = splice @array, 2;    # remove fred and everything after
                                # @removed is qw( fred barney betty)
                                # @array is qw(pebbles dino)
```
##### 3rd argument **specify a length**
```perl
@array = qw( pebbles dino fred barney betty);
@removed = splice @array, 1, 2; # remove dino, fred
                                # @removed is qw(dino fred)
                                # @arra is qw(pebbles barney betty)
```
##### 4th argument **is a replacement list**
```perl
@array = qw( pebbles dino fred barney betty);
@removed = splice @array, 1, 2, qw(wilma);  # remove dino, fred
                                            # @removed is qw(dino fred)
                                            # @array is qw(pebbles wilma
                                            #               barney betty)
```
##### You don't have to remove any elements if you specify a length of 0
```perl
@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 1, 0, qw(wilma);  # remove nothing
                                            # @removed is qw()
                                            # @array is qw(pebbles wilma dino
                                            #               fred barney betty)
```
### Interpolating Arrays into Strings
There are no extra spaces added before or after an interpolated array;
if you want those, you'll have to put them in yourself.\
If you forget that arrays interpolate like this, you'll be surprised
when you put an email address into a double-quoted string:
```perl
$email = "fred@bedrock.edu";    # WRONG! Tries to interpolate @bedrock
```
To get aroud this problem, you escape the @ in a double-quoted string
or use a single-quoted string
```perl
$email = "fred\@bedrock.edu";   # Correct
$email = 'fred@bedrock.edu';    # Another way to do that
```
A single element of an array interpolates into its value,
just as you'd expected from a scalar variable:
```perl
@fred = qw(hello dolly);
$y = 2;
$x = "This is $fred[1]'s place";        # "This is dolly's place"
$x = "This is $fred[$y-1]'s place ";    # same thing
```
Not that the index expression evaluates ad an ordinary expression. it is 
*not* variable-interpolated first. It mean, if **$y** contains the string
"2*4", we will get element 1 not 7. It will treated as just plain 2.
```perl
@fred = qw(eating rocks is wrong);
$fred = "right";                # we are tryin to say "this is right[3]"
print "this is $fred[3]\n";     # prints "wrong" usnig @fred[3]
print "this is ${fred}[3]\n";   # prints "right" (protected by braces)
print "this is $fred"."[3]\n";  # right again (different string)
print "this is $fred\[3]\n";    # right again (backslash hides it)
```
### The foreach Control Structure
##### Like every **foreach** loop stps through a list values executing
##### one iteration (time through the loop) for each value.
```perl
foreach $rock (qw/ bedrock slate lava /) {
    print "One rock is $rock.\n";   # Prints name of the rocks
}
```
The control variable($rock in that example) takes on a new value
from the list for each iteration. The 1st time through the loop,
it's "bedrock"; the 3rd time, it's "lava". The control variable 
is not a copy of the list element - **IT ACTUALLY IS THE LIST ELEMENT.**
```perl
@rock = qw/ bedrock slate lava /;
foreach $rock (@rocks) {
    $rock = "\t$rock";      # put a tab in front of each element fo @rocks
    $rock .= "\n";          # put a newline on the end each
}
print "The rocks are:\n", @rocks; # Each one is indented, on its own line
```
### Perl's Favorite Default: $_
##### If you omit the control variable from the beginning of the *foreeach* loop,
##### Perl uses its favorite defaylt variable, **$_**.
```perl
foreach (1..10){    # Uses $_ by default
    print "I can count to $_!\n";
}
```
This Perl's most common default but **not the only one**.\
```perl
$_ = "Yabba dabba doo\n";
print;  # prints $_ by default
```

### The reverse Operator
The *reverse* operator takes a list of values(which may com from an array) and
return the list in the opposite orde.
```perl
@fred = 6..10;
@barney = reverse(@fred);   # gets 10, 9, 8, 7, 6
@wilma = reverse 6..10;     # gets the same thing, without the other array
@fred = reverse @fred;      # puts the result back into the original array
```
##### The last line is noterworthy because it uses **@fred** twice.
Perl always calculates the value being assigned (on the right) before it begins
the actual assigment.
##### Remember that *reveerse* returns the reversed list; it doesn't affect its arguments.
If the return values isn't assigned anywhere, it's useless:
```perl
reverse @fred;          # WRONG - doen't change @ fred
@fred = reverse @fred;  # that's better
```
### The sort Operator

Thhe sort operator takes a list of values(whitch may come from an array)and sorts them
in the internal character ordering.
```perl
@rocks = qw/ bedrock slate rubble granite /;
@sorted = sort(@rocks);         # gets bedrock, granite rubble slate
@back = reverse sort @rocks;    # These go from slate to bedrock
@rocks = sort @rocks;           # puts sorted result back into @rocks
@numbers = sort 97..102;        # Gets 100 ,101 ,102 ,97 ,98 ,99
sort @rocks;                    # WRONG, doesn't modify @rocks
@rocks = sort @rocks;           # Now ther rock collection is in order
```

### The each Operator
Every time you call each on an array, it retukrns two values for the next elemetn
in the array - the index of the value an the value itself:
```perl
require v5.12;
@rocks = qw/ bedrock slate rubble granite/;
while (( $index, $value )) = each @rocks){
    print "$index: $value\n";
}
```
If you wanted to do this without **each**, you'd have to iterate through all of the 
indices of the array and use the index to get the value:
```perl
@rocks = qw/ bedrock slate rubble granit /;
foreach @index (0 .. $#rocks ) {
    print "$index: $rocks[$index]\n";
}
```
Depending on your task, one or the other may be more convenient for you.

### Scalar and List Context
***This is the most IMPORTANT section!!!***
```perl
@people = qw( fred barney betty);
@sorted = sort @people;     # list context: barney, betty, fred
@numbmer = 42 + @people;    # scalar context: 42 +3 gives 45
@list = @people;            # list of three people
$n = @people;               # the number 3
```

### Using List-Producing Expressions ins Scalar context


