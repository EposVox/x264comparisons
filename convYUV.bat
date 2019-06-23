for /R %%A in (*.mp4, *.mov) do (
    echo Processing %%A
	ffmpeg -y -i "%%A" -pix_fmt yuv420p -vsync 0 "%%~dnpA-p.yuv"
    echo Processed %%A
)
pause

