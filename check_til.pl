#!/usr/bin/env perl

use warnings;
use strict;
use File::Find;

my %ignore_dirs  = map { $_ => 1 } qw(.git _site .claude .github);
my %ignore_files = map { $_ => 1 } qw(README.md CLAUDE.md);

# Files to scan for links; default to README.md
my @link_sources = @ARGV ? @ARGV : ('README.md');

find({ wanted => \&wanted, preprocess => \&preprocess }, '.');

my %files;
my %links;

sub preprocess {
    return grep { !$ignore_dirs{$_} } @_;
}

sub wanted {
    if ($_ =~ m/\.md$/) {
        my ($key) = $File::Find::name =~ m/\.?\/?(.*\.md)/;
        $files{$key}++;
    }
}

for my $source (@link_sources) {
    open(my $fh, '<', $source) or die "Unable to open file: $source - $!";
    while (<$fh>) {
        if ($_ =~ m/\(.*\.md\)/) {
            my ($key) = $_ =~ m/\((.*\.md)\)/;
            $links{$key}++;
        }
    }
    close($fh);
}

my ($unlinked, $linked, $deadlinks, $ignored_files) = (0, 0, 0, 0);

my @report = compare_hashes(\%files, \%links);

my $total_files = keys %files;
my $total_links = keys %links;

print join "\n", @report;
print "\n\n";
printf "Unlinked files: %d\n", $unlinked;
printf "Linked files: %d\n", $linked;
printf "Ignored files: %d", $ignored_files;
printf " (Ignored directories: %d)\n\n", scalar keys %ignore_dirs;
printf "Total files: %d\n\n", $total_files;

printf "Dead links: %d\n", $deadlinks;
printf "Total links: %d\n", $total_links;

exit 0;

sub compare_hashes {
    my ($files, $links) = @_;
    my @report;
    foreach my $k (sort keys %{ $files }) {
        if ($ignore_files{$k}) {
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
    foreach my $k (sort keys %{ $links }) {
        if (not exists $files->{$k}) {
            push @report, "The link '$k' target does not match a file";
            $deadlinks++;
        }
    }
    return @report;
}
