#!/bin/bash
source ~/.cache/wal/colors.sh

i3-msg "border pixel 2"
i3-msg "client.focused          ${color1} ${color1} ${color15} ${color15} ${color1}"
i3-msg "client.focused_inactive ${color0} ${color0} ${color7} ${color7} ${color0}"
i3-msg "client.unfocused        ${color0} ${color0} ${color7} ${color7} ${color0}"
i3-msg "client.urgent           ${color1} ${color1} ${color15} ${color15} ${color1}"
