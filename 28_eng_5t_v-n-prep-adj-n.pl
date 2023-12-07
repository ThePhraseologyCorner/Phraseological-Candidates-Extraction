use strict;
use locale;

my ( @token, @lemma, @pos );

while ( my $line = <STDIN> ){
    chomp $line;

    my @t = split ( /\t/, $line );
    push ( @token, $t[0] );
	push ( @lemma, $t[0] );
    push ( @pos, $t[2] );
}

for ( my $i = 0 ; $i <= ($#token - 2) ; $i++ )
{
	if (
			($pos[$i] eq "V")
		and 
			($pos[$i+1] eq "N")
		and 
			($pos[$i+2] eq "Prep")
		and 
			($pos[$i+3] eq "Adj")
		and 
			($pos[$i+4] eq "N")
		)
	{
	print $token[$i], " ", $token[$i+1], " ", $token[$i+2], " ", $token[$i+3], " ", $token[$i+4], "\n";
	}
}