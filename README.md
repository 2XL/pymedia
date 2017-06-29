# pymedia
python media util library





 - [ ] feature get video duration
 
 
 method 1 
 
 
 * ffmpeg
 
  1. download from http://ffmpeg.org/download.html
  
```bash

# build from source
wget http://ffmpeg.org/releases/ffmpeg-3.3.2.tar.bz2
# extract
cd ffmpeg-3.3.2
./configure
make
# optional: available in system path
make install 


# goto http://ffmpeg.org/download.html and download for appropriate distro
# download binaries for mac os x intel 64bit
wget https://evermeet.cx/ffmpeg/ffmpeg-86649-g35a5d97.7z # replace this for with your 
# extract

```

 
  2. download media files
 
```bash

./download-videos.sh

```



  3. run ffmpeg from cli
  
```bash


$ time ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 media/small.mp4 
5.568000

real    0m0.025s
user    0m0.016s
sys     0m0.005s


```
 
 
  4. run from python script against `media` files downloaded by `download-videos.sh`

```bash
$ time ./main.py
file: media/small.3gp      duration: 5.534000   seconds
file: media/small.flv      duration: 5.560000   seconds
file: media/small.mp4      duration: 5.568000   seconds
file: media/small.ogv      duration: 5.546667   seconds
file: media/small.webm     duration: 5.568000   seconds

real    0m0.142s
user    0m0.081s
sys     0m0.036s
```
 
 
 
 