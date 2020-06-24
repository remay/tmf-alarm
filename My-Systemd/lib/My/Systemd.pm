package My::Systemd;
 
use Exporter 'import';
use XSLoader;
 
$VERSION = '0.01';
our @EXPORT    = qw(sd_notify);
our @EXPORT_OK = qw(sd_notify sd_ready sd_stopping sd_reloading sd_status sd_watchdog);
 
XSLoader::load;
 
 
sub sd_notify {
    my %hash = @_;
    my $str;
    for my $k (keys %hash) {
        $str .= uc($k) . "=$hash{$k}\n";
    }
    return notify($str);
}
 
 
sub sd_watchdog {
    return notify('WATCHDOG=1');
}
 
 
sub sd_ready {
    return notify('READY=1');
}
 
 
sub sd_stopping {
    return notify('STOPPING=1');
}
 
 
sub sd_reloading {
    return notify('RELOADING=1');
}
 
 
sub sd_status {
    my $status = shift;
    return notify("STATUS=$status");
}
 
1;
 
__END__

=pod
=head1 NAME

My::Systemd - Bindings for C<systemd> APIs

=head1 DESCRIPTION

Wraps teh slingle sd_notify(3) API.  Additionally has some helpers.

=cut
