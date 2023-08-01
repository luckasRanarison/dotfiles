#!/bin/bash

playerctl --follow metadata --format '{"text": "{{artist}} - {{title}}", "tooltip": "{{playerName}} : {{artist}} - {{album}} - {{markup_escape(title)}}", "alt": "{{playerName}}", "class": "{{playerName}}"}'
