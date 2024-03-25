#!/usr/bin/env bash
active_client_id=$(herbstclient attr clients.focus.winid)
herbstclient chain , use_previous , bring $active_client_id
