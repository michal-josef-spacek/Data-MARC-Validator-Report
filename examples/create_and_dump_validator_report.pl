#!/usr/bin/env perl

use strict;
use warnings;

use Data::Printer;
use Data::MARC::Validator::Report;
use Data::MARC::Validator::Report::Error;
use Data::MARC::Validator::Report::Plugin;
use DateTime;

# Create data object for validator report.
my $report = Data::MARC::Validator::Report->new(
        'datetime' => DateTime->now,
        'plugins' => [
                Data::MARC::Validator::Report::Plugin->new(
                        'errors' => [
                                Data::MARC::Validator::Report::Error->new(
                                        'error' => 'The test error',
                                        'filters' => ['foo', 'bar'],
                                        'params' => {'key' => 'value'},
                                        'record_id' => 'id1',
                                ),
                        ],
                        'name' => 'test',
                        'version' => '0.02',
                ),
        ],
);

# Dump out.
p $report;

# Output:
# Data::MARC::Validator::Report  {
#     parents: Mo::Object
#     public methods (4):
#         BUILD
#         Mo::utils:
#             check_isa, check_required
#         Mo::utils::Array:
#             check_array_object
#     private methods (0)
#     internals: {
#         datetime   2026-01-11T11:05:23 (DateTime),
#         plugins    [
#             [0] Data::MARC::Validator::Report::Plugin
#         ]
#     }
# }