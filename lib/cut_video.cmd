set /p FIRST_FRAME=<first_motion_frame
set /a FIRST_FRAME=FIRST_FRAME-5
set /a FRAMES=4*FPS
set /a LAST_FRAME=FIRST_FRAME+FRAMES
melt %FILE_NAME% in=%FIRST_FRAME% out=%LAST_FRAME% -consumer avformat:clip.mp4 acodec=libmp3lame vcodec=libx264
rm jpegs/*
rm first_motion_frame
rm metric