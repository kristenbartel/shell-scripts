#!bin/bash

set - Eeuo pipefail #air handling and checking
LINK=${1?Error: No link}
NAME=${2?Error: No name}

youtube-dl $LINK -f bestaudio

FILE=*.webm
ffmpeg -i $FILE $NAME.mp3
rm *.webm