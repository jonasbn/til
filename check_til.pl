#!/usr/bin/env perl

use warnings;
use strict;
use File::Find;

find(\&wanted, '.');

my %files;
my %links;

sub wanted { 
    if ($_ =~ m/\.md$/) {
        my ($key) = $File::Find::name =~ m/\.?\/?(.*\.md)/;
        $files{$key}++;
    }
}

open(FIN, 'README.md') or die "Unable to open file: README.md - $!";
while(<FIN>) {
    if ($_ =~ m/\(.*\.md\)/) {
        my ($key) = $_ =~ m/\((.*\.md)\)/;
        $links{$key}++;
    }
}
close(FIN);

my @report = compare_hashes(\%files, \%links);
print join "\n", @report;
print "\n";

exit 0;

sub compare_hashes {
    my ($files, $links) = @_;
    my @report;
    foreach my $k (keys %{ $files }) {
        if (not exists $links->{$k}) {
            push @report, "The file '$k' is not linked";
        }
    }
    foreach my $k (keys %{ $links }) {
        if (not exists $files->{$k}) {
            push @report, "The link '$k' target does not match a file";
        }
    }
    return @report;
}