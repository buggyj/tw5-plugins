#!/bin/bash

# build TiddlyWiki5 for tiddlywiki.com

# Set up the build output directory

if [  -z "$TW5_BUILD_OUTPUT" ]; then
    TW5_BUILD_OUTPUT=.
fi

if [  ! -d "$TW5_BUILD_OUTPUT" ]; then
    TW5_BUILD_OUTPUT=.
fi

# codemirrordemo.html: wiki to demo codemirror plugin

node ../../../../../tiddlywiki.js \
	./demo \
	--verbose \
	--rendertiddler $/mcore/templates/testing $TW5_BUILD_OUTPUT/msgbtag2.html text/plain \
	|| exit 1

