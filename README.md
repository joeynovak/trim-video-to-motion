# trim-video-to-motion
This is a collection of windows shell scripts to take a slow motion recording, and remove the frames at the beginning until there is motion.

This is a very basic / hacked together set of scripts, but they do what I need.

You'll need ffmpeg, imagemacick, and melt all installed and in your path.  Then, just drop original.mp4 into the directory with the scripts, and run render.cmd.  This also adds an intro, and mixes an mp3 file in as the audio.  That's what I use for my "Smash It" youtube channel.

How does it work?

It uses ffmpeg to dump each frame to a jpeg file.  Then, it uses image magick's compare tool to compare the frames with the last frame until it detects enough changes to know that there was motion (using a fuzzy factor of 20%).

It then uses melt to trim the video.

Hope somebody can use it.
