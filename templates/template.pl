#!/usr/bin/perl
# Perl Template

use strict;
use warnings;

print "Hello, World from Perl!
";

# Example subroutine
sub greet {
    my $name = shift;
    return "Hello, $name!
";
}

# Call the subroutine
print greet("World");
