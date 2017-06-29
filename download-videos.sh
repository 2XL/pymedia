#!/usr/bin/env bash


# download videos
output=media/

! [ -e ${output}small.mp4 ] && wget http://techslides.com/demos/sample-videos/small.mp4 -P ${output}

! [ -e ${output}small.webm ] && wget http://techslides.com/demos/sample-videos/small.webm -P ${output}

! [ -e ${output}small.ogv ] && wget http://techslides.com/demos/sample-videos/small.ogv -P ${output}

! [ -e ${output}small.3gp ] && wget http://techslides.com/demos/sample-videos/small.3gp -P ${output}

! [ -e ${output}small.flv ] && wget http://techslides.com/demos/sample-videos/small.flv -P ${output}

ls -l media