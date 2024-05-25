# AWK program to print file statistics
# Written by M.V.Harish Kumar on 25-05-2024 
{
	stats["lines"]++
	stats["words"] += NF
	stats["bytes"] += length($0)
	for (i = 1; i < length($0); i++)
		if (substr($0, i, 1) ~ /[0-9a-zA-Z]/)
			n_alnum++
}

END {
	printf "File statistics for %s\n", FILENAME
	for (k in stats)
		printf "\tNo. of %s in file: %d\n", k, stats[k]
	printf "\t%% of alphanumeric in file: %f\n", n_alnum/stats["bytes"]*100
}
