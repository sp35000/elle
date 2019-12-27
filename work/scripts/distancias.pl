#!/usr/bin/perl -w
  use strict;
  use DBI;
  use LWP::Simple;
  die "Uso: distancia.pl < municipio-uf> < municipio-uf>" if(scalar(@ARGV) != 2);
  my $origem = $ARGV[0];
  my $destino= $ARGV[1];
  my $url = "http://maps.google.com.br/maps?saddr=$origem&daddr=$destino&hl=en&z=1";
  my $page = get($url);
  my @dados = split(/,distance:"/, $page);
  my @dist  = split(/ km",/, $dados[1]);
  $dist[0] =~ s/,//g;
  print "Distancia de $origem a $destino = $dist[0] km\n";
