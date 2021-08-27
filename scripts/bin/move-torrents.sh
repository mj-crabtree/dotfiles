#!/bin/sh
# finds each torrent in the downloads folder and moves them to ~/.cache/.torrents
find $HOME/Downloads/ -name '*.torrent' -exec mv {} $HOME/.cache/.torrents/ \; 2>/dev/null
