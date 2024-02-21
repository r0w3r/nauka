## List and Arrays
List is an orderd collection of scalars.\

### Accessing Elements of Array
$fred[0] = "yabba";\
$fred[1] = "dabba";\
$fred[2] = "doo";\

You can do this:
$num = 2.4344;\
print $fred[$num - 1];      # Same as printting $fred[1]\

### Special Array Indices
``$rocks[0] = 'bedrock';              # One element\
$rocks[1] = 'slate';                # another ...\
$rocks[2] = 'lava';                 # and another ...\
$rocks[3] = 'crused rock';          # and another...\
$rocks[99] = 'schist';              # now there are 95 undef elements\
\
$end = $#rocks;                 # 99, whitch is the last element's index\
$number_of_rocks = $end + 1;    # OK, but you'll see a better way later\
$rocks[$#rocks] = 'hard rock';  # the last rock\
$rocks[-1]  = 'hard rock';      # easier way to do that last example\
$dead_rock = $rocks[-100];       # gest 'bedrock'\
$rocks[-200] = 'crystal';       # fatal error!\``

