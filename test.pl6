#!/usr/bin/env perl6
use lib 'lib';
use XML::LibXML;

my $x = XML::LibXML.new;
$x.read('xml.xml');
say $x.root_node;
$x.free;
