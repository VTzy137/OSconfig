#!/bin/bash
for i in {1..10}; do
    if [ -f ~/.config/i3/workspace$i.json ]; then
        i3-msg "append_layout ~/.config/i3/workspace$i.json"
    fi
done

