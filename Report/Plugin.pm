package Data::MARC::Validator::Report::Plugin;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils 0.05 qw(check_length check_required);
use Mo::utils::Array qw(check_array_object);

our $VERSION = 0.01;

has errors => (
	default => [],
	is => 'ro',
);

has name => (
	is => 'ro',
);

has version => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'errors'.
	check_array_object($self, 'errors', 'Data::MARC::Validator::Report::Error');

	# Check 'name'.
	check_required($self, 'name');
	check_length($self, 'name', 255);

	# Check 'version'.
	check_required($self, 'name');
	# TODO Check Perl version

	return;
}

1;

__END__
