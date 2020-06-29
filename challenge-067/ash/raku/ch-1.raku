#!/usr/bin/env raku

# Task 1 from
# https://perlweeklychallenge.org/blog/perl-weekly-challenge-067/

# Comments: 

my $m = 5;
my $n = 2;

say '[ ',
    ([X] (1..$m) xx $n)\
        >>.sort
        .unique(:as(*.Str))
        .grep({$_[0] != $_[1]})
        .sort(*.Str)
        .map({"[{.join(',')}]"})
        .join(', '),
    ' ]';

# Output:

# [ [1,2], [1,3], [1,4], [1,5], [2,3], [2,4], [2,5], [3,4], [3,5], [4,5] ]
