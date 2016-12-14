#!/usr/bin/perl

use Mojolicious::Lite;

get '/' => {data => 'Hello World'};
get '/home';
get '/time';
get '/:myplaceholder' => sub{
my $self = shift;
$self->render('mytemplate');
};


app->start;

__DATA__

@@home.html.ep
<h1>Hello Chanpreet</h1>
@@time.html.ep
%use Time::Piece;
%my $now = localtime;
The time is <%= $now->hms %>.

@@mytemplate.html.ep

Hello <%= $myplaceholder%>
