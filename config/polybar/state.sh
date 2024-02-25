#!/bin/sh
herbstclient watch tags.focus.tiling.focused_frame.algorithm
herbstclient watch tags.focus.floating
herbstclient get_attr tags.focus.tiling.focused_frame.algorithm

frame_layout=$(herbstclient get_attr tags.focus.tiling.focused_frame.algorithm)
echo "  "${frame_layout}

herbstclient --idle "attribute_changed" | {
    while read -r line
    do
            frame_layout=$(herbstclient get_attr tags.focus.tiling.focused_frame.algorithm)
            echo "  "${frame_layout}
            while $(herbstclient get_attr tags.focus.floating)
            do
                    echo   floating
                    break
            done
    done
}
