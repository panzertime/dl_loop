#!perl -w

# Downloads a file repeatedly until successful
# Possible modification: keep largest stub so far

$size = 0;

$url = $ARGV[0];
$file = chomp $ARGV[1];

@args = ("curl", $url, "-o", $file);
@mv_args = ("mv", $file, $file.".stub");

while("true"){
	system(@args);
	
	if ($? != 0) {
		print "deleting stub\n";
		if ($size < -s $file){
			$size = -s $file;
			system(@mv_args) == 0
				or die "could not move stub, major error";
		}
		else {
			@del_args = ("mv", $file, $file.$size);
			system(@del_args) == 0
				or die "could not delete stub, major error";
		}
	}
	else {
		exit 0;
	}
}


