#!/bin/sh
set -exo pipefail

export PATH="/group_workspaces/jasmin2/cp4cds1/magic-test/conda/bin:$PATH"
. activate esmvaltool3 

# User configuration file
config=/group_workspaces/jasmin2/cp4cds1/magic-test/config-user.yml

echo Running recipe $1

esmvaltool -c $config $1
