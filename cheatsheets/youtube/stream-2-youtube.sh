#! /bin/bash
#
# Diffusion youtube avec ffmpeg

# Configurer youtube avec une résolution 720p. La vidéo n'est pas scalée.

VBR="2500k"                                    # Bitrate de la vidéo en sortie
FPS="30"                                       # FPS de la vidéo en sortie
QUAL="medium"                                  # Preset de qualité FFMPEG
YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2"  # URL de base RTMP youtube

SOURCE="udp://239.255.139.0:1234"              # Source UDP (voir les annonces SAP)
#SOURCE='/dev/video0'
KEY="...."                                     # Clé à récupérer sur l'event youtube

ffmpeg \
    -i "$SOURCE" -deinterlace \
    -vcodec libx264 -pix_fmt yuv420p -preset $QUAL -r $FPS -g $(($FPS * 2)) -b:v $VBR \
    -acodec libmp3lame -ar 44100 -threads 6 -qscale 3 -b:a 712000 -bufsize 512k \
    -f flv "$YOUTUBE_URL/$KEY"

#ffmpeg \
#    -video_size 1024x768 \
#    -framerate 25 \
#    -f x11grab \
#    -i :0.0+100,200 \ 
#    -f alsa -ac 2 \
#    -i hw:0 output.mkv

#ffmpeg \
#    -f x11grab \
#    -framerate 30 \ 
#    -video_size 1280x720 \ 
#    -i :0.0 -f pulse \
#    -i default -c:v libx264 \ 
#    -preset fast -cfr 26 \
#    -maxrate 2500k \
#    -bufsize 5000k -g 60 \ 
#    -vf format=yuv420p \
#    -c:a aac -b:a 128k \
#    -f flv rtmp://youtube \