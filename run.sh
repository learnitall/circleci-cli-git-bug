#!/bin/bash

set -eo pipefail

circleci version
circleci config validate config.yml
circleci local execute -c config.yml --job list_files

