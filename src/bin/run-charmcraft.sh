#!/bin/bash
# run-charmcraft.sh: Refresh Apt's cache and then call charmcraft.
#
# Needed because the base Ubuntu image has no Apt cache.
#

set -e
apt update
exec /bin/charmcraft "$@"
