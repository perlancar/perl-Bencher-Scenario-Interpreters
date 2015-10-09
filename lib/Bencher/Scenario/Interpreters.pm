package Bencher::Scenario::Interpreters;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    participants => [
        {type=>'command', name=>'perl'  , cmdline=>[qw/perl -e1/]},
        {type=>'command', name=>'bash'  , cmdline=>[qw/bash --norc -c true/]},
        {type=>'command', name=>'ruby'  , cmdline=>[qw/ruby -e1/]},
        {type=>'command', name=>'python', cmdline=>[qw/python -c1/]},
        {type=>'command', name=>'nodejs', cmdline=>[qw/nodejs -e 1/]},
    ],
    on_failure => 'skip',
};

# ABSTRACT: Benchmark startup time of various interpreters

=head1 SYNOPSIS

 % bencher -m Interpreters [other options]...
