@ECHO OFF
REM
REM NAME: CAMSTRMS.BAT
REM 
REM DESCRIPTION: Uses VLC to stream MJPEG HTTP streams to support web browsers and Roku "IP Camera Viewer Pro" application.
REM
REM Port 8880 - Mosaic View - All Cameras
REM Port 8881 - Front Door
REM Port 8882 - Back Door and Garage
REM Port 8883 - Side Door and Driveway
REM Port 8884 - Backyard
REM
REM Kill all previous running instances of VLC silently
REM
taskkill /f /im vlc.exe > nul 2>&1
REM
REM Startup one instance of VLC that streams all four cameras and the mosaic
REM
start /min /b "" "C:\Program Files\VideoLan\VLC\vlc.exe" -I dummy --rtsp-timeout=-1 --no-audio --vlm-conf C:\Windows\camstrms.vlm
