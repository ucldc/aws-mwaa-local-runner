#!/usr/bin/env bash

source "$AIRFLOW_HOME/startup/startup.sh"
declare -p | grep -v '^declare \-[aAilnrtux]*r ' > stored_env

# allows the airflow user on the airflow docker container to access 
# the host's docker.sock. This is needed for the DockerOperator to work.
sudo chmod 666 /var/run/docker.sock