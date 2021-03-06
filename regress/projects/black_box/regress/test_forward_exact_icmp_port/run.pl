#!/usr/bin/perl -w
# test_forward_exact_icmp_port

use strict;
use OF::Includes;

sub forward_port {

	forward_simple_icmp(@_, 'port', 0);  # 0: fool_flg = off
}

sub my_test {

	my ( $sock, $options_ref ) = @_;

	for_all_port_pairs( $ofp, $sock, $options_ref, \&forward_port, 0x0);
}

run_black_box_test( \&my_test, \@ARGV );
