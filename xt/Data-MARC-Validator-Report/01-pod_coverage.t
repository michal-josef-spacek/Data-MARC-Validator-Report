use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Data::MARC::Validator::Report', 'Data::MARC::Validator::Report is covered.');
