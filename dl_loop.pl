#!perl -w

$url = $ARGV[0];
$file = $ARGV[1];

@args = ("curl", $url, "-o", $file);
@del_args = ("rm", $file);

while("true"){
	system(@args);
	
	if ($? != 0) {
		print "deleting stub\n";
		system(@del_args) == 0
			or die "could not delete stub, major error";
	}
	else {
		exit 0;
	}
}


