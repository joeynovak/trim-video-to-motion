cmd /C lib\crop
melt render.melt -consumer avformat:video.mp4 acodec=libmp3lame vcodec=libx264
ffmpeg -i video.mp4 -i  ..\\art\\Metaphysik.mp3 -map 0:0 -map 1:0 -c:v libx264 -c:a libmp3lame -shortest final.mp4
pause