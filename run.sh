#!/bin/bash

set -xeo pipefail

circleci version
circleci config validate config.yml

touch not_staged
touch staged
git add staged
git ls-files

ls
circleci local execute -c config.yml --job list_files

git restore --staged staged
rm staged not_staged

