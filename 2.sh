#!/usr/bin/env bash

tr -s '\n' < $1 > /tmp/newvalue
mv /tmp/newvalue $1
