#!/bin/sh
fly -t lite sp -p demo-packs-nodejs \
    -c `dirname $0`/pipeline.yml \
    -l `dirname $0`/../credentials.yml
