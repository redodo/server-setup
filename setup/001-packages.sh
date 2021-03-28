#!/bin/bash
apt-get update
apt-get install $(grep -Ev ^\# packages.yaml)
