#!/bin/bash
/etc/init.d/mongodb start && \
nodejs /node_modules/amid/bin/amid-rest &
