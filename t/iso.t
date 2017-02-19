use strict;
use warnings;

use Test::More tests => 8;

use Regexp::Common 'time';

my $time = '2015-09-19T00:15:20.373610+02:00';
my @out = $time =~ /$RE{time}{iso}{-keep}/;

is $out[0], $time, 'Matched all components';
is $out[1], '2015',      'Year';
is $out[2], '09',        'Month';
is $out[3], '19',        'Day';
is $out[4], '00',        'Hour';
is $out[5], '15',        'Minute';
is $out[6], '20.373610', 'Second';
is $out[7], '+02:00',    'Time-zone';
