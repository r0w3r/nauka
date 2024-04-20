# Subroutines
### Defining a Subroutine

```perl
sub marine {
    $n += 1; # Global variable $n
    print "hello, sailor number $n!\n";
}
```

### Invoking a Subroutine
you invoke a subroutine from within an expression by using the subroutine name
(with the ampersand):
```perl
&marine;    #   says Hello, sailor number 1!
&marine;    #   says Hello, sailor number 2!
&marine;    #   says Hello, sailor number 3!
&marine;    #   says Hello, sailor number 4!
```
### Return Values
```perl
sub sum_of_fred_and_barney {
    print "Hej, you called the sum_of_fred_and_barney!\n";
    $fred + $barney;    # That's the return value
}
```
### Arguments
Perl *passes* the arguments to subroutine in default array called ***\@_*** .
It is simmilar to $_ but stiil it's an array. If you wnat to use the 1st argument
you call it $\_[0].
```perl
sub max {
    if ($_[0] > $_[1]){
        $_[0];
    } else {
        $[1];
    }
}
```
Code above is one of sollutions, but it's pretty ugly. It's hard to read, write and check.
There is better way. There's another problem with this subroutine. The name &max is nice
and short, but it doesn't remind us that this subroutine works prperly only if you
called with exacly two paramters:
```perl
$n = &max(10, 15, 27);  # Oops!
```
**max** ingnores the extra parameters since it never looks at $\_[2]. Perl doesn't
whether there's something in there or not. Perl Doesn't care about insufficient
parameters either-you simply get **undef** if you look beyond the end of the
\@_ array, aw with anny other array. You'll see how to make a better **&max**,
which works with any number of parameters, later in this chapter.\
The \@_ variable is private to the subroutine; if there's a global value in
\@_ , Perl save it before it invokes the next subroutine and and restores its previous
value upon return from that subroutine. This also means that a subroutine can pass
arguments to another subroutine without fear of losing its own \@_ variable-the
nested subroutine invocations gets its own \@_ in the same way. Even if the
subroutine calls itself recursively, each invocations gets a new \@_ , so \@_ is
always the parameter list for the *current* subroutine invocation.\

##### Same mechanism as used with the control variable of the **foreach** loop

### Private Variables in Subroutines
But if Perl can give you a ne \@_ for every invocation, can't it give you variables
for your own use as well? Of course it can.\
By defaul, all variables in aperl are global variables; tha is, they are accessible
from every par of the program. But you can create private variables called *lexical
variables* at any time with the **my** operator:
```perl
sub max {
    my($m, $n);         # new private variables for this block
    ($m, $n) = @_       # give nemes to the parameters
    if ($m > $n ){ $m } else { $n }
}
```
these variables are private (or *scoped*) to the enclosin block; any other $m or $n is totally
unaffected by these two. And that goes the other way too-no other code can access
or modify these private variables, ba accidnet or design. So you could drop this
sugroutine into any Perl program in the world and know that you wouldn't mess up
that programs's **$m** and **$n** (if any)'
```perl
my($m, $n) = @_     # Name the subroutine parameters
```
That one statement creates the private variables and sets their values.

### Variable Length Parameters Lists
    In real-world Perl code, subroutines often gave parameter list of arbitary length.
That's because of Perl's "no unnecessery limits" philosofy that you've already
seen. Of course, this is unlike many traditional progarmming languages, which
require every subroutine to be strictly typed; that is to permit to only a certain
predefined number of parameters of predefined types. It's nice that Perl is so
flexible, but (as you saw with the **&max** routine earlier) that may couse problems
 when you call a subroutine with a different number of arguments that it expexts.\
    Of course, you can easly check that the subroutine has the right number of
arguments by examining the **@_** array. for example, you could have written
**&man** to check its argument list like this:
```perl
sub max {
    if (@_ != 2) {
        print "WARNING! &max should get exactly two arguments!\n";
    }
    #continue as before...
}
```
That **if** test uses the "name" of the array in a scalar context to find out
the number of array elements.\
### A Better &max Routine
Rewrite **&max** to allow for any number of arguments, so you can call it like this:
```perl
$maximum = &max(3, 5, 10, 4, 6);
sub max {
    my($max_so_far) = shift @_; #the first one is the largest yet seen
    foreach (@_) {              #look at the remaining arguments
        if ($_ > $max_so_far) { #could this one be bigger yet?
            $max_so_far = $_;
        }
    }
    $max_so_far;
}
```
