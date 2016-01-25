#!/bin/bash
set -e

if [ "$1" == git2consul ]
{
	# CMD ["-e", "consul:8500"]
	# ENTRYPOINT ["/usr/local/bin/node", "/usr/local/lib/node_modules/git2consul", "-h"]
}
else
{
	exec "$@"	
}
