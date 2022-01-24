#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

$Data::Dumper::Indent = 0;

my @s1 = ("s1", "s1");
print "s1: ".Dumper(\@s1)."\n";

my @s2 = @s1;

push @s2, "s2", "s2";
print "s1: ".Dumper(\@s1), "s2: ".Dumper(\@s2)."\n";

my @s3 = @s2;

push @s3, "s3", "s3";
print "s1: ".Dumper(\@s1), "s2: ".Dumper(\@s2), "s3: ".Dumper(\@s3)."\n";

my @s4 = @s2;

push @s4, "s4", "s4";

print "s1: ".Dumper(\@s1), "s2: ".Dumper(\@s2), "s3: ".Dumper(\@s3), "s4: ".Dumper(\@s4)."\n";

$s3[0] = "XX";
print "s1: ".Dumper(\@s1), "s2: ".Dumper(\@s2), "s3: ".Dumper(\@s3), "s4: ".Dumper(\@s4)."\n";

$s4[0] = "YY";
print "s1: ".Dumper(\@s1), "s2: ".Dumper(\@s2), "s3: ".Dumper(\@s3), "s4: ".Dumper(\@s4)."\n";


=pod

	s3 := append(s2, "s3", "s3")
	fmt.Printf("s1: %v, s2: %v, s3: %v\n", s1, s2, s3)

	s4 := append(s3, "s4", "s4")

	fmt.Printf("s1: %v, s2: %v, s3: %v, s4: %v\n", s1, s2, s3, s4)
	s3[0] = "XX"
	fmt.Printf("s1: %v, s2: %v, s3: %v, s4: %v, replacing first element in s3\n", s1, s2, s3, s4)

	s4[0] = "YY"
	fmt.Printf("s1: %v, s2: %v, s3: %v, s4: %v, replacing first element in s4\n", s1, s2, s3, s4)
=cut
