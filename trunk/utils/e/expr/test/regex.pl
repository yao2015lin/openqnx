#!/usr/bin/perl

while (<>)
{
	/\{([0-9]+), \"(.+)\", \"(.+)\"}/;
	$op1 = $2;
	$op2 = $3;

#	$op1 =~ s/ /\\ /g;
#	$op1 =~ s/{/\\{/g;
#	$op1 =~ s/}/\\}/g;
#	$op1 =~ s/\[/\\[/g;
#	$op1 =~ s/\]/\\]/g;
#	$op1 =~ s/\(/\\(/g;
#	$op1 =~ s/\)/\\)/g;
#	$op1 =~ s/\*/\\*/g;
#	$op1 =~ s/\^/\\^/g;
	$op1 =~ s/\|/\\|/g;

#	$op2 =~ s/ /\\ /g;
#	$op2 =~ s/{/\\{/g;
#	$op2 =~ s/}/\\}/g;
#	$op2 =~ s/\[/\\[/g;
#	$op2 =~ s/\]/\\]/g;
#	$op2 =~ s/\(/\\(/g;
#	$op2 =~ s/\)/\\)/g;
#	$op2 =~ s/\*/\\*/g;
#	$op2 =~ s/\^/\\^/g;
	$op2 =~ s/\|/\\|/g;

#	$op1 =~ s/\'/\\'/g;
#	$op2 =~ s/\'/\\'/g;

	$op1 =~ s/\\\\/\\/g;
	$op2 =~ s/\\\\/\\/g;

	$op1 =~ s/'/'\\''/g;
	$op2 =~ s/'/'\\''/g;

	print "expr \'$op2\' : \'$op1\'\n";
}


# {0, "(a*)\\1\\1(a*)\\2\\2\\2", "aaaaaa"},