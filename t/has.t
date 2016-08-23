use Set::Scalar;

print "1..5\n";

my $h = {t => 1};
my $s = Set::Scalar->new(qw(a b c 0), $h);

print "not " unless $s->has('a');
print "ok 1\n";

print "not " unless $s->contains('0');
print "ok 2\n";

print "not " if $s->has('1');
print "ok 3\n";

print "not " unless $s->has($h);
print "ok 4\n";

print "not " if $s->has({t => 1});
print "ok 5\n";
