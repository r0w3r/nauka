*SCALAR*
+
INTEGER LITERALS:
0
2001
-40
137
54234324464265 - same as below.
54_234_324_464_265

NONDECIMA INTEGER LITERALS:
0377          #same as 255 decimal
0o377         #same as 255 decimal
0xff          #same as 255 decimal
0b11111111    #same as 255 decimal

FLOATING-POINT LITERALS:
1.25
255.000
255.0
7.25e45  # 7.25 time 10 to the power of the 45th (a big number)
-6.5e24  # negative 6.5 times 10 to the 25th
         # (a big negative number)
-12e.-24 # negative 12 time 10 to the -24th
-1.2E-23 # another way to say that the # may be uppercase
0x1f.0p3  # From perl v5.22 gexadecimal FP literals

NUMERIC OPERATOS:
2 + 3      # 2 plus 3, or 5
5.1 - 2.4  # 5.1 minus 2.4, or 2.7
3 * 12     # 3 times 12 = 36
14 / 2     # 14 divided by 2, or 7
10.2 / 0.3 # 10.2 divided by 0.3, or 34
10 / 3     # always floating-point divide, so 3.3333333...

SINGLE-QUOTED STRING LITERALS:
'fred'      # those four characters: f,r,e and d
'barney'    # those six characters
''          # the null string (no characters)
'⅚∞☃☠'      # some "wide" unicode characters
'hello
there'      # hello, newline, there (11 characters total)
'hello\nthere'

DOUBLE-QUOTED STRINGS LITERALS:
"barney"        # just the same as 'barney'
"hello world\n" # hellow world and a newline
"The last character  of this string is a quote marka: \""
"coke\tsprite"  #coke, a tab, and sprite
"\x{2668}"      # Unicode HOT SPRINGS character code point
"\N{SNOWMAN}"   # Unicode snowman by name

STRINGS OPERATORS:
"hello" . "world"       # same as "hellowordl"
"hello".' '."world"     # same as 'hello world'
'hello world'."\n"      # same as "hello world \n"

  Special string operator:
  "fred" x 3        # is "fredfredfred"
  "barney" x (4+1)  # is "baney" x 5 or "barneybarneybarneybarneybarney"
  5 x 4.8           $ is realy "5" x 4, which is "5555"

--
0377      # taht is octal fo 255 decimal
'0377'    # that is 377 decimal

SCALAR ASSIGMENT:
$fred = 17;              # give $fred the value of 17
$barney = 'hello';       # give $barney the five-character string 'hello'
$barney = $fred + 3;     # give barney the current valye of $fred plus 3 (20)
$barney = $barney * 2;   # $barney is now $barney miltiplied by 2 (40)

COMPOUDN ASSIGMENT OPERATORS:
$fred = $fred + 5;      # without the compoudn assigment operator
$fred += 5;             # with the compound assigment operator
$barney = $barney * 3;
$barney *= 3;
$str = $str . " ";      # append a space to $str
$str .= " ";            # sme thing with compound assigment

OUTPUT WITH PRINT:
print "hello world\n";    # say hello world, followed a newline
print "The answer is ";
print 6*7;
print ".\n";

INTERPOLATION OF SCALAR VARIABLE INTO STRINGS:
$meal = "stek z brontosaura";
$barney = "fred zjadl $meal";   # $barney is now "fred zjadl stek z brontozaura"
$barney = 'fred zjadl ' . $meal;# another wa to write that
$fred = 'hello';
print "\$fred";       # prints '$fred' not 'hello'
print '$fred';        # does the same

CHARACTER CODE PINT:
chr() change code to character, ord() do it from character to code

my $alef = chr( 0x05D0 );
my $alpha = chr( hex( '03B1'));
my $omega = chr( 0x03C9 );
print $alef.' '.$alpha.' '.$omega. "\n";

STDIN:
$line = <STDIN>;
if ($line eq "\n"){
  print "Than was just a blank line!\n";
} else {
  print "That line of input was: $line";
}
chomp() # get rid of newline character
$text = "a line of text\n";
chomp($text);
chomp($text = <STDIN>);         # Read the text, without the newline char.
$text = <STDIN>;                # Do the same thing
chomp($text);                   # but in two steps

THE WHILE CONTROL STRUCTURE:
$count = 0;
while ($count < 10){
  $count += 2;
  print "count is now $count\n"; #Gives values 2 4  6 8 10
}
UNDEF VALUE:
Variables hafe special UNDEF value before they are firs assigne.
If you use it as numeric value = 0
#Add up some odd numbers
$n = 1;
while ($n < 10 ){
  $sum += $n;
  $n +=2; # On to the next odd number
}
print "The total was $sum.\n";
+
