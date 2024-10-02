# © Taha Daneshmand - github.com/taha-daneshmand/code-golf_solutions

sub is_prime {
    my $n = shift;
    return 0 if $n < 2;
    for my $i (2..sqrt($n)) {
        return 0 if $n % $i == 0;
    }
    return 1;
}

for my $i (0..991) {
    if (is_prime($i)) {
        my $rev = reverse $i;
        if (is_prime($rev) && $i != $rev) {
            print "$i\n";
        }
    }
}
