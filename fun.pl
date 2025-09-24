use strict;
use warnings;

print "Enter the first number: ";
my $num1 = <STDIN>;
chomp $num1;

print "Enter an operator (+, -, *, /): ";
my $operator = <STDIN>;
chomp $operator;

print "Enter the second number: ";
my $num2 = <STDIN>;
chomp $num2;

my $result;

if ($operator eq '+') {
    $result = $num1 + $num2;
} elsif ($operator eq '-') {
    $result = $num1 - $num2;
} elsif ($operator eq '*') {
    $result = $num1 * $num2;
} elsif ($operator eq '/') {
    if ($num2 == 0) {
        die "Error: Cannot divide by zero.\n";
    }
    $result = $num1 / $num2;
} else {
    die "Error: Invalid operator.\n";
}

print "Result: $result\n";
