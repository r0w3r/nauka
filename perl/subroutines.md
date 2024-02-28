## Subroutines
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


