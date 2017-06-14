#!/bin/perl

my $grayResult = `GET "https://www.thesource.ca/en-ca/gaming/nintendo-switch/nintendo-switch-consoles-and-bundles/nintendo-switch™-32gb-console-with-grey-joy‑con™/p/108063995?URL=https%3A%2F%2Fwww.thesource.ca%2Fen-ca%2Fgaming%2Fnintendo-switch%2Fnintendo-switch-consoles-and-bundles%2Fnintendo-switch™-32gb-console-with-grey-joy‑con™%2Fp%2F108063995&aff=cj&utm_campaign=cj_affiliate_sale&utm_medium=affiliate&utm_source=cj&utm_content=1886881&utm_term=10797598" | grep "availability-text out-of-stock"`;

my $neonResult = `GET "https://www.thesource.ca/en-ca/gaming/nintendo-switch/nintendo-switch-consoles-and-bundles/nintendo-switch™-32gb-console-with-neon-joy‑con™/p/108068867?URL=https%3A%2F%2Fwww.thesource.ca%2Fen-ca%2Fgaming%2Fnintendo-switch%2Fnintendo-switch-consoles-and-bundles%2Fnintendo-switch%25E2%2584%25A2-32gb-console-with-neon-joy%25E2%2580%2591con%25E2%2584%25A2%2Fp%2F108068867&aff=cj&utm_campaign=cj_affiliate_sale&utm_medium=affiliate&utm_source=cj&utm_content=1886881&utm_term=10797598" | grep "availability-text out-of-stock"`;

my $instock;
while(1) {
    if ($neonResult ne "") {
        $instock = "neon";
        break;
    }
    if ($grayResult ne "") {
        $instock = "gray";
        break;
    }
    # Sleep for a random period of time between 30s to 1 min
    sleep(30 + int rand(60));
    print "tick.\n";
}

print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
print "GO TO $instock\n";
