#!/usr/bin/python
# given a media file retrieve the duration of the media file

import subprocess


def get_video_duration(file_path):
    duration = subprocess.check_output(
        "ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 {file_path}"
            .format(file_path=file_path)
            .split(' '))
    return duration.strip()


if __name__ == "__main__":
    from glob import glob

    media_dir = 'media/small.*'
    for video in glob(media_dir):
        print "file: {video: <20} duration: {duration: <10} seconds".format(video=video, duration=get_video_duration(file_path=video))

