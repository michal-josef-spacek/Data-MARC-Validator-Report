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

has module_name => (
	is => 'ro',
);

has module_version => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'errors'.
	check_array_object($self, 'errors', 'Data::MARC::Validator::Report::Error');

	# Check 'module_name'.
	check_required($self, 'module_name');
	check_length($self, 'module_name', 255);

	# Check 'module_version'.
	check_required($self, 'module_name');
	# TODO Check Perl version

	return;
}

1;

__END__
