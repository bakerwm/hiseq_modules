#!/usr/local/bin/env perl

push ( @INC, "/data/biosoft/ViennaRNA/lib/perl5/site_perl/5.30.1");
use strict;
use warnings;
use RNA;

my $seq = "AUUUCCACUAGAGAAGGUCUAGAGUGUUUGUCGUUUGUCAGAAGUCCCUAUUCCAGGUACGAACACGGUGGAUAUGUUCGACGACAGGAUCGGCGCACUA";

my @data = ();
my $md = new RNA::md();
$md->{'max_bp_span'} = 50;
$md->{'window_size'} = 75;
$md->{'dangles'} = 2;
my $ulength = 1;

sub bpp_callback {
    my ($v, $v_size, $i, $maxsize, $what, $data) = @_;

    if ($what & RNA::PROBS_WINDOW_BPP) {
        for (my $j = 0; $j <= $#$v; $j++) {
            next if !defined($v->[$j]);
            next if $v->[$j] < 0.01;
            my %d_bpp = ('i' => $i, 'j' => $j, 'p' => $v->[$j]);
            push @{$data}, \%d_bpp;
        }
    }
}

my $fc = new RNA::fold_compound($seq, $md, RNA::OPTION_WINDOW);
$fc->probs_window($ulength, RNA::PROBS_WINDOW_BPP, \&bpp_callback, \@data);

foreach my $prob (@data) {
    my $p = $prob->{'p'};
    my $i = $prob->{'i'};
    my $j = $prob->{'j'};
    print "$i\t$j\t$p\n";
}
