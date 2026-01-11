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
my $ret_hr = $obj->params;
is_deeply(
	$ret_hr,
	{},
	'Get parameters ({} - default).',
);

# Test.
$obj = Data::MARC::Validator::Report::Error->new(
	'error' => 'This is the error',
	'params' => {
		'key' => 'value',
	},
	'record_id' => 'id1',
);
$ret_hr = $obj->params;
is_deeply(
	$ret_hr,
	{
		'key' => 'value',
	},
	'Get parameters (key => value).',
);
