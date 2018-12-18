#!/bin/sh
set -exo pipefail

export PATH="/group_workspaces/jasmin2/cp4cds1/magic-demo/conda/bin:$PATH"
. activate esmvaltool

# User configuration file
config=/home/users/ndrost/c3s-magic-cylc-suite/config-user.yml

echo Running recipe $1

esmvaltool -c $config $1

