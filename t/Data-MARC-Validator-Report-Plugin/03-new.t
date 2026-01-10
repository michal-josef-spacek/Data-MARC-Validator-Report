use strict;
use warnings;

use Data::MARC::Validator::Report::Plugin;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::MARC::Validator::Report::Plugin->new(
	'name' => 'foo',
);
isa_ok($obj, 'Data::MARC::Validator::Report::Plugin');
