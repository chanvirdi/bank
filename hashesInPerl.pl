#!/usr/bin/perl
#Reversing a hash in perl 
my %hash;
$hash{"key1"}="val1";
$hash{"key2"}="val2";
foreach my $key (keys %hash){
 print $hash{$key},"\n";
}
%hash2 = reverse %hash;
foreach my $key (keys %hash2){
print $hash2{$key},"\n";
}
