#!/bin/bash

autoreconf --install
automake --add-missing --copy >/dev/null 2>&1 # ignore output
