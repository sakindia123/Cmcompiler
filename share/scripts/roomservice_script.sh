#!/bin/bash

#   CMCompiler is free software. It comes without any warranty, to
#   the extent permitted by applicable law. You can redistribute it
#   and/or modify it under the terms of the Do What The Fuck You Want
#   To Public License, Version 2, as published by Sam Hocevar. See
#   http://sam.zoy.org/wtfpl/COPYING for more details.

CMC="$HOME/.cmcompiler"
CMC_CONF="$CMC/cmcompiler.cfg"

device=$(grep device $CMC_CONF |awk '{print $3}')
python build/tools/roomservice.py cm_$device
