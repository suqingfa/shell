#!/usr/bin/env sh

pushd $(dirname $(readlink -f "$0")) > /dev/null

if [[ -d "alias" ]]; then
	for alias in $(ls "alias"); do
		source "alias/$alias"
	done
fi

popd > /dev/null