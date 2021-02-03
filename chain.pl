#The current script calculates the average number of hydrogen bonds for the first and last 10 ns of simulation.
#It uses the values from every 1000 steps frame.
open (IN,'chain.xvg');
open (OUT,'>>c10ns.txt');
open (OUTD,'>>c490ns.txt');
while (<IN>) {
if ($_=~m/^\s+0\s+(\w+)/) {
$sum=$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+1000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+2000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+3000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+4000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+5000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+6000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+7000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+8000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+9000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+10000\s+(\w+)/) {
	$sum=$sum+$1;
print "$1\n";
print OUT "$1\n";
}
if ($_=~m/^\s+490000\s+(\w+)/) {
	$sumt=$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+491000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+492000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+493000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+494000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+495000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+496000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+497000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+498000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+499000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
if ($_=~m/^\s+500000\s+(\w+)/) {
	$sumt=$sumt+$1;
print "$1\n";
print OUTD "$1\n";
}
}
$k=$sum/11;
$l=$sumt/11;
print "$k\n$l\n";