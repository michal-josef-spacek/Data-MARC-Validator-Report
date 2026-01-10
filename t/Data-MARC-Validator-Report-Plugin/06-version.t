use strict;
use warnings;

use Data::MARC::Validator::Report::Plugin;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::MARC::Validator::Report::Plugin->new(
	'name' => 'foo',
);
my $ret = $obj->version;
is($ret, undef, 'Get version (undef - default).');

# Test.
$obj = Data::MARC::Validator::Report::Plugin->new(
	'name' => 'foo',
	'version' => 0.01,
);
$ret = $obj->version;
is($ret, 0.01, 'Get version (0.01).');
