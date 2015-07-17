set w=1
set count=0
for %%x in (jpegs/*) do set /a count+=1
echo %count%

for /l %%x in (5, 1, %count%) do (	
	if exist first_motion_frame (
		lib\cut_video.cmd
		pause
		exit /B
	)
	lib\generate-compare.cmd %%x
)

pause