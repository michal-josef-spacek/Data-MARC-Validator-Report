use strict;
use warnings;

use Data::MARC::Validator::Report::Error;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::MARC::Validator::Report::Error->new(
	'error' => 'This is the error',
	'record_id' => 'id1',
);
isa_ok($obj, 'Data::MARC::Validator::Report::Error');

# Test.
eval {
	Data::MARC::Validator::Report::Error->new(
		'record_id' => 'id1',
	);
};
is($EVAL_ERROR, "Parameter 'error' is required.\n",
	"Parameter 'error' is required.");
clean();

# Test.
eval {
	Data::MARC::Validator::Report::Error->new(
		'error' => 'This is the error',
	);
};
is($EVAL_ERROR, "Parameter 'record_id' is required.\n",
	"Parameter 'record_id' is required.");
clean();
