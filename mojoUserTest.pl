#!/usr/bin/perl

use Mojolicious::Lite;

my $ua = Mojo::UserAgent->new;

print $ua->get("http://mojolicious.ua")->res->dom->find('#introduction ul li:first-child');
