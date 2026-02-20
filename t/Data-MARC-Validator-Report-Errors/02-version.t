use strict;
use warnings;

use Data::MARC::Validator::Report::Errors;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::MARC::Validator::Report::Errors::VERSION, 0.01, 'Version.');
