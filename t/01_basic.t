use strict;
use Test::More tests => 3;

use Win32::IEFavorites;

my $name = Win32::IEFavorites->dirname;
ok($name, qq{Your IE's favorites dir is $name});

my @items = Win32::IEFavorites->find();
ok(scalar @items, q{Your IE has some favorites});

my $url = $items[0]->url;
ok($url, qq{Your first favorite url is $url});
