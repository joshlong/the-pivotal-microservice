#!/bin/bash
set -e

mvn -DskipTests=true clean package

cf push
cf logs portable --recent
