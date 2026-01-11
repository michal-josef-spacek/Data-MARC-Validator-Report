use strict;
use warnings;

use Data::MARC::Validator::Report::Error;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::MARC::Validator::Report::Error->new(
	'error' => 'This is the error',
	'record_id' => 'id1',
);
my $ret_ar = $obj->filters;
is_deeply(
	$ret_ar,
	[],
	'Get filters ([] - default).',
);

# Test.
$obj = Data::MARC::Validator::Report::Error->new(
	'error' => 'This is the error',
	'filters' => ['material_book', 'rda'],
	'record_id' => 'id1',
);
$ret_ar = $obj->filters;
is_deeply(
	$ret_ar,
	[
		'material_book',
		'rda',
	],
	'Get filters (material_book, rda).',
);
