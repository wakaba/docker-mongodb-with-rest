#!/bin/bash
/mongodb/bin/mongod --config /mongodb.conf &
nodejs /node_modules/amid/bin/amid-rest
