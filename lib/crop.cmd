set METRIC_THRESHOLD=100
set FPS=25
set FILE_NAME=original.mp4
rm jpegs/*
rm first_motion_frame
rm metric

ffmpeg -i %FILE_NAME% -f image2 jpegs/image-%%01d.jpeg
lib\get-first-motion-frame.cmd %METRIC_THRESHOLD%