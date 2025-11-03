package Data::MARC::Validator::Report;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils::Array qw(check_array_object);

our $VERSION = 0.01;

has plugins => (
	default => [],
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'plugins'.
	check_array_object($self, 'plugins', 'Data::MARC::Validator::Report::Plugin');

	return;
}

1;

__END__
