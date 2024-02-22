## List and Arrays
List is an orderd collection of scalars.\

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

