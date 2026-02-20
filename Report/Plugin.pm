package Data::MARC::Validator::Report::Plugin;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils 0.05 qw(check_isa check_length check_required);

our $VERSION = 0.01;

has errors => (
	is => 'ro',
);

has module_name => (
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
	check_isa($self, 'errors', 'Data::MARC::Validator::Report::Errors');

	# Check 'module_name'.
	check_required($self, 'module_name');
	check_length($self, 'module_name', 255);

	# Check 'name'.
	check_required($self, 'name');
	check_length($self, 'name', 255);

	# Check 'version'.
	check_required($self, 'version');
	# TODO Check Perl version

	return;
}

1;

__END__
