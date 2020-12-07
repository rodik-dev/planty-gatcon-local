#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://rodik-stackbit.ngrok.io/pull/5fcdf4d27ab13d7c9d0a1ca2

# build site
npm run build

echo "stackbit-build.sh: finished build"
