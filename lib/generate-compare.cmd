set /a w=%1-1
compare -metric AE -fuzz 20%% jpegs\image-%w%.jpeg jpegs\image-%1.jpeg -compose Src jpegs\comapre-%w%.jpeg 2> metric
echo %1 > first_motion_frame
set /p metric=<metric
if %metric% LSS %METRIC_THRESHOLD% rm first_motion_frame
echo Metric Is: %metric%