package Data::MARC::Validator::Report::Error;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils qw(check_required);
use Mo::utils::Array qw(check_array);
use Mo::utils::Hash qw(check_hash);

our $VERSION = 0.01;

has error => (
	is => 'ro',
);

has filters => (
	default => [],
	is => 'ro',
);

has params => (
	default => {},
	is => 'ro',
);

has record_id => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'error'.
	check_required($self, 'error');

	# Check 'filters'.
	check_array($self, 'filters');

	# Check 'params'.
	check_hash($self, 'params');

	# Check 'record_id'.
	check_required($self, 'record_id');

	return;
}

1;

__END__
