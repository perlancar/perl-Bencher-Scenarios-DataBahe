package Bencher::Scenario::DataBahe;

# DATE
# VERSION

use 5.010001;
use strict;
use utf8;
use warnings;

our $scenario = {
    summary => 'Benchmark Data::Bahe',
    participants => [
        {
            module => 'Data::Bahe',
            code_template => 'Data::Bahe->new(%{<opts>})->dump(@{<data>})',
        },
        {
            module => 'Data::Dump',
            summary => 'A comparison',
            code_template => 'Data::Dump::dd(@{<data>})',
        },
    ],
    datases => [
        {
            name => 'default_options',
            args => {
                opts => {},
                'data@' => {
                    'int'     => [1],
                    'float'   => [1.1],
                    'array0'  => [[]],
                    'array1'  => [[1]],
                    'array10' => [[1..10]],
                },
            },
        },
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO

Data::Bahe is also a participant in L<Bencher::Scenario::Serializers>.
