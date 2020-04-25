#!/bin/bash
#sudo apt-get install python3-pip 
#pip install youtube-video-upload
#
# https://pypi.org/project/youtube-video-upload/
#

#INPUT=$1 

#if [ ! -f "$INPUT" ] ; then
#        echo "$0: Cannot open file '$INPUT'!" >&2
#        exit 1 
#fi

# Remove extension '.mp4' and replace '_' with spaces.
#TITLE=$(basename $INPUT .mp4)
#TITLE=${TITLE//_/ }

python3 -m youtube_video_upload ./example.yaml
