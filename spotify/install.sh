#!/bin/sh
#
# Spotify
#
# This installs a bunch of Spotify-specific tools

if test $(which brew)
then
  echo "  Installing Spotify tools for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
  	brew tap spotify/public
	brew install gcs-avro-tools gcs-parquet-tools gcs-proto-tools
  fi
fi