# video utils

## convert video to mp3
`ffmpeg -i video.mp4 audio.mp3`

## convert all videos to mp3
`for file in *.mp4; do ffmpeg -i "$file" "$file.mp3"; done`

## trim video
`ffmpeg -i input.mp4 -ss 00:00:11 -to 00:03:23 -c copy output.mp4`

## video to gif
`ffmpeg -i demo.webm -r 15 -vf scale=1024:-1 output2.gif`

## trim video to gif
`ffmpeg -i demo.webm -r 15 -vf scale=1024:-1 -ss 00:00:03 -to 00:00:06 output2.gif`

## compress video
`ffmpeg -i ipad-error.mp4 -vcodec libx265 -crf 28 ipad-error-new.mp4`

## remove audio from video
`ffmpeg -i VIDEO.mp4 -c copy -an VIDEO-new.mp4`

## slowdown/speedup audio
The tempo must be between 0.5 (0.5x) to 2 (2x)
`ffmpeg -i input.mp3 -filter:a "atempo=0.5" -vn output.mp3`

