package Bencher::Scenario::Interpreters;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup time of various interpreters',
    participants => [
        {name=>'perl'  , cmdline=>[qw/perl -e1/]},
        {name=>'bash'  , cmdline=>[qw/bash --norc -c true/]},
        {name=>'ruby'  , cmdline=>[qw/ruby -e1/]},
        {name=>'python', cmdline=>[qw/python -c1/]},
        {name=>'nodejs', cmdline=>[qw/nodejs -e 1/]},
    ],
    on_failure => 'skip',
};

1;
# ABSTRACT:
