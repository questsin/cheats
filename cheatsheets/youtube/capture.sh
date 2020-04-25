#sudo apt-get install ffmpeg
#sudo apt-get install pavucontrol
#sudo apt-get install python3-pip 
#pip install youtube-video-upload

screen=$(xdpyinfo | awk '/dimensions/{print $2}')
site=https://lichess.org/tv
output=output.mkv

echo $screen, $site

rm $output
google-chrome --start-fullscreen --start-maximized $site &
ffmpeg \
    -video_size $screen \
    -framerate 25 \
    -f x11grab \
    -i :0.0+0,0 \
    -f pulse \
    -ac 2 \
    -i default $output
