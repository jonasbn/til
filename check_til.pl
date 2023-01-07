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

my ($unlinked, $linked, $deadlinks, $ignored_files) = (0, 0, 0, 0);

my @report = compare_hashes(\%files, \%links);

my $total_files = keys %files;
my $total_links = keys %links;

print join "\n", @report;
print "\n\n";
printf "Unlinked files: %d\n", $unlinked;
printf "Linked files: %d\n", $linked;
printf "Ignored files: %d\n\n", $ignored_files;
printf "Total files: %d\n\n", $total_files;

printf "Dead links: %d\n", $deadlinks;
printf "Total links: %d\n", $total_links;

exit 0;

sub compare_hashes {
    my ($files, $links) = @_;
    my @report;
    foreach my $k (keys %{ $files }) {
        if ($k eq 'README.md') {
            $ignored_files++;
            next;
        }
        if (not exists $links->{$k}) {
            push @report, "The file '$k' is not linked";
            $unlinked++;
        } else {
            $linked++;
        }
    }
    foreach my $k (keys %{ $links }) {
        if (not exists $files->{$k}) {
            push @report, "The link '$k' target does not match a file";
            $deadlinks++;
        }
    }
    return @report;
}
