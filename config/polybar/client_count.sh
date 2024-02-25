#!/bin/sh

client_count=$(herbstclient attr tags.focus.client_count)
echo ${client_count}

herbstclient --idle "focus_changed" | {
    while read -r line
    do
            client_count=$(herbstclient attr tags.focus.client_count)
            echo ${client_count}
    done
}
