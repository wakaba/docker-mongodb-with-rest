#!/bin/bash
/mongodb/bin/mongod &
nodejs /node_modules/amid/bin/amid-rest
