#!/bin/bash
/mongodb/mongod &
nodejs /node_modules/amid/bin/amid-rest
