#!/bin/bash

# Copyright (c) 2015-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.

# Start in website/ even if run from root directory
cd "$(dirname "$0")"

cd ../../
if [ "$TRAVIS" ]; then
  git clone "https://reactjs-bot@github.com/facebook/draft-js.git" draft-js-gh-pages
else
  git clone git://github.com/facebook/draft-js draft-js-gh-pages
fi
cd draft-js-gh-pages
git checkout origin/gh-pages
git checkout -b gh-pages
git branch --set-upstream-to=origin/gh-pages
cd ../draft-js/website
