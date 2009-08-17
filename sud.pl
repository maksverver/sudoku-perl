($_)=@ARGV; s/[^1-9]/0/g;@s=split//;sub rw{$_=pop;return int($_/9)}sub cl{$_=pop
;return $_%9}sub bk{$_=pop;return int($_%9/3)+3*int($_/27)} sub sv{my $i=pop;
die @s,"\n" if $i==81;return sv($i+1) if $s[$i];my $m=0;for(my $j=0;$j<81;++$j){
$m|=1<<$s[$j]if $s[$j]&&(rw($i)==rw($j)||cl($i)==cl($j)||bk($i)==bk($j));}for(my
$d=1;$d<=9;++$d) {next if $m&(1<<$d);$s[$i]=$d;sv($i+1);}$s[$i]=0;}sv
