#!/bin/bash

cd /home/dev/git/el_kube
mix deps.get
mix deps.compile
cd assets && npm install && node node_modules/webpack/bin/webpack.js --mode development

cd /home/dev/git/el_kube
mix phx.digest
MIX_ENV=prod mix release
